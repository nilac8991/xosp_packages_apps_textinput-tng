.class synthetic Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;
.super Ljava/lang/Object;
.source "CloudUserUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$TaskPriority:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CLEAR_SYNCED_USER_DATA:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->CREATE_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->INIT:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->SYNC:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$BackupAndSyncTask:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->REFRESH_DEVICE_INFO:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$BackupAndSyncTask;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    .line 54
    :goto_7
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$TaskPriority:[I

    :try_start_8
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$TaskPriority:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->HIGH:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$TaskPriority:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->MEDIUM:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$2;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudUserUtil$TaskPriority:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->LOW:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil$TaskPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    .line 336
    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
