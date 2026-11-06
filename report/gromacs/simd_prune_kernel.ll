Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/simd_prune_kernel?download=true
inline.NumInlined: 224
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx20nbnxmSimdPruneKernelIL12KernelLayout1EEEvPNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tENS_8ArrayRefIKNS_11BasicVectorIfEEEEf = comdat any

$_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm = comdat any

$_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx20nbnxmSimdPruneKernelIL12KernelLayout1EEEvPNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tENS_8ArrayRefIKNS_11BasicVectorIfEEEEf(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr %2, ptr %3, float noundef %4) local_unnamed_addr #0 comdat {
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  %i.y = fmul float %4, %4
  %i.z = insertelement <16 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <16 x float> %i.z, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.s to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 4                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph176, label %._crit_edge177

.lr.ph176:                                        ; preds = %bb.a
  %wide.trip.count = and i64 %i.af, 2147483647
  br label %bb.b

._crit_edge177.loopexit:                          ; preds = %._crit_edge.thread
  %i.ai = sext i32 %.1 to i64
  %i.aj = sext i32 %.1144.lcssa199 to i64
  br label %._crit_edge177

._crit_edge177:                                   ; preds = %._crit_edge177.loopexit, %bb.a
  %.0143.lcssa = phi i64 [ 0, %bb.a ], [ %i.aj, %._crit_edge177.loopexit ]
  %.0141.lcssa = phi i64 [ 0, %bb.a ], [ %i.ai, %._crit_edge177.loopexit ]
  tail call void @_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.0141.lcssa)
  tail call void @_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.0143.lcssa)
  ret void

bb.b:                                             ; preds = %.lr.ph176, %._crit_edge.thread
  %indvars.iv185 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next186, %._crit_edge.thread ] ; 2 uses
  %.0141174 = phi i32 [ 0, %.lr.ph176 ], [ %.1, %._crit_edge.thread ] ; 4 uses
  %.0143173 = phi i32 [ 0, %.lr.ph176 ], [ %.1144.lcssa199, %._crit_edge.thread ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv185 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26 ; 2 uses
  %i.am = sext i32 %.0141174 to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.am ; 4 uses
  store i32 %i.al, ptr %i.an, align 4, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store i32 %.0143173, ptr %i.ar, align 4, !tbaa !28
  %i.as = and i32 %i.ap, 127
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.at ; 3 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !30
  %i.aw = insertelement <16 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <16 x float> %i.aw, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !30
  %i.ba = insertelement <16 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <16 x float> %i.ba, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !30
  %i.be = insertelement <16 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <16 x float> %i.be, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bg = shl i32 %i.al, 2                        ; 2 uses
  %i.bh = and i32 %i.bg, -8
  %i.bi = mul nsw i32 %i.bh, 3
  %i.bj = and i32 %i.bg, 4
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.x, i64 %i.bl ; 12 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = getelementptr i8, ptr %i.bm, i64 64
  %.val = load float, ptr %i.bm, align 1, !tbaa !31
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %.val149 = load float, ptr %i.bp, align 1, !tbaa !31
  %i.bq = insertelement <4 x float> poison, float %.val, i64 0
  %i.br = insertelement <4 x float> poison, float %.val149, i64 0
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> %i.br, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.bt = fadd <16 x float> %i.ax, %i.bs
  %.val150 = load float, ptr %i.bn, align 1, !tbaa !31
  %i.bu = getelementptr i8, ptr %i.bm, i64 36
  %.val151 = load float, ptr %i.bu, align 1, !tbaa !31
  %i.bv = insertelement <4 x float> poison, float %.val150, i64 0
  %i.bw = insertelement <4 x float> poison, float %.val151, i64 0
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> %i.bw, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.by = fadd <16 x float> %i.bb, %i.bx
  %.val152 = load float, ptr %i.bo, align 1, !tbaa !31
  %i.bz = getelementptr i8, ptr %i.bm, i64 68
  %.val153 = load float, ptr %i.bz, align 1, !tbaa !31
  %i.ca = insertelement <4 x float> poison, float %.val152, i64 0
  %i.cb = insertelement <4 x float> poison, float %.val153, i64 0
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.cd = fadd <16 x float> %i.bf, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val.1 = load float, ptr %i.ce, align 1, !tbaa !31
  %i.cf = getelementptr i8, ptr %i.bm, i64 12
  %.val149.1 = load float, ptr %i.cf, align 1, !tbaa !31
  %i.cg = insertelement <4 x float> poison, float %.val.1, i64 0
  %i.ch = insertelement <4 x float> poison, float %.val149.1, i64 0
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.cj = fadd <16 x float> %i.ax, %i.ci
  %i.ck = getelementptr i8, ptr %i.bm, i64 40
  %.val150.1 = load float, ptr %i.ck, align 1, !tbaa !31
  %i.cl = getelementptr i8, ptr %i.bm, i64 44
  %.val151.1 = load float, ptr %i.cl, align 1, !tbaa !31
  %i.cm = insertelement <4 x float> poison, float %.val150.1, i64 0
  %i.cn = insertelement <4 x float> poison, float %.val151.1, i64 0
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.cp = fadd <16 x float> %i.bb, %i.co
  %i.cq = getelementptr i8, ptr %i.bm, i64 72
  %.val152.1 = load float, ptr %i.cq, align 1, !tbaa !31
  %i.cr = getelementptr i8, ptr %i.bm, i64 76
  %.val153.1 = load float, ptr %i.cr, align 1, !tbaa !31
  %i.cs = insertelement <4 x float> poison, float %.val152.1, i64 0
  %i.ct = insertelement <4 x float> poison, float %.val153.1, i64 0
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.cv = fadd <16 x float> %i.bf, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !28 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32
  %i.da = icmp slt i32 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.db = sext i32 %i.cx to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.dc = icmp sgt i32 %spec.select, %.pre
  br i1 %i.dc, label %bb.c, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.db, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.1144171 = phi i32 [ %.0143173, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !34
  %i.df = mul nsw i32 %i.de, 24
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.x, i64 %i.dg ; 3 uses
  %.val154 = load <4 x double>, ptr %i.dh, align 32, !tbaa !31
  %5 = shufflevector <4 x double> %.val154, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = bitcast <8 x double> %5 to <16 x float>    ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 32
  %.val155 = load <4 x double>, ptr %i.di, align 32, !tbaa !31
  %7 = shufflevector <4 x double> %.val155, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = bitcast <8 x double> %7 to <16 x float>    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 64
  %.val156 = load <4 x double>, ptr %i.dj, align 32, !tbaa !31
  %9 = shufflevector <4 x double> %.val156, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = bitcast <8 x double> %9 to <16 x float>   ; 2 uses
  %i.dk = fsub <16 x float> %i.bt, %6             ; 2 uses
  %i.dl = fsub <16 x float> %i.by, %8             ; 2 uses
  %i.dm = fsub <16 x float> %i.cd, %10            ; 2 uses
  %i.dn = fsub <16 x float> %i.cj, %6             ; 2 uses
  %i.do = fsub <16 x float> %i.cp, %8             ; 2 uses
  %i.dp = fsub <16 x float> %i.cv, %10            ; 2 uses
  %i.dq = fmul <16 x float> %i.dk, %i.dk
  %i.dr = fmul <16 x float> %i.dl, %i.dl
  %i.ds = fadd <16 x float> %i.dq, %i.dr
  %i.dt = fmul <16 x float> %i.dm, %i.dm
  %i.du = fadd <16 x float> %i.dt, %i.ds
  %i.dv = fmul <16 x float> %i.dn, %i.dn
  %i.dw = fmul <16 x float> %i.do, %i.do
  %i.dx = fadd <16 x float> %i.dv, %i.dw
  %i.dy = fmul <16 x float> %i.dp, %i.dp
  %i.dz = fadd <16 x float> %i.dy, %i.dx
  %i.ea = fcmp olt <16 x float> %i.du, %i.aa
  %i.eb = fcmp olt <16 x float> %i.dz, %i.aa
  %i.ec = or <16 x i1> %i.eb, %i.ea
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = sext i32 %.1144171 to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ee
  %i.eg = load i64, ptr %i.dd, align 4, !tbaa !18
  store i64 %i.eg, ptr %i.ef, align 4, !tbaa !18
  %.not = icmp ne i16 %i.ed, 0
  %i.eh = zext i1 %.not to i32
  %spec.select = add nsw i32 %.1144171, %i.eh     ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ei = load i32, ptr %i.cy, align 4, !tbaa !32
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next, %i.ej
  br i1 %i.ek, label %.lr.ph, label %._crit_edge, !llvm.loop !20

bb.c:                                             ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %spec.select, ptr %i.el, align 4, !tbaa !32
  %i.em = add nsw i32 %.0141174, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.c, %._crit_edge
  %.1144.lcssa199 = phi i32 [ %spec.select, %bb.c ], [ %spec.select, %._crit_edge ], [ %.0143173, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.em, %bb.c ], [ %.0141174, %._crit_edge ], [ %.0141174, %bb.b ] ; 2 uses
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge177.loopexit, label %bb.b, !llvm.loop !21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
  unreachable

_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #9 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not13.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i.i, i64 16, i1 false), !tbaa.struct !37
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i
  %.not.i41.i = icmp eq ptr %i.c, null
  br i1 %.not.i41.i, label %_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #10
  br label %_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i

_ZNSt12_Vector_baseIN3gmx10nbnxn_ci_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE13_M_deallocateEPS1_m.exit42.i: ; preds = %bb.f, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_ci_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !36
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
define linkonce_odr void @_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not37.i = icmp ult i64 %i.n, %i.i
  br i1 %.not37.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
  unreachable

_ZNKSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #9 ; 8 uses
end_hunk_0
