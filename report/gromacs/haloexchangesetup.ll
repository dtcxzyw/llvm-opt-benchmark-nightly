Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/haloexchangesetup?download=true
inline.NumInlined: 706
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3gmx12HaloExchange5setupEP12gmx_domdec_tP7t_stateRK11gmx_ddbox_tP10t_forcerecb:bb.a
  %i.aa = icmp eq i64 %index.next535, %n.vec530
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !286

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n536 = icmp eq i64 %n.vec530, %wide.trip.count.i
  br i1 %cmp.n536, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec530, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit.i:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.sroa.2.0.copyload.pre.i = load i32, ptr %i.d, align 8
  br label %_ZN3gmx12_GLOBAL__N_127getDomainCommunicationRangeERK12gmx_domdec_t.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !120
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !120
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !120
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !287

_ZN3gmx12_GLOBAL__N_127getDomainCommunicationRangeERK12gmx_domdec_t.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.pre.i, %._crit_edge.loopexit.i ], [ 0, %bb.a ]
  %.sroa.0.0.copyload.i = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.i, ptr %9, align 8
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.289.0..sroa_idx, align 8
  %i.ah = load ptr, ptr @debug, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3gmx12_GLOBAL__N_127getDomainCommunicationRangeERK12gmx_domdec_t.exit
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 34, i64 1, ptr nonnull %i.ah) ; 0 uses
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !119
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.ak = load ptr, ptr @debug, align 8, !tbaa !133
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ak) ; 0 uses
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %i.al = load ptr, ptr @debug, align 8, !tbaa !133
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !120
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.7, i32 noundef %i.an) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !119
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !288

bb.c:                                             ; preds = %._crit_edge, %_ZN3gmx12_GLOBAL__N_127getDomainCommunicationRangeERK12gmx_domdec_t.exit
  call void @_ZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %9)
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !169 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 928 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !298 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 392
  %.val = load i32, ptr %i.av, align 4, !tbaa !299
  %i.aw = and i32 %.val, -2
  %spec.select.i = icmp eq i32 %i.aw, 4
  br i1 %spec.select.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12HaloExchange5setupEP12gmx_domdec_tP7t_stateRK11gmx_ddbox_tP10t_forcerecbENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 355) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !120
  %.not143 = icmp eq i32 %i.ay, 0
  br i1 %.not143, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !300
  %i.bc = fdiv float 1.000000e+00, %i.bb          ; 2 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !300
  %i.be = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !300
  %i.bj = fmul float %i.bc, %i.bi
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink370 = phi float [ %i.bj, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.bk = phi <2 x float> [ %i.bg, %bb.f ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float %.sink370, ptr %i.bl, align 8, !tbaa !300
  store <2 x float> %i.bk, ptr %10, align 8, !tbaa !300
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !120
  %.not143.1 = icmp eq i32 %i.bn, 0
  br i1 %.not143.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !300
  %i.bq = fdiv float 1.000000e+00, %i.bp          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bt = load <2 x float>, ptr %i.br, align 4, !tbaa !300
  %i.bu = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bt
  store <2 x float> %i.bw, ptr %i.bs, align 4, !tbaa !300
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.by = load float, ptr %i.bx, align 4, !tbaa !300
  %i.bz = fmul float %i.bq, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 20
  store float %i.bz, ptr %i.ca, align 4, !tbaa !300
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 20
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !300
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.cb, align 4, !tbaa !300
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !120
  %.not143.2 = icmp eq i32 %i.ce, 0
  br i1 %.not143.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !300
  %i.ch = fdiv float 1.000000e+00, %i.cg          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 188
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ck = load <2 x float>, ptr %i.ci, align 4, !tbaa !300
  %i.cl = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.cm, %i.ck
  store <2 x float> %i.cn, ptr %i.cj, align 8, !tbaa !300
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.cp = load float, ptr %i.co, align 4, !tbaa !300
  %i.cq = fmul float %i.ch, %i.cp
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store <2 x float> zeroinitializer, ptr %i.cr, align 8, !tbaa !300
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink480 = phi float [ 1.000000e+00, %bb.l ], [ %i.cq, %bb.k ]
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 32
  store float %.sink480, ptr %i.cs, align 8, !tbaa !300
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !302 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store ptr null, ptr %11, align 8, !tbaa !305
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 0, ptr %i.cw, align 8, !tbaa !306
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !305
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !306
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !309
  %i.da = getelementptr inbounds nuw i8, ptr %i.au, i64 556
  %i.db = load i8, ptr %i.da, align 4, !tbaa !310, !range !138, !noundef !139
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.n, label %.lr.ph.i159

bb.n:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !248
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !298, !noalias !311
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 384
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !312, !noalias !311 ; 2 uses
  %i.dh = invoke noundef nonnull align 8 dereferenceable(372) ptr @_ZNK3gmx18nonbonded_verlet_t9localGridEv(ptr noundef nonnull align 8 dereferenceable(65) %i.cv)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  %i.di = invoke noundef nonnull align 8 dereferenceable(372) ptr @_ZNK3gmx18nonbonded_verlet_t9localGridEv(ptr noundef nonnull align 8 dereferenceable(65) %i.cv)
          to label %.noexc155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %.noexc
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !120, !noalias !311
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !120, !noalias !311
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 %i.dm) ; 3 uses
  %i.do = invoke { ptr, ptr } @_ZNK3gmx18nonbonded_verlet_t17getLocalAtomOrderEv(ptr noundef nonnull align 8 dereferenceable(65) %i.cv)
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc156:                                        ; preds = %.noexc155
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.do, 1
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  %i.dv = sext i32 %i.dn to i64                   ; 2 uses
  %i.dw = sdiv i64 %i.du, %i.dv                   ; 3 uses
  %i.dx = trunc i64 %i.dw to i32                  ; 3 uses
  %sext.i = shl i64 %i.dw, 32                     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %sext.i, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i, label %bb.o

bb.o:                                             ; preds = %.noexc156
  %i.dy = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.dz = add nsw i64 %i.dy, 63                   ; 2 uses
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = and i64 %i.ea, 2305843009213693944
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #23
          to label %.noexc157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc157:                                        ; preds = %bb.o
  %i.ed = lshr i64 %i.dz, 6                       ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = sdiv i32 %i.dx, 64
  %.sext.i = sext i32 %i.ef to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %.sext.i
  %i.eh = and i64 %i.dy, -9223372036854775745
  %i.ei = icmp ugt i64 %i.eh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ei, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.eg, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ej = and i32 %i.dx, 63
  %.idx.i.i.i = shl nuw nsw i64 %i.ed, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ec, i8 0, i64 %.idx.i.i.i, i1 false), !noalias !311
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i:             ; preds = %.noexc157, %.noexc156
  %.sroa.0224.0 = phi ptr [ null, %.noexc156 ], [ %i.ec, %.noexc157 ] ; 2 uses
  %.sroa.11225.0 = phi ptr [ null, %.noexc156 ], [ %storemerge.i.i.i.i.i.i.i, %.noexc157 ]
  %.sroa.14.0 = phi i32 [ 0, %.noexc156 ], [ %i.ej, %.noexc157 ]
  %.sroa.17226.0 = phi ptr [ null, %.noexc156 ], [ %i.ee, %.noexc157 ]
  %i.ek = icmp sgt i32 %i.dx, 0
  br i1 %i.ek, label %.lr.ph111.i, label %_ZN3gmx12_GLOBAL__N_123flagClustersForBondcommERK12gmx_domdec_tNS_8ArrayRefIKiEERKNS_18nonbonded_verlet_tE.exit

.lr.ph111.i:                                      ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.as, i64 896
  %i.em = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.as, i64 920
  %wide.trip.count.i150 = and i64 %i.dw, 2147483647
  %.not112.i = icmp sgt i32 %i.dn, 0
  br i1 %.not112.i, label %.lr.ph.i153, label %_ZN3gmx12_GLOBAL__N_123flagClustersForBondcommERK12gmx_domdec_tNS_8ArrayRefIKiEERKNS_18nonbonded_verlet_tE.exit

..loopexit58_crit_edge.i:                         ; preds = %bb.bb
  store i64 %i.lq, ptr %17, align 8, !tbaa !167, !noalias !311
  %exitcond.not.i152 = icmp eq i64 %indvars.iv.next145.i, %wide.trip.count.i150
  br i1 %exitcond.not.i152, label %_ZN3gmx12_GLOBAL__N_123flagClustersForBondcommERK12gmx_domdec_tNS_8ArrayRefIKiEERKNS_18nonbonded_verlet_tE.exit, label %.lr.ph.i153, !llvm.loop !291

.lr.ph.i153:                                      ; preds = %.lr.ph111.i, %..loopexit58_crit_edge.i
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %..loopexit58_crit_edge.i ], [ 0, %.lr.ph111.i ] ; 4 uses
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 3 uses
  %15 = mul nuw nsw i64 %indvars.iv.next145.i, %i.dv
  %16 = lshr i64 %indvars.iv144.i, 6
  %.zext.i = and i64 %16, 67108863
  %17 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.0, i64 %.zext.i ; 2 uses
  %18 = and i64 %indvars.iv144.i, 63
  %19 = shl nuw i64 1, %18                        ; 2 uses
  %20 = xor i64 %19, -1                           ; 3 uses
  %.promoted.i = load i64, ptr %17, align 8, !noalias !311
  %21 = trunc i64 %indvars.iv144.i to i32
  %22 = mul i32 %i.dn, %21
  %23 = zext i32 %22 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.bb, %.lr.ph.i153
  %indvars.iv144.i.a = phi i64 [ %23, %.lr.ph.i153 ], [ %indvars.iv.next145.i.a, %bb.bb ] ; 2 uses
  %storemerge109.i = phi i64 [ %.promoted.i, %.lr.ph.i153 ], [ %i.lq, %bb.bb ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv144.i.a
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !120, !noalias !311 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1
  br i1 %i.eq, label %bb.q, label %_ZNSt14_Bit_referenceaSEb.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !120, !noalias !311
  %i.eu = and i32 %i.et, 8192
  %.not.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i, label %_ZNSt14_Bit_referenceaSEb.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ev = load ptr, ptr %i.el, align 8, !tbaa !151, !noalias !311
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.er
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !120, !noalias !311
  %i.ey = sext i32 %i.ex to i64
  %i.ez = load ptr, ptr %i.em, align 8, !tbaa !248, !noalias !311 ; 2 uses
  %i.fa = load ptr, ptr %i.dg, align 8, !tbaa !248, !noalias !311
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %i.ey ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !120, !noalias !311
  %i.fd = sext i32 %i.fc to i64
  %.idx46.i = shl nsw i64 %i.fd, 2                ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 %.idx46.i ; 5 uses
  %i.ff = getelementptr i8, ptr %i.fb, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !120, !noalias !311
  %i.fh = sext i32 %i.fg to i64
  %.idx.i = shl nsw i64 %i.fh, 2                  ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.ez, i64 %.idx.i ; 3 uses
  %i.fj = load ptr, ptr %i.en, align 8, !tbaa !313, !noalias !311 ; 16 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx46.i     ; 3 uses
  %i.fl = ashr i64 %gepdiff.i, 4                  ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !315, !noalias !311
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !318, !noalias !311 ; 4 uses
  %i.fr = and i64 %gepdiff.i, -16
  %scevgep167.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fe, i64 %i.fr
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.split.us.i.i.i.i.i.i.i
  %.0129.us.i.i.i.i.i.i.i = phi i64 [ %i.fl, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %i.gq, %bb.t ] ; 2 uses
  %.sroa.057.0128.us.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.split.us.i.i.i.i.i.i.i ], [ %i.gp, %bb.t ] ; 9 uses
  %i.fs = load i32, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, align 4, !tbaa !120, !noalias !311
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !320, !noalias !311
  %cond.us.i.i.i.i.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %cond.us.i.i.i.i.i.i.i, label %.thread.us.i.i.i.i.i.i.i, label %_ZNSt14_Bit_referenceaSEb.exit.i

.thread.us.i.i.i.i.i.i.i:                         ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !120, !noalias !311
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !320, !noalias !311
  %cond71.us.i.i.i.i.i.i.i = icmp eq i32 %i.gc, 0
  br i1 %cond71.us.i.i.i.i.i.i.i, label %.thread66.us.i.i.i.i.i.i.i, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit472

.thread66.us.i.i.i.i.i.i.i:                       ; preds = %.thread.us.i.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !120, !noalias !311
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !320, !noalias !311
  %cond72.us.i.i.i.i.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %cond72.us.i.i.i.i.i.i.i, label %.thread69.us.i.i.i.i.i.i.i, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit.a

.thread69.us.i.i.i.i.i.i.i:                       ; preds = %.thread66.us.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !120, !noalias !311
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !320, !noalias !311
  %cond.i.i.i.i.i.i.i = icmp eq i32 %i.go, 0
  br i1 %cond.i.i.i.i.i.i.i, label %bb.t, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit474

bb.t:                                             ; preds = %.thread69.us.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 16
  %i.gq = add nsw i64 %.0129.us.i.i.i.i.i.i.i, -1
  %i.gr = icmp sgt i64 %.0129.us.i.i.i.i.i.i.i, 1
  br i1 %i.gr, label %bb.s, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !292

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !327, !noalias !311 ; 4 uses
  %i.gu = load ptr, ptr %i.fj, align 8, !tbaa !328, !noalias !311 ; 4 uses
  %i.gv = and i64 %gepdiff.i, -16
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fe, i64 %i.gv
  br label %bb.u

bb.u:                                             ; preds = %bb.ag, %.lr.ph.split.i.i.i.i.i.i.i
  %.0129.i.i.i.i.i.i.i = phi i64 [ %i.fl, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.ik, %bb.ag ] ; 2 uses
  %.sroa.057.0128.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.ij, %bb.ag ] ; 13 uses
  %i.gw = load i32, ptr %.sroa.057.0128.i.i.i.i.i.i.i, align 4, !tbaa !120, !noalias !311 ; 2 uses
  %i.gx = and i32 %i.gw, %i.gt
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gx, %bb.u ], [ %i.hd, %bb.w ]
  %i.gy = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.gy ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !330, !noalias !311
  %i.hb = icmp eq i32 %i.ha, %i.gw
  br i1 %i.hb, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.he = icmp sgt i32 %i.hd, -1
  br i1 %i.he, label %bb.v, label %_ZNSt14_Bit_referenceaSEb.exit.i, !llvm.loop !293

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  %.not75.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not75.i.i.i.i.i.i.i, label %bb.x, label %_ZNSt14_Bit_referenceaSEb.exit.i

bb.x:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !120, !noalias !311 ; 2 uses
  %i.hh = and i32 %i.hg, %i.gt
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.0.i.i.i.i.i24.i.i.i.i.i.i.i = phi i32 [ %i.hh, %bb.x ], [ %i.hn, %bb.z ]
  %i.hi = sext i32 %.0.i.i.i.i.i24.i.i.i.i.i.i.i to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.hi ; 3 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !330, !noalias !311
  %i.hl = icmp eq i32 %i.hk, %i.hg
  br i1 %i.hl, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.y, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit421, !llvm.loop !293

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i.i.i.i: ; preds = %bb.y
  %.phi.trans.insert.i.i.i25.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.pre.i.i.i26.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i25.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  %.not76.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i26.i.i.i.i.i.i.i, 0
  br i1 %.not76.i.i.i.i.i.i.i, label %bb.aa, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit

bb.aa:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !120, !noalias !311 ; 2 uses
  %i.hr = and i32 %i.hq, %i.gt
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.0.i.i.i.i.i29.i.i.i.i.i.i.i = phi i32 [ %i.hr, %bb.aa ], [ %i.hx, %bb.ac ]
  %i.hs = sext i32 %.0.i.i.i.i.i29.i.i.i.i.i.i.i to i64
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.hs ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !330, !noalias !311
  %i.hv = icmp eq i32 %i.hu, %i.hq
  br i1 %i.hv, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, -1
  br i1 %i.hy, label %bb.ab, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit420.a, !llvm.loop !293

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i.i.i.i: ; preds = %bb.ab
  %.phi.trans.insert.i.i.i30.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.pre.i.i.i31.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i30.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  %.not77.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i31.i.i.i.i.i.i.i, 0
  br i1 %.not77.i.i.i.i.i.i.i, label %bb.ad, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit460

bb.ad:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !120, !noalias !311 ; 2 uses
  %i.ib = and i32 %i.ia, %i.gt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.0.i.i.i.i.i34.i.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.ad ], [ %i.ih, %bb.af ]
  %i.ic = sext i32 %.0.i.i.i.i.i34.i.i.i.i.i.i.i to i64
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %i.ic ; 3 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !330, !noalias !311
  %i.if = icmp eq i32 %i.ie, %i.ia
  br i1 %i.if, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit38.i.i.i.i.i.i.i, label %bb.af

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit38.i.i.i.i.i.i.i: ; preds = %bb.ae
  %.phi.trans.insert.i.i.i35.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %.pre.i.i.i36.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i35.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  %.not78.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i36.i.i.i.i.i.i.i, 0
  br i1 %.not78.i.i.i.i.i.i.i, label %bb.ag, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit462

bb.af:                                            ; preds = %bb.ae
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, -1
  br i1 %i.ii, label %bb.ae, label %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit, !llvm.loop !293

bb.ag:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit38.i.i.i.i.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 16
  %i.ik = add nsw i64 %.0129.i.i.i.i.i.i.i, -1
  %i.il = icmp sgt i64 %.0129.i.i.i.i.i.i.i, 1
  br i1 %i.il, label %bb.u, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !292

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ag, %bb.t, %bb.r
  %.sroa.057.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fe, %bb.r ], [ %scevgep167.i.i.i.i.i.i.i, %bb.t ], [ %scevgep.i.i.i.i.i.i.i, %bb.ag ] ; 8 uses
  %i.im = ptrtoint ptr %.sroa.057.0.lcssa.i.i.i.i.i.i.i to i64
  %i.in = sub i64 %i.fk, %i.im
  %i.io = ashr exact i64 %i.in, 2
  switch i64 %i.io, label %_ZNSt14_Bit_referenceaSEb.exit.thread162.i [
    i64 3, label %bb.ah
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge168.i.i.i.i.i.i.i
  ]

_ZNSt14_Bit_referenceaSEb.exit.thread162.i:       ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ip = and i64 %storemerge109.i, %20
  br label %bb.bb

._crit_edge._crit_edge168.i.i.i.i.i.i.i:          ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.phi.trans.insert169.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %.pre170.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert169.i.i.i.i.i.i.i, align 8, !tbaa !315, !noalias !311
  br label %bb.av

._crit_edge._crit_edge.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !315, !noalias !311
  br label %bb.ao

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.iq = load i32, ptr %.sroa.057.0.lcssa.i.i.i.i.i.i.i, align 4, !tbaa !120, !noalias !311 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !315, !noalias !311 ; 2 uses
  %i.it = icmp eq i8 %i.is, 0
  br i1 %i.it, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.iu = sext i32 %i.iq to i64
  %i.iv = load ptr, ptr %i.fj, align 8, !tbaa !318, !noalias !311
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iu
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !320, !noalias !311 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, -1
  br i1 %i.iz, label %_ZNSt14_Bit_referenceaSEb.exit.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit43.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !327, !noalias !311
  %i.jc = and i32 %i.jb, %i.iq
  %i.jd = load ptr, ptr %i.fj, align 8, !tbaa !328, !noalias !311
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.0.i.i.i.i.i39.i.i.i.i.i.i.i = phi i32 [ %i.jc, %bb.aj ], [ %i.jj, %bb.am ]
  %i.je = sext i32 %.0.i.i.i.i.i39.i.i.i.i.i.i.i to i64
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.je ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !330, !noalias !311
  %i.jh = icmp eq i32 %i.jg, %i.iq
  br i1 %i.jh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.phi.trans.insert.i.i.i40.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.pre.i.i.i41.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i40.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit43.i.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %bb.ak, label %_ZNSt14_Bit_referenceaSEb.exit.i, !llvm.loop !293

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit43.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ai
  %i.jl = phi i32 [ %i.iy, %bb.ai ], [ %.pre.i.i.i41.i.i.i.i.i.i.i, %bb.al ]
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.an, label %_ZNSt14_Bit_referenceaSEb.exit.i

bb.an:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit43.i.i.i.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.057.0.lcssa.i.i.i.i.i.i.i, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge._crit_edge.i.i.i.i.i.i.i
  %i.jn = phi i8 [ %i.is, %bb.an ], [ %.pre.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.057.1.i.i.i.i.i.i.i = phi ptr [ %i.jm, %bb.an ], [ %.sroa.057.0.lcssa.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i ] ; 5 uses
  %i.jo = load i32, ptr %.sroa.057.1.i.i.i.i.i.i.i, align 4, !tbaa !120, !noalias !311 ; 3 uses
  %i.jp = icmp eq i8 %i.jn, 0
  br i1 %i.jp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jq = sext i32 %i.jo to i64
  %i.jr = load ptr, ptr %i.fj, align 8, !tbaa !318, !noalias !311
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jq
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !320, !noalias !311 ; 2 uses
  %i.jv = icmp eq i32 %i.ju, -1
  br i1 %i.jv, label %_ZNSt14_Bit_referenceaSEb.exit.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit48.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jw = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !327, !noalias !311
  %i.jy = and i32 %i.jx, %i.jo
  %i.jz = load ptr, ptr %i.fj, align 8, !tbaa !328, !noalias !311
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %bb.aq
  %.0.i.i.i.i.i44.i.i.i.i.i.i.i = phi i32 [ %i.jy, %bb.aq ], [ %i.kf, %bb.at ]
  %i.ka = sext i32 %.0.i.i.i.i.i44.i.i.i.i.i.i.i to i64
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.jz, i64 %i.ka ; 3 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !330, !noalias !311
  %i.kd = icmp eq i32 %i.kc, %i.jo
  br i1 %i.kd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.phi.trans.insert.i.i.i45.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %.pre.i.i.i46.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i45.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit48.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, -1
  br i1 %i.kg, label %bb.ar, label %_ZNSt14_Bit_referenceaSEb.exit.i, !llvm.loop !293

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit48.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.ap
  %i.kh = phi i32 [ %i.ju, %bb.ap ], [ %.pre.i.i.i46.i.i.i.i.i.i.i, %bb.as ]
  %.not73.i.i.i.i.i.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not73.i.i.i.i.i.i.i, label %bb.au, label %_ZNSt14_Bit_referenceaSEb.exit.i

bb.au:                                            ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit48.i.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.057.1.i.i.i.i.i.i.i, i64 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge._crit_edge168.i.i.i.i.i.i.i
  %i.kj = phi i8 [ %i.jn, %bb.au ], [ %.pre170.i.i.i.i.i.i.i, %._crit_edge._crit_edge168.i.i.i.i.i.i.i ]
  %.sroa.057.2.i.i.i.i.i.i.i = phi ptr [ %i.ki, %bb.au ], [ %.sroa.057.0.lcssa.i.i.i.i.i.i.i, %._crit_edge._crit_edge168.i.i.i.i.i.i.i ] ; 4 uses
  %i.kk = load i32, ptr %.sroa.057.2.i.i.i.i.i.i.i, align 4, !tbaa !120, !noalias !311 ; 3 uses
  %i.kl = icmp eq i8 %i.kj, 0
  br i1 %i.kl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.km = sext i32 %i.kk to i64
  %i.kn = load ptr, ptr %i.fj, align 8, !tbaa !318, !noalias !311
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.km
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !320, !noalias !311 ; 2 uses
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %_ZNSt14_Bit_referenceaSEb.exit.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit53.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !327, !noalias !311
  %i.ku = and i32 %i.kt, %i.kk
  %i.kv = load ptr, ptr %i.fj, align 8, !tbaa !328, !noalias !311
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.0.i.i.i.i.i49.i.i.i.i.i.i.i = phi i32 [ %i.ku, %bb.ax ], [ %i.lb, %bb.ba ]
  %i.kw = sext i32 %.0.i.i.i.i.i49.i.i.i.i.i.i.i to i64
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.kw ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !330, !noalias !311
  %i.kz = icmp eq i32 %i.ky, %i.kk
  br i1 %i.kz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.phi.trans.insert.i.i.i50.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.pre.i.i.i51.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i50.i.i.i.i.i.i.i, align 4, !tbaa !320, !noalias !311
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit53.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !331, !noalias !311 ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, -1
  br i1 %i.lc, label %bb.ay, label %_ZNSt14_Bit_referenceaSEb.exit.i, !llvm.loop !293

_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit53.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.aw
  %i.ld = phi i32 [ %i.kq, %bb.aw ], [ %.pre.i.i.i51.i.i.i.i.i.i.i, %bb.az ]
  %.not74.i.i.i.i.i.i.i = icmp eq i32 %i.ld, 0
  %spec.select.i.i.i.i.i.i.i = select i1 %.not74.i.i.i.i.i.i.i, ptr %i.fi, ptr %.sroa.057.2.i.i.i.i.i.i.i
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.thread.i:          ; preds = %bb.q, %bb.p
  %i.le = and i64 %storemerge109.i, %20
  br label %bb.bb

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit:        ; preds = %bb.af
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 12
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit420.a:   ; preds = %bb.ac
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 8
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit421:     ; preds = %bb.z
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 4
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit.a: ; preds = %.thread66.us.i.i.i.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 8
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit472: ; preds = %.thread.us.i.i.i.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 4
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit474: ; preds = %.thread69.us.i.i.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.us.i.i.i.i.i.i.i, i64 12
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit28.i.i.i.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 4
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit460: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit33.i.i.i.i.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 8
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit462: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit38.i.i.i.i.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.057.0128.i.i.i.i.i.i.i, i64 12
  br label %_ZNSt14_Bit_referenceaSEb.exit.i

_ZNSt14_Bit_referenceaSEb.exit.i:                 ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i.i.i.i, %bb.s, %bb.am, %bb.at, %bb.ba, %bb.w, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit460, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit462, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit.a, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit472, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit474, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit421, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit420.a, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit53.i.i.i.i.i.i.i, %bb.aw, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit48.i.i.i.i.i.i.i, %bb.ap, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit43.i.i.i.i.i.i.i, %bb.ai
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.057.1.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit48.i.i.i.i.i.i.i ], [ %.sroa.057.1.i.i.i.i.i.i.i, %bb.ap ], [ %.sroa.057.1.i.i.i.i.i.i.i, %bb.at ], [ %i.lh, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit421 ], [ %.sroa.057.0.lcssa.i.i.i.i.i.i.i, %bb.ai ], [ %i.lf, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit ], [ %.sroa.057.0.lcssa.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit43.i.i.i.i.i.i.i ], [ %.sroa.057.0128.i.i.i.i.i.i.i, %bb.w ], [ %i.lg, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit420.a ], [ %.sroa.057.0.lcssa.i.i.i.i.i.i.i, %bb.am ], [ %spec.select.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit53.i.i.i.i.i.i.i ], [ %.sroa.057.0128.us.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.057.2.i.i.i.i.i.i.i, %bb.aw ], [ %.sroa.057.2.i.i.i.i.i.i.i, %bb.ba ], [ %i.lj, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit472 ], [ %i.li, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit.a ], [ %i.lk, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit426.split.loop.exit474 ], [ %i.lm, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit460 ], [ %i.ll, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit ], [ %i.ln, %_ZNSt14_Bit_referenceaSEb.exit.i.loopexit427.split.loop.exit462 ], [ %.sroa.057.0128.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmx12_GLOBAL__N_114isMissingALinkERKNS2_8ArrayRefIKiEERK11gmx_ga2la_tEUliE_EclINS2_12ArrayRefIterIS5_EEEEbT_.exit.i.i.i.i.i.i.i ]
  %.not47.i = icmp ne ptr %i.fi, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i.i
  %cond.fr.i = freeze i1 %.not47.i                ; 2 uses
  %i.lo = and i64 %storemerge109.i, %20
  %i.lp = or i64 %storemerge109.i, %19
  %spec.select.i154 = select i1 %cond.fr.i, i64 %i.lp, i64 %i.lo
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i, %_ZNSt14_Bit_referenceaSEb.exit.thread.i, %_ZNSt14_Bit_referenceaSEb.exit.thread162.i
  %.1161.i = phi i1 [ false, %_ZNSt14_Bit_referenceaSEb.exit.thread162.i ], [ %cond.fr.i, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ false, %_ZNSt14_Bit_referenceaSEb.exit.thread.i ]
  %i.lq = phi i64 [ %i.ip, %_ZNSt14_Bit_referenceaSEb.exit.thread162.i ], [ %spec.select.i154, %_ZNSt14_Bit_referenceaSEb.exit.i ], [ %i.le, %_ZNSt14_Bit_referenceaSEb.exit.thread.i ] ; 2 uses
  %indvars.iv.next145.i.a = add nuw nsw i64 %indvars.iv144.i.a, 1 ; 2 uses
  %24 = shl i64 %indvars.iv.next145.i.a, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp sge i64 %25, %15
  %.not34.i = or i1 %26, %.1161.i
  br i1 %.not34.i, label %..loopexit58_crit_edge.i, label %bb.p, !llvm.loop !294

_ZN3gmx12_GLOBAL__N_123flagClustersForBondcommERK12gmx_domdec_tNS_8ArrayRefIKiEERKNS_18nonbonded_verlet_tE.exit: ; preds = %..loopexit58_crit_edge.i, %.lr.ph111.i, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i
  %i.lr = load ptr, ptr %11, align 8, !tbaa !305  ; 2 uses
  %.not.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN3gmx12_GLOBAL__N_123flagClustersForBondcommERK12gmx_domdec_tNS_8ArrayRefIKiEERKNS_18nonbonded_verlet_tE.exit
  %i.ls = load ptr, ptr %i.cz, align 8, !tbaa !309 ; 2 uses
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 2 uses
  %i.lw = ashr exact i64 %i.lv, 3
  %i.lx = sub nsw i64 0, %i.lw
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.lx
  tail call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.lv) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.bc, %_ZN3gmx12_GLOBAL__N_123flagClustersForBondcommERK12gmx_domdec_tNS_8ArrayRefIKiEERKNS_18nonbonded_verlet_tE.exit
  store ptr %.sroa.0224.0, ptr %11, align 8
  store i32 0, ptr %i.cw, align 8
  store ptr %.sroa.11225.0, ptr %i.cx, align 8
  store i32 %.sroa.14.0, ptr %i.cy, align 8
  store ptr %.sroa.17226.0, ptr %i.cz, align 8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !169
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.m
  %i.lz = phi ptr [ %.pre, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ], [ %i.as, %bb.m ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 888 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !332 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.as, i64 352 ; 2 uses
  %i.md = getelementptr i8, ptr %i.as, i64 356
  store i32 %i.mb, ptr %i.md, align 4, !tbaa !120
  %i.me = load i32, ptr %i.mc, align 8, !tbaa !120
  %i.mf = sub nsw i32 %i.mb, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.as, i64 388 ; 2 uses
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !120
  %i.mh = getelementptr inbounds nuw i8, ptr %i.as, i64 804 ; 2 uses
  store i32 0, ptr %i.mh, align 4, !tbaa !333
  %i.mi = getelementptr inbounds nuw i8, ptr %i.au, i64 1020
  %i.mj = load i32, ptr %i.ma, align 8, !tbaa !332
  %i.mk = getelementptr inbounds nuw i8, ptr %i.au, i64 1024
  %i.ml = getelementptr inbounds nuw i8, ptr %i.au, i64 1028
  %i.mm = getelementptr inbounds nuw i8, ptr %i.au, i64 1032
  %i.mn = insertelement <4 x i32> poison, i32 %i.mj, i64 0
  %i.mo = shufflevector <4 x i32> %i.mn, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.mo, ptr %i.mi, align 4, !tbaa !120
  %i.mp = getelementptr inbounds nuw i8, ptr %i.au, i64 1036 ; 3 uses
  store i32 0, ptr %i.mp, align 4, !tbaa !334
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !335 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !335 ; 2 uses
  %.not228298 = icmp eq ptr %i.mr, %i.mt
  br i1 %.not228298, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %.lr.ph.i159
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %bb.bd

._crit_edge302:                                   ; preds = %bb.be, %.lr.ph.i159
  %i.mv = invoke noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 1)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %.lr.ph301, %bb.be
  %.sroa.0219.0299 = phi ptr [ %i.mr, %.lr.ph301 ], [ %i.mx, %bb.be ] ; 3 uses
  %i.mw = load ptr, ptr %i.a, align 8, !tbaa !169
  invoke void @_ZN3gmx18DomainCommBackward20getTargetZoneCornersERK12gmx_domdec_tPA3_KfRKNS_14DomainPairCommE(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0219.0299, ptr noundef nonnull align 8 dereferenceable(1097) %i.mw, ptr noundef nonnull %i.mu, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.0219.0299)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0219.0299, i64 240 ; 2 uses
  %.not228 = icmp eq ptr %i.mx, %i.mt
  br i1 %.not228, label %._crit_edge302, label %bb.bd

bb.bf:                                            ; preds = %._crit_edge302
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.b, i32 %i.mv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN3gmx12HaloExchange5setupEP12gmx_domdec_tP7t_stateRK11gmx_ddbox_tP10t_forcerecb.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %9, ptr nonnull %i.cv, ptr nonnull %i.au, ptr nonnull %3, ptr nonnull %10, ptr nonnull %11)
  %i.my = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 888
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !332 ; 2 uses
  %i.nb = load ptr, ptr %i.mq, align 8, !tbaa !335 ; 2 uses
  %i.nc = load ptr, ptr %i.ms, align 8, !tbaa !335 ; 2 uses
  %.not229303 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not229303, label %._crit_edge308, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.bf
  %i.nd = load ptr, ptr @TMPI_BYTE, align 8       ; 4 uses
  br label %bb.bh

._crit_edge308:                                   ; preds = %_ZN3gmx11DomdecZones15setAtomRangeEndEiib.exit, %bb.bf
  %.0109.lcssa = phi i32 [ %i.na, %bb.bf ], [ %i.nu, %_ZN3gmx11DomdecZones15setAtomRangeEndEiib.exit ] ; 7 uses
  %i.ne = load i32, ptr %i.mp, align 4
  %i.nf = icmp slt i32 %i.ne, 1
  br i1 %i.nf, label %.lr.ph.i163.preheader, label %bb.bg

.lr.ph.i163.preheader:                            ; preds = %._crit_edge308
  store i32 %.0109.lcssa, ptr %i.mk, align 4, !tbaa !120
  store i32 %.0109.lcssa, ptr %i.ml, align 4, !tbaa !120
  store i32 %.0109.lcssa, ptr %i.mm, align 4, !tbaa !120
  store i32 1, ptr %i.mp, align 4, !tbaa !334
  %i.ng = sext i32 %.0109.lcssa to i64            ; 7 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 3 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !249 ; 2 uses
  %i.nj = load ptr, ptr %i.ct, align 8, !tbaa !248 ; 5 uses
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = sub i64 %i.nk, %i.nl
  %i.nn = ashr exact i64 %i.nm, 2                 ; 3 uses
  %i.no = icmp ult i64 %i.nn, %i.ng
  br i1 %i.no, label %bb.br, label %bb.bs

bb.bg:                                            ; preds = %._crit_edge308
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN12DDAtomRanges6setEndENS_4TypeEiENKUlvE_clEv, ptr noundef nonnull @.str.15, i32 noundef 247) #20
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc167:                                        ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.lr.ph307, %_ZN3gmx11DomdecZones15setAtomRangeEndEiib.exit
  %.0109305 = phi i32 [ %i.na, %.lr.ph307 ], [ %i.nu, %_ZN3gmx11DomdecZones15setAtomRangeEndEiib.exit ] ; 2 uses
  %.sroa.0215.0304 = phi ptr [ %i.nb, %.lr.ph307 ], [ %i.pe, %_ZN3gmx11DomdecZones15setAtomRangeEndEiib.exit ] ; 11 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 184 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !336 ; 3 uses
  invoke void @_ZN3gmx17DomainCommForward5setupERKNS_18DomainCommBackwardEi(ptr noundef nonnull align 8 dereferenceable(56) %i.np, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0215.0304, i32 noundef %.0109305)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 216 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !342
  %i.nu = add nsw i32 %i.nt, %.0109305            ; 5 uses
  %i.nv = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 896
  %i.nx = sext i32 %i.nu to i64
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.nw, i64 noundef %i.nx)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 128
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !151 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 120
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !165 ; 3 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 896
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !151
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 220
  %.sroa.0.0.copyload.i171 = load i64, ptr %i.of, align 4, !tbaa !120
  %i.og = shl i64 %.sroa.0.0.copyload.i171, 32
  %i.oh = ashr exact i64 %i.og, 30
  %i.oi = getelementptr inbounds i8, ptr %i.oe, i64 %i.oh ; 2 uses
  %i.oj = load i32, ptr %i.ns, align 8, !tbaa !342 ; 3 uses
  %.val144 = load i32, ptr %.sroa.0215.0304, align 8, !tbaa !343 ; 2 uses
  %.val145 = load i32, ptr %i.np, align 8, !tbaa !344 ; 2 uses
  %i.ok = getelementptr i8, ptr %.sroa.0215.0304, i64 232
  %.val146 = load ptr, ptr %i.ok, align 8, !tbaa !345 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ol = icmp sgt i32 %i.ob, 0                   ; 2 uses
  %i.om = icmp sgt i32 %i.oj, 0                   ; 2 uses
  %or.cond.i = and i1 %i.ol, %i.om
  br i1 %or.cond.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.on = shl i32 %i.ob, 2
  %i.oo = shl i32 %i.oj, 2
  %i.op = invoke noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.nz, i32 noundef %i.on, ptr noundef %i.nd, i32 noundef %.val144, i32 noundef 6, ptr noundef %i.oi, i32 noundef %i.oo, ptr noundef %i.nd, i32 noundef %.val145, i32 noundef 6, ptr noundef %.val146, ptr noundef nonnull %7)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.ol, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oq = shl i32 %i.ob, 2
  %i.or = invoke noundef i32 @_Z9tMPI_SendPKviP14tmpi_datatype_iiP10tmpi_comm_(ptr noundef %i.nz, i32 noundef %i.oq, ptr noundef %i.nd, i32 noundef %.val144, i32 noundef 6, ptr noundef %.val146)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.om, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.os = shl i32 %i.oj, 2
  %i.ot = invoke noundef i32 @_Z9tMPI_RecvPviP14tmpi_datatype_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.oi, i32 noundef %i.os, ptr noundef %i.nd, i32 noundef %.val145, i32 noundef 6, ptr noundef %.val146, ptr noundef nonnull %7)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bp:                                            ; preds = %bb.bn, %bb.bk, %bb.bm, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0215.0304, i64 44
  %i.ov = load i8, ptr %i.ou, align 4, !tbaa !346, !range !138, !noundef !139
  %i.ow = trunc nuw i8 %i.ov to i1
  %i.ox = sext i32 %i.nr to i64                   ; 2 uses
  %i.oy = getelementptr [4 x i8], ptr %i.mc, i64 %i.ox ; 2 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 4
  store i32 %i.nu, ptr %i.oz, align 4, !tbaa !120
  %i.pa = icmp ne i32 %i.nr, 0
  %or.cond.i175.not = and i1 %i.pa, %i.ow
  br i1 %or.cond.i175.not, label %_ZN3gmx11DomdecZones15setAtomRangeEndEiib.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pb = load i32, ptr %i.oy, align 4, !tbaa !120
end_hunk_0
