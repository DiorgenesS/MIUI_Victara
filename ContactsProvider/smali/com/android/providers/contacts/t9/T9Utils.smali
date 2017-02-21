.class public abstract Lcom/android/providers/contacts/t9/T9Utils;
.super Ljava/lang/Object;
.source "T9Utils.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CREATE_STATEMENTS:[Ljava/lang/String;

.field public static final ITEM_QUERY_SQLS:[Ljava/lang/String;

.field private static final VALID_T9_KEYS:[C

.field public static final VALID_T9_KEY_COUNT:I

.field private static sBitSet:Lmiui/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field public static sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field public static sContext:Landroid/content/Context;

.field public static sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field public static sDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public static sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field public static sIsYellowPageItemVisible:Z

.field public static sIsYellowPageSearchVisible:Z

.field private static sItemList:Lmiui/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private static final sPinyinT9Map:[C

.field public static sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

.field private static sStringBuilder:Lmiui/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private static final sZhuyin2T9Map:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEYS:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sPinyinT9Map:[C

    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sZhuyin2T9Map:[C

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEYS:[C

    array-length v0, v0

    sput v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_id"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v7

    const-string v1, "normalized_data"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t9_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data_tag"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "credit_img"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DROP TABLE IF EXISTS t9_lookup"

    aput-object v1, v0, v6

    const-string v1, "CREATE TABLE t9_lookup (data_id INTEGER NOT NULL DEFAULT 0,contact_id INTEGER NOT NULL DEFAULT 0,raw_contact_id INTEGER NOT NULL DEFAULT 0,data TEXT NOT NULL,normalized_data TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,data_tag TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,credit_img TEXT,UNIQUE(data_id))"

    aput-object v1, v0, v5

    const-string v1, "CREATE INDEX t9_lookup_raw_contact_id ON t9_lookup (raw_contact_id)"

    aput-object v1, v0, v3

    const-string v1, "CREATE INDEX t9_lookup_contact_id ON t9_lookup (contact_id)"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->CREATE_STATEMENTS:[Ljava/lang/String;

    sput-boolean v5, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageItemVisible:Z

    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->isYellowPageTabAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageSearchVisible:Z

    new-instance v0, Lcom/android/providers/contacts/t9/T9Utils$1;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Utils$1;-><init>()V

    invoke-static {v0, v3}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sBitSet:Lmiui/util/Pools$SimplePool;

    new-instance v0, Lcom/android/providers/contacts/t9/T9Utils$2;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Utils$2;-><init>()V

    invoke-static {v0, v4}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    new-instance v0, Lcom/android/providers/contacts/t9/T9Utils$3;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Utils$3;-><init>()V

    invoke-static {v0, v3}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sItemList:Lmiui/util/Pools$SimplePool;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2cs
        0x2as
        0x23s
    .end array-data

    :array_1
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_2
    .array-data 2
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method static converDigitToInitial(C)C
    .locals 1

    add-int/lit8 v0, p0, -0x23

    add-int/lit8 v0, v0, 0x43

    int-to-char v0, v0

    return v0
.end method

.method static convertIndexToT9Key(I)C
    .locals 1

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEYS:[C

    aget-char v0, v0, p0

    return v0
.end method

.method static convertT9CharToIndex(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static convertYellowPageIdToContact(J)J
    .locals 2

    const-wide/16 v0, -0x64

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static convertYellowPageNumberToDataId(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static formatCharToT9(C)C
    .locals 1

    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9MultiUtils;->formatCharToT9(C)C

    move-result v0

    return v0
.end method

.method public static getReusableBitSet()Ljava/util/BitSet;
    .locals 1

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sBitSet:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public static getReusableItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sItemList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getReusableStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static isInitial(C)Z
    .locals 1

    const/16 v0, 0x43

    if-lt p0, v0, :cond_0

    const/16 v0, 0x59

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidT9Key(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidT9Key(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isYellowPageTabAvailable()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "T9"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static onDatabaseChanged(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sput-object p0, Lcom/android/providers/contacts/t9/T9Utils;->sContext:Landroid/content/Context;

    sput-object p1, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport;->getPhoneMimeTypeId()J

    move-result-wide v0

    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/contacts/T9SearchSupport;->getSipMimeTypeId()J

    move-result-wide v2

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_ALL:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_CONTACT_ID:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_RAW_CONTACT_ID:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    const/4 v5, 0x3

    sget-object v6, Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;->QUERY_SQL_TEMPLATE_DATA_ID:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "INSERT OR IGNORE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,data_tag,key_type,credit_img) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM t9_lookup WHERE raw_contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM t9_lookup WHERE contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DELETE FROM t9_lookup WHERE data_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    sput-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method

.method public static plog(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static queryYPInstalled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/YellowPageContract$Navigation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static recyle(Ljava/lang/StringBuilder;)V
    .locals 1

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-void
.end method

.method public static recyle(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sItemList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-void
.end method

.method public static recyle(Ljava/util/BitSet;)V
    .locals 1

    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sBitSet:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-void
.end method

.method public static updateSpItemVisibility(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageItemVisible:Z

    if-eq v2, v0, :cond_0

    sput-boolean v0, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageItemVisible:Z

    const/4 v1, 0x1

    :cond_0
    sget-boolean v2, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageItemVisible:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageSearchVisible:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/providers/contacts/t9/T9Utils;->queryYPInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sput-boolean v3, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageSearchVisible:Z

    sput-boolean v3, Lcom/android/providers/contacts/t9/T9Utils;->sIsYellowPageItemVisible:Z

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
