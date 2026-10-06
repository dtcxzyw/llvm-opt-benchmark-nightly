Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ref_prune?download=true
inline.NumInlined: 160
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx19nbnxmRefPruneKernelILNS_15NbnxmKernelTypeE1EEEvPNS_16NbnxnPairlistCpuEPKNS_16nbnxn_atomdata_tENS_8ArrayRefIKNS_11BasicVectorIfEEEEf = comdat any

$_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm = comdat any

$_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm = comdat any

$_ZN3gmx19nbnxmRefPruneKernelILNS_15NbnxmKernelTypeE6EEEvPNS_16NbnxnPairlistCpuEPKNS_16nbnxn_atomdata_tENS_8ArrayRefIKNS_11BasicVectorIfEEEEf = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx19nbnxmRefPruneKernelILNS_15NbnxmKernelTypeE1EEEvPNS_16NbnxnPairlistCpuEPKNS_16nbnxn_atomdata_tENS_8ArrayRefIKNS_11BasicVectorIfEEEEf(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, float noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  tail call void @_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  tail call void @_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.r)
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20   ; 4 uses
  %i.y = fmul float %4, %4
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 4                 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.a
  %wide.trip.count = and i64 %i.ad, 2147483647
  %i.ag = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph110

._crit_edge111.loopexit:                          ; preds = %._crit_edge.thread
  %i.ai = sext i32 %.195 to i64
  %i.aj = sext i32 %.192.lcssa131 to i64
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %bb.a
  %.094.lcssa = phi i64 [ 0, %bb.a ], [ %i.ai, %._crit_edge111.loopexit ]
  %.091.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %._crit_edge111.loopexit ]
  tail call void @_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.094.lcssa)
  tail call void @_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.091.lcssa)
  ret void

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %._crit_edge.thread
  %indvars.iv120 = phi i64 [ 0, %.lr.ph110.preheader ], [ %indvars.iv.next121, %._crit_edge.thread ] ; 2 uses
  %.091107 = phi i32 [ 0, %.lr.ph110.preheader ], [ %.192.lcssa131, %._crit_edge.thread ] ; 3 uses
  %.094106 = phi i32 [ 0, %.lr.ph110.preheader ], [ %.195, %._crit_edge.thread ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv120 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22 ; 2 uses
  %i.am = sext i32 %.094106 to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.am ; 4 uses
  store i32 %i.al, ptr %i.an, align 4, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store i32 %.091107, ptr %i.ar, align 4, !tbaa !24
  %i.as = and i32 %i.ap, 127
  %i.at = shl nsw i32 %i.al, 2
  %i.au = zext nneg i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.aw = sext i32 %i.at to i64                   ; 2 uses
  %.idx132 = mul nsw i64 %i.aw, 12
  %i.ax = getelementptr inbounds i8, ptr %i.x, i64 %.idx132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load <3 x float>, ptr %i.av, align 4, !tbaa !26 ; 2 uses
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.bb = load float, ptr %i.ay, align 4, !tbaa !26
  %i.bc = load <8 x float>, ptr %i.ax, align 4, !tbaa !26
  %i.bd = fadd <8 x float> %i.bc, %i.ba           ; 8 uses
  %.idx133 = mul nsw i64 %i.aw, 12
  %i.be = getelementptr i8, ptr %i.x, i64 %.idx133
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %i.bg = load <4 x float>, ptr %i.bf, align 4, !tbaa !26
  %i.bh = shufflevector <3 x float> %i.az, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 2>
  %i.bi = insertelement <4 x float> %i.bh, float %i.bb, i64 2
  %i.bj = fadd <4 x float> %i.bg, %i.bi           ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !27 ; 2 uses
  %i.bo = icmp slt i32 %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %.lr.ph110
  %i.bp = sext i32 %i.bl to i64
  %i.bq = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> zeroinitializer
  %i.br = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bs = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bt = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bu = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.bv = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.bw = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.bx = shufflevector <8 x float> %i.bd, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.by = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cb = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.b
  %.pre123 = load i32, ptr %i.ar, align 4, !tbaa !24
  %i.cc = icmp sgt i32 %.293, %.pre123
  br i1 %i.cc, label %bb.c, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.cd = phi i32 [ %i.bn, %.lr.ph.preheader ], [ %i.dz, %bb.b ]
  %indvars.iv117 = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next118, %bb.b ] ; 2 uses
  %.192104 = phi i32 [ %.091107, %.lr.ph.preheader ], [ %.293, %bb.b ] ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv117 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29
  %i.cg = shl nsw i32 %i.cf, 2
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %.idx126 = mul nsw i64 %i.ch, 12
  %i.ci = getelementptr inbounds i8, ptr %i.x, i64 %.idx126
  %.idx128 = mul nsw i64 %i.ch, 12
  %i.cj = getelementptr i8, ptr %i.x, i64 %.idx128
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %i.cl = load <8 x float>, ptr %i.ci, align 4, !tbaa !26 ; 3 uses
  %i.cm = load <4 x float>, ptr %i.ck, align 4, !tbaa !26
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %5 = shufflevector <8 x float> %i.cn, <8 x float> %i.cl, <4 x i32> <i32 3, i32 0, i32 13, i32 10> ; 4 uses
  %6 = shufflevector <8 x float> %i.cn, <8 x float> %i.cl, <4 x i32> <i32 1, i32 14, i32 11, i32 8> ; 4 uses
  %7 = shufflevector <8 x float> %i.cn, <8 x float> %i.cl, <4 x i32> <i32 2, i32 15, i32 12, i32 9> ; 4 uses
  %i.co = fsub <4 x float> %i.bq, %6              ; 2 uses
  %i.cp = fsub <4 x float> %i.br, %7              ; 2 uses
  %i.cq = fsub <4 x float> %i.bs, %5              ; 2 uses
  %i.cr = fmul <4 x float> %i.cp, %i.cp
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.co, <4 x float> %i.cr)
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.cq, <4 x float> %i.cs)
  %.fr = freeze <4 x float> %i.ct
  %i.cu = fcmp olt <4 x float> %.fr, %i.ah
  %i.cv = bitcast <4 x i1> %i.cu to i4
  %.not = icmp eq i4 %i.cv, 0
  br i1 %.not, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %.lr.ph
  %i.cw = fsub <4 x float> %i.bt, %6              ; 2 uses
  %i.cx = fsub <4 x float> %i.bu, %7              ; 2 uses
  %i.cy = fsub <4 x float> %i.bv, %5              ; 2 uses
  %i.cz = fmul <4 x float> %i.cx, %i.cx
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cw, <4 x float> %i.cz)
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cy, <4 x float> %i.da)
  %.fr.1 = freeze <4 x float> %i.db
  %i.dc = fcmp olt <4 x float> %.fr.1, %i.ah
  %i.dd = bitcast <4 x i1> %i.dc to i4
  %.not134 = icmp eq i4 %i.dd, 0
  br i1 %.not134, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %i.de = fsub <4 x float> %i.bw, %6              ; 2 uses
  %i.df = fsub <4 x float> %i.bx, %7              ; 2 uses
  %i.dg = fsub <4 x float> %i.by, %5              ; 2 uses
  %i.dh = fmul <4 x float> %i.df, %i.df
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.de, <4 x float> %i.dh)
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.dg, <4 x float> %i.di)
  %.fr.2 = freeze <4 x float> %i.dj
  %i.dk = fcmp olt <4 x float> %.fr.2, %i.ah
  %i.dl = bitcast <4 x i1> %i.dk to i4
  %.not135 = icmp eq i4 %i.dl, 0
  br i1 %.not135, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.preheader.2
  %i.dm = fsub <4 x float> %i.bz, %6              ; 2 uses
  %i.dn = fsub <4 x float> %i.ca, %7              ; 2 uses
  %i.do = fsub <4 x float> %i.cb, %5              ; 2 uses
  %i.dp = fmul <4 x float> %i.dn, %i.dn
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dm, <4 x float> %i.dp)
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.do, <4 x float> %i.dq)
  %.fr.3 = freeze <4 x float> %i.dr
  %i.ds = fcmp olt <4 x float> %.fr.3, %i.ah
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %i.du = icmp ne i4 %i.dt, 0
  br i1 %i.du, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %.preheader.1, %.preheader.2, %.preheader.3
  %i.dv = add nsw i32 %.192104, 1
  %i.dw = sext i32 %.192104 to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.dw
  %i.dy = load i64, ptr %i.ce, align 4, !tbaa !30
  store i64 %i.dy, ptr %i.dx, align 4, !tbaa !30
  %.pre = load i32, ptr %i.bm, align 4, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %.preheader.3
  %i.dz = phi i32 [ %.pre, %.critedge ], [ %i.cd, %.preheader.3 ] ; 2 uses
  %.293 = phi i32 [ %i.dv, %.critedge ], [ %.192104, %.preheader.3 ] ; 5 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next118, %i.ea
  br i1 %i.eb, label %.lr.ph, label %._crit_edge, !llvm.loop !32

bb.c:                                             ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %.293, ptr %i.ec, align 4, !tbaa !27
  %i.ed = add nsw i32 %.094106, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph110, %bb.c, %._crit_edge
  %.192.lcssa131 = phi i32 [ %.293, %bb.c ], [ %.293, %._crit_edge ], [ %.091107, %.lr.ph110 ] ; 2 uses
  %.195 = phi i32 [ %i.ed, %bb.c ], [ %.094106, %._crit_edge ], [ %.094106, %.lr.ph110 ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge111.loopexit, label %.lr.ph110, !llvm.loop !33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #7
  unreachable

_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not13.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i.i, i64 16, i1 false), !tbaa.struct !36
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !34

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i
  %.not.i41.i = icmp eq ptr %i.c, null
  br i1 %.not.i41.i, label %_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #9
  br label %_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i

_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i: ; preds = %bb.f, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !35
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit: ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
end_hunk_0
