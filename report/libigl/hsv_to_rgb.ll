Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/hsv_to_rgb?download=true
inline.NumInlined: 210
inline.NumDeleted: 125
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_ = comdat any

$_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIhLi64ELi3ELi1ELi64ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIfLi64ELi3ELi1ELi64ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !13   ; 9 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %.idx = shl i64 %i.k, 4                         ; 5 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !17     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 4 uses
  %.idx21 = shl i64 %i.p, 4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = ptrtoaddr ptr %i.n to i64                ; 3 uses
  %i.r = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.s = shl i64 %i.p, 3                          ; 2 uses
  %i.t = add i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 15
  %i.u = sub i64 %i.q, %i.r                       ; 3 uses
  %i.v = sub i64 %.idx, %i.u
  %diff.check27 = icmp ugt i64 %i.v, -16
  %conflict.rdx28 = or i1 %diff.check, %diff.check27
  %i.w = shl i64 %i.k, 3                          ; 3 uses
  %i.x = sub i64 %i.w, %i.u
  %diff.check29 = icmp ugt i64 %i.x, -16
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  %2 = add i64 %i.u, -1
  %diff.check50 = icmp ult i64 %2, 15
  %conflict.rdx32 = or i1 %conflict.rdx30, %diff.check50
  %i.y = add i64 %i.s, %i.q
  %i.z = sub i64 %i.y, %i.r                       ; 3 uses
  %i.aa = sub i64 %.idx, %i.z
  %diff.check33 = icmp ugt i64 %i.aa, -16
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  %i.ab = sub i64 %i.w, %i.z
  %diff.check35 = icmp ugt i64 %i.ab, -16
  %conflict.rdx36 = or i1 %conflict.rdx34, %diff.check35
  %i.ac = add i64 %i.z, -1
  %diff.check56 = icmp ult i64 %i.ac, 15
  %conflict.rdx38 = or i1 %conflict.rdx36, %diff.check56
  %i.ad = add i64 %.idx21, %i.q
  %i.ae = sub i64 %i.ad, %i.r                     ; 3 uses
  %i.af = sub i64 %.idx, %i.ae
  %diff.check39 = icmp ugt i64 %i.af, -16
  %conflict.rdx40 = or i1 %conflict.rdx38, %diff.check39
  %i.ag = sub i64 %i.w, %i.ae
  %diff.check41 = icmp ugt i64 %i.ag, -16
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %i.ah = add i64 %i.ae, -1
  %diff.check62 = icmp ult i64 %i.ah, 15
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check62
  br i1 %conflict.rdx44, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 9223372036854775806      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.m, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %i.k
  %wide.load45 = load <2 x double>, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 %.idx
  %wide.load46 = load <2 x double>, ptr %i.ak, align 8, !tbaa !19 ; 6 uses
  %i.al = fptosi <2 x double> %wide.load to <2 x i32>
  %i.am = freeze <2 x i32> %i.al
  %i.an = srem <2 x i32> %i.am, splat (i32 360)   ; 3 uses
  %i.ao = add nsw <2 x i32> %i.an, splat (i32 360)
  %i.ap = icmp slt <2 x i32> %i.an, zeroinitializer
  %i.aq = select <2 x i1> %i.ap, <2 x i32> %i.ao, <2 x i32> %i.an
  %i.ar = uitofp nneg <2 x i32> %i.aq to <2 x double>
  %i.as = fdiv <2 x double> %i.ar, splat (double 6.000000e+01) ; 2 uses
  %i.at = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.as)
  %i.au = fptosi <2 x double> %i.at to <2 x i32>  ; 10 uses
  %i.av = uitofp nneg <2 x i32> %i.au to <2 x double>
  %i.aw = fsub <2 x double> %i.as, %i.av          ; 2 uses
  %i.ax = fsub <2 x double> splat (double 1.000000e+00), %wide.load45
  %i.ay = fmul <2 x double> %wide.load46, %i.ax   ; 3 uses
  %i.az = fneg <2 x double> %wide.load45          ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.aw, <2 x double> splat (double 1.000000e+00))
  %i.bb = fmul <2 x double> %wide.load46, %i.ba   ; 3 uses
  %i.bc = fsub <2 x double> splat (double 1.000000e+00), %i.aw
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bc, <2 x double> splat (double 1.000000e+00))
  %i.be = fmul <2 x double> %wide.load46, %i.bd   ; 3 uses
  %i.bf = icmp eq <2 x i32> %i.au, zeroinitializer ; 2 uses
  %i.bg = icmp eq <2 x i32> %i.au, splat (i32 1)
  %i.bh = icmp eq <2 x i32> %i.au, splat (i32 2)
  %i.bi = icmp eq <2 x i32> %i.au, splat (i32 3)
  %i.bj = icmp eq <2 x i32> %i.au, splat (i32 4)
  %i.bk = icmp eq <2 x i32> %i.au, splat (i32 5)  ; 2 uses
  %i.bl = icmp samesign ult <2 x i32> %i.au, splat (i32 6) ; 3 uses
  %i.bm = or <2 x i1> %i.bf, %i.bk
  %predphi = select <2 x i1> %i.bg, <2 x double> %i.bb, <2 x double> %i.ay
  %predphi47 = select <2 x i1> %i.bj, <2 x double> %i.be, <2 x double> %predphi
  %predphi48 = select <2 x i1> %i.bm, <2 x double> %wide.load46, <2 x double> %predphi47
  %predphi49 = select <2 x i1> %i.bl, <2 x double> %predphi48, <2 x double> zeroinitializer
  %i.bn = and <2 x i32> %i.au, splat (i32 2147483646)
  %i.bo = icmp eq <2 x i32> %i.bn, splat (i32 4)
  %predphi50 = select <2 x i1> %i.bi, <2 x double> %i.bb, <2 x double> %wide.load46
  %predphi51 = select <2 x i1> %i.bo, <2 x double> %i.ay, <2 x double> %predphi50
  %predphi52 = select <2 x i1> %i.bl, <2 x double> %predphi51, <2 x double> zeroinitializer
  %predphi53 = select <2 x i1> %i.bf, <2 x double> %i.be, <2 x double> %predphi52
  %i.bp = add nsw <2 x i32> %i.au, splat (i32 -3)
  %i.bq = icmp ult <2 x i32> %i.bp, splat (i32 2)
  %predphi54 = select <2 x i1> %i.bh, <2 x double> %i.be, <2 x double> %i.ay
  %predphi55 = select <2 x i1> %i.bq, <2 x double> %wide.load46, <2 x double> %predphi54
  %predphi56 = select <2 x i1> %i.bk, <2 x double> %i.bb, <2 x double> %predphi55
  %predphi57 = select <2 x i1> %i.bl, <2 x double> %predphi56, <2 x double> zeroinitializer
  %i.br = getelementptr [8 x i8], ptr %i.n, i64 %index ; 3 uses
  store <2 x double> %predphi49, ptr %i.br, align 8, !tbaa !19
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.p
  store <2 x double> %predphi53, ptr %i.bs, align 8, !tbaa !19
  %i.bt = getelementptr i8, ptr %i.br, i64 %.idx21
  store <2 x double> %predphi57, ptr %i.bt, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit
  %.022 = phi i64 [ %i.db, %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit ], [ %.022.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bv = getelementptr [8 x i8], ptr %i.m, i64 %.022 ; 3 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !19
  %i.bx = getelementptr [8 x i8], ptr %i.bv, i64 %i.k
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bv, i64 %.idx
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !19 ; 9 uses
  %i.cb = fptosi double %i.bw to i32
  %.fr48.i.i = freeze i32 %i.cb
  %i.cc = srem i32 %.fr48.i.i, 360                ; 3 uses
  %i.cd = add nsw i32 %i.cc, 360
  %.cmp.i.i = icmp slt i32 %i.cc, 0
  %i.ce = select i1 %.cmp.i.i, i32 %i.cd, i32 %i.cc
  %i.cf = uitofp nneg i32 %i.ce to double
  %i.cg = fdiv double %i.cf, 6.000000e+01         ; 2 uses
  %i.ch = tail call double @llvm.floor.f64(double %i.cg)
  %i.ci = fptosi double %i.ch to i32              ; 2 uses
  %i.cj = uitofp nneg i32 %i.ci to double
  %i.ck = fsub double %i.cg, %i.cj                ; 2 uses
  %i.cl = fsub double 1.000000e+00, %i.by
  %i.cm = fmul double %i.ca, %i.cl                ; 6 uses
  %i.cn = fneg double %i.by
  %i.co = fsub double 1.000000e+00, %i.ck
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 1
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cs, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0
  %i.cv = fmul double %i.ca, %i.cu                ; 3 uses
  %i.cw = extractelement <2 x double> %i.ct, i64 1
  %i.cx = fmul double %i.ca, %i.cw                ; 3 uses
  switch i32 %i.ci, label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit [
    i32 0, label %.sink.split.i.i
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.d:                                             ; preds = %scalar.ph
  br label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit

bb.e:                                             ; preds = %scalar.ph
  br label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit

bb.f:                                             ; preds = %scalar.ph
  br label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit

bb.g:                                             ; preds = %scalar.ph
  br label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit

bb.h:                                             ; preds = %scalar.ph
  br label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit

.sink.split.i.i:                                  ; preds = %scalar.ph
  br label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit

_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit:            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %scalar.ph, %.sink.split.i.i
  %.sroa.0.1 = phi double [ 0.000000e+00, %scalar.ph ], [ %i.ca, %bb.h ], [ %i.cv, %bb.d ], [ %i.cm, %bb.e ], [ %i.cm, %bb.f ], [ %i.cx, %bb.g ], [ %i.ca, %.sink.split.i.i ]
  %.sroa.10.1 = phi double [ 0.000000e+00, %scalar.ph ], [ %i.cm, %bb.h ], [ %i.ca, %bb.d ], [ %i.ca, %bb.e ], [ %i.cv, %bb.f ], [ %i.cm, %bb.g ], [ %i.cx, %.sink.split.i.i ]
  %.sroa.17.0 = phi double [ 0.000000e+00, %scalar.ph ], [ %i.cv, %bb.h ], [ %i.cm, %bb.d ], [ %i.cx, %bb.e ], [ %i.ca, %bb.f ], [ %i.ca, %bb.g ], [ %i.cm, %.sink.split.i.i ]
  %i.cy = getelementptr [8 x i8], ptr %i.n, i64 %.022 ; 3 uses
  store double %.sroa.0.1, ptr %i.cy, align 8, !tbaa !19
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.p
  store double %.sroa.10.1, ptr %i.cz, align 8, !tbaa !19
  %i.da = getelementptr i8, ptr %i.cy, i64 %.idx21
  store double %.sroa.17.0, ptr %i.da, align 8, !tbaa !19
  %i.db = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !31
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %0, align 8, !tbaa !19
  %i.f = fptosi double %i.e to i32
  %.fr48.i = freeze i32 %i.f
  %i.g = srem i32 %.fr48.i, 360                   ; 3 uses
  %i.h = add nsw i32 %i.g, 360
  %.cmp.i = icmp slt i32 %i.g, 0
  %i.i = select i1 %.cmp.i, i32 %i.h, i32 %i.g
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = fdiv double %i.j, 6.000000e+01           ; 2 uses
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = uitofp nneg i32 %i.m to double
  %i.o = fsub double %i.k, %i.n                   ; 2 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !19 ; 5 uses
  %i.q = load double, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.r = fsub double 1.000000e+00, %i.q
  %i.s = fmul double %i.p, %i.r                   ; 6 uses
  %i.t = fneg double %i.q
  %i.u = fsub double 1.000000e+00, %i.o
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = insertelement <2 x double> poison, double %i.o, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.u, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.y, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fmul double %i.p, %i.aa                 ; 3 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fmul double %i.p, %i.ac                 ; 3 uses
  switch i32 %i.m, label %_ZN3igl10hsv_to_rgbIdEEvRKT_S3_S3_RS1_S4_S4_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store double %i.p, ptr %1, align 8, !tbaa !19
  store double %i.ad, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  store double %i.ab, ptr %1, align 8, !tbaa !19
  %i.ae = load double, ptr %i.b, align 8, !tbaa !19
  store double %i.ae, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.a
  store double %i.s, ptr %1, align 8, !tbaa !19
  %i.af = load double, ptr %i.b, align 8, !tbaa !19
  store double %i.af, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.a
  store double %i.s, ptr %1, align 8, !tbaa !19
  store double %i.ab, ptr %i.c, align 8, !tbaa !19
  %i.ag = load double, ptr %i.b, align 8, !tbaa !19
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  store double %i.ad, ptr %1, align 8, !tbaa !19
  store double %i.s, ptr %i.c, align 8, !tbaa !19
  %i.ah = load double, ptr %i.b, align 8, !tbaa !19
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  store double %i.p, ptr %1, align 8, !tbaa !19
  store double %i.s, ptr %i.c, align 8, !tbaa !19
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi double [ %i.ab, %bb.g ], [ %i.ah, %bb.f ], [ %i.ag, %bb.e ], [ %i.ad, %bb.d ], [ %i.s, %bb.c ], [ %i.s, %bb.b ]
  store double %.sink.i, ptr %i.d, align 8, !tbaa !19
  br label %_ZN3igl10hsv_to_rgbIdEEvRKT_S3_S3_RS1_S4_S4_.exit

_ZN3igl10hsv_to_rgbIdEEvRKT_S3_S3_RS1_S4_S4_.exit: ; preds = %bb.a, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #7
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %.idx = shl i64 %i.k, 3                         ; 5 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 4 uses
  %.idx21 = shl i64 %i.p, 3                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = ptrtoaddr ptr %i.n to i64                ; 3 uses
  %i.r = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.s = shl i64 %i.p, 2                          ; 2 uses
  %i.t = add i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 15
  %i.u = add i64 %.idx21, -1
  %diff.check26 = icmp ult i64 %i.u, 15
  %conflict.rdx = or i1 %diff.check, %diff.check26
  %i.v = sub i64 %i.q, %i.r                       ; 3 uses
  %i.w = sub i64 %.idx, %i.v
  %diff.check27 = icmp ugt i64 %i.w, -16
  %conflict.rdx28 = or i1 %conflict.rdx, %diff.check27
  %i.x = shl i64 %i.k, 2                          ; 3 uses
  %i.y = sub i64 %i.x, %i.v
  %diff.check29 = icmp ugt i64 %i.y, -16
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  %2 = add i64 %i.v, -1
  %diff.check50 = icmp ult i64 %2, 15
  %conflict.rdx32 = or i1 %conflict.rdx30, %diff.check50
  %i.z = add i64 %i.s, %i.q
  %i.aa = sub i64 %i.z, %i.r                      ; 3 uses
  %i.ab = sub i64 %.idx, %i.aa
  %diff.check33 = icmp ugt i64 %i.ab, -16
  %conflict.rdx34 = or i1 %conflict.rdx32, %diff.check33
  %i.ac = sub i64 %i.x, %i.aa
  %diff.check35 = icmp ugt i64 %i.ac, -16
  %conflict.rdx36 = or i1 %conflict.rdx34, %diff.check35
  %i.ad = add i64 %i.aa, -1
  %diff.check56 = icmp ult i64 %i.ad, 15
  %conflict.rdx38 = or i1 %conflict.rdx36, %diff.check56
  %i.ae = add i64 %.idx21, %i.q
  %i.af = sub i64 %i.ae, %i.r                     ; 3 uses
  %i.ag = sub i64 %.idx, %i.af
  %diff.check39 = icmp ugt i64 %i.ag, -16
  %conflict.rdx40 = or i1 %conflict.rdx38, %diff.check39
  %i.ah = sub i64 %i.x, %i.af
  %diff.check41 = icmp ugt i64 %i.ah, -16
  %conflict.rdx42 = or i1 %conflict.rdx40, %diff.check41
  %i.ai = add i64 %i.af, -1
  %diff.check62 = icmp ult i64 %i.ai, 15
  %conflict.rdx44 = or i1 %conflict.rdx42, %diff.check62
  br i1 %conflict.rdx44, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !29
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.k
  %wide.load45 = load <4 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.al = getelementptr i8, ptr %i.aj, i64 %.idx
  %wide.load46 = load <4 x float>, ptr %i.al, align 4, !tbaa !29 ; 4 uses
  %i.am = fptosi <4 x float> %wide.load to <4 x i32>
  %i.an = freeze <4 x i32> %i.am
  %i.ao = srem <4 x i32> %i.an, splat (i32 360)   ; 3 uses
  %i.ap = add nsw <4 x i32> %i.ao, splat (i32 360)
  %i.aq = icmp slt <4 x i32> %i.ao, zeroinitializer
  %i.ar = select <4 x i1> %i.aq, <4 x i32> %i.ap, <4 x i32> %i.ao
  %i.as = uitofp nneg <4 x i32> %i.ar to <4 x double>
  %i.at = fdiv <4 x double> %i.as, splat (double 6.000000e+01) ; 2 uses
  %i.au = tail call <4 x double> @llvm.floor.v4f64(<4 x double> %i.at)
  %i.av = fptosi <4 x double> %i.au to <4 x i32>  ; 11 uses
  %i.aw = uitofp nneg <4 x i32> %i.av to <4 x double>
  %i.ax = fsub <4 x double> %i.at, %i.aw          ; 2 uses
  %i.ay = fpext <4 x float> %wide.load46 to <4 x double> ; 3 uses
  %i.az = fpext <4 x float> %wide.load45 to <4 x double> ; 2 uses
  %i.ba = fsub <4 x double> splat (double 1.000000e+00), %i.az
  %i.bb = fmul <4 x double> %i.ba, %i.ay
  %i.bc = fneg <4 x double> %i.az                 ; 2 uses
  %i.bd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bc, <4 x double> %i.ax, <4 x double> splat (double 1.000000e+00))
  %i.be = fmul <4 x double> %i.bd, %i.ay
  %i.bf = fsub <4 x double> splat (double 1.000000e+00), %i.ax
  %i.bg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bc, <4 x double> %i.bf, <4 x double> splat (double 1.000000e+00))
  %i.bh = fmul <4 x double> %i.bg, %i.ay
  %i.bi = icmp eq <4 x i32> %i.av, zeroinitializer
  %i.bj = icmp eq <4 x i32> %i.av, splat (i32 1)
  %i.bk = icmp eq <4 x i32> %i.av, splat (i32 2)
  %i.bl = icmp eq <4 x i32> %i.av, splat (i32 3)
  %i.bm = icmp eq <4 x i32> %i.av, splat (i32 4)
  %i.bn = icmp eq <4 x i32> %i.av, splat (i32 5)
  %i.bo = icmp samesign ult <4 x i32> %i.av, splat (i32 6) ; 3 uses
  %i.bp = fptrunc <4 x double> %i.bb to <4 x float> ; 3 uses
  %i.bq = fptrunc <4 x double> %i.be to <4 x float> ; 3 uses
  %i.br = fptrunc <4 x double> %i.bh to <4 x float> ; 3 uses
  %predphi = select <4 x i1> %i.bj, <4 x float> %i.bq, <4 x float> %wide.load46
  %i.bs = and <4 x i32> %i.av, splat (i32 2147483646)
  %i.bt = icmp eq <4 x i32> %i.bs, splat (i32 2)
  %predphi48 = select <4 x i1> %i.bt, <4 x float> %i.bp, <4 x float> %predphi
  %predphi49 = select <4 x i1> %i.bm, <4 x float> %i.br, <4 x float> %predphi48
  %predphi50 = select <4 x i1> %i.bo, <4 x float> %predphi49, <4 x float> zeroinitializer
  %predphi51 = select <4 x i1> %i.bi, <4 x float> %i.br, <4 x float> %wide.load46
  %predphi52 = select <4 x i1> %i.bl, <4 x float> %i.bq, <4 x float> %predphi51
  %i.bu = and <4 x i32> %i.av, splat (i32 2147483646)
  %i.bv = icmp eq <4 x i32> %i.bu, splat (i32 4)
  %predphi54 = select <4 x i1> %i.bv, <4 x float> %i.bp, <4 x float> %predphi52
  %predphi55 = select <4 x i1> %i.bo, <4 x float> %predphi54, <4 x float> zeroinitializer
  %i.bw = icmp samesign ult <4 x i32> %i.av, splat (i32 2)
  %predphi57 = select <4 x i1> %i.bw, <4 x float> %i.bp, <4 x float> %wide.load46
  %predphi58 = select <4 x i1> %i.bk, <4 x float> %i.br, <4 x float> %predphi57
  %predphi59 = select <4 x i1> %i.bn, <4 x float> %i.bq, <4 x float> %predphi58
  %predphi60 = select <4 x i1> %i.bo, <4 x float> %predphi59, <4 x float> zeroinitializer
  %i.bx = getelementptr [4 x i8], ptr %i.n, i64 %index ; 3 uses
  store <4 x float> %predphi50, ptr %i.bx, align 4, !tbaa !29
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %i.p
  store <4 x float> %predphi55, ptr %i.by, align 4, !tbaa !29
  %i.bz = getelementptr i8, ptr %i.bx, i64 %.idx21
  store <4 x float> %predphi60, ptr %i.bz, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit
  %.022 = phi i64 [ %i.dv, %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit ], [ %.022.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.m, i64 %.022 ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !29
  %i.cd = getelementptr [4 x i8], ptr %i.cb, i64 %i.k
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !29
  %i.cf = getelementptr i8, ptr %i.cb, i64 %.idx
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !29 ; 7 uses
  %i.ch = fptosi float %i.cc to i32
  %.fr48.i = freeze i32 %i.ch
  %i.ci = srem i32 %.fr48.i, 360                  ; 3 uses
  %i.cj = add nsw i32 %i.ci, 360
  %.cmp.i = icmp slt i32 %i.ci, 0
  %i.ck = select i1 %.cmp.i, i32 %i.cj, i32 %i.ci
  %i.cl = uitofp nneg i32 %i.ck to double
  %i.cm = fdiv double %i.cl, 6.000000e+01         ; 2 uses
  %i.cn = tail call double @llvm.floor.f64(double %i.cm)
  %i.co = fptosi double %i.cn to i32              ; 2 uses
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fsub double %i.cm, %i.cp                ; 2 uses
  %i.cr = fpext float %i.cg to double             ; 3 uses
  %i.cs = fpext float %i.ce to double             ; 2 uses
  %i.ct = fsub double 1.000000e+00, %i.cs
  %i.cu = fmul double %i.ct, %i.cr                ; 6 uses
  %i.cv = fneg double %i.cs
  %i.cw = fsub double 1.000000e+00, %i.cq
  %i.cx = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cw, i64 1
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.da, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = fmul double %i.dc, %i.cr                ; 3 uses
  %i.de = extractelement <2 x double> %i.db, i64 1
  %i.df = fmul double %i.de, %i.cr                ; 3 uses
  switch i32 %i.co, label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.d:                                             ; preds = %scalar.ph
  %i.dg = fptrunc double %i.df to float
  %i.dh = fptrunc double %i.cu to float
  br label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit

bb.e:                                             ; preds = %scalar.ph
  %i.di = fptrunc double %i.dd to float
  %i.dj = fptrunc double %i.cu to float
  br label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit

bb.f:                                             ; preds = %scalar.ph
  %i.dk = fptrunc double %i.cu to float
  %i.dl = fptrunc double %i.df to float
  br label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit

bb.g:                                             ; preds = %scalar.ph
  %i.dm = fptrunc double %i.cu to float
  %i.dn = fptrunc double %i.dd to float
  br label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit

bb.h:                                             ; preds = %scalar.ph
  %i.do = fptrunc double %i.df to float
  %i.dp = fptrunc double %i.cu to float
  br label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit

bb.i:                                             ; preds = %scalar.ph
  %i.dq = fptrunc double %i.cu to float
  %i.dr = fptrunc double %i.dd to float
  br label %_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit

_ZN3igl10hsv_to_rgbIfEEvRKT_S3_S3_RS1_S4_S4_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %scalar.ph
  %.sroa.0.1 = phi float [ 0.000000e+00, %scalar.ph ], [ %i.cg, %bb.d ], [ %i.di, %bb.e ], [ %i.dk, %bb.f ], [ %i.dm, %bb.g ], [ %i.do, %bb.h ], [ %i.cg, %bb.i ]
  %.sroa.10.1 = phi float [ 0.000000e+00, %scalar.ph ], [ %i.dg, %bb.d ], [ %i.cg, %bb.e ], [ %i.cg, %bb.f ], [ %i.dn, %bb.g ], [ %i.dp, %bb.h ], [ %i.dq, %bb.i ]
  %.sroa.17.0 = phi float [ 0.000000e+00, %scalar.ph ], [ %i.dh, %bb.d ], [ %i.dj, %bb.e ], [ %i.dl, %bb.f ], [ %i.cg, %bb.g ], [ %i.cg, %bb.h ], [ %i.dr, %bb.i ]
  %i.ds = getelementptr [4 x i8], ptr %i.n, i64 %.022 ; 3 uses
  store float %.sroa.0.1, ptr %i.ds, align 4, !tbaa !29
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.p
  store float %.sroa.10.1, ptr %i.dt, align 4, !tbaa !29
  %i.du = getelementptr i8, ptr %i.ds, i64 %.idx21
  store float %.sroa.17.0, ptr %i.du, align 4, !tbaa !29
  %i.dv = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !33
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10hsv_to_rgbIN5Eigen6MatrixIhLi64ELi3ELi1ELi64ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(192) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %_ZN3igl10hsv_to_rgbIhEEvPKT_PS1_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN3igl10hsv_to_rgbIhEEvPKT_PS1_.exit
  %.021 = phi i64 [ 0, %bb.a ], [ %i.ar, %_ZN3igl10hsv_to_rgbIhEEvPKT_PS1_.exit ] ; 2 uses
  %i.a = mul nuw nsw i64 %.021, 3                 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a       ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !35
  %i.d = getelementptr i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = getelementptr i8, ptr %i.b, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35    ; 7 uses
  %i.h = uitofp i8 %i.c to double
  %i.i = fdiv double %i.h, 6.000000e+01           ; 2 uses
  %i.j = tail call double @llvm.floor.f64(double %i.i)
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = uitofp nneg i32 %i.k to double
  %i.m = fsub double %i.i, %i.l                   ; 2 uses
  %i.n = uitofp i8 %i.g to double                 ; 3 uses
  %i.o = uitofp i8 %i.e to double                 ; 2 uses
  %i.p = fsub nnan double 1.000000e+00, %i.o
  %i.q = fmul double %i.p, %i.n                   ; 6 uses
end_hunk_0
