Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/serverenvironment?download=true
inline.NumInlined: 4733
inline.NumDeleted: 2070
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN15ActiveBlockList6updateERSt6vectorIP9PlayerSAOSaIS2_EEssRSt3setIN4core8vector3dIsEESt4lessIS9_ESaIS9_EESE_SE_:bb.a

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 16
  %.021.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.021.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.backedge

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.j, %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.02128.i.i.i, i64 24
  %.021.i13.i.i = load ptr, ptr %i.cj, align 8, !tbaa !61 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.021.i13.i.i, null
  br i1 %.not.i14.i.i, label %._crit_edge.i.thread.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i
  %.02128.i.i.i.be = phi ptr [ %.021.i13.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ], [ %.021.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ]
  br label %.lr.ph.i.i.i, !llvm.loop !2

._crit_edge.thread.i.i.i:                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %bb.g
  %.020.lcssa40.i.i.i = phi ptr [ %i.a, %bb.g ], [ %.02128.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.cl = icmp eq ptr %.020.lcssa40.i.i.i, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cm = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i.i.i) #33 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !71
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i, %bb.k
  %i.cn = phi i16 [ %.pre.i.i, %bb.k ], [ %i.by, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %.020.lcssa39.i.i.i = phi ptr [ %.020.lcssa40.i.i.i, %bb.k ], [ %.02128.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i = phi ptr [ %i.cm, %bb.k ], [ %.02128.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i ] ; 2 uses
  %i.co = icmp slt i16 %i.cn, %storemerge43.i
  br i1 %i.co, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.thread.i.i
  %i.cp = icmp eq i16 %i.cn, %storemerge43.i
  br i1 %i.cp, label %bb.m, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 34
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !72 ; 2 uses
  %i.cs = icmp slt i16 %i.cr, %storemerge738.i
  br i1 %i.cs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = icmp eq i16 %i.cr, %storemerge738.i
  br i1 %i.ct, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i: ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 36
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !73
  %i.cw = icmp slt i16 %i.cv, %storemerge933.i
  br i1 %i.cw, label %bb.o, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

bb.o:                                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i, %bb.m, %._crit_edge.i.thread.i.i, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.020.lcssa39.i.i.i, %._crit_edge.i.thread.i.i ], [ %.020.lcssa39.i.i.i, %bb.m ], [ %.020.lcssa39.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i ], [ %.020.lcssa40.i.i.i, %._crit_edge.thread.i.i.i ] ; 5 uses
  %i.cx = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.cx, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !71 ; 2 uses
  %i.da = icmp slt i16 %storemerge43.i, %i.cz
  br i1 %i.da, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = icmp eq i16 %storemerge43.i, %i.cz
  br i1 %i.db, label %bb.r, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 34
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !72 ; 2 uses
  %i.de = icmp slt i16 %storemerge738.i, %i.dd
  br i1 %i.de, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = icmp eq i16 %storemerge738.i, %i.dd
  br i1 %i.df, label %bb.t, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 36
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !73
  %i.di = icmp slt i16 %storemerge933.i, %i.dh
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %i.dj = phi i1 [ false, %bb.q ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.p ], [ false, %bb.s ], [ %i.di, %bb.t ]
  %i.dk = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store i16 %storemerge43.i, ptr %i.dl, align 2, !tbaa !74
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 34
  store i16 %storemerge738.i, ptr %.sroa.10.0..sroa_idx.i, align 2, !tbaa !74
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  store i16 %storemerge933.i, ptr %.sroa.17.0..sroa_idx.i, align 2, !tbaa !74
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #32
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !56
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.e, align 8, !tbaa !56
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i: ; preds = %.noexc, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i, %bb.n, %bb.l, %bb.f
  %i.do = add i16 %storemerge933.i, 1             ; 2 uses
  %i.dp = sext i16 %i.do to i32
  %.not10.i = icmp slt i32 %i.bg, %i.dp
  br i1 %.not10.i, label %._crit_edge.i, label %bb.f, !llvm.loop !562

._crit_edge.i:                                    ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i
  %i.dq = add i16 %storemerge738.i, 1             ; 2 uses
  %i.dr = sext i16 %i.dq to i32
  %.not8.i = icmp slt i32 %i.bd, %i.dr
  br i1 %.not8.i, label %._crit_edge41.split.i, label %.lr.ph.i, !llvm.loop !563

._crit_edge41.split.i:                            ; preds = %._crit_edge.i
  %i.ds = add i16 %storemerge43.i, 1              ; 2 uses
  %i.dt = sext i16 %i.ds to i32
  %.not.i = icmp slt i32 %i.ba, %i.dt
  br i1 %.not.i, label %_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph40.i, !llvm.loop !564

_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit: ; preds = %._crit_edge41.split.i, %.lr.ph46.i, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %i.z, i64 1148
  %i.dv = load i16, ptr %i.du, align 4, !tbaa !569
  %.sroa.speculated = call i16 @llvm.smin.i16(i16 %i.dv, i16 %3) ; 5 uses
  %i.dw = icmp sgt i16 %.sroa.speculated, %2
  br i1 %i.dw, label %bb.u, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit

bb.u:                                             ; preds = %_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.z, i64 1140
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !570
  %i.dz = getelementptr inbounds nuw i8, ptr %i.z, i64 332
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !154
  %i.eb = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dy, i64 1
  %i.ed = fpext nsz <2 x float> %i.ec to <2 x double>
  %i.ee = fmul nsz <2 x double> %i.ed, splat (double f0x3F91DF46A2529D39)
  %i.ef = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ee) ; 2 uses
  %i.eg = extractvalue { <2 x double>, <2 x double> } %i.ef, 0 ; 3 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  %i.ei = extractvalue { <2 x double>, <2 x double> } %i.ef, 1 ; 3 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1
  %i.ek = call nsz double @llvm.fmuladd.f64(double %i.eh, double 0.000000e+00, double %i.ej)
  %i.el = fptrunc nsz double %i.ek to float
  %i.em = extractelement <2 x double> %i.eg, i64 0 ; 2 uses
  %i.en = fpext nsz float %i.el to double         ; 2 uses
  %i.eo = fneg nsz double %i.en
  %i.ep = fmul nsz double %i.em, %i.eo
  %i.eq = fneg nsz <2 x double> %i.eg
  %i.er = insertelement <2 x double> %i.eq, double %i.ep, i64 0
  %i.es = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> zeroinitializer, <2 x double> %i.er)
  %i.et = fptrunc nsz <2 x double> %i.es to <2 x float> ; 2 uses
  %i.eu = extractelement <2 x double> %i.ei, i64 0
  %i.ev = fmul nsz double %i.eu, %i.en
  %i.ew = call nsz double @llvm.fmuladd.f64(double %i.em, double 0.000000e+00, double %i.ev)
  %i.ex = fptrunc nsz double %i.ew to float       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.z, i64 1150
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !571, !range !155, !noundef !156
  %i.fa = trunc nuw i8 %i.ez to i1                ; 2 uses
  %i.fb = fneg nsz <2 x float> %i.et
  %i.fc = fneg nsz float %i.ex
  %.sroa.0152.0 = select nsz i1 %i.fa, <2 x float> %i.fb, <2 x float> %i.et
  %.sroa.15.0 = select nsz i1 %i.fa, float %i.fc, float %i.ex
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.aa, align 8, !tbaa !68
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !68
  %i.fd = invoke { <2 x float>, float } @_ZNK9PlayerSAO12getEyeOffsetEv(ptr noundef nonnull align 8 dereferenceable(1226) %i.z)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.fca.0.extract3.i = extractvalue { <2 x float>, float } %i.fd, 0
  %.fca.1.extract4.i = extractvalue { <2 x float>, float } %i.fd, 1
  %i.fe = fadd nsz <2 x float> %.sroa.01.0.copyload.i.i, %.fca.0.extract3.i
  %i.ff = fadd nsz float %.sroa.22.0.copyload.i.i, %.fca.1.extract4.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.z, i64 1144
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !572
  %i.fi = sext i16 %.sroa.speculated to i32       ; 3 uses
  %i.fj = sub i16 %.sroa.023.0.extract.trunc.i, %.sroa.speculated ; 2 uses
  %i.fk = add nsw i32 %i.ak, %i.fi                ; 2 uses
  %i.fl = sext i16 %i.fj to i32
  %.not54.i = icmp slt i32 %i.fk, %i.fl
  br i1 %.not54.i, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %bb.v
  %i.fm = sitofp i16 %.sroa.speculated to float
  %i.fn = fmul nnan nsz float %i.fm, 1.000000e+01
  %i.fo = fmul nnan nsz float %i.fn, 1.600000e+01
  %i.fp = fptosi float %i.fo to i16
  %i.fq = insertelement <2 x i16> poison, i16 %.sroa.speculated, i64 0
  %i.fr = shufflevector <2 x i16> %i.fq, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.fs = sub <2 x i16> %i.ay, %i.fr              ; 3 uses
  %i.ft = ashr exact i48 %.sroa.3.0.insert.shift.i.i, 32
  %i.fu = trunc nsw i48 %i.ft to i32
  %i.fv = sitofp nsz i16 %i.fp to float
  %i.fw = add nsw i32 %i.aw, %i.fi                ; 2 uses
  %i.fx = add nsw i32 %i.fi, %i.fu                ; 2 uses
  %i.fy = sext <2 x i16> %i.fs to <2 x i32>
  %i.fz = insertelement <2 x i32> poison, i32 %i.fx, i64 0
  %i.ga = insertelement <2 x i32> %i.fz, i32 %i.fw, i64 1
  %i.gb = icmp slt <2 x i32> %i.ga, %i.fy         ; 2 uses
  %11 = extractelement <2 x i1> %i.gb, i64 0
  %12 = extractelement <2 x i1> %i.gb, i64 1
  %or.cond.i96 = select i1 %12, i1 true, i1 %11
  br i1 %or.cond.i96, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %.lr.ph58.i
  %i.gc = extractelement <2 x i16> %i.fs, i64 1
  %i.gd = extractelement <2 x i16> %i.fs, i64 0
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %._crit_edge53.split.i
  %storemerge55.i = phi i16 [ %i.ia, %._crit_edge53.split.i ], [ %i.fj, %.lr.ph52.i.preheader ] ; 9 uses
  %.sroa.0.0.insert.ext.i97 = zext i16 %storemerge55.i to i48
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %._crit_edge.i100, %.lr.ph52.i
  %storemerge3050.i = phi i16 [ %i.gc, %.lr.ph52.i ], [ %i.hy, %._crit_edge.i100 ] ; 9 uses
  %.sroa.10.0.insert.ext.i = zext i16 %storemerge3050.i to i48
  %.sroa.10.0.insert.shift.i = shl nuw nsw i48 %.sroa.10.0.insert.ext.i, 16
  %invariant.op.i = or disjoint i48 %.sroa.10.0.insert.shift.i, %.sroa.0.0.insert.ext.i97
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99, %.lr.ph.i98
  %storemerge3245.i = phi i16 [ %i.gd, %.lr.ph.i98 ], [ %i.hw, %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99 ] ; 6 uses
  %.sroa.16.0.insert.ext.i = zext i16 %storemerge3245.i to i48
  %.sroa.16.0.insert.shift.i = shl nuw i48 %.sroa.16.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.reass.i = or disjoint i48 %.sroa.16.0.insert.shift.i, %invariant.op.i
  %i.ge = invoke noundef zeroext i1 @_Z14isBlockInSightN4core8vector3dIsEENS0_IfEES2_ffPf(i48 %.sroa.0.0.insert.insert.reass.i, <2 x float> %i.fe, float %i.ff, <2 x float> %.sroa.0152.0, float %.sroa.15.0, float noundef %i.fh, float noundef %i.fv, ptr noundef null)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.w
  br i1 %i.ge, label %bb.x, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

bb.x:                                             ; preds = %.noexc126
  %.02126.i.i.i102 = load ptr, ptr %i.p, align 8, !tbaa !61 ; 2 uses
  %.not27.i.i.i103 = icmp eq ptr %.02126.i.i.i102, null
  br i1 %.not27.i.i.i103, label %._crit_edge.thread.i.i.i122, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %bb.x, %.lr.ph.i.i.i104.backedge
  %.02128.i.i.i105 = phi ptr [ %.02128.i.i.i105.be, %.lr.ph.i.i.i104.backedge ], [ %.02126.i.i.i102, %bb.x ] ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 32
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !71 ; 3 uses
  %i.gh = icmp slt i16 %storemerge55.i, %i.gg
  br i1 %i.gh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i104
  %i.gi = icmp eq i16 %storemerge55.i, %i.gg
  br i1 %i.gi, label %bb.z, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106

bb.z:                                             ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 34
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !72 ; 2 uses
  %i.gl = icmp slt i16 %storemerge3050.i, %i.gk
  br i1 %i.gl, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = icmp eq i16 %storemerge3050.i, %i.gk
  br i1 %i.gm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118: ; preds = %bb.aa
  %i.gn = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 36
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !73
  %i.gp = icmp slt i16 %storemerge3245.i, %i.go
  br i1 %i.gp, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118, %bb.z, %.lr.ph.i.i.i104
  %i.gq = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 16
  %.021.i.i.i120 = load ptr, ptr %i.gq, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %.021.i.i.i120, null
  br i1 %.not.i.i.i121, label %._crit_edge.thread.i.i.i122, label %.lr.ph.i.i.i104.backedge

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i118, %bb.aa, %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.02128.i.i.i105, i64 24
  %.021.i13.i.i107 = load ptr, ptr %i.gr, align 8, !tbaa !61 ; 2 uses
  %.not.i14.i.i108 = icmp eq ptr %.021.i13.i.i107, null
  br i1 %.not.i14.i.i108, label %._crit_edge.i.thread.i.i111, label %.lr.ph.i.i.i104.backedge

.lr.ph.i.i.i104.backedge:                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119
  %.02128.i.i.i105.be = phi ptr [ %.021.i13.i.i107, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ], [ %.021.i.i.i120, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119 ]
  br label %.lr.ph.i.i.i104, !llvm.loop !2

._crit_edge.thread.i.i.i122:                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119, %bb.x
  %.020.lcssa40.i.i.i123 = phi ptr [ %i.o, %bb.x ], [ %.02128.i.i.i105, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i119 ] ; 4 uses
  %i.gs = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.gt = icmp eq ptr %.020.lcssa40.i.i.i123, %i.gs
  br i1 %i.gt, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread.i.i.i122
  %i.gu = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i.i.i123) #33 ; 2 uses
  %.phi.trans.insert.i.i124 = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %.pre.i.i125 = load i16, ptr %.phi.trans.insert.i.i124, align 2, !tbaa !71
  br label %._crit_edge.i.thread.i.i111

._crit_edge.i.thread.i.i111:                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106, %bb.ab
  %i.gv = phi i16 [ %.pre.i.i125, %bb.ab ], [ %i.gg, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ] ; 2 uses
  %.020.lcssa39.i.i.i112 = phi ptr [ %.020.lcssa40.i.i.i123, %bb.ab ], [ %.02128.i.i.i105, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ] ; 3 uses
  %.sroa.06.0.i.i.i113 = phi ptr [ %i.gu, %bb.ab ], [ %.02128.i.i.i105, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread.i.i106 ] ; 2 uses
  %i.gw = icmp slt i16 %i.gv, %storemerge55.i
  br i1 %i.gw, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.thread.i.i111
  %i.gx = icmp eq i16 %i.gv, %storemerge55.i
  br i1 %i.gx, label %bb.ad, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i113, i64 34
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !72 ; 2 uses
  %i.ha = icmp slt i16 %i.gz, %storemerge3050.i
  br i1 %i.ha, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hb = icmp eq i16 %i.gz, %storemerge3050.i
  br i1 %i.hb, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114: ; preds = %bb.ae
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i113, i64 36
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !73
  %i.he = icmp slt i16 %i.hd, %storemerge3245.i
  br i1 %i.he, label %bb.af, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

bb.af:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114, %bb.ad, %._crit_edge.i.thread.i.i111, %._crit_edge.thread.i.i.i122
  %.sroa.4.0.i.ph.i.i115 = phi ptr [ %.020.lcssa39.i.i.i112, %._crit_edge.i.thread.i.i111 ], [ %.020.lcssa39.i.i.i112, %bb.ad ], [ %.020.lcssa39.i.i.i112, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114 ], [ %.020.lcssa40.i.i.i123, %._crit_edge.thread.i.i.i122 ] ; 5 uses
  %i.hf = icmp eq ptr %.sroa.4.0.i.ph.i.i115, %i.o
  br i1 %i.hf, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i115, i64 32
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !71 ; 2 uses
  %i.hi = icmp slt i16 %storemerge55.i, %i.hh
  br i1 %i.hi, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hj = icmp eq i16 %storemerge55.i, %i.hh
  br i1 %i.hj, label %bb.ai, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116

bb.ai:                                            ; preds = %bb.ah
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i115, i64 34
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !72 ; 2 uses
  %i.hm = icmp slt i16 %storemerge3050.i, %i.hl
  br i1 %i.hm, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hn = icmp eq i16 %storemerge3050.i, %i.hl
  br i1 %i.hn, label %bb.ak, label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116

bb.ak:                                            ; preds = %bb.aj
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i115, i64 36
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !73
  %i.hq = icmp slt i16 %storemerge3245.i, %i.hp
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.hr = phi i1 [ false, %bb.ah ], [ true, %bb.af ], [ true, %bb.ai ], [ true, %bb.ag ], [ false, %bb.aj ], [ %i.hq, %bb.ak ]
  %i.hs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc127:                                        ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i116
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store i16 %storemerge55.i, ptr %i.ht, align 2, !tbaa !74
  %.sroa.10.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.hs, i64 34
  store i16 %storemerge3050.i, ptr %.sroa.10.0..sroa_idx.i117, align 2, !tbaa !74
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  store i16 %storemerge3245.i, ptr %.sroa.16.0..sroa_idx.i, align 2, !tbaa !74
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hr, ptr noundef nonnull %i.hs, ptr noundef nonnull %.sroa.4.0.i.ph.i.i115, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #32
  %i.hu = load i64, ptr %i.s, align 8, !tbaa !56
  %i.hv = add i64 %i.hu, 1
  store i64 %i.hv, ptr %i.s, align 8, !tbaa !56
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99: ; preds = %.noexc127, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i.i.i114, %bb.ae, %bb.ac, %.noexc126
  %i.hw = add i16 %storemerge3245.i, 1            ; 2 uses
  %i.hx = sext i16 %i.hw to i32
  %.not33.i = icmp slt i32 %i.fx, %i.hx
  br i1 %.not33.i, label %._crit_edge.i100, label %bb.w, !llvm.loop !565

._crit_edge.i100:                                 ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit.i99
  %i.hy = add i16 %storemerge3050.i, 1            ; 2 uses
  %i.hz = sext i16 %i.hy to i32
  %.not31.i = icmp slt i32 %i.fw, %i.hz
  br i1 %.not31.i, label %._crit_edge53.split.i, label %.lr.ph.i98, !llvm.loop !566

._crit_edge53.split.i:                            ; preds = %._crit_edge.i100
  %i.ia = add i16 %storemerge55.i, 1              ; 2 uses
  %i.ib = sext i16 %i.ia to i32
  %.not.i101 = icmp slt i32 %i.fk, %i.ib
  br i1 %.not.i101, label %_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit, label %.lr.ph52.i, !llvm.loop !567

_ZL17fillViewConeBlockN4core8vector3dIsEEsNS0_IfEES2_fRSt3setIS1_St4lessIS1_ESaIS1_EE.exit: ; preds = %._crit_edge53.split.i, %bb.v, %.lr.ph58.i, %_ZL15fillRadiusBlockN4core8vector3dIsEEsRSt3setIS1_St4lessIS1_ESaIS1_EE.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0172.0191, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ic, %i.v
  br i1 %.not, label %._crit_edge, label %bb.e

bb.al:                                            ; preds = %._crit_edge
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !54
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ii = invoke { ptr, ptr } @_ZSt16__set_differenceISt23_Rb_tree_const_iteratorIN4core8vector3dIsEEES4_St15insert_iteratorISt3setIS3_St4lessIS3_ESaIS3_EEEN9__gnu_cxx5__ops15_Iter_less_iterEET1_T_SG_T0_SH_SF_T2_(ptr %i.id, ptr nonnull %i.a, ptr %i.if, ptr nonnull %i.ig, ptr nonnull %5, ptr nonnull %i.ih)
          to label %_ZSt14set_differenceISt23_Rb_tree_const_iteratorIN4core8vector3dIsEEES4_St15insert_iteratorISt3setIS3_St4lessIS3_ESaIS3_EEEET1_T_SD_T0_SE_SC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZSt14set_differenceISt23_Rb_tree_const_iteratorIN4core8vector3dIsEEES4_St15insert_iteratorISt3setIS3_St4lessIS3_ESaIS3_EEEET1_T_SD_T0_SE_SC_.exit: ; preds = %bb.al
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %.not177192 = icmp eq ptr %i.ij, %i.a
end_hunk_0
begin_hunk_1_@_ZN17ServerEnvironment10loadPlayerEP12RemotePlayert:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !244
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  %i.h = load i8, ptr %i.g, align 8, !tbaa !727, !range !155, !noundef !156
  %i.i = trunc nuw i8 %i.h to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.j = tail call noalias noundef nonnull dereferenceable(1232) ptr @_Znwm(i64 noundef 1232) #34, !noalias !728 ; 11 uses
  invoke void @_ZN9PlayerSAOC1EP17ServerEnvironmentP12RemotePlayertb(ptr noundef nonnull align 8 dereferenceable(1226) %i.j, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %i.i)
          to label %_ZSt11make_uniqueI9PlayerSAOJP17ServerEnvironmentRP12RemotePlayerRtbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !728

common.resume:                                    ; preds = %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.bo, %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 1232) #37, !noalias !728
  br label %common.resume

_ZSt11make_uniqueI9PlayerSAOJP17ServerEnvironmentRP12RemotePlayerRtbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.j, ptr %0, align 8, !tbaa !66, !alias.scope !728
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !329  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !162
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %2, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %_ZSt11make_uniqueI9PlayerSAOJP17ServerEnvironmentRP12RemotePlayerRtbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  br i1 %i.q, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1137
  store i8 1, ptr %i.r, align 1, !tbaa !729
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.d, %bb.e
  %i.s = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit, !inline_history !9

.noexc:                                           ; preds = %_ZTW10infostream.exit
  %.v.i = select i1 %i.w, i64 976, i64 984
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.31, ptr %i.d, align 8, !tbaa !308
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.f unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 0 uses

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !309 ; 5 uses
  %.not.i24 = icmp eq ptr %i.aa, null
  br i1 %.not.i24, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !162
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !316
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.noexc25 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc25:                                         ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !309
  br label %bb.i

bb.i:                                             ; preds = %.noexc25, %bb.g
  %i.ai = phi ptr [ %.pre.i, %.noexc25 ], [ %i.aa, %bb.g ]
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !261
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !263
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.32, ptr %i.c, align 8, !tbaa !308
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 2 uses

bb.j:                                             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !309 ; 5 uses
  %.not.i28 = icmp eq ptr %i.ao, null
  br i1 %.not.i28, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !162
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !316
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc30 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc30:                                         ; preds = %bb.l
  %.pre.i29 = load ptr, ptr %i.an, align 8, !tbaa !309 ; 2 uses
  %.pre = load ptr, ptr %.pre.i29, align 8, !tbaa !162
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre71 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc30, %bb.k
  %i.aw = phi i64 [ %.pre71, %.noexc30 ], [ %i.ar, %bb.k ]
  %i.ax = phi ptr [ %.pre.i29, %.noexc30 ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !328
  %.not.i1.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !262
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
          to label %.noexc50 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc50:                                         ; preds = %bb.o
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !162
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc50, %bb.n
  %.0.i.i.i = phi i8 [ %i.be, %bb.n ], [ %i.bi, %.noexc50 ]
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext %.0.i.i.i)
          to label %.noexc52 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc52:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.j, %.noexc52
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !244
  %i.bm = invoke { <2 x float>, float } @_ZN6Server12findSpawnPosEv(ptr noundef nonnull align 8 dereferenceable(1880) %i.bl)
          to label %bb.p unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 2 uses

bb.p:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %.fca.0.extract15 = extractvalue { <2 x float>, float } %i.bm, 0
  %.fca.1.extract16 = extractvalue { <2 x float>, float } %i.bm, 1
  invoke void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226) %i.j, <2 x float> %.fca.0.extract15, float %.fca.1.extract16)
          to label %bb.q unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i8 1, ptr %i.bn, align 8, !tbaa !371
  br label %bb.af

_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit: ; preds = %.invoke, %.noexc62, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57, %.noexc60, %bb.ad, %.noexc52, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc50, %bb.o, %bb.aa, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit41, %bb.x, %bb.w, %.noexc35, %_ZTW12actionstream.exit, %bb.l, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.i, %bb.h, %.noexc, %_ZTW10infostream.exit, %bb.ae, %_ZN11StreamProxylsEPFRSoS0_E.exit48, %bb.p, %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZSt11make_uniqueI9PlayerSAOJP17ServerEnvironmentRP12RemotePlayerRtbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !162
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(1226) %i.j) #32, !inline_history !607
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.bs, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !68
  %4 = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %.sroa.01.0.copyload.i)
  %5 = fcmp nsz ogt <2 x float> %4, splat (float 3.100750e+05) ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %or.cond8.i = select i1 %6, i1 true, i1 %7
  %i.bt = tail call nsz float @llvm.fabs.f32(float %.sroa.22.0.copyload.i)
  %i.bu = fcmp nsz ogt float %i.bt, 3.100750e+05
  %i.bv = select i1 %or.cond8.i, i1 true, i1 %i.bu
  br i1 %i.bv, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %.not.i33 = icmp eq ptr @_ZTH12actionstream, null
  br i1 %.not.i33, label %_ZTW12actionstream.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZTH12actionstream()
  br label %_ZTW12actionstream.exit

_ZTW12actionstream.exit:                          ; preds = %bb.s, %bb.t
  %i.bw = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !306, !nonnull !156, !align !307 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !162
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %.noexc35 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit, !inline_history !608

.noexc35:                                         ; preds = %_ZTW12actionstream.exit
  %.v.i34 = select i1 %i.ca, i64 976, i64 984
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.v.i34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.33, ptr %i.b, align 8, !tbaa !308
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.u unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 0 uses

bb.u:                                             ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !309 ; 5 uses
  %.not.i37 = icmp eq ptr %i.ce, null
  br i1 %.not.i37, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !316
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %.noexc39 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc39:                                         ; preds = %bb.w
  %.pre.i38 = load ptr, ptr %i.cb, align 8, !tbaa !309
  br label %bb.x

bb.x:                                             ; preds = %.noexc39, %bb.v
  %i.cm = phi ptr [ %.pre.i38, %.noexc39 ], [ %i.ce, %bb.v ]
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !261
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !263
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %i.cn, i64 noundef %i.cp)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit41 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit41: ; preds = %bb.u, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.34, ptr %i.a, align 8, !tbaa !308
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.y unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 2 uses

bb.y:                                             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !309 ; 5 uses
  %.not.i44 = icmp eq ptr %i.cs, null
  br i1 %.not.i44, label %_ZN11StreamProxylsEPFRSoS0_E.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !162
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !316
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %.noexc46 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc46:                                         ; preds = %bb.aa
  %.pre.i45 = load ptr, ptr %i.cr, align 8, !tbaa !309 ; 2 uses
  %.pre72 = load ptr, ptr %.pre.i45, align 8, !tbaa !162
  %.phi.trans.insert73 = getelementptr i8, ptr %.pre72, i64 -24
  %.pre74 = load i64, ptr %.phi.trans.insert73, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc46, %bb.z
  %i.da = phi i64 [ %.pre74, %.noexc46 ], [ %i.cv, %bb.z ]
  %i.db = phi ptr [ %.pre.i45, %.noexc46 ], [ %i.cs, %bb.z ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 240
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !322 ; 6 uses
  %.not.i.i.i54 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i54, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55

.invoke:                                          ; preds = %bb.m, %bb.ab
  invoke void @_ZSt16__throw_bad_castv() #36
          to label %.cont unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55: ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !328
  %.not.i1.i.i56 = icmp eq i8 %i.dg, 0
  br i1 %.not.i1.i.i56, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 67
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !262
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.de)
          to label %.noexc60 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc60:                                         ; preds = %bb.ad
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef signext i8 %i.dl(ptr noundef nonnull align 8 dereferenceable(570) %i.de, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57: ; preds = %.noexc60, %bb.ac
  %.0.i.i.i58 = phi i8 [ %i.di, %bb.ac ], [ %i.dm, %.noexc60 ]
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i8 noundef signext %.0.i.i.i58)
          to label %.noexc62 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

.noexc62:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i57
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit48 unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit48:              ; preds = %bb.y, %.noexc62
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !244
  %i.dq = invoke { <2 x float>, float } @_ZN6Server12findSpawnPosEv(ptr noundef nonnull align 8 dereferenceable(1880) %i.dp)
          to label %bb.ae unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit ; 2 uses

bb.ae:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit48
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.dq, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.dq, 1
  invoke void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226) %i.j, <2 x float> %.fca.0.extract, float %.fca.1.extract)
          to label %bb.af unwind label %_ZNSt10unique_ptrI9PlayerSAOSt14default_deleteIS0_EED2Ev.exit

bb.af:                                            ; preds = %bb.r, %bb.ae, %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 3152
  store i32 10, ptr %i.dr, align 8, !tbaa !252
  ret void
}

declare void @_ZN9PlayerSAO15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(1226), <2 x float>, float) local_unnamed_addr #4

declare { <2 x float>, float } @_ZN6Server12findSpawnPosEv(ptr noundef nonnull align 8 dereferenceable(1880)) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN17ServerEnvironment8saveMetaEv(ptr noundef nonnull align 8 dereferenceable(3560) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %4 = alloca %class.Settings, align 8            ; 30 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::allocator.67", align 1 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.f = load i8, ptr %i.e, align 8, !tbaa !384, !range !155, !noundef !156
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !244  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1880) %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
