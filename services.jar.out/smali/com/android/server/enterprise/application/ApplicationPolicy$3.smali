.class Lcom/android/server/enterprise/application/ApplicationPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerWidgetChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 4084
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4086
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    #calls: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 4087
    return-void
.end method