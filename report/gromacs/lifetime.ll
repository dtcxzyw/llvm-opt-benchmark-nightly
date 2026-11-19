Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lifetime?download=true
inline.NumInlined: 683
inline.NumDeleted: 285
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3gmx26AnalysisDataLifetimeModule12dataFinishedEv:bb.a
  %wide.masked.gather249 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep226.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %wide.gep250.a = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 56
  %wide.gep251.a = getelementptr i8, <4 x ptr> %vector.gep, i64 376
  %wide.gep252.a = getelementptr i8, <4 x ptr> %vector.gep, i64 696
  %wide.gep253 = getelementptr i8, <4 x ptr> %vector.gep, i64 1016
  %wide.masked.gather254.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep250.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !86
  %wide.masked.gather255.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep251.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !86
  %wide.masked.gather256.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep252.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !86
  %wide.masked.gather257 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep253, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !86
  %i.jt = ptrtoint <4 x ptr> %wide.masked.gather246.a to <4 x i64>
  %i.ju = ptrtoint <4 x ptr> %wide.masked.gather247.a to <4 x i64>
  %i.jv = ptrtoint <4 x ptr> %wide.masked.gather248.a to <4 x i64>
  %i.jw = ptrtoint <4 x ptr> %wide.masked.gather249 to <4 x i64>
  %i.jx = ptrtoint <4 x ptr> %wide.masked.gather254.a to <4 x i64>
  %i.jy = ptrtoint <4 x ptr> %wide.masked.gather255.a to <4 x i64>
  %i.jz = ptrtoint <4 x ptr> %wide.masked.gather256.a to <4 x i64>
  %i.ka = ptrtoint <4 x ptr> %wide.masked.gather257 to <4 x i64>
  %i.kb = sub <4 x i64> %i.jt, %i.jx
  %i.kc = sub <4 x i64> %i.ju, %i.jy
  %i.kd = sub <4 x i64> %i.jv, %i.jz
  %i.ke = sub <4 x i64> %i.jw, %i.ka
  %i.kf = ashr exact <4 x i64> %i.kb, splat (i64 2)
  %i.kg = ashr exact <4 x i64> %i.kc, splat (i64 2)
  %i.kh = ashr exact <4 x i64> %i.kd, splat (i64 2)
  %i.ki = ashr exact <4 x i64> %i.ke, splat (i64 2)
  %i.kj = add nsw <4 x i64> %i.jp, %i.kf
  %i.kk = add nsw <4 x i64> %i.jq, %i.kg
  %i.kl = add nsw <4 x i64> %i.jr, %i.kh
  %i.km = add nsw <4 x i64> %i.js, %i.ki
  %wide.gep258.a = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep, i64 32
  %wide.gep259.a = getelementptr i8, <4 x ptr> %vector.gep, i64 352
  %wide.gep260.a = getelementptr i8, <4 x ptr> %vector.gep, i64 672
  %wide.gep261 = getelementptr i8, <4 x ptr> %vector.gep, i64 992
  %wide.masked.gather262.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep258.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !87
  %wide.masked.gather263.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep259.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !87
  %wide.masked.gather264.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep260.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !87
  %wide.masked.gather265.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep261, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !87
  %wide.masked.gather266.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep227.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %wide.masked.gather267.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep228.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %wide.masked.gather268.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep229.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %wide.masked.gather269 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep230.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %i.kn = ptrtoint <4 x ptr> %wide.masked.gather262.a to <4 x i64>
  %i.ko = ptrtoint <4 x ptr> %wide.masked.gather263.a to <4 x i64>
  %i.kp = ptrtoint <4 x ptr> %wide.masked.gather264.a to <4 x i64>
  %i.kq = ptrtoint <4 x ptr> %wide.masked.gather265.a to <4 x i64>
  %i.kr = ptrtoint <4 x ptr> %wide.masked.gather266.a to <4 x i64>
  %i.ks = ptrtoint <4 x ptr> %wide.masked.gather267.a to <4 x i64>
  %i.kt = ptrtoint <4 x ptr> %wide.masked.gather268.a to <4 x i64>
  %i.ku = ptrtoint <4 x ptr> %wide.masked.gather269 to <4 x i64>
  %i.kv = sub <4 x i64> %i.kn, %i.kr
  %i.kw = sub <4 x i64> %i.ko, %i.ks
  %i.kx = sub <4 x i64> %i.kp, %i.kt
  %i.ky = sub <4 x i64> %i.kq, %i.ku
  %i.kz = ashr exact <4 x i64> %i.kv, splat (i64 2)
  %i.la = ashr exact <4 x i64> %i.kw, splat (i64 2)
  %i.lb = ashr exact <4 x i64> %i.kx, splat (i64 2)
  %i.lc = ashr exact <4 x i64> %i.ky, splat (i64 2)
  %i.ld = add nsw <4 x i64> %i.kj, %i.kz
  %i.le = add nsw <4 x i64> %i.kk, %i.la
  %i.lf = add nsw <4 x i64> %i.kl, %i.lb
  %i.lg = add nsw <4 x i64> %i.km, %i.lc
  %i.lh = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi, <4 x i64> %i.ld) ; 2 uses
  %i.li = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi221.a, <4 x i64> %i.le) ; 2 uses
  %i.lj = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi222.a, <4 x i64> %i.lf) ; 2 uses
  %i.lk = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi223, <4 x i64> %i.lg) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1280
  %i.ll = icmp eq i64 %index.next, %n.vec
  br i1 %i.ll, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %i.lh, <4 x i64> %i.li)
  %rdx.minmax270.a = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax, <4 x i64> %i.lj)
  %rdx.minmax271 = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %rdx.minmax270.a, <4 x i64> %i.lk)
  %i.lm = call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %rdx.minmax271) ; 3 uses
  %cmp.n = icmp eq i64 %i.ij, %n.vec
  br i1 %cmp.n, label %._crit_edge134, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check, label %.lr.ph133.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.im, %vec.epilog.iter.check ], [ %i.ib, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.lm, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %n.vec272 = and i64 %i.ij, 576460752303423484   ; 3 uses
  %i.ln = mul i64 %n.vec272, 80
  %i.lo = getelementptr i8, ptr %i.ib, i64 %i.ln
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index273 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next289, %vec.epilog.vector.body ]
  %pointer.phi274 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind290, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi275 = phi <4 x i64> [ %broadcast.splat, %vec.epilog.ph ], [ %i.mh, %vec.epilog.vector.body ]
  %vector.gep276 = getelementptr i8, ptr %pointer.phi274, <4 x i64> <i64 0, i64 80, i64 160, i64 240> ; 6 uses
  %wide.gep277.a = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep276, i64 48
  %wide.gep278.a = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep276, i64 16
  %wide.gep279 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep276, i64 72
  %wide.masked.gather280 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep279, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !84 ; 2 uses
  %wide.gep281 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep276, i64 40
  %wide.masked.gather282.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep281, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !84
  %i.lp = ptrtoint <4 x ptr> %wide.masked.gather280 to <4 x i64>
  %i.lq = ptrtoint <4 x ptr> %wide.masked.gather282.a to <4 x i64>
  %i.lr = sub <4 x i64> %i.lp, %i.lq
  %i.ls = ashr exact <4 x i64> %i.lr, splat (i64 3)
  %i.lt = icmp ne <4 x ptr> %wide.masked.gather280, splat (ptr null)
  %i.lu = sext <4 x i1> %i.lt to <4 x i64>
  %i.lv = add nsw <4 x i64> %i.ls, %i.lu
  %i.lw = shl nsw <4 x i64> %i.lv, splat (i64 7)
  %wide.masked.gather283 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep277.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %wide.gep284 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep276, i64 56
  %wide.masked.gather285 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep284, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !86
  %i.lx = ptrtoint <4 x ptr> %wide.masked.gather283 to <4 x i64>
  %i.ly = ptrtoint <4 x ptr> %wide.masked.gather285 to <4 x i64>
  %i.lz = sub <4 x i64> %i.lx, %i.ly
  %i.ma = ashr exact <4 x i64> %i.lz, splat (i64 2)
  %i.mb = add nsw <4 x i64> %i.lw, %i.ma
  %wide.gep286 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep276, i64 32
  %wide.masked.gather287.a = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep286, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !87
  %wide.masked.gather288 = call <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr> align 8 %wide.gep278.a, <4 x i1> splat (i1 true), <4 x ptr> poison), !tbaa !85
  %i.mc = ptrtoint <4 x ptr> %wide.masked.gather287.a to <4 x i64>
  %i.md = ptrtoint <4 x ptr> %wide.masked.gather288 to <4 x i64>
  %i.me = sub <4 x i64> %i.mc, %i.md
  %i.mf = ashr exact <4 x i64> %i.me, splat (i64 2)
  %i.mg = add nsw <4 x i64> %i.mb, %i.mf
  %i.mh = call <4 x i64> @llvm.umax.v4i64(<4 x i64> %vec.phi275, <4 x i64> %i.mg) ; 2 uses
  %index.next289 = add nuw i64 %index273, 4       ; 2 uses
  %ptr.ind290 = getelementptr i8, ptr %pointer.phi274, i64 320
  %i.mi = icmp eq i64 %index.next289, %n.vec272
  br i1 %i.mi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.mj = call i64 @llvm.vector.reduce.umax.v4i64(<4 x i64> %i.mh) ; 2 uses
  %cmp.n291 = icmp eq i64 %i.ij, %n.vec272
  br i1 %cmp.n291, label %._crit_edge134, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.050.0131.ph = phi ptr [ %i.ib, %iter.check ], [ %i.im, %vec.epilog.iter.check ], [ %i.lo, %vec.epilog.middle.block ]
  %.090130.ph = phi i64 [ 1, %iter.check ], [ %i.lm, %vec.epilog.iter.check ], [ %i.mj, %vec.epilog.middle.block ]
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %.sroa.050.0131 = phi ptr [ %i.nn, %.lr.ph133 ], [ %.sroa.050.0131.ph, %.lr.ph133.preheader ] ; 7 uses
  %.090130 = phi i64 [ %.sroa.speculated, %.lr.ph133 ], [ %.090130.ph, %.lr.ph133.preheader ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 48
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 72
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !84 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 40
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !84
  %i.mq = ptrtoint ptr %i.mn to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = ashr exact i64 %i.ms, 3
  %i.mu = icmp ne ptr %i.mn, null
  %.neg.i.i = sext i1 %i.mu to i64
  %i.mv = add nsw i64 %i.mt, %.neg.i.i
  %i.mw = shl nsw i64 %i.mv, 7
  %i.mx = load ptr, ptr %i.mk, align 8, !tbaa !85
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 56
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !86
  %i.na = ptrtoint ptr %i.mx to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 2
  %i.ne = add nsw i64 %i.mw, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !87
  %i.nh = load ptr, ptr %i.ml, align 8, !tbaa !85
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = ashr exact i64 %i.nk, 2
  %i.nm = add nsw i64 %i.ne, %i.nl
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %.090130, i64 %i.nm) ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.050.0131, i64 80 ; 2 uses
  %.not91 = icmp eq ptr %i.nn, %i.id
  br i1 %.not91, label %._crit_edge134, label %.lr.ph133, !llvm.loop !139

._crit_edge134:                                   ; preds = %.lr.ph133, %middle.block, %vec.epilog.middle.block, %bb.ad
  %.090.lcssa = phi i64 [ 1, %bb.ad ], [ %i.mj, %vec.epilog.middle.block ], [ %i.lm, %middle.block ], [ %.sroa.speculated, %.lr.ph133 ]
  call void @_ZN3gmx25AbstractAnalysisArrayData11setRowCountEm(ptr noundef nonnull align 8 dereferenceable(98) %0, i64 noundef %.090.lcssa)
  call void @_ZN3gmx25AbstractAnalysisArrayData14allocateValuesEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !149 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 48
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !149
  %.not92148 = icmp eq ptr %i.nq, %i.ns
  br i1 %.not92148, label %_ZNSt6vectorISt5dequeIiSaIiEESaIS2_EE5clearEv.exit, label %.lr.ph152

.lr.ph152:                                        ; preds = %._crit_edge134
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph152, %._crit_edge146
  %indvars.iv = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next, %._crit_edge146 ] ; 3 uses
  %.sroa.050.1149 = phi ptr [ %i.nq, %.lr.ph152 ], [ %i.po, %._crit_edge146 ] ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.050.1149, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !85, !noalias !154 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.050.1149, i64 48 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !85, !noalias !155
  %.not93136 = icmp eq ptr %i.nw, %i.ny
  br i1 %.not93136, label %.preheader, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.ae
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.050.1149, i64 40
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !84, !noalias !154
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.050.1149, i64 32
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !87, !noalias !154
  br label %bb.af

.preheader:                                       ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit, %bb.ae
  %.021.lcssa = phi i64 [ 0, %bb.ae ], [ %i.pb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit ] ; 2 uses
  %i.od = load i64, ptr %i.nu, align 8, !tbaa !156
  %i.oe = icmp ult i64 %.021.lcssa, %i.od
  br i1 %i.oe, label %.lr.ph145.a, label %._crit_edge146

bb.af:                                            ; preds = %.lr.ph142, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit
  %.021140 = phi i64 [ 0, %.lr.ph142 ], [ %i.pb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit ] ; 3 uses
  %.sroa.14.0139 = phi ptr [ %i.oa, %.lr.ph142 ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit ] ; 2 uses
  %.sroa.11.0138 = phi ptr [ %i.oc, %.lr.ph142 ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit ] ; 2 uses
  %.sroa.037.0137 = phi ptr [ %i.nw, %.lr.ph142 ], [ %.sroa.037.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit ] ; 2 uses
  %i.of = load i32, ptr %.sroa.037.0137, align 4, !tbaa !58
  %i.og = sitofp i32 %i.of to float
  %i.oh = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !76
  %i.ok = sext i32 %i.oj to i64
  %i.ol = sub i64 %i.ok, %.021140
  %i.om = uitofp i64 %i.ol to float
  %i.on = fdiv float %i.og, %i.om
  %i.oo = call noundef i64 @_ZNK3gmx20AbstractAnalysisData11columnCountEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
  %i.op = mul i64 %i.oo, %.021140
  %i.oq = load ptr, ptr %i.nt, align 8, !tbaa !157
  %i.or = getelementptr [16 x i8], ptr %i.oq, i64 %i.op
  %i.os = getelementptr [16 x i8], ptr %i.or, i64 %indvars.iv ; 2 uses
  store float %i.on, ptr %i.os, align 8, !tbaa !80
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !78
  %i.ov = or i64 %i.ou, 5
  store i64 %i.ov, ptr %i.ot, align 8, !tbaa !78
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.037.0137, i64 4 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %.sroa.11.0138
  br i1 %i.ox, label %bb.ag, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit

bb.ag:                                            ; preds = %bb.af
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.14.0139, i64 8 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !48 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit:        ; preds = %bb.af, %bb.ag
  %.sroa.037.1 = phi ptr [ %i.oz, %bb.ag ], [ %i.ow, %bb.af ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.pa, %bb.ag ], [ %.sroa.11.0138, %bb.af ]
  %.sroa.14.1 = phi ptr [ %i.oy, %bb.ag ], [ %.sroa.14.0139, %bb.af ]
  %i.pb = add i64 %.021140, 1                     ; 2 uses
  %i.pc = load ptr, ptr %i.nx, align 8, !tbaa !85, !noalias !155
  %.not93 = icmp eq ptr %.sroa.037.1, %i.pc
  br i1 %.not93, label %.preheader, label %bb.af, !llvm.loop !144

.lr.ph145.a:                                      ; preds = %.preheader, %.lr.ph145.a
  %.1144 = phi i64 [ %i.pl, %.lr.ph145.a ], [ %.021.lcssa, %.preheader ] ; 2 uses
  %i.pd = call noundef i64 @_ZNK3gmx20AbstractAnalysisData11columnCountEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
  %i.pe = mul i64 %i.pd, %.1144
  %i.pf = load ptr, ptr %i.nt, align 8, !tbaa !157
  %i.pg = getelementptr [16 x i8], ptr %i.pf, i64 %i.pe
  %i.ph = getelementptr [16 x i8], ptr %i.pg, i64 %indvars.iv ; 2 uses
  store float 0.000000e+00, ptr %i.ph, align 8, !tbaa !80
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !78
  %i.pk = or i64 %i.pj, 5
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !78
  %i.pl = add nuw i64 %.1144, 1                   ; 2 uses
  %i.pm = load i64, ptr %i.nu, align 8, !tbaa !156
  %i.pn = icmp ult i64 %i.pl, %i.pm
  br i1 %i.pn, label %.lr.ph145.a, label %._crit_edge146, !llvm.loop !145

._crit_edge146:                                   ; preds = %.lr.ph145.a, %.preheader
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.050.1149, i64 80 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.pp = load ptr, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 48
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !149
  %.not92 = icmp eq ptr %i.po, %i.pr
  br i1 %.not92, label %._crit_edge153, label %bb.ae, !llvm.loop !146

._crit_edge153:                                   ; preds = %._crit_edge146
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.pp, i64 40
  %.pre167 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 48
  %.not.i.i28 = icmp eq ptr %i.po, %.pre167
  br i1 %.not.i.i28, label %_ZNSt6vectorISt5dequeIiSaIiEESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %._crit_edge153, %_ZSt8_DestroyISt5dequeIiSaIiEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i30 = phi ptr [ %i.qh, %_ZSt8_DestroyISt5dequeIiSaIiEEEvPT_.exit.i.i.i.i ], [ %.pre167, %._crit_edge153 ] ; 7 uses
  %i.pt = load ptr, ptr %.05.i.i.i.i30, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt5dequeIiSaIiEEEvPT_.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i29
  %i.pu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i30, i64 72
  %i.pv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i30, i64 40
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !92 ; 2 uses
  %i.px = load ptr, ptr %i.pu, align 8, !tbaa !93 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = icmp ult ptr %i.pw, %i.py
  br i1 %i.pz, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.qb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.pw, %bb.ah ] ; 3 uses
  %i.qa = load ptr, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !48
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef 512) #23
  %i.qb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8
  %i.qc = icmp ult ptr %.06.i.i.i.i.i.i.i.i, %i.px
  br i1 %i.qc, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i30, align 8, !tbaa !91
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i.i.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i.i.i.i, %bb.ah
  %i.qd = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.pt, %bb.ah ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i30, i64 8
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !94
  %i.qg = shl i64 %i.qf, 3
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #23
  br label %_ZSt8_DestroyISt5dequeIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt5dequeIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i29
  %i.qh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i30, i64 80
  %.not.i.i.i.i31 = icmp eq ptr %.05.i.i.i.i30, %.sroa.050.1149
  br i1 %.not.i.i.i.i31, label %_ZSt8_DestroyIPSt5dequeIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i29, !llvm.loop !3

_ZSt8_DestroyIPSt5dequeIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt5dequeIiSaIiEEEvPT_.exit.i.i.i.i
  store ptr %.pre167, ptr %i.ps, align 8, !tbaa !56
  br label %_ZNSt6vectorISt5dequeIiSaIiEESaIS2_EE5clearEv.exit

_ZNSt6vectorISt5dequeIiSaIiEESaIS2_EE5clearEv.exit: ; preds = %._crit_edge134, %._crit_edge153, %_ZSt8_DestroyIPSt5dequeIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @_ZN3gmx25AbstractAnalysisArrayData11valuesReadyEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModuleD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  tail call void @_ZN3gmx26AnalysisDataLifetimeModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModuleD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104 ; 2 uses
  tail call void @_ZN3gmx26AnalysisDataLifetimeModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #22, !inline_history !158
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 noundef 120) #23, !inline_history !158
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZThn104_NK3gmx26AnalysisDataLifetimeModule5flagsEv(ptr nofree readnone captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i32 28
}

; Function Attrs: uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModule11dataStartedEPNS_20AbstractAnalysisDataE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  tail call void @_ZN3gmx26AnalysisDataLifetimeModule11dataStartedEPNS_20AbstractAnalysisDataE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %1)
  ret void
}

declare noundef zeroext i1 @_ZN3gmx24AnalysisDataModuleSerial19parallelDataStartedEPNS_20AbstractAnalysisDataERKNS_27AnalysisDataParallelOptionsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModule12frameStartedERKNS_23AnalysisDataFrameHeaderE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !65
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !66 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  br i1 %i.b, label %bb.b, label %_ZN3gmx26AnalysisDataLifetimeModule12frameStartedERKNS_23AnalysisDataFrameHeaderE.exit

bb.b:                                             ; preds = %bb.a
  store float %i.d, ptr %i.f, align 8, !tbaa !74
  br label %_ZN3gmx26AnalysisDataLifetimeModule12frameStartedERKNS_23AnalysisDataFrameHeaderE.exit

_ZN3gmx26AnalysisDataLifetimeModule12frameStartedERKNS_23AnalysisDataFrameHeaderE.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store float %i.d, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !76
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !76
  ret void
}

; Function Attrs: uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModule11pointsAddedERKNS_23AnalysisDataPointSetRefE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  tail call void @_ZN3gmx26AnalysisDataLifetimeModule11pointsAddedERKNS_23AnalysisDataPointSetRefE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModule13frameFinishedERKNS_23AnalysisDataFrameHeaderE(ptr nofree readnone captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx24AnalysisDataModuleSerial19frameFinishedSerialEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define void @_ZThn104_N3gmx26AnalysisDataLifetimeModule12dataFinishedEv(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  tail call void @_ZN3gmx26AnalysisDataLifetimeModule12dataFinishedEv(ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26AnalysisDataLifetimeModuleC2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3gmx25AbstractAnalysisArrayDataC2Ev(ptr noundef nonnull align 8 dereferenceable(98) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3gmx26AnalysisDataLifetimeModuleE, i64 16), ptr %0, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3gmx26AnalysisDataLifetimeModuleE, i64 120), ptr %i.a, align 8, !tbaa !96
  %i.b = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 13, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx25AbstractAnalysisArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #22
  resume { ptr, i32 } %i.e
}

declare void @_ZN3gmx25AbstractAnalysisArrayDataC2Ev(ptr noundef nonnull align 8 dereferenceable(98)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN3gmx25AbstractAnalysisArrayDataD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98)) unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
