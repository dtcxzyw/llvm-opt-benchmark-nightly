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
  %min.iters.check = icmp ult i64 %i.k, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = ptrtoaddr ptr %i.n to i64                ; 3 uses
  %i.r = ptrtoaddr ptr %i.m to i64                ; 3 uses
  %i.s = shl i64 %i.p, 3                          ; 2 uses
  %i.t = add i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 15
  %i.u = sub i64 %i.q, %i.r                       ; 3 uses
  %i.v = sub i64 %.idx, %i.u
  %diff.check46 = icmp ugt i64 %i.v, -16
  %conflict.rdx47 = or i1 %diff.check, %diff.check46
  %i.w = shl i64 %i.k, 3                          ; 3 uses
  %i.x = sub i64 %i.w, %i.u
  %diff.check48 = icmp ugt i64 %i.x, -16
  %conflict.rdx49 = or i1 %conflict.rdx47, %diff.check48
  %i.y = add i64 %i.u, -1
  %diff.check50 = icmp ult i64 %i.y, 15
  %conflict.rdx51 = or i1 %conflict.rdx49, %diff.check50
  %i.z = add i64 %i.s, %i.q
  %i.aa = sub i64 %i.z, %i.r                      ; 3 uses
  %i.ab = sub i64 %.idx, %i.aa
  %diff.check52 = icmp ugt i64 %i.ab, -16
  %conflict.rdx53 = or i1 %conflict.rdx51, %diff.check52
  %i.ac = sub i64 %i.w, %i.aa
  %diff.check54 = icmp ugt i64 %i.ac, -16
  %conflict.rdx55 = or i1 %conflict.rdx53, %diff.check54
  %i.ad = add i64 %i.aa, -1
  %diff.check56 = icmp ult i64 %i.ad, 15
  %conflict.rdx57 = or i1 %conflict.rdx55, %diff.check56
  %i.ae = add i64 %.idx21, %i.q
  %i.af = sub i64 %i.ae, %i.r                     ; 3 uses
  %i.ag = sub i64 %.idx, %i.af
  %diff.check58 = icmp ugt i64 %i.ag, -16
  %conflict.rdx59 = or i1 %conflict.rdx57, %diff.check58
  %i.ah = sub i64 %i.w, %i.af
  %diff.check60 = icmp ugt i64 %i.ah, -16
  %conflict.rdx61 = or i1 %conflict.rdx59, %diff.check60
  %i.ai = add i64 %i.af, -1
  %diff.check62 = icmp ult i64 %i.ai, 15
  %conflict.rdx63 = or i1 %conflict.rdx61, %diff.check62
  br i1 %conflict.rdx63, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 9223372036854775806      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.m, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.k
  %wide.load64 = load <2 x double>, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 %.idx
  %wide.load65 = load <2 x double>, ptr %i.al, align 8, !tbaa !19 ; 6 uses
  %i.am = fptosi <2 x double> %wide.load to <2 x i32>
  %i.an = freeze <2 x i32> %i.am
  %i.ao = srem <2 x i32> %i.an, splat (i32 360)   ; 3 uses
  %i.ap = add nsw <2 x i32> %i.ao, splat (i32 360)
  %i.aq = icmp slt <2 x i32> %i.ao, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i32> %i.ap, <2 x i32> %i.ao
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x double>
  %i.at = fdiv <2 x double> %i.as, splat (double 6.000000e+01) ; 2 uses
  %i.au = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.at)
  %i.av = fptosi <2 x double> %i.au to <2 x i32>  ; 10 uses
  %i.aw = uitofp nneg <2 x i32> %i.av to <2 x double>
  %i.ax = fsub <2 x double> %i.at, %i.aw          ; 2 uses
  %i.ay = fsub <2 x double> splat (double 1.000000e+00), %wide.load64
  %i.az = fmul <2 x double> %wide.load65, %i.ay   ; 3 uses
  %i.ba = fneg <2 x double> %wide.load64          ; 2 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.ax, <2 x double> splat (double 1.000000e+00))
  %i.bc = fmul <2 x double> %wide.load65, %i.bb   ; 3 uses
  %i.bd = fsub <2 x double> splat (double 1.000000e+00), %i.ax
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bd, <2 x double> splat (double 1.000000e+00))
  %i.bf = fmul <2 x double> %wide.load65, %i.be   ; 3 uses
  %i.bg = icmp eq <2 x i32> %i.av, zeroinitializer ; 2 uses
  %i.bh = icmp eq <2 x i32> %i.av, splat (i32 1)
  %i.bi = icmp eq <2 x i32> %i.av, splat (i32 2)
  %i.bj = icmp eq <2 x i32> %i.av, splat (i32 3)
  %i.bk = icmp eq <2 x i32> %i.av, splat (i32 4)
  %i.bl = icmp eq <2 x i32> %i.av, splat (i32 5)  ; 2 uses
  %i.bm = icmp samesign ult <2 x i32> %i.av, splat (i32 6) ; 3 uses
  %i.bn = or <2 x i1> %i.bg, %i.bl
  %predphi = select <2 x i1> %i.bh, <2 x double> %i.bc, <2 x double> %i.az
  %predphi66 = select <2 x i1> %i.bk, <2 x double> %i.bf, <2 x double> %predphi
  %predphi67 = select <2 x i1> %i.bn, <2 x double> %wide.load65, <2 x double> %predphi66
  %predphi68 = select <2 x i1> %i.bm, <2 x double> %predphi67, <2 x double> zeroinitializer
  %i.bo = and <2 x i32> %i.av, splat (i32 2147483646)
  %i.bp = icmp eq <2 x i32> %i.bo, splat (i32 4)
  %predphi69 = select <2 x i1> %i.bj, <2 x double> %i.bc, <2 x double> %wide.load65
  %predphi70 = select <2 x i1> %i.bp, <2 x double> %i.az, <2 x double> %predphi69
  %predphi71 = select <2 x i1> %i.bm, <2 x double> %predphi70, <2 x double> zeroinitializer
  %predphi72 = select <2 x i1> %i.bg, <2 x double> %i.bf, <2 x double> %predphi71
  %i.bq = add nsw <2 x i32> %i.av, splat (i32 -3)
  %i.br = icmp ult <2 x i32> %i.bq, splat (i32 2)
  %predphi73 = select <2 x i1> %i.bi, <2 x double> %i.bf, <2 x double> %i.az
  %predphi74 = select <2 x i1> %i.br, <2 x double> %wide.load65, <2 x double> %predphi73
  %predphi75 = select <2 x i1> %i.bl, <2 x double> %i.bc, <2 x double> %predphi74
  %predphi76 = select <2 x i1> %i.bm, <2 x double> %predphi75, <2 x double> zeroinitializer
  %i.bs = getelementptr [8 x i8], ptr %i.n, i64 %index ; 3 uses
  store <2 x double> %predphi68, ptr %i.bs, align 8, !tbaa !19
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.p
  store <2 x double> %predphi72, ptr %i.bt, align 8, !tbaa !19
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx21
  store <2 x double> %predphi76, ptr %i.bu, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeIS2_EEvRKNS_9EigenBaseIT_EE.exit
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit
  %.022 = phi i64 [ %i.dc, %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit ], [ %.022.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bw = getelementptr [8 x i8], ptr %i.m, i64 %.022 ; 3 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !19
  %i.by = getelementptr [8 x i8], ptr %i.bw, i64 %i.k
  %i.bz = load double, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 %.idx
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !19 ; 9 uses
  %i.cc = fptosi double %i.bx to i32
  %.fr48.i.i = freeze i32 %i.cc
  %i.cd = srem i32 %.fr48.i.i, 360                ; 3 uses
  %i.ce = add nsw i32 %i.cd, 360
  %.cmp.i.i = icmp slt i32 %i.cd, 0
  %i.cf = select i1 %.cmp.i.i, i32 %i.ce, i32 %i.cd
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = fdiv double %i.cg, 6.000000e+01         ; 2 uses
  %i.ci = tail call double @llvm.floor.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32              ; 2 uses
  %i.ck = uitofp nneg i32 %i.cj to double
  %i.cl = fsub double %i.ch, %i.ck                ; 2 uses
  %i.cm = fsub double 1.000000e+00, %i.bz
  %i.cn = fmul double %i.cb, %i.cm                ; 6 uses
  %i.co = fneg double %i.bz
  %i.cp = fsub double 1.000000e+00, %i.cl
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cp, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ct, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = fmul double %i.cb, %i.cv                ; 3 uses
  %i.cx = extractelement <2 x double> %i.cu, i64 1
  %i.cy = fmul double %i.cb, %i.cx                ; 3 uses
  switch i32 %i.cj, label %_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_.exit [
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
  %.sroa.0.1 = phi double [ 0.000000e+00, %scalar.ph ], [ %i.cb, %bb.h ], [ %i.cw, %bb.d ], [ %i.cn, %bb.e ], [ %i.cn, %bb.f ], [ %i.cy, %bb.g ], [ %i.cb, %.sink.split.i.i ]
  %.sroa.10.1 = phi double [ 0.000000e+00, %scalar.ph ], [ %i.cn, %bb.h ], [ %i.cb, %bb.d ], [ %i.cb, %bb.e ], [ %i.cw, %bb.f ], [ %i.cn, %bb.g ], [ %i.cy, %.sink.split.i.i ]
  %.sroa.17.0 = phi double [ 0.000000e+00, %scalar.ph ], [ %i.cw, %bb.h ], [ %i.cn, %bb.d ], [ %i.cy, %bb.e ], [ %i.cb, %bb.f ], [ %i.cb, %bb.g ], [ %i.cn, %.sink.split.i.i ]
  %i.cz = getelementptr [8 x i8], ptr %i.n, i64 %.022 ; 3 uses
  store double %.sroa.0.1, ptr %i.cz, align 8, !tbaa !19
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %i.p
  store double %.sroa.10.1, ptr %i.da, align 8, !tbaa !19
  %i.db = getelementptr i8, ptr %i.cz, i64 %.idx21
  store double %.sroa.17.0, ptr %i.db, align 8, !tbaa !19
  %i.dc = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !31
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl10hsv_to_rgbIdEEvPKT_PS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
end_hunk_0
