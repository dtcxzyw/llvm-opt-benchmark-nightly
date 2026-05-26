inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gs_identity_matrix = dso_local local_unnamed_addr global { float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64 } { float 1.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0, float 1.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0 }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gs_make_identity(ptr noundef writeonly captures(none) initializes((0, 96)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_make_translation(double noundef %0, double noundef %1, ptr noundef writeonly captures(none) initializes((0, 96)) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !8
  %i.a = fptrunc double %0 to float
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.a, ptr %i.b, align 8, !tbaa !13
  %i.c = fptrunc double %1 to float
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  store float %i.c, ptr %i.d, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_make_scaling(double noundef %0, double noundef %1, ptr noundef writeonly captures(none) initializes((0, 96)) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !8
  %i.a = fptrunc double %0 to float
  store float %i.a, ptr %2, align 8, !tbaa !16
  %i.b = fptrunc double %1 to float
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.b, ptr %i.c, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_make_rotation(double noundef %0, ptr noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = fmul double %0, f0x3F91DF46A2529D39
  %i.b = fptrunc double %i.a to float
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !8
  %i.c = fpext float %i.b to double               ; 2 uses
  %i.d = tail call double @cos(double noundef %i.c) #7, !tbaa !4
  %i.e = fptrunc double %i.d to float             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.e, ptr %i.f, align 8, !tbaa !17
  store float %i.e, ptr %1, align 8, !tbaa !16
  %i.g = tail call double @sin(double noundef %i.c) #7, !tbaa !4
  %i.h = fptrunc double %i.g to float             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.h, ptr %i.i, align 8, !tbaa !18
  %i.j = fneg float %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.j, ptr %i.k, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_matrix_multiply(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) initializes((0, 4), (16, 20), (32, 36), (64, 68)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca float, align 8                    ; 4 uses
  %i.b = alloca float, align 8                    ; 4 uses
  %i.c = load float, ptr %0, align 8, !tbaa !16   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !17 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load float, ptr %i.f, align 8, !tbaa !13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load float, ptr %i.h, align 8, !tbaa !15 ; 4 uses
  %i.j = load float, ptr %1, align 8, !tbaa !16   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !17 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load float, ptr %i.m, align 8, !tbaa !18 ; 4 uses
  store float %i.n, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load float, ptr %i.o, align 8, !tbaa !19 ; 4 uses
  store float %i.p, ptr %i.b, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = or i64 %i.t, %i.r
  %.mask = and i64 %i.u, 9223372036854775807
  %i.v = icmp eq i64 %.mask, 0
  br i1 %i.v, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load float, ptr %i.w, align 8, !tbaa !13
  %i.y = tail call float @llvm.fmuladd.f32(float %i.g, float %i.j, float %i.x) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store float %i.y, ptr %i.z, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !15
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.i, float %i.l, float %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store float %i.ac, ptr %i.ad, align 8, !tbaa !15
  %.0..0..0..0.11 = load i64, ptr %i.a, align 8   ; 2 uses
  %.mask72 = and i64 %.0..0..0..0.11, 9223372036854775807
  %i.ae = icmp eq i64 %.mask72, 0
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = trunc i64 %.0..0..0..0.11 to i32
  %i.ag = bitcast i32 %i.af to float              ; 2 uses
  %i.ah = fmul float %i.c, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ag, float %i.ac)
  store float %i.ai, ptr %i.ad, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi float [ %i.ah, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %.sink, ptr %i.aj, align 8, !tbaa !18
  %i.ak = fmul float %i.c, %i.j
  store float %i.ak, ptr %2, align 8, !tbaa !16
  %.0..0..0..0.5 = load i64, ptr %i.b, align 8    ; 2 uses
  %.mask73 = and i64 %.0..0..0..0.5, 9223372036854775807
  %i.al = icmp eq i64 %.mask73, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = trunc i64 %.0..0..0..0.5 to i32
  %i.an = bitcast i32 %i.am to float              ; 2 uses
  %i.ao = fmul float %i.e, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.i, float %i.an, float %i.y)
  store float %i.ap, ptr %i.z, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink74 = phi float [ %i.ao, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %.sink74, ptr %i.aq, align 8, !tbaa !19
  %i.ar = fmul float %i.e, %i.l
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.as = trunc i64 %i.t to i32
  %i.at = bitcast i32 %i.as to float              ; 2 uses
  %i.au = trunc i64 %i.r to i32
  %i.av = bitcast i32 %i.au to float              ; 2 uses
  %i.aw = fmul float %i.p, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.c, float %i.j, float %i.aw)
  store float %i.ax, ptr %2, align 8, !tbaa !16
  %i.ay = fmul float %i.l, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.c, float %i.n, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.az, ptr %i.ba, align 8, !tbaa !18
  %i.bb = fmul float %i.e, %i.l
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %i.n, float %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.bc, ptr %i.bd, align 8, !tbaa !17
  %i.be = fmul float %i.e, %i.p
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.at, float %i.j, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = fmul float %i.i, %i.p
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.g, float %i.j, float %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !13
  %i.bl = fadd float %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.bl, ptr %i.bm, align 8, !tbaa !13
  %i.bn = fmul float %i.i, %i.l
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.g, float %i.n, float %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !15
  %i.br = fadd float %i.bo, %i.bq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink77 = phi i64 [ 80, %bb.g ], [ 48, %bb.f ]
  %.sink75 = phi float [ %i.br, %bb.g ], [ %i.ar, %bb.f ]
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %.sink77
  store float %.sink75, ptr %i.bs, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_matrix_invert(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = or i64 %i.d, %i.b
  %.mask = and i64 %i.e, 9223372036854775807
  %i.f = icmp eq i64 %.mask, 0
  %i.g = trunc i64 %i.b to i32
  %i.h = bitcast i32 %i.g to float                ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %.mask46 = and i64 %i.i, 9223372036854775807
  %i.j = icmp eq i64 %.mask46, 0
  %i.k = trunc i64 %i.i to i32
  %i.l = bitcast i32 %i.k to float
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.mask47 = and i64 %i.n, 9223372036854775807
  %i.o = icmp eq i64 %.mask47, 0
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc i64 %i.n to i32
  %i.q = bitcast i32 %i.p to float
  %i.r = fdiv float 1.000000e+00, %i.l            ; 2 uses
  store float %i.r, ptr %1, align 8, !tbaa !16
  %i.s = fneg float %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load float, ptr %i.t, align 8, !tbaa !13
  %i.v = fmul float %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.v, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !19
  %i.z = fdiv float 1.000000e+00, %i.q            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.z, ptr %i.aa, align 8, !tbaa !17
  %i.ab = fneg float %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !15
  %i.ae = fmul float %i.ad, %i.ab
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.af = trunc i64 %i.d to i32
  %i.ag = bitcast i32 %i.af to float
  %i.ah = load float, ptr %0, align 8, !tbaa !16  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !17 ; 2 uses
  %i.ak = fneg float %i.ag                        ; 2 uses
  %i.al = fmul float %i.h, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.aj, float %i.al) ; 5 uses
  %i.an = fcmp oeq float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = fdiv float %i.aj, %i.am                 ; 2 uses
  store float %i.aq, ptr %1, align 8, !tbaa !16
  %i.ar = fneg float %i.h
  %i.as = fdiv float %i.ar, %i.am                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.as, ptr %i.at, align 8, !tbaa !18
  %i.au = fdiv float %i.ak, %i.am                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.au, ptr %i.av, align 8, !tbaa !19
  %i.aw = fdiv float %i.ah, %i.am                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.aw, ptr %i.ax, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load float, ptr %i.ay, align 8, !tbaa !15 ; 2 uses
  %i.ba = fmul float %i.au, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.ba)
  %i.bc = fneg float %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.bc, ptr %i.bd, align 8, !tbaa !13
  %i.be = fmul float %i.aw, %i.az
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.as, float %i.be)
  %i.bg = fneg float %i.bf
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.d
  %.sink = phi float [ %i.ae, %bb.d ], [ %i.bg, %.thread ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.sink, ptr %i.bh, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.b, %bb.c
  %.1 = phi i32 [ -23, %bb.b ], [ -23, %bb.e ], [ -23, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef i32 @gs_matrix_rotate(ptr noundef readonly captures(none) %0, double noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ugt double %i.a, 3.600000e+02
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %1 to i32
  %i.c = sdiv i32 %i.b, 90                        ; 2 uses
  %i.d = mul nsw i32 %i.c, 90
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 3
  switch i32 %i.g, label %.unreachabledefault [
    i32 0, label %._crit_edge
    i32 1, label %._crit_edge.loopexit
    i32 2, label %._crit_edge.loopexit.fold.split
    i32 3, label %.lr.ph.2
  ]

.unreachabledefault:                              ; preds = %bb.c
  unreachable

.lr.ph.2:                                         ; preds = %bb.c
  br label %._crit_edge

._crit_edge.loopexit.fold.split:                  ; preds = %bb.c
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = fmul double %1, f0x3F91DF46A2529D39
  %i.i = fptrunc double %i.h to float
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #7, !tbaa !4
  %i.l = fptrunc double %i.k to float
  %i.m = tail call double @cos(double noundef %i.j) #7, !tbaa !4
  %i.n = fptrunc double %i.m to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.lr.ph.2, %._crit_edge.loopexit.fold.split, %._crit_edge.loopexit, %bb.d
  %.043 = phi float [ %i.n, %bb.d ], [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %.lr.ph.2 ], [ -1.000000e+00, %._crit_edge.loopexit.fold.split ], [ 0.000000e+00, %._crit_edge.loopexit ] ; 4 uses
  %.040 = phi float [ %i.l, %bb.d ], [ 0.000000e+00, %bb.c ], [ -1.000000e+00, %.lr.ph.2 ], [ 0.000000e+00, %._crit_edge.loopexit.fold.split ], [ 1.000000e+00, %._crit_edge.loopexit ] ; 4 uses
  %i.o = load float, ptr %0, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load float, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load float, ptr %i.r, align 8, !tbaa !19 ; 2 uses
  %i.t = fmul float %.040, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %.043, float %i.o, float %i.t)
  store float %i.u, ptr %2, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load float, ptr %i.v, align 8, !tbaa !17 ; 2 uses
  %i.x = fmul float %.040, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %.043, float %i.q, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.y, ptr %i.z, align 8, !tbaa !18
  %i.aa = fneg float %i.o
  %i.ab = fmul float %.040, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %.043, float %i.s, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ac, ptr %i.ad, align 8, !tbaa !19
  %i.ae = fneg float %i.q
  %i.af = fmul float %.040, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %.043, float %i.w, float %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.ag, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.aj, ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load float, ptr %i.al, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  store float %i.am, ptr %i.an, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform(double noundef %0, double noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %2, align 8, !tbaa !16
  %i.b = fpext float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load float, ptr %i.c, align 8, !tbaa !13
  %i.e = fpext float %i.d to double
  %i.f = tail call double @llvm.fmuladd.f64(double %0, double %i.b, double %i.e)
  %i.g = fptrunc double %i.f to float             ; 2 uses
  store float %i.g, ptr %3, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load float, ptr %i.h, align 8, !tbaa !17
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = load float, ptr %i.k, align 8, !tbaa !15
  %i.m = fpext float %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %1, double %i.j, double %i.m)
  %i.o = fptrunc double %i.n to float             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %i.o, ptr %i.p, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.mask = and i64 %i.r, 9223372036854775807
  %i.s = icmp eq i64 %.mask, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.r to i32
  %i.u = bitcast i32 %i.t to float
  %i.v = fpext float %i.u to double
  %i.w = fpext float %i.g to double
  %i.x = tail call double @llvm.fmuladd.f64(double %1, double %i.v, double %i.w)
  %i.y = fptrunc double %i.x to float
  store float %i.y, ptr %3, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %.mask16 = and i64 %i.aa, 9223372036854775807
  %i.ab = icmp eq i64 %.mask16, 0
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = bitcast i32 %i.ac to float
  %i.ae = fpext float %i.ad to double
  %i.af = fpext float %i.o to double
  %i.ag = tail call double @llvm.fmuladd.f64(double %0, double %i.ae, double %i.af)
  %i.ah = fptrunc double %i.ag to float
  store float %i.ah, ptr %i.p, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_point_transform_inverse(double noundef %0, double noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = or i64 %i.d, %i.b
  %.mask = and i64 %i.e, 9223372036854775807
  %i.f = icmp eq i64 %.mask, 0
  %i.g = load float, ptr %2, align 8, !tbaa !16   ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load float, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load float, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load float, ptr %i.l, align 8, !tbaa !17
  %i.n = insertelement <2 x float> poison, float %i.i, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.k, i64 1
  %i.p = fpext <2 x float> %i.o to <2 x double>
  %i.q = insertelement <2 x double> poison, double %0, i64 0
  %i.r = insertelement <2 x double> %i.q, double %1, i64 1
  %i.s = fsub <2 x double> %i.r, %i.p
  %i.t = insertelement <2 x float> poison, float %i.g, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.m, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>
  %i.w = fdiv <2 x double> %i.s, %i.v
  %i.x = fptrunc <2 x double> %i.w to <2 x float>
  store <2 x float> %i.x, ptr %3, align 4, !tbaa !9
  br label %gs_point_transform.exit

bb.c:                                             ; preds = %bb.a
  %i.y = trunc i64 %i.b to i32
  %i.z = bitcast i32 %i.y to float                ; 2 uses
  %i.aa = trunc i64 %i.d to i32
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = fneg float %i.ab                        ; 2 uses
  %i.af = fmul float %i.z, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ad, float %i.af) ; 5 uses
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %gs_point_transform.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = fdiv float %i.ad, %i.ag                 ; 2 uses
  %i.al = fneg float %i.z
  %i.am = fdiv float %i.al, %i.ag                 ; 3 uses
  %i.an = fdiv float %i.ae, %i.ag                 ; 3 uses
  %i.ao = fdiv float %i.g, %i.ag                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %i.ar = fmul float %i.an, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ak, float %i.ar)
  %i.at = fneg float %i.as
  %i.au = fmul float %i.ao, %i.aq
  %i.av = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.am, float %i.au)
  %i.aw = fneg float %i.av
  %i.ax = fpext float %i.ak to double
  %i.ay = fpext float %i.at to double
  %i.az = tail call double @llvm.fmuladd.f64(double %0, double %i.ax, double %i.ay)
  %i.ba = fptrunc double %i.az to float           ; 2 uses
  store float %i.ba, ptr %3, align 4, !tbaa !20
  %i.bb = fpext float %i.ao to double
  %i.bc = fpext float %i.aw to double
  %i.bd = tail call double @llvm.fmuladd.f64(double %1, double %i.bb, double %i.bc)
  %i.be = fptrunc double %i.bd to float           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !22
  %i.bg = tail call i1 @llvm.is.fpclass.f32(float %i.an, i32 64)
  br i1 %i.bg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = fpext float %i.an to double
  %i.bi = fpext float %i.ba to double
  %i.bj = tail call double @llvm.fmuladd.f64(double %1, double %i.bh, double %i.bi)
  %i.bk = fptrunc double %i.bj to float
  store float %i.bk, ptr %3, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = tail call i1 @llvm.is.fpclass.f32(float %i.am, i32 64)
  br i1 %i.bl, label %gs_point_transform.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fpext float %i.am to double
  %i.bn = fpext float %i.be to double
  %i.bo = tail call double @llvm.fmuladd.f64(double %0, double %i.bm, double %i.bn)
  %i.bp = fptrunc double %i.bo to float
  store float %i.bp, ptr %i.bf, align 4, !tbaa !22
  br label %gs_point_transform.exit

gs_point_transform.exit:                          ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ -23, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform(double noundef %0, double noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %2, align 8, !tbaa !16
  %i.b = fpext float %i.a to double
  %i.c = fmul double %0, %i.b
  %i.d = fptrunc double %i.c to float             ; 2 uses
  store float %i.d, ptr %3, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !17
  %i.g = fpext float %i.f to double
  %i.h = fmul double %1, %i.g
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.mask = and i64 %i.l, 9223372036854775807
  %i.m = icmp eq i64 %.mask, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %i.l to i32
  %i.o = bitcast i32 %i.n to float
  %i.p = fpext float %i.o to double
  %i.q = fpext float %i.d to double
  %i.r = tail call double @llvm.fmuladd.f64(double %1, double %i.p, double %i.q)
  %i.s = fptrunc double %i.r to float
  store float %i.s, ptr %3, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.mask14 = and i64 %i.u, 9223372036854775807
  %i.v = icmp eq i64 %.mask14, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i64 %i.u to i32
  %i.x = bitcast i32 %i.w to float
  %i.y = fpext float %i.x to double
  %i.z = fpext float %i.i to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %0, double %i.y, double %i.z)
  %i.ab = fptrunc double %i.aa to float
  store float %i.ab, ptr %i.j, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_distance_transform_inverse(double noundef %0, double noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = or i64 %i.d, %i.b
  %.mask = and i64 %i.e, 9223372036854775807
  %i.f = icmp eq i64 %.mask, 0
  %i.g = trunc i64 %i.b to i32
  %i.h = bitcast i32 %i.g to float                ; 2 uses
  %i.i = trunc i64 %i.d to i32
  %i.j = bitcast i32 %i.i to float                ; 2 uses
  %i.k = load float, ptr %2, align 8, !tbaa !16   ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = fpext float %i.k to double
  %i.m = fdiv double %0, %i.l
  %i.n = fptrunc double %i.m to float
  store float %i.n, ptr %3, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load float, ptr %i.o, align 8, !tbaa !17
  %i.q = fpext float %i.p to double
  %i.r = fdiv double %1, %i.q
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = load float, ptr %i.s, align 8, !tbaa !17 ; 2 uses
  %i.u = fneg float %i.j
  %i.v = fmul float %i.h, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.k, float %i.t, float %i.v) ; 2 uses
  %i.x = fcmp oeq float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.y = fpext float %i.w to double               ; 2 uses
  %i.z = fpext float %i.t to double
  %i.aa = fpext float %i.j to double
  %i.ab = fneg double %i.aa
  %i.ac = fmul double %1, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %0, double %i.z, double %i.ac)
  %i.ae = fdiv double %i.ad, %i.y
  %i.af = fptrunc double %i.ae to float
  store float %i.af, ptr %3, align 4, !tbaa !20
  %i.ag = fpext float %i.k to double
  %i.ah = fpext float %i.h to double
  %i.ai = fneg double %i.ah
  %i.aj = fmul double %0, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %1, double %i.ag, double %i.aj)
  %i.al = fdiv double %i.ak, %i.y
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.b
  %.sink29 = phi double [ %i.r, %bb.b ], [ %i.al, %.thread ]
  %i.am = fptrunc double %.sink29 to float
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.am, ptr %i.an, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i32 [ -23, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_bbox_transform_inverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !23   ; 3 uses
  %i.b = fpext float %i.a to double               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !25 ; 3 uses
  %i.e = fpext float %i.d to double               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = or i64 %i.i, %i.g
  %.mask.i = and i64 %i.j, 9223372036854775807
  %i.k = icmp eq i64 %.mask.i, 0
  %i.l = load float, ptr %1, align 8, !tbaa !16   ; 6 uses
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = trunc i64 %i.g to i32
  %i.n = bitcast i32 %i.m to float                ; 3 uses
  %i.o = trunc i64 %i.i to i32
  %i.p = bitcast i32 %i.o to float                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load float, ptr %i.q, align 8, !tbaa !17 ; 3 uses
  %i.s = fneg float %i.p                          ; 2 uses
  %i.t = fmul float %i.n, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.l, float %i.r, float %i.t) ; 6 uses
  %i.v = fcmp oeq float %i.u, 0.000000e+00
  br i1 %i.v, label %gs_point_transform_inverse.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load float, ptr %i.w, align 8, !tbaa !13 ; 2 uses
  %i.y = fdiv float %i.r, %i.u                    ; 2 uses
  %i.z = fneg float %i.n
  %i.aa = fdiv float %i.z, %i.u                   ; 3 uses
  %i.ab = fdiv float %i.s, %i.u                   ; 3 uses
  %i.ac = fdiv float %i.l, %i.u                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = fmul float %i.ab, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.x, float %i.y, float %i.af)
  %i.ah = fneg float %i.ag
  %i.ai = fmul float %i.ac, %i.ae
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.x, float %i.aa, float %i.ai)
  %i.ak = fneg float %i.aj
  %i.al = fpext float %i.y to double
  %i.am = fpext float %i.ah to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.b, double %i.al, double %i.am)
  %i.ao = fptrunc double %i.an to float           ; 2 uses
  %i.ap = fpext float %i.ac to double
  %i.aq = fpext float %i.ak to double
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ap, double %i.aq)
  %i.as = fptrunc double %i.ar to float           ; 2 uses
  %i.at = tail call i1 @llvm.is.fpclass.f32(float %i.ab, i32 64)
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = fpext float %i.ab to double
  %i.av = fpext float %i.ao to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.e, double %i.au, double %i.av)
  %i.ax = fptrunc double %i.aw to float
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.056.0 = phi float [ %i.ao, %bb.c ], [ %i.ax, %bb.d ]
  %i.ay = tail call i1 @llvm.is.fpclass.f32(float %i.aa, i32 64)
  br i1 %i.ay, label %.thread.i49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = fpext float %i.aa to double
  %i.ba = fpext float %i.as to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.b, double %i.az, double %i.ba)
  %i.bc = fptrunc double %i.bb to float
  br label %.thread.i49

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load float, ptr %i.bd, align 8, !tbaa !13
  %i.bf = fpext float %i.be to double
  %i.bg = fsub double %i.b, %i.bf
  %i.bh = fpext float %i.l to double
  %i.bi = fdiv double %i.bg, %i.bh
  %i.bj = fptrunc double %i.bi to float
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !15
  %i.bm = fpext float %i.bl to double
  %i.bn = fsub double %i.e, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %i.bq = fpext float %i.bp to double             ; 2 uses
  %i.br = fdiv double %i.bn, %i.bq
  %i.bs = fptrunc double %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !26
  %i.bv = fsub float %i.bu, %i.a
  %i.bw = fdiv float %i.bv, %i.l
  %i.bx = fdiv float 0.000000e+00, %i.bp
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !27
  %i.ca = fsub float %i.bz, %i.d
  %i.cb = fpext float %i.ca to double
  %i.cc = fdiv float 0.000000e+00, %i.l
  %i.cd = fdiv double %i.cb, %i.bq
  br label %bb.h

.thread.i49:                                      ; preds = %bb.f, %bb.e
  %.sroa.6.0.ph.ph = phi float [ %i.as, %bb.e ], [ %i.bc, %bb.f ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27
  %i.cg = fsub float %i.cf, %i.d
  %i.ch = fpext float %i.cg to double             ; 2 uses
  %i.ci = fpext float %i.l to double              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !26
  %i.cl = fsub float %i.ck, %i.a
  %i.cm = fpext float %i.cl to double             ; 2 uses
  %i.cn = fpext float %i.n to double              ; 2 uses
  %i.co = fneg double %i.cn
  %i.cp = fmul double %i.co, %i.cm
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %i.cp)
  %i.cr = fpext float %i.u to double              ; 4 uses
  %i.cs = fdiv double %i.cq, %i.cr
  %i.ct = fptrunc double %i.cs to float
  %i.cu = fpext float %i.r to double              ; 2 uses
  %i.cv = fpext float %i.p to double              ; 2 uses
  %i.cw = fmul double %i.cv, -0.000000e+00
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cu, double %i.cw)
  %i.cy = fdiv double %i.cx, %i.cr
  %i.cz = fptrunc double %i.cy to float
  %i.da = fneg double %i.cv
  %i.db = fmul double %i.da, %i.ch
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cu, double 0.000000e+00, double %i.db)
  %i.dd = fdiv double %i.dc, %i.cr
  %i.de = fptrunc double %i.dd to float
  %i.df = fmul double %i.cn, -0.000000e+00
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ci, double %i.df)
  %i.dh = fdiv double %i.dg, %i.cr
  br label %bb.h

bb.h:                                             ; preds = %.thread.i49, %bb.g
  %i.di = phi float [ %i.bx, %bb.g ], [ %i.ct, %.thread.i49 ] ; 2 uses
  %.sroa.054.086 = phi float [ %i.bw, %bb.g ], [ %i.cz, %.thread.i49 ] ; 2 uses
  %.sroa.6.0.ph6483 = phi float [ %i.bs, %bb.g ], [ %.sroa.6.0.ph.ph, %.thread.i49 ] ; 3 uses
  %.sroa.056.1.ph6780 = phi float [ %i.bj, %bb.g ], [ %.sroa.056.0, %.thread.i49 ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.cc, %bb.g ], [ %i.de, %.thread.i49 ] ; 3 uses
  %.sink29.i51 = phi double [ %i.cd, %bb.g ], [ %i.dh, %.thread.i49 ] ; 2 uses
  %i.dj = fptrunc double %.sink29.i51 to float    ; 2 uses
  %i.dk = fcmp olt float %.sroa.054.086, 0.000000e+00 ; 2 uses
  %i.dl = fadd float %.sroa.054.086, %.sroa.056.1.ph6780 ; 2 uses
  %. = select i1 %i.dk, float %i.dl, float %.sroa.056.1.ph6780 ; 2 uses
  %.45 = select i1 %i.dk, float %.sroa.056.1.ph6780, float %i.dl ; 2 uses
  %i.dm = fcmp olt float %.sroa.0.0, 0.000000e+00 ; 2 uses
  %i.dn = fadd float %.sroa.0.0, %.
  %i.do = fadd float %.sroa.0.0, %.45
  %.131 = select i1 %i.dm, float %i.dn, float %.
  %.127 = select i1 %i.dm, float %.45, float %i.do
  %i.dp = fcmp olt float %i.di, 0.000000e+00      ; 2 uses
  %i.dq = fadd float %i.di, %.sroa.6.0.ph6483     ; 2 uses
  %.028 = select i1 %i.dp, float %i.dq, float %.sroa.6.0.ph6483 ; 2 uses
  %.0 = select i1 %i.dp, float %.sroa.6.0.ph6483, float %i.dq ; 2 uses
  %i.dr = fcmp olt double %.sink29.i51, f0xB690000000000000 ; 2 uses
  %i.ds = fadd float %.028, %i.dj
  %i.dt = fadd float %.0, %i.dj
  %.129 = select i1 %i.dr, float %i.ds, float %.028
  %.1 = select i1 %i.dr, float %.0, float %i.dt
  store float %.131, ptr %2, align 4, !tbaa !23
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.129, ptr %i.du, align 4, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.127, ptr %i.dv, align 4, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.1, ptr %i.dw, align 4, !tbaa !27
  br label %gs_point_transform_inverse.exit

gs_point_transform_inverse.exit:                  ; preds = %bb.b, %bb.h
  %.033 = phi i32 [ 0, %bb.h ], [ -23, %bb.b ]
  ret i32 %.033
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform2fixed(ptr noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 8, !tbaa !28
  %i.b = fpext float %i.a to double
  %i.c = fmul double %1, %i.b
  %i.d = fmul double %i.c, 4.096000e+03
  %i.e = fptosi double %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = add nsw i64 %i.g, %i.e                   ; 2 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load float, ptr %i.i, align 8, !tbaa !33
  %i.k = fpext float %i.j to double
  %i.l = fmul double %2, %i.k
  %i.m = fmul double %i.l, 4.096000e+03
  %i.n = fptosi double %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.mask = and i64 %i.t, 9223372036854775807
  %i.u = icmp eq i64 %.mask, 0
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = trunc i64 %i.t to i32
  %i.w = bitcast i32 %i.v to float
  %i.x = fpext float %i.w to double
  %i.y = fmul double %2, %i.x
  %i.z = fmul double %i.y, 4.096000e+03
  %i.aa = fptosi double %i.z to i64
  %i.ab = add nsw i64 %i.h, %i.aa
  store i64 %i.ab, ptr %3, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.mask16 = and i64 %i.ad, 9223372036854775807
  %i.ae = icmp eq i64 %.mask16, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i64 %i.ad to i32
  %i.ag = bitcast i32 %i.af to float
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %1, %i.ah
  %i.aj = fmul double %i.ai, 4.096000e+03
  %i.ak = fptosi double %i.aj to i64
  %i.al = add nsw i64 %i.q, %i.ak
  store i64 %i.al, ptr %i.r, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform2fixed(ptr noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 8, !tbaa !28
  %i.b = fpext float %i.a to double
  %i.c = fmul double %1, %i.b
  %i.d = fmul double %i.c, 4.096000e+03
  %i.e = fptosi double %i.d to i64                ; 2 uses
  store i64 %i.e, ptr %3, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load float, ptr %i.f, align 8, !tbaa !33
  %i.h = fpext float %i.g to double
  %i.i = fmul double %2, %i.h
  %i.j = fmul double %i.i, 4.096000e+03
  %i.k = fptosi double %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.mask = and i64 %i.n, 9223372036854775807
  %i.o = icmp eq i64 %.mask, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.n to i32
  %i.q = bitcast i32 %i.p to float
  %i.r = fpext float %i.q to double
  %i.s = fmul double %2, %i.r
  %i.t = fmul double %i.s, 4.096000e+03
  %i.u = fptosi double %i.t to i64
  %i.v = add nsw i64 %i.u, %i.e
  store i64 %i.v, ptr %3, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %.mask14 = and i64 %i.x, 9223372036854775807
  %i.y = icmp eq i64 %.mask14, 0
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = trunc i64 %i.x to i32
  %i.aa = bitcast i32 %i.z to float
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %1, %i.ab
  %i.ad = fmul double %i.ac, 4.096000e+03
  %i.ae = fptosi double %i.ad to i64
  %i.af = add nsw i64 %i.ae, %i.k
  store i64 %i.af, ptr %i.l, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 4, !9, i64 8, i64 8, !11, i64 16, i64 4, !9, i64 24, i64 8, !11, i64 32, i64 4, !9, i64 40, i64 8, !11, i64 48, i64 4, !9, i64 56, i64 8, !11, i64 64, i64 4, !9, i64 72, i64 8, !11, i64 80, i64 4, !9, i64 88, i64 8, !11}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !10, i64 64}
!14 = !{!"gs_matrix_s", !10, i64 0, !12, i64 8, !10, i64 16, !12, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !12, i64 56, !10, i64 64, !12, i64 72, !10, i64 80, !12, i64 88}
!15 = !{!14, !10, i64 80}
!16 = !{!14, !10, i64 0}
!17 = !{!14, !10, i64 48}
!18 = !{!14, !10, i64 16}
!19 = !{!14, !10, i64 32}
!20 = !{!21, !10, i64 0}
!21 = !{!"gs_point_s", !10, i64 0, !10, i64 4}
!22 = !{!21, !10, i64 4}
!23 = !{!24, !10, i64 0}
!24 = !{!"gs_rect_s", !21, i64 0, !21, i64 8}
!25 = !{!24, !10, i64 4}
!26 = !{!24, !10, i64 8}
!27 = !{!24, !10, i64 12}
!28 = !{!29, !10, i64 0}
!29 = !{!"gs_matrix_fixed_s", !10, i64 0, !12, i64 8, !10, i64 16, !12, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !12, i64 56, !10, i64 64, !12, i64 72, !10, i64 80, !12, i64 88, !12, i64 96, !12, i64 104}
!30 = !{!29, !12, i64 96}
!31 = !{!32, !12, i64 0}
!32 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!33 = !{!29, !10, i64 48}
!34 = !{!29, !12, i64 104}
!35 = !{!32, !12, i64 8}
end_hunk_0
