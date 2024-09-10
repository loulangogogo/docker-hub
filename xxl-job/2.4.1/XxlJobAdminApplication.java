package com.xxl.job.admin;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.util.StringUtils;

/**
 * @author xuxueli 2018-10-28 00:38:13
 */
@SpringBootApplication
public class XxlJobAdminApplication {

    public static void main(String[] args) {
        SpringApplicationBuilder builder = new SpringApplicationBuilder(XxlJobAdminApplication.class);
        setDockerEnv(builder);
        builder.run(args);
    }

    /**
     * 设置docker环境变量配置数据
     * <p>
     * 本方法用于在SpringApplicationBuilder对象中设置Docker环境的特定配置数据
     * 主要目的是为了适应在Docker容器中运行时的特殊需求，可能包括数据库连接信息，
     * 缓存配置，或者其他运行时需要调整的参数。由于Docker容器环境的特殊性，这些配置
     * 可能会与本地开发环境或传统服务器环境有所不同。
     *
     * @param builder SpringApplicationBuilder对象，用于构建Spring Boot应用。通过该对象可以
     *                设置各种应用启动和运行时的配置，包括环境配置。
     * @author loulan
     */
    public static void setDockerEnv(SpringApplicationBuilder builder) {
        /*端口配置*/
        String serverPort = System.getenv("SERVER_PORT");
        builder.properties("server.port=" + (StringUtils.hasLength(serverPort) ? serverPort : "8080"));
        String serverPath = System.getenv("SERVER_PATH");
        builder.properties("server.servlet.context-path=" + (StringUtils.hasLength(serverPath) ? serverPath : "/xxl-job-admin"));

        /*mysql数据库的配置*/
        String databaseHost = System.getenv("DB_HOST");
        String databasePort = System.getenv("DB_PORT");
        builder.properties("spring.datasource.url=jdbc:mysql://" + databaseHost + ":" + databasePort + "/xxl_job?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&serverTimezone=Asia/Shanghai");
        String databaseUsername = System.getenv("DB_USER");
        builder.properties("spring.datasource.username=" + databaseUsername);
        String databasePassword = System.getenv("DB_PASSWORD");
        builder.properties("spring.datasource.password=" + databasePassword);

        /*mial邮箱配置*/
        String mailHost = System.getenv("MAIL_HOST");
        builder.properties("spring.mail.host=" + mailHost);
        String mailPort = System.getenv("MAIL_PORT");
        builder.properties("spring.mail.port=" + mailPort);
        String mailUser = System.getenv("MAIL_USER");
        builder.properties("spring.mail.username=" + mailUser);
        String mailPassword = System.getenv("MAIL_PASSWORD");
        builder.properties("spring.mail.password=" + mailPassword);
        String mailForm = System.getenv("MAIL_FORM");
        builder.properties("spring.mail.from=" + mailForm);

        /*job的配置*/
        String jobAccessToken = System.getenv("JOB_ACCESS_TOKEN");
        builder.properties("xxl.job.accessToken=" + jobAccessToken);
    }
}