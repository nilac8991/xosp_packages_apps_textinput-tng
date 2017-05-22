.class Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SkinThemed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OuterObjectsLayerDrawable"
.end annotation


# instance fields
.field private final mLayers:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 328
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 329
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 330
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 6

    .prologue
    .line 336
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 337
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 338
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;

    if-eqz v5, :cond_0

    .line 339
    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;

    .line 340
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 342
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_1
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 352
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 354
    .local v0, "layer":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
