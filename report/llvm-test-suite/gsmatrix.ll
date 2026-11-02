Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gsmatrix?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gs_identity_matrix = dso_local local_unnamed_addr global { float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64, float, [4 x i8], i64 } { float 1.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0, float 1.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0, float 0.000000e+00, [4 x i8] zeroinitializer, i64 0 }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @gs_make_identity(ptr nofree noundef writeonly captures(none) initializes((0, 96)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_make_translation(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !12
  %i.a = fptrunc double %0 to float
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.a, ptr %i.b, align 8, !tbaa !14
  %i.c = fptrunc double %1 to float
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  store float %i.c, ptr %i.d, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_make_scaling(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !12
  %i.a = fptrunc double %0 to float
  store float %i.a, ptr %2, align 8, !tbaa !16
  %i.b = fptrunc double %1 to float
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.b, ptr %i.c, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_make_rotation(double noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %0, f0x3F91DF46A2529D39
  %i.b = fptrunc double %i.a to float
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) @gs_identity_matrix, i64 96, i1 false), !tbaa.struct !12
  %i.c = fpext float %i.b to double               ; 2 uses
  %i.d = tail call double @cos(double noundef %i.c) #7, !tbaa !7
  %i.e = fptrunc double %i.d to float             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.e, ptr %i.f, align 8, !tbaa !17
  store float %i.e, ptr %1, align 8, !tbaa !16
  %i.g = tail call double @sin(double noundef %i.c) #7, !tbaa !7
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_matrix_multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4), (16, 20), (32, 36), (64, 68)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca float, align 8                    ; 4 uses
  %i.b = alloca float, align 8                    ; 4 uses
  %i.c = load float, ptr %0, align 8, !tbaa !16   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !17 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load float, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load float, ptr %i.h, align 8, !tbaa !15 ; 3 uses
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
  %i.x = load float, ptr %i.w, align 8, !tbaa !14
  %i.y = tail call float @llvm.fmuladd.f32(float %i.g, float %i.j, float %i.x) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store float %i.y, ptr %i.z, align 8, !tbaa !14
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
  store float %i.ap, ptr %i.z, align 8, !tbaa !14
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
  %i.bh = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.l, i64 1
  %i.bl = fmul <2 x float> %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bp = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.n, i64 1
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bl) ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = fadd float %i.bu, %i.bn
  store float %i.bv, ptr %i.bo, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !15
  %i.by = extractelement <2 x float> %i.bt, i64 1
  %i.bz = fadd float %i.by, %i.bx
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink77 = phi i64 [ 80, %bb.g ], [ 48, %bb.f ]
  %.sink75 = phi float [ %i.bz, %bb.g ], [ %i.ar, %bb.f ]
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %.sink77
  store float %.sink75, ptr %i.ca, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_matrix_invert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
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
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.mask47 = and i64 %i.m, 9223372036854775807
  %i.n = icmp eq i64 %.mask47, 0
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %i.m to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !19
  %i.u = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.v = insertelement <2 x i32> %i.u, i32 %i.o, i64 1
  %i.w = bitcast <2 x i32> %i.v to <2 x float>
  %i.x = fdiv <2 x float> splat (float 1.000000e+00), %i.w ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  store float %i.y, ptr %1, align 8, !tbaa !16
  %i.z = fneg float %i.y
  %i.aa = fmul float %i.q, %i.z
  store float %i.aa, ptr %i.r, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = extractelement <2 x float> %i.x, i64 1  ; 2 uses
  store float %i.ac, ptr %i.ab, align 8, !tbaa !17
  %i.ad = fneg float %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load float, ptr %i.ae, align 8, !tbaa !15
  %i.ag = fmul float %i.af, %i.ad
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.ah = trunc i64 %i.d to i32
  %i.ai = bitcast i32 %i.ah to float
  %i.aj = load float, ptr %0, align 8, !tbaa !16  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load float, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = fneg float %i.ai                        ; 2 uses
  %i.an = fmul float %i.h, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.al, float %i.an) ; 2 uses
  %i.ap = fcmp oeq float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !14
  %i.as = fneg float %i.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = insertelement <2 x float> poison, float %i.am, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.aj, i64 1
  %i.aw = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ay = fdiv <2 x float> %i.av, %i.ax           ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = extractelement <2 x float> %i.ay, i64 0
  store float %i.ba, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = extractelement <2 x float> %i.ay, i64 1
  store float %i.bc, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load float, ptr %i.bd, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.as, i64 1
  %i.bi = fdiv <2 x float> %i.bh, %i.ax           ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  store float %i.bj, ptr %1, align 8, !tbaa !16
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  store float %i.bk, ptr %i.at, align 8, !tbaa !18
  %i.bl = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.ay, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bi, <2 x float> %i.bn)
  %i.br = fneg <2 x float> %i.bq                  ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  store float %i.bs, ptr %i.bf, align 8, !tbaa !14
  %i.bt = extractelement <2 x float> %i.br, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.d
  %.sink = phi float [ %i.ag, %bb.d ], [ %i.bt, %.thread ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.sink, ptr %i.bu, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.b, %bb.c
  %.1 = phi i32 [ -23, %bb.b ], [ -23, %bb.e ], [ -23, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef i32 @gs_matrix_rotate(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %sincos.sin = alloca double, align 8            ; 2 uses
  %sincos.cos = alloca double, align 8            ; 2 uses
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
  %i.j = fpext float %i.i to double
  call void @sincos(double %i.j, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  %3 = fptrunc double %sin to float
  %i.k = fptrunc double %cos to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.lr.ph.2, %._crit_edge.loopexit.fold.split, %._crit_edge.loopexit, %bb.d
  %.042 = phi float [ %3, %bb.d ], [ 0.000000e+00, %bb.c ], [ -1.000000e+00, %.lr.ph.2 ], [ 0.000000e+00, %._crit_edge.loopexit.fold.split ], [ 1.000000e+00, %._crit_edge.loopexit ]
  %.041 = phi float [ %i.k, %bb.d ], [ 1.000000e+00, %bb.c ], [ 0.000000e+00, %.lr.ph.2 ], [ -1.000000e+00, %._crit_edge.loopexit.fold.split ], [ 0.000000e+00, %._crit_edge.loopexit ]
  %i.l = load float, ptr %0, align 8, !tbaa !16   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load float, ptr %i.m, align 8, !tbaa !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load float, ptr %i.o, align 8, !tbaa !19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load float, ptr %i.q, align 8, !tbaa !17 ; 2 uses
  %4 = insertelement <2 x float> poison, float %.042, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.p, i64 0
  %7 = insertelement <2 x float> %6, float %i.r, i64 1
  %8 = fmul <2 x float> %5, %7
  %9 = insertelement <2 x float> poison, float %.041, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = insertelement <2 x float> poison, float %i.l, i64 0
  %12 = insertelement <2 x float> %11, float %i.n, i64 1
  %13 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %12, <2 x float> %8) ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0
  store float %14, ptr %2, align 8, !tbaa !16
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %16 = extractelement <2 x float> %13, i64 1
  store float %16, ptr %15, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %18 = insertelement <2 x float> poison, float %i.n, i64 0
  %19 = insertelement <2 x float> %18, float %i.l, i64 1
  %20 = fneg <2 x float> %19
  %21 = fmul <2 x float> %5, %20
  %22 = insertelement <2 x float> poison, float %i.r, i64 0
  %23 = insertelement <2 x float> %22, float %i.p, i64 1
  %24 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %23, <2 x float> %21) ; 2 uses
  %i.s = extractelement <2 x float> %24, i64 1
  store float %i.s, ptr %17, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = extractelement <2 x float> %24, i64 0
  store float %i.u, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load float, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  store float %i.z, ptr %i.aa, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load float, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load float, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load float, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = insertelement <2 x float> poison, float %i.a, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.e, i64 1
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = insertelement <2 x float> poison, float %i.c, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.g, i64 1
  %i.n = fpext <2 x float> %i.m to <2 x double>
  %i.o = insertelement <2 x double> poison, double %0, i64 0
  %i.p = insertelement <2 x double> %i.o, double %1, i64 1
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.k, <2 x double> %i.n)
  %i.r = fptrunc <2 x double> %i.q to <2 x float> ; 3 uses
  store <2 x float> %i.r, ptr %3, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.mask = and i64 %i.t, 9223372036854775807
  %i.u = icmp eq i64 %.mask, 0
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = trunc i64 %i.t to i32
  %i.w = bitcast i32 %i.v to float
  %i.x = fpext float %i.w to double
  %i.y = extractelement <2 x float> %i.r, i64 0
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %1, double %i.x, double %i.z)
  %i.ab = fptrunc double %i.aa to float
  store float %i.ab, ptr %3, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %.mask16 = and i64 %i.ad, 9223372036854775807
  %i.ae = icmp eq i64 %.mask16, 0
  br i1 %i.ae, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = trunc i64 %i.ad to i32
  %i.ag = bitcast i32 %i.af to float
  %i.ah = fpext float %i.ag to double
  %i.ai = extractelement <2 x float> %i.r, i64 1
  %i.aj = fpext float %i.ai to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %0, double %i.ah, double %i.aj)
  %i.al = fptrunc double %i.ak to float
  store float %i.al, ptr %i.h, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -23, 1) i32 @gs_point_transform_inverse(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
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
  %i.i = load float, ptr %i.h, align 8, !tbaa !14
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
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ad, float %i.af) ; 4 uses
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %gs_point_transform.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !14
  %i.ak = fneg float %i.z
  %i.al = fdiv float %i.ae, %i.ag                 ; 3 uses
  %i.am = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.g, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.as = load float, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.au = fdiv float %i.ak, %i.ag                 ; 3 uses
  %i.av = insertelement <2 x float> %i.aq, float %i.al, i64 0
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.av, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x float> %i.aq, float %i.au, i64 1
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.ay)
  %i.bd = fneg <2 x float> %i.bc
  %i.be = fpext <2 x float> %i.aq to <2 x double>
  %i.bf = fpext <2 x float> %i.bd to <2 x double>
  %i.bg = insertelement <2 x double> poison, double %0, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %1, i64 1
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.be, <2 x double> %i.bf)
  %i.bj = fptrunc <2 x double> %i.bi to <2 x float> ; 3 uses
  store <2 x float> %i.bj, ptr %3, align 4, !tbaa !9
  %i.bk = tail call i1 @llvm.is.fpclass.f32(float %i.al, /* (pzero) */ i32 64)
  br i1 %i.bk, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = fpext float %i.al to double
  %i.bm = extractelement <2 x float> %i.bj, i64 0
  %i.bn = fpext float %i.bm to double
  %i.bo = tail call double @llvm.fmuladd.f64(double %1, double %i.bl, double %i.bn)
  %i.bp = fptrunc double %i.bo to float
  store float %i.bp, ptr %3, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = tail call i1 @llvm.is.fpclass.f32(float %i.au, /* (pzero) */ i32 64)
  br i1 %i.bq, label %gs_point_transform.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = fpext float %i.au to double
  %i.bs = extractelement <2 x float> %i.bj, i64 1
  %i.bt = fpext float %i.bs to double
  %i.bu = tail call double @llvm.fmuladd.f64(double %0, double %i.br, double %i.bt)
  %i.bv = fptrunc double %i.bu to float
  store float %i.bv, ptr %i.at, align 4, !tbaa !22
  br label %gs_point_transform.exit

gs_point_transform.exit:                          ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ -23, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform(double noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %2, align 8, !tbaa !16
  %i.b = fpext float %i.a to double
  %i.c = fmul double %0, %i.b
  %i.d = fptrunc double %i.c to float             ; 2 uses
  store float %i.d, ptr %3, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !17
  %i.g = fpext float %i.f to double
  %i.h = fmul double %1, %i.g
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %i.i, ptr %i.j, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@gs_bbox_transform_inverse:bb.a
  %i.ca = load <2 x float>, ptr %i.bz, align 4, !tbaa !9
  %i.cb = fsub <2 x float> %i.ca, %i.a            ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float 0.000000e+00, i64 1
  %i.cd = fdiv <2 x float> %i.cc, %i.bv
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %i.cf = fpext float %i.ce to double
  %i.cg = fdiv float 0.000000e+00, %i.i
  %i.ch = fdiv double %i.cf, %i.bt
  br label %bb.h

.thread.i49:                                      ; preds = %bb.f, %bb.e
  %.sroa.6.0.ph.ph = phi float [ %i.au, %bb.e ], [ %i.bi, %bb.f ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !9
  %i.ck = fsub <2 x float> %i.cj, %i.a            ; 3 uses
  %i.cl = fpext float %i.r to double
  %i.cm = insertelement <2 x float> %i.ad, float %i.i, i64 1
  %i.cn = fpext <2 x float> %i.cm to <2 x double> ; 2 uses
  %i.co = insertelement <2 x float> %i.ck, float %i.i, i64 1
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cr = insertelement <2 x float> %i.cq, float %i.m, i64 0
  %i.cs = fpext <2 x float> %i.cr to <2 x double> ; 2 uses
  %i.ct = insertelement <2 x double> %i.cn, double 0.000000e+00, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fpext float %i.k to double
  %i.cx = insertelement <2 x float> poison, float %i.k, i64 1
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> %i.ck, <2 x i32> <i32 3, i32 1>
  %i.cz = fpext <2 x float> %i.cy to <2 x double> ; 2 uses
  %i.da = fneg double %i.cw
  %i.db = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.da, i64 1
  %i.dc = fmul <2 x double> %i.db, %i.cs
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.ct, <2 x double> %i.dc)
  %i.de = fdiv <2 x double> %i.dd, %i.cv
  %i.df = fptrunc <2 x double> %i.de to <2 x float>
  %i.dg = fneg <2 x double> %i.cs
  %i.dh = insertelement <2 x double> %i.dg, double -0.000000e+00, i64 1
  %i.di = fmul <2 x double> %i.dh, %i.cz
  %i.dj = shufflevector <2 x double> %i.cz, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.dj, <2 x double> %i.di)
  %i.dl = fdiv <2 x double> %i.dk, %i.cv          ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  %i.dn = fptrunc double %i.dm to float
  %i.do = insertelement <2 x float> poison, float %.sroa.056.0, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %.sroa.6.0.ph.ph, i64 1
  %i.dq = extractelement <2 x double> %i.dl, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.thread.i49, %bb.g
  %.sroa.0.0 = phi float [ %i.cg, %bb.g ], [ %i.dn, %.thread.i49 ] ; 2 uses
  %.sink29.i51 = phi double [ %i.ch, %bb.g ], [ %i.dq, %.thread.i49 ] ; 2 uses
  %i.dr = phi <2 x float> [ %i.cd, %bb.g ], [ %i.df, %.thread.i49 ] ; 2 uses
  %i.ds = phi <2 x float> [ %i.by, %bb.g ], [ %i.dp, %.thread.i49 ] ; 3 uses
  %i.dt = fptrunc double %.sink29.i51 to float
  %i.du = fcmp olt <2 x float> %i.dr, zeroinitializer ; 2 uses
  %i.dv = fadd <2 x float> %i.dr, %i.ds           ; 2 uses
  %i.dw = fcmp olt float %.sroa.0.0, 0.000000e+00
  %i.dx = fcmp olt double %.sink29.i51, f0xB690000000000000
  %i.dy = select <2 x i1> %i.du, <2 x float> %i.dv, <2 x float> %i.ds ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dt, i64 1 ; 2 uses
  %i.eb = fadd <2 x float> %i.ea, %i.dy
  %i.ec = insertelement <2 x i1> poison, i1 %i.dw, i64 0
  %i.ed = insertelement <2 x i1> %i.ec, i1 %i.dx, i64 1 ; 2 uses
  %i.ee = select <2 x i1> %i.ed, <2 x float> %i.eb, <2 x float> %i.dy
  store <2 x float> %i.ee, ptr %2, align 4, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = select <2 x i1> %i.du, <2 x float> %i.ds, <2 x float> %i.dv ; 2 uses
  %i.eh = fadd <2 x float> %i.ea, %i.eg
  %i.ei = select <2 x i1> %i.ed, <2 x float> %i.eg, <2 x float> %i.eh
  store <2 x float> %i.ei, ptr %i.ef, align 4, !tbaa !9
  br label %gs_point_transform_inverse.exit

gs_point_transform_inverse.exit:                  ; preds = %bb.b, %bb.h
  %.033 = phi i32 [ 0, %bb.h ], [ -23, %bb.b ]
  ret i32 %.033
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_point_transform2fixed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %0, align 8, !tbaa !24
  %i.b = fpext float %i.a to double
  %i.c = fmul double %1, %i.b
  %i.d = fmul double %i.c, 4.096000e+03
  %i.e = fptosi double %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = add nsw i64 %i.g, %i.e                   ; 2 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load float, ptr %i.i, align 8, !tbaa !27
  %i.k = fpext float %i.j to double
  %i.l = fmul double %2, %i.k
  %i.m = fmul double %i.l, 4.096000e+03
  %i.n = fptosi double %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !28
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
  store i64 %i.ab, ptr %3, align 8, !tbaa !26
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
  store i64 %i.al, ptr %i.r, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_distance_transform2fixed(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %0, align 8, !tbaa !24
  %i.b = fpext float %i.a to double
  %i.c = fmul double %1, %i.b
  %i.d = fmul double %i.c, 4.096000e+03
  %i.e = fptosi double %i.d to i64                ; 2 uses
  store i64 %i.e, ptr %3, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load float, ptr %i.f, align 8, !tbaa !27
  %i.h = fpext float %i.g to double
  %i.i = fmul double %2, %i.h
  %i.j = fmul double %i.i, 4.096000e+03
  %i.k = fptosi double %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !28
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
  store i64 %i.v, ptr %3, align 8, !tbaa !26
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
  store i64 %i.af, ptr %i.l, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i64 0, i64 4, !9, i64 8, i64 8, !11, i64 16, i64 4, !9, i64 24, i64 8, !11, i64 32, i64 4, !9, i64 40, i64 8, !11, i64 48, i64 4, !9, i64 56, i64 8, !11, i64 64, i64 4, !9, i64 72, i64 8, !11, i64 80, i64 4, !9, i64 88, i64 8, !11}
!13 = !{!"gs_matrix_s", !8, i64 0, !10, i64 8, !8, i64 16, !10, i64 24, !8, i64 32, !10, i64 40, !8, i64 48, !10, i64 56, !8, i64 64, !10, i64 72, !8, i64 80, !10, i64 88}
!14 = !{!13, !8, i64 64}
!15 = !{!13, !8, i64 80}
!16 = !{!13, !8, i64 0}
!17 = !{!13, !8, i64 48}
!18 = !{!13, !8, i64 16}
!19 = !{!13, !8, i64 32}
!20 = !{!"gs_point_s", !8, i64 0, !8, i64 4}
!21 = !{!20, !8, i64 0}
!22 = !{!20, !8, i64 4}
!23 = !{!"gs_matrix_fixed_s", !8, i64 0, !10, i64 8, !8, i64 16, !10, i64 24, !8, i64 32, !10, i64 40, !8, i64 48, !10, i64 56, !8, i64 64, !10, i64 72, !8, i64 80, !10, i64 88, !10, i64 96, !10, i64 104}
!24 = !{!23, !8, i64 0}
!25 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 8}
!26 = !{!25, !10, i64 0}
!27 = !{!23, !8, i64 48}
!28 = !{!25, !10, i64 8}
!29 = !{!23, !10, i64 96}
!30 = !{!23, !10, i64 104}
end_hunk_1
