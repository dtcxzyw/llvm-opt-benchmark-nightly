Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colisa?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.12 = private unnamed_addr constant [28 x i8] c"color saturation adjustment\00", align 1
@introspection = internal global %struct.dt_introspection_t { i32 8, i32 1, ptr @.str.15, i64 12, ptr getelementptr (i8, ptr @introspection_linear, i64 264), i64 1120, i64 688 }, align 8
@introspection_init.f3 = internal global [4 x ptr] [ptr @introspection_linear, ptr getelementptr (i8, ptr @introspection_linear, i64 88), ptr getelementptr (i8, ptr @introspection_linear, i64 176), ptr null], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"dt_iop_colisa_params_t\00", align 1
@introspection_linear = internal global <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } }> <{ { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str.7, ptr @.str.7, ptr @.str.14, i64 4, i64 0, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str.8, ptr @.str.8, ptr @.str.14, i64 4, i64 4, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, float, float, float, [4 x i8] } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str.9, ptr @.str.9, ptr @.str.14, i64 4, i64 8, ptr null }, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, [8 x i8] zeroinitializer }, { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr }, [8 x i8] } { { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, i64, ptr } { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.15, ptr @.str.14, ptr @.str.14, ptr @.str.14, i64 12, i64 0, ptr null }, i64 3, ptr null }, [8 x i8] zeroinitializer }, { { i32, [4 x i8], ptr, ptr, ptr, ptr, i64, i64, ptr }, [24 x i8] } zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @deprecated_msg() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #17
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #17
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #17
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #17
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #17
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #17
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #17
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 65
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42
  %i.e = sext i32 %i.b to i64
  %i.f = sext i32 %i.d to i64
  %i.g = mul nsw i64 %i.f, %i.e                   ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !29  ; 9 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 262156
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 262160
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 262164
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 524312
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 524316
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 524320
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 262168
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.063 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.h ] ; 2 uses
  %i.v = mul i64 %.063, %i.l                      ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !30 ; 3 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.000000e+02
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = fmul reassoc nnan nsz arcp contract afn float %i.x, 6.553600e+02
  %i.aa = fptosi float %i.z to i32
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ab = tail call i32 @llvm.umin.i32(i32 %narrow, i32 65535)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.af = fmul reassoc nsz arcp contract afn float %i.x, f0x3C23D70A
  %i.ag = load float, ptr %i.n, align 4, !tbaa !30
  %i.ah = load float, ptr %i.m, align 4, !tbaa !30
  %i.ai = fmul reassoc nsz arcp contract afn float %i.af, %i.ah
  %i.aj = load float, ptr %i.o, align 4, !tbaa !30
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ai, float %i.aj)
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi reassoc nsz arcp contract afn float [ %i.ae, %bb.c ], [ %i.al, %bb.d ] ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.am, 1.000000e+02
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = fmul reassoc nnan nsz arcp contract afn float %i.am, 6.553600e+02
  %i.ap = fptosi float %i.ao to i32
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 65535)
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !30
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.av = fmul reassoc nsz arcp contract afn float %i.am, f0x3C23D70A
  %i.aw = load float, ptr %i.r, align 4, !tbaa !30
  %i.ax = load float, ptr %i.q, align 4, !tbaa !30
  %i.ay = fmul reassoc nsz arcp contract afn float %i.av, %i.ax
  %i.az = load float, ptr %i.s, align 4, !tbaa !30
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ay, float %i.az)
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi reassoc nsz arcp contract afn float [ %i.au, %bb.f ], [ %i.bb, %bb.g ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.v
  store float %i.bc, ptr %i.bd, align 4, !tbaa !30
  %i.be = add i64 %i.v, 1                         ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !30
  %i.bh = load float, ptr %i.u, align 4, !tbaa !32
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.be
  store float %i.bi, ptr %i.bj, align 4, !tbaa !30
  %i.bk = add i64 %i.v, 2                         ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !30
  %i.bn = load float, ptr %i.u, align 4, !tbaa !32
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  store float %i.bo, ptr %i.bp, align 4, !tbaa !30
  %i.bq = add i64 %i.v, 3                         ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !30
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bq
  store float %i.bs, ptr %i.bt, align 4, !tbaa !30
  %i.bu = add nuw i64 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 16 uses
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !30 ; 4 uses
  %i.d = fadd reassoc nsz arcp contract afn <2 x float> %i.c, <float 1.000000e+00, float poison> ; 3 uses
  %i.e = fmul reassoc nsz arcp contract afn <2 x float> %i.c, <float poison, float 2.000000e+00> ; 2 uses
  %i.f = shufflevector <2 x float> %i.d, <2 x float> %i.e, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.f, ptr %i.b, align 4, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !48
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, 1.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.i, ptr %i.j, align 4, !tbaa !32
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = fcmp reassoc nsz arcp contract afn ugt float %i.k, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  br i1 %i.l, label %vector.ph99, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %broadcast.splat = shufflevector <2 x float> %i.d, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.n = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.o = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.p = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.q = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.r = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.n, splat (float f0x3AC80000)
  %i.s = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float f0x3AC80000)
  %i.t = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.p, splat (float f0x3AC80000)
  %i.u = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.q, splat (float f0x3AC80000)
  %i.v = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.r, splat (float -5.000000e+01)
  %i.w = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.s, splat (float -5.000000e+01)
  %i.x = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.t, splat (float -5.000000e+01)
  %i.y = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.u, splat (float -5.000000e+01)
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %i.v, %broadcast.splat
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %i.w, %broadcast.splat
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.x, %broadcast.splat
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.y, %broadcast.splat
  %i.ad = fadd reassoc nsz arcp contract afn <8 x float> %i.z, splat (float 5.000000e+01)
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.aa, splat (float 5.000000e+01)
  %i.af = fadd reassoc nsz arcp contract afn <8 x float> %i.ab, splat (float 5.000000e+01)
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.ac, splat (float 5.000000e+01)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store <8 x float> %i.ad, ptr %i.ah, align 4, !tbaa !30
  store <8 x float> %i.ae, ptr %i.ai, align 4, !tbaa !30
  store <8 x float> %i.af, ptr %i.aj, align 4, !tbaa !30
  store <8 x float> %i.ag, ptr %i.ak, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.al = icmp eq i64 %index.next, 65536
  br i1 %i.al, label %.loopexit, label %vector.body, !llvm.loop !44

vector.ph99:                                      ; preds = %bb.a
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.c, %i.c
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, 2.000000e+01 ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, 1.000000e+00
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ao)
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, 5.000000e+01
  %broadcast.splatinsert100 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat101 = shufflevector <8 x float> %broadcast.splatinsert100, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert102 = insertelement <8 x float> poison, float %i.aq, i64 0
  %broadcast.splat103 = shufflevector <8 x float> %broadcast.splatinsert102, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph99
  %index105 = phi i64 [ 0, %vector.ph99 ], [ %index.next107.1, %vector.body104 ] ; 3 uses
  %vec.ind106 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph99 ], [ %vec.ind.next108.1, %vector.body104 ] ; 3 uses
  %i.ar = uitofp nneg <8 x i32> %vec.ind106 to <8 x float>
  %i.as = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ar, splat (float f0x38000000)
  %4 = fadd reassoc nsz arcp contract afn <8 x float> %i.as, splat (float -1.000000e+00) ; 3 uses
  %i.at = fmul reassoc nsz arcp contract afn <8 x float> %4, %4
  %i.au = fmul reassoc nsz arcp contract afn <8 x float> %i.at, %broadcast.splat101
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.au, splat (float 1.000000e+00)
  %5 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.av)
  %i.aw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat103, %4
  %6 = fdiv reassoc nsz arcp contract afn <8 x float> %i.aw, %5
  %7 = fadd reassoc nsz arcp contract afn <8 x float> %6, splat (float 5.000000e+01)
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index105
  store <8 x float> %7, ptr %8, align 4, !tbaa !30
  %vec.ind.next108 = add <8 x i32> %vec.ind106, splat (i32 8)
  %9 = uitofp nneg <8 x i32> %vec.ind.next108 to <8 x float>
  %i.ax = fmul reassoc nnan nsz arcp contract afn <8 x float> %9, splat (float f0x38000000)
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %i.ax, splat (float -1.000000e+00) ; 3 uses
  %10 = fmul reassoc nsz arcp contract afn <8 x float> %i.ay, %i.ay
  %11 = fmul reassoc nsz arcp contract afn <8 x float> %10, %broadcast.splat101
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %11, splat (float 1.000000e+00)
  %i.ba = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.az)
  %i.bb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat103, %i.ay
  %i.bc = fdiv reassoc nsz arcp contract afn <8 x float> %i.bb, %i.ba
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, splat (float 5.000000e+01)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store <8 x float> %i.bd, ptr %i.bf, align 4, !tbaa !30
  %index.next107.1 = add nuw nsw i64 %index105, 16 ; 2 uses
  %vec.ind.next108.1 = add <8 x i32> %vec.ind106, splat (i32 16)
  %i.bg = icmp eq i64 %index.next107.1, 65536
  br i1 %i.bg, label %.loopexit, label %vector.body104, !llvm.loop !45

.loopexit:                                        ; preds = %vector.body, %vector.body104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 183512
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 209724
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 235940
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 262152
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !30 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 262156
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bo ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.bs = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.bq)
  %i.bt = fmul reassoc nnan nsz arcp contract afn float %i.bs, f0xC0336F61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %.135.i = phi nsz float [ %i.bt, %bb.b ], [ 0.000000e+00, %.loopexit ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.b ], [ 0, %.loopexit ] ; 2 uses
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.bk, %i.bo ; 2 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bw = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.bu)
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x408F67CC
  %i.by = fsub reassoc nsz arcp contract afn float %.135.i, %i.bx
  %i.bz = add nuw nsw i32 %.1.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.135.1.i = phi nsz float [ %i.by, %bb.d ], [ %.135.i, %bb.c ] ; 2 uses
  %.1.1.i = phi i32 [ %i.bz, %bb.d ], [ %.1.i, %bb.c ] ; 2 uses
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bo ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.f, label %dt_iop_estimate_exp.exit

bb.f:                                             ; preds = %bb.e
  %i.cc = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.ca)
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.cc, f0x4117DC08
  %i.ce = fsub reassoc nsz arcp contract afn float %.135.1.i, %i.cd
  %i.cf = add nuw nsw i32 %.1.1.i, 1
  br label %dt_iop_estimate_exp.exit

dt_iop_estimate_exp.exit:                         ; preds = %bb.e, %bb.f
  %.135.2.i = phi nsz float [ %i.ce, %bb.f ], [ %.135.1.i, %bb.e ]
  %.1.2.i = phi i32 [ %i.cf, %bb.f ], [ %.1.1.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.1.2.i, 0
  %i.cg = uitofp nneg i32 %.1.2.i to float
  %i.ch = fdiv reassoc nsz arcp contract afn float %.135.2.i, %i.cg
  %.2.i = select nsz i1 %.not.i, float 1.000000e+00, float %i.ch
  %i.ci = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bo, i64 1
  store <2 x float> %i.ci, ptr %i.bp, align 4, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 262164
  store float %.2.i, ptr %i.cj, align 4, !tbaa !30
  %i.ck = extractelement <2 x float> %i.e, i64 1  ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn ult float %i.ck, 0.000000e+00
  %i.cm = fadd reassoc nsz arcp contract afn float %i.ck, 1.000000e+00
  %i.cn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cm
  %i.co = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ck
  %i.cp = select reassoc nsz arcp contract afn i1 %i.cl, float %i.co, float %i.cn ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 262168
  %i.cr = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %dt_iop_estimate_exp.exit
  %index112 = phi i64 [ 0, %dt_iop_estimate_exp.exit ], [ %index.next114, %vector.body111 ] ; 2 uses
  %vec.ind113 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %dt_iop_estimate_exp.exit ], [ %vec.ind.next115, %vector.body111 ] ; 2 uses
  %i.ct = uitofp nneg <8 x i32> %vec.ind113 to <8 x float>
  %i.cu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ct, splat (float f0x37800000) ; 5 uses
  %i.cv = extractelement <8 x float> %i.cu, i64 0
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float %i.cp)
  %i.cx = extractelement <8 x float> %i.cu, i64 1
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cx, float %i.cp)
  %i.cz = extractelement <8 x float> %i.cu, i64 2
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cz, float %i.cp)
  %i.db = shufflevector <8 x float> %i.cu, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.db, <4 x float> %i.cs)
  %i.dd = extractelement <8 x float> %i.cu, i64 7
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dd, float %i.cp)
  %i.df = insertelement <8 x float> poison, float %i.cw, i64 0
  %i.dg = insertelement <8 x float> %i.df, float %i.cy, i64 1
  %i.dh = insertelement <8 x float> %i.dg, float %i.da, i64 2
  %i.di = shufflevector <4 x float> %i.dc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.dk = insertelement <8 x float> %i.dj, float %i.de, i64 7
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %i.dk, splat (float 1.000000e+02)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index112
  store <8 x float> %i.dl, ptr %i.dm, align 4, !tbaa !30
  %index.next114 = add nuw i64 %index112, 8       ; 2 uses
  %vec.ind.next115 = add <8 x i32> %vec.ind113, splat (i32 8)
  %i.dn = icmp eq i64 %index.next114, 65536
  br i1 %i.dn, label %middle.block116, label %vector.body111, !llvm.loop !46

middle.block116:                                  ; preds = %vector.body111
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 445668
  %i.dp = load float, ptr %i.do, align 4, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 471880
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 498096
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 524308
  %i.dv = load float, ptr %i.du, align 4, !tbaa !30 ; 4 uses
  %i.dw = fdiv reassoc nsz arcp contract afn float %i.dp, %i.dv ; 2 uses
  %i.dx = fcmp reassoc nsz arcp contract afn ogt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %middle.block116
  %i.dy = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.dw)
  %i.dz = fmul reassoc nnan nsz arcp contract afn float %i.dy, f0xC0336F61
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %middle.block116
  %.135.i51 = phi nsz float [ %i.dz, %bb.g ], [ 0.000000e+00, %middle.block116 ] ; 2 uses
  %.1.i52 = phi i32 [ 1, %bb.g ], [ 0, %middle.block116 ] ; 2 uses
  %i.ea = fdiv reassoc nsz arcp contract afn float %i.dr, %i.dv ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ec = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.ea)
  %i.ed = fmul reassoc nnan nsz arcp contract afn float %i.ec, f0x408F67CC
  %i.ee = fsub reassoc nsz arcp contract afn float %.135.i51, %i.ed
  %i.ef = add nuw nsw i32 %.1.i52, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.135.1.i54 = phi nsz float [ %i.ee, %bb.i ], [ %.135.i51, %bb.h ] ; 2 uses
  %.1.1.i55 = phi i32 [ %i.ef, %bb.i ], [ %.1.i52, %bb.h ] ; 2 uses
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.dt, %i.dv ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ogt float %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.k, label %dt_iop_estimate_exp.exit61

bb.k:                                             ; preds = %bb.j
  %i.ei = tail call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.eg)
  %i.ej = fmul reassoc nnan nsz arcp contract afn float %i.ei, f0x4117DC08
  %i.ek = fsub reassoc nsz arcp contract afn float %.135.1.i54, %i.ej
  %i.el = add nuw nsw i32 %.1.1.i55, 1
  br label %dt_iop_estimate_exp.exit61

dt_iop_estimate_exp.exit61:                       ; preds = %bb.j, %bb.k
  %.135.2.i57 = phi nsz float [ %i.ek, %bb.k ], [ %.135.1.i54, %bb.j ]
  %.1.2.i58 = phi i32 [ %i.el, %bb.k ], [ %.1.1.i55, %bb.j ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 524312
  %.not.i59 = icmp eq i32 %.1.2.i58, 0
  %i.en = uitofp nneg i32 %.1.2.i58 to float
  %i.eo = fdiv reassoc nsz arcp contract afn float %.135.2.i57, %i.en
  %.2.i60 = select nsz i1 %.not.i59, float 1.000000e+00, float %i.eo
  %i.ep = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dv, i64 1
  store <2 x float> %i.ep, ptr %i.em, align 4, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 524320
  store float %.2.i60, ptr %i.eq, align 4, !tbaa !30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #6

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #7 {
vector.ph:
  %i.a = tail call noalias dereferenceable_or_null(524324) ptr @calloc(i64 noundef 1, i64 noundef 524324) #18 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 262168 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 9 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.e = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.f = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.g = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.h = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.i = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.e, splat (float f0x3AC80000) ; 2 uses
  %i.j = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.f, splat (float f0x3AC80000) ; 2 uses
  %i.k = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.g, splat (float f0x3AC80000) ; 2 uses
  %i.l = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.h, splat (float f0x3AC80000) ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store <8 x float> %i.i, ptr %i.m, align 4, !tbaa !30
  store <8 x float> %i.j, ptr %i.n, align 4, !tbaa !30
  store <8 x float> %i.k, ptr %i.o, align 4, !tbaa !30
  store <8 x float> %i.l, ptr %i.p, align 4, !tbaa !30
end_hunk_0
