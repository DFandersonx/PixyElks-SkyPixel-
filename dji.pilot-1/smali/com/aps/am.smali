.class public final Lcom/aps/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private synthetic h:Lcom/aps/s;


# direct methods
.method protected constructor <init>(Lcom/aps/s;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/aps/am;->a:J

    iput-wide v2, p0, Lcom/aps/am;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aps/am;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aps/am;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/aps/am;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/am;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/aps/am;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aps/am;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/aps/am;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/am;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/aps/q;

    iget-object v1, p0, Lcom/aps/am;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/aps/am;->e:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aps/am;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aps/q;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aps/q;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    iget-object v2, p0, Lcom/aps/am;->h:Lcom/aps/s;

    iget-object v3, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v3}, Lcom/aps/s;->o(Lcom/aps/s;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/aps/s;->a(Lcom/aps/s;Lcom/aps/q;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/aps/s;->e(Lcom/aps/s;I)I

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->p(Lcom/aps/s;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "&nmea=%.1f|%.1f&g_tp=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/aps/q;->c()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/aps/q;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    iget-object v5, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v5}, Lcom/aps/s;->p(Lcom/aps/s;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aps/s;->b(Lcom/aps/s;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aps/am;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v10, p0, Lcom/aps/am;->g:Ljava/lang/String;

    iput-object v10, p0, Lcom/aps/am;->f:Ljava/lang/String;

    iput-object v10, p0, Lcom/aps/am;->e:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/aps/am;->c:Z

    :cond_1
    const-string v0, "$GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v9, p0, Lcom/aps/am;->c:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/am;->e:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/am;->b:J

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aps/s;->e(Lcom/aps/s;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0, v8}, Lcom/aps/s;->e(Lcom/aps/s;I)I

    goto :goto_0

    :cond_4
    const-string v0, "$GPGSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aps/am;->d:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v0, "$GPGSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/am;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onGpsStatusChanged(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->e(Lcom/aps/s;)Landroid/location/LocationManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1, v0}, Lcom/aps/s;->d(Lcom/aps/s;I)I

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/aps/s;->a:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aps/am;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->i(Lcom/aps/s;)Landroid/location/GpsStatus;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    iget-object v2, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v2}, Lcom/aps/s;->e(Lcom/aps/s;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aps/s;->a(Lcom/aps/s;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_1
    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->i(Lcom/aps/s;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1, v0}, Lcom/aps/s;->a(Lcom/aps/s;I)I

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1, v0}, Lcom/aps/s;->b(Lcom/aps/s;I)I

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/aps/s;->a(Lcom/aps/s;Ljava/util/HashMap;)Ljava/util/HashMap;

    move v1, v0

    move v2, v0

    move v3, v0

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    invoke-static {}, Lcom/aps/s;->m()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->j(Lcom/aps/s;)I

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->e(Lcom/aps/s;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v2}, Lcom/aps/s;->i(Lcom/aps/s;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->k(Lcom/aps/s;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    if-lt v3, v7, :cond_8

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->k(Lcom/aps/s;)I

    move-result v0

    if-lt v0, v7, :cond_9

    :cond_8
    if-ge v3, v7, :cond_a

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->k(Lcom/aps/s;)I

    move-result v0

    if-lt v0, v7, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0, v3}, Lcom/aps/s;->c(Lcom/aps/s;I)I

    if-ge v3, v7, :cond_c

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->l(Lcom/aps/s;)Lcom/aps/ac;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->l(Lcom/aps/s;)Lcom/aps/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/ac;->w()V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0, v1}, Lcom/aps/s;->d(Lcom/aps/s;I)I

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->m(Lcom/aps/s;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/s;->b(Lcom/aps/s;Ljava/util/HashMap;)I

    sget-boolean v0, Lcom/aps/s;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-gt v3, v0, :cond_b

    const/16 v0, 0xf

    if-le v2, v0, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->e(Lcom/aps/s;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/am;->a:J

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->l(Lcom/aps/s;)Lcom/aps/ac;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->l(Lcom/aps/s;)Lcom/aps/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aps/ac;->v()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/aps/s;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v0}, Lcom/aps/s;->n(Lcom/aps/s;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/am;->h:Lcom/aps/s;

    invoke-static {v1}, Lcom/aps/s;->n(Lcom/aps/s;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
