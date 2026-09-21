Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/registry?download=true
inline.NumInlined: 337
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14emplace_uniqueIJS5_EEESt4pairINS1_15iterator_detail8iteratorINS1_4nodeIS5_PvEENS1_6bucketISJ_SI_EEEEbERKS5_DpOT_:bb.a
  %vec.ind = phi <2 x i64> [ <i64 -1606050821391897906, i64 -8652080075778251037>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.o
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %i.p = add <2 x i64> %vec.ind, splat (i64 -7046029254386353131)
  %i.q = add <2 x i64> %wide.load, %i.p
  %i.r = zext <2 x i64> %i.q to <2 x i128>
  %i.s = mul nuw <2 x i128> %i.r, splat (i128 16088033396387240377) ; 2 uses
  %i.t = lshr <2 x i128> %i.s, splat (i128 64)
  %i.u = xor <2 x i128> %i.t, %i.s
  %i.v = trunc <2 x i128> %i.u to <2 x i64>
  %i.w = xor <2 x i64> %vec.phi, %i.v             ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4354685564936845354)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %i.y = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.w) ; 2 uses
  %ind.escape = add i64 %i.l, 5439978432994455225
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.i.i.preheader82:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.041.i.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.i, %middle.block ]
  %.03440.i.i.i.i.i.i.i.ph = phi i64 [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block ]
  %.03639.i.i.i.i.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.03738.i.i.i.i.i.i.i.ph = phi i64 [ -1606050821391897906, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i.i.i
  %.041.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.041.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ] ; 2 uses
  %.03440.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.03440.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ]
  %.03639.i.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.03639.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ]
  %.03738.i.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.03738.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ] ; 2 uses
  %i.z = load i64, ptr %.041.i.i.i.i.i.i.i, align 1
  %i.aa = add i64 %.03738.i.i.i.i.i.i.i, -7046029254386353131 ; 2 uses
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, 16088033396387240377 ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64
  %i.ah = xor i64 %.03639.i.i.i.i.i.i.i, %i.ag    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.041.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = add i64 %.03440.i.i.i.i.i.i.i, -8       ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 7
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i.i.i, !llvm.loop !110

._crit_edge.i.i.loopexit.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.03738.i.i.i.i.i.i.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.03738.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa78 = phi i64 [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa77 = phi ptr [ %i.i, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa = phi i64 [ %i.k, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = add i64 %.03738.i.i.i.i.i.i.i.lcssa, 4354685564936845354
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.loopexit.i.i.i.i.i, %bb.a
  %.037.lcssa.i.i.i.i.i.i.i = phi i64 [ -8652080075778251037, %bb.a ], [ %i.al, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  %.036.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.c, %bb.a ], [ %.lcssa78, %._crit_edge.i.i.loopexit.i.i.i.i.i ]
  %.034.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %.lcssa, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.a, %bb.a ], [ %.lcssa77, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 5 uses
  %i.am = icmp samesign ugt i64 %.034.lcssa.i.i.i.i.i.i.i, 3
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.an = add nsw i64 %.034.lcssa.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.an, 3
  %i.as = shl nuw nsw i64 %i.aq, %i.ar
  %i.at = load i32, ptr %.0.lcssa.i.i.i.i.i.i.i, align 1
  %i.au = zext i32 %i.at to i64
  %i.av = or i64 %i.as, %i.au
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.034.lcssa.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = add nuw nsw i64 %.034.lcssa.i.i.i.i.i.i.i, 3
  %i.ax = and i64 %i.aw, 2                        ; 2 uses
  %i.ay = lshr i64 %.034.lcssa.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.ax, 3
  %i.bd = shl nuw nsw i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.ay
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.ay, 3
  %i.bi = shl nuw nsw i64 %i.bg, %i.bh
  %i.bj = or i64 %i.bi, %i.bd
  %i.bk = load i8, ptr %.0.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !64
  %i.bl = zext i8 %i.bk to i64
  %i.bm = or i64 %i.bj, %i.bl
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.035.i.i.i.i.i.i.i = phi i64 [ %i.av, %bb.b ], [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %i.bn = add i64 %.035.i.i.i.i.i.i.i, %.037.lcssa.i.i.i.i.i.i.i
  %i.bo = zext i64 %i.bn to i128
  %i.bp = mul nuw i128 %i.bo, 16088033396387240377 ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %.036.lcssa.i.i.i.i.i.i.i, %i.bs
  %i.bu = add i64 %i.bt, %.037.lcssa.i.i.i.i.i.i.i
  %i.bv = zext i64 %i.bu to i128
  %i.bw = mul nuw i128 %i.bv, 16088033396387240377 ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64                 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !73 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, 29
  br i1 %i.cc, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit
  %i.cd = lshr i64 %i.bz, 32
  %i.ce = add i64 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.cb
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.cb
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !75
  %i.cj = and i64 %i.ce, 4294967295
  %i.ck = mul i64 %i.cg, %i.cj
  %i.cl = zext i64 %i.ck to i128
  %.mask.i.i = and i64 %i.ci, 4294967295
  %i.cm = zext nneg i64 %.mask.i.i to i128
  %i.cn = mul nuw nsw i128 %i.cm, %i.cl
  %i.co = lshr i128 %i.cn, 64
  %i.cp = trunc nuw nsw i128 %i.co to i64
  br label %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit

bb.f:                                             ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit
  %i.cq = getelementptr [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE9positionsE, i64 %i.cb
  %i.cr = getelementptr i8, ptr %i.cq, i64 -232
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !76
  %i.ct = tail call noundef i64 %i.cs(i64 noundef %i.bz), !inline_history !1
  br label %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit

_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.cp, %bb.e ], [ %i.ct, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq i64 %i.cv, 0                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = lshr i64 %.0.i.i, 6
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %i.da
  %.sroa.3.0.i = select i1 %.not.i, ptr null, ptr %i.db ; 2 uses
  %i.dc = shl nsw i64 %.0.i.i, 3
  %.sroa.0.0.i.idx = select i1 %.not.i, i64 0, i64 %i.dc ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %i.cx, i64 %.sroa.0.0.i.idx ; 3 uses
  %.idx = shl i64 %i.cv, 3
  %.not9.i = icmp eq i64 %.sroa.0.0.i.idx, %.idx
  br i1 %.not9.i, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit
  %i.dd = load ptr, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i, %.preheader.i
  %.0.in.i = phi ptr [ %.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ], [ %.sroa.0.0.i, %.preheader.i ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !68 ; 4 uses
  %.not.i23 = icmp eq ptr %.0.i, null
  br i1 %.not.i23, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread, label %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i

_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i: ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.df) #19
  %.not.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit, label %bb.g, !llvm.loop !111

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread: ; preds = %bb.g, %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit
  %i.dh = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 6 uses
  store ptr null, ptr %i.dh, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %3, align 8
  store i64 %i.dj, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !19 ; 2 uses
  %i.dm = add i64 %i.dl, 1                        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !77
  %i.dp = icmp ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i, label %bb.n

_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i: ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !20
  %i.ds = uitofp i64 %i.dm to float
  %i.dt = uitofp i64 %i.dl to float
  %i.du = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dt, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fdiv <2 x float> %i.dv, %i.dx           ; 2 uses
  %4 = extractelement <2 x float> %i.dy, i64 0
  %5 = tail call noundef float @llvm.ceil.f32(float %4) ; 2 uses
  %6 = fcmp ult float %5, f0x5F800000
  %i.dz = fptoui float %5 to i64
  %i.ea = extractelement <2 x float> %i.dy, i64 1
  %7 = tail call noundef float @llvm.ceil.f32(float %i.ea) ; 2 uses
  %8 = fcmp ult float %7, f0x5F800000
  %9 = fptoui float %7 to i64
  %10 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %9)
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 1)
  %12 = and i1 %8, %6
  %i.eb = select i1 %12, i64 %11, i64 -1
  %i.ec = tail call noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE10size_indexEm(i64 noundef %i.eb)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !75 ; 2 uses
  %i.ef = load i64, ptr %i.cu, align 8, !tbaa !24
  %.not.i.i = icmp eq i64 %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i
  invoke void @_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ee)
          to label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit unwind label %bb.l

_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit: ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i, %bb.h
  %i.eg = load i64, ptr %i.ca, align 8, !tbaa !73 ; 4 uses
  %i.eh = icmp ult i64 %i.eg, 29
  br i1 %i.eh, label %bb.i, label %bb.j, !prof !74

bb.i:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit
  %i.ei = lshr i64 %i.bz, 32
  %i.ej = add i64 %i.ei, %i.bz
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.eg
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !75
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.eg
  %i.en = load i64, ptr %i.em, align 8, !tbaa !75
  %i.eo = and i64 %i.ej, 4294967295
  %i.ep = mul i64 %i.el, %i.eo
  %i.eq = zext i64 %i.ep to i128
  %.mask.i.i25 = and i64 %i.en, 4294967295
  %i.er = zext nneg i64 %.mask.i.i25 to i128
  %i.es = mul nuw nsw i128 %i.er, %i.eq
  %i.et = lshr i128 %i.es, 64
  %i.eu = trunc nuw nsw i128 %i.et to i64
  br label %bb.k

bb.j:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit
  %i.ev = getelementptr [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE9positionsE, i64 %i.eg
  %i.ew = getelementptr i8, ptr %i.ev, i64 -232
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !76
  %i.ey = invoke noundef i64 %i.ex(i64 noundef %i.bz)
          to label %bb.k unwind label %bb.m, !inline_history !112

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i24 = phi i64 [ %i.eu, %bb.i ], [ %i.ey, %bb.j ] ; 2 uses
  %i.ez = load i64, ptr %i.cu, align 8, !tbaa !24
  %.not.i28 = icmp eq i64 %i.ez, 0                ; 2 uses
  %i.fa = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.fb = load ptr, ptr %i.cy, align 8
  %i.fc = lshr i64 %.0.i.i24, 6
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.fc
  %.sroa.3.0.i29 = select i1 %.not.i28, ptr null, ptr %i.fd
  %.sroa.0.0.idx.i30 = select i1 %.not.i28, i64 0, i64 %.0.i.i24
  %.sroa.0.0.i31 = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.sroa.0.0.idx.i30
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38

bb.m:                                             ; preds = %bb.j
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38

bb.n:                                             ; preds = %bb.k, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread
  %.sroa.012.0 = phi ptr [ %.sroa.0.0.i31, %bb.k ], [ %.sroa.0.0.i, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 4 uses
  %.sroa.9.0 = phi ptr [ %.sroa.3.0.i29, %bb.k ], [ %.sroa.3.0.i, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 7 uses
  %i.fg = load ptr, ptr %.sroa.012.0, align 8, !tbaa !32 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i34, label %bb.o, label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.fh = load ptr, ptr %i.cw, align 8, !tbaa !25 ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.012.0 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3                 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !28 ; 2 uses
  %.not17.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not17.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fo = load i64, ptr %i.cu, align 8, !tbaa !24
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = load ptr, ptr %i.cy, align 8, !tbaa !36
  %i.fr = getelementptr [32 x i8], ptr %i.fq, i64 %i.fp ; 2 uses
  %i.fs = and i64 %i.fl, -64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fs
  store ptr %i.ft, ptr %.sroa.9.0, align 8, !tbaa !27
  %i.fu = getelementptr i8, ptr %i.fr, i64 16     ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !29 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !29
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store ptr %.sroa.9.0, ptr %i.fx, align 8, !tbaa !70
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 24
  store ptr %i.fr, ptr %i.fy, align 8, !tbaa !70
  store ptr %.sroa.9.0, ptr %i.fu, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fz = and i64 %i.fl, 63
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %i.fn
  store i64 %i.gb, ptr %i.fm, align 8, !tbaa !28
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit

_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit: ; preds = %bb.q, %bb.n
  store ptr %i.fg, ptr %i.dh, align 8, !tbaa !67
  store ptr %i.dh, ptr %.sroa.012.0, align 8, !tbaa !32
  %i.gc = load i64, ptr %i.dk, align 8, !tbaa !19
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %i.dk, align 8, !tbaa !19
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit

_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38: ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.m ], [ %i.fe, %bb.l ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 16) #20
  resume { ptr, i32 } %.pn

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit: ; preds = %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit
  %.sink75 = phi ptr [ %i.dh, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ %.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  %.sroa.012.0.sink = phi ptr [ %.sroa.012.0, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ %.sroa.0.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  %.sroa.9.0.sink = phi ptr [ %.sroa.9.0, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ %.sroa.3.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  %.sink = phi i8 [ 1, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ 0, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  store ptr %.sink75, ptr %0, align 8, !tbaa !68
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !113
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0.sink, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !114
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.ge, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm29ELm6442450939EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 6442450939
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm30ELm12884901893EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 12884901893
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm31ELm25769803751EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 25769803751
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm32ELm51539607551EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 51539607551
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm33ELm103079215111EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 103079215111
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm34ELm206158430209EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 206158430209
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm35ELm412316860441EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 412316860441
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm36ELm824633720831EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 824633720831
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE8positionILm37ELm1649267441651EEEmm(i64 noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 1649267441651
  ret i64 %i.a
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::unordered::detail::grouped_bucket_array", align 16 ; 13 uses
  %3 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEC2EmRKSA_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not48 = icmp eq i64 %i.e, 0
  br i1 %.not48, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %._crit_edge
  %.02449 = phi ptr [ %i.c, %.lr.ph51 ], [ %i.k, %._crit_edge ] ; 3 uses
  %i.j = load ptr, ptr %.02449, align 8, !tbaa !32 ; 2 uses
  %.not2946 = icmp eq ptr %i.j, null
  br i1 %.not2946, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02449, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge52.loopexit, label %bb.b, !llvm.loop !119

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %.02347 = phi ptr [ %i.l, %bb.k ], [ %i.j, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %.02347, align 8, !tbaa !67 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02347, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 5 uses
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #23 ; 6 uses
  %i.p = xor i64 %i.o, -1606050821391897906       ; 3 uses
  %i.q = icmp ugt i64 %i.o, 7
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph
  %i.r = add i64 %i.o, -8
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader84, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387902      ; 5 uses
  %i.u = shl i64 %n.vec, 3
  %i.v = getelementptr i8, ptr %i.n, i64 %i.u     ; 2 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = sub i64 %i.o, %i.w                       ; 2 uses
  %i.y = mul i64 %n.vec, -7046029254386353131     ; 2 uses
  %i.z = add i64 %i.y, -1606050821391897906
  %i.aa = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.p, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.aa, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 -1606050821391897906, i64 -8652080075778251037>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.ab
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %i.ac = add <2 x i64> %vec.ind, splat (i64 -7046029254386353131)
  %i.ad = add <2 x i64> %wide.load, %i.ac
  %i.ae = zext <2 x i64> %i.ad to <2 x i128>
  %i.af = mul nuw <2 x i128> %i.ae, splat (i128 16088033396387240377) ; 2 uses
  %i.ag = lshr <2 x i128> %i.af, splat (i128 64)
  %i.ah = xor <2 x i128> %i.ag, %i.af
  %i.ai = trunc <2 x i128> %i.ah to <2 x i64>
  %i.aj = xor <2 x i64> %vec.phi, %i.ai           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4354685564936845354)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %i.al = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.aj) ; 2 uses
  %ind.escape = add i64 %i.y, 5439978432994455225
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader84

.lr.ph.i.i.i.i.i.i.i.i.preheader84:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.041.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.03440.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.03639.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.03738.i.i.i.i.i.i.i.i.ph = phi i64 [ -1606050821391897906, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader84, %.lr.ph.i.i.i.i.i.i.i.i
  %.041.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.041.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader84 ] ; 2 uses
  %.03440.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.03440.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader84 ]
  %.03639.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.03639.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader84 ]
  %.03738.i.i.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.03738.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader84 ] ; 2 uses
  %i.am = load i64, ptr %.041.i.i.i.i.i.i.i.i, align 1
  %i.an = add i64 %.03738.i.i.i.i.i.i.i.i, -7046029254386353131 ; 2 uses
  %i.ao = add i64 %i.am, %i.an
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw i128 %i.ap, 16088033396387240377 ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = xor i128 %i.ar, %i.aq
  %i.at = trunc i128 %i.as to i64
  %i.au = xor i64 %.03639.i.i.i.i.i.i.i.i, %i.at  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.041.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = add i64 %.03440.i.i.i.i.i.i.i.i, -8     ; 3 uses
  %i.ax = icmp ugt i64 %i.aw, 7
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i.i.i.i, !llvm.loop !121

._crit_edge.i.i.loopexit.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.03738.i.i.i.i.i.i.i.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.03738.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa81 = phi i64 [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa80 = phi ptr [ %i.v, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ay = add i64 %.03738.i.i.i.i.i.i.i.i.lcssa, 4354685564936845354
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.i.loopexit.i.i.i.i.i.i, %.lr.ph
  %.037.lcssa.i.i.i.i.i.i.i.i = phi i64 [ -8652080075778251037, %.lr.ph ], [ %i.ay, %._crit_edge.i.i.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.036.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph ], [ %.lcssa81, %._crit_edge.i.i.loopexit.i.i.i.i.i.i ]
  %.034.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph ], [ %.lcssa, %._crit_edge.i.i.loopexit.i.i.i.i.i.i ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph ], [ %.lcssa80, %._crit_edge.i.i.loopexit.i.i.i.i.i.i ] ; 5 uses
  %i.az = icmp samesign ugt i64 %.034.lcssa.i.i.i.i.i.i.i.i, 3
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ba = add nsw i64 %.034.lcssa.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.ba, 3
  %i.bf = shl nuw nsw i64 %i.bd, %i.be
  %i.bg = load i32, ptr %.0.lcssa.i.i.i.i.i.i.i.i, align 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = or i64 %i.bf, %i.bh
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.034.lcssa.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = add nuw nsw i64 %.034.lcssa.i.i.i.i.i.i.i.i, 3
  %i.bk = and i64 %i.bj, 2                        ; 2 uses
  %i.bl = lshr i64 %.034.lcssa.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !64
  %i.bo = zext i8 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bk, 3
  %i.bq = shl nuw nsw i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 %i.bl
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bl, 3
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = load i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, align 1, !tbaa !64
  %i.by = zext i8 %i.bx to i64
  %i.bz = or i64 %i.bw, %i.by
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit.i

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.035.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.c ], [ %i.bz, %bb.e ], [ 0, %bb.d ]
  %i.ca = add i64 %.035.i.i.i.i.i.i.i.i, %.037.lcssa.i.i.i.i.i.i.i.i
  %i.cb = zext i64 %i.ca to i128
  %i.cc = mul nuw i128 %i.cb, 16088033396387240377 ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = xor i128 %i.cd, %i.cc
  %i.cf = trunc i128 %i.ce to i64
  %i.cg = xor i64 %.036.lcssa.i.i.i.i.i.i.i.i, %i.cf
  %i.ch = add i64 %i.cg, %.037.lcssa.i.i.i.i.i.i.i.i
  %i.ci = zext i64 %i.ch to i128
  %i.cj = mul nuw i128 %i.ci, 16088033396387240377 ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = xor i128 %i.ck, %i.cj
  %i.cm = trunc i128 %i.cl to i64                 ; 3 uses
  %i.cn = load i64, ptr %2, align 16, !tbaa !73   ; 4 uses
  %i.co = icmp ult i64 %i.cn, 29
  br i1 %i.co, label %bb.f, label %bb.g, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit.i
  %i.cp = lshr i64 %i.cm, 32
  %i.cq = add i64 %i.cp, %i.cm
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.cn
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !75
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.cn
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !75
  %i.cv = and i64 %i.cq, 4294967295
  %i.cw = mul i64 %i.cs, %i.cv
  %i.cx = zext i64 %i.cw to i128
  %.mask.i.i.i = and i64 %i.cu, 4294967295
  %i.cy = zext nneg i64 %.mask.i.i.i to i128
  %i.cz = mul nuw nsw i128 %i.cy, %i.cx
end_hunk_0
begin_hunk_1_@_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE11rehash_implEm:bb.a
  %i.ds = getelementptr i8, ptr %i.dp, i64 16     ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !29 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %.sroa.3.0.i.i, ptr %i.dv, align 8, !tbaa !70
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %i.dp, ptr %i.dw, align 8, !tbaa !70
  store ptr %.sroa.3.0.i.i, ptr %i.ds, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dx = and i64 %.sroa.0.0.idx.i.i, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = or i64 %i.dn, %i.dy
  store i64 %i.dz, ptr %i.dm, align 8, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit.i
  store ptr %i.dl, ptr %.02347, align 8, !tbaa !67
  store ptr %.02347, ptr %.sroa.0.0.i.i, align 8, !tbaa !32
  store ptr %i.l, ptr %.02449, align 8, !tbaa !32
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !123

bb.l:                                             ; preds = %bb.g
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %.026 = extractvalue { ptr, i32 } %i.ea, 0
  %i.eb = call ptr @__cxa_begin_catch(ptr %.026) #19 ; 0 uses
  %i.ec = invoke { ptr, ptr } @_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.r       ; 2 uses

._crit_edge52.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.loopexit, %bb.a
  %i.ed = phi ptr [ %.pre, %._crit_edge52.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge52
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !24
  %i.ef = shl i64 %i.ee, 3
  %i.eg = add i64 %i.ef, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eg) #20
  store ptr null, ptr %i.b, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge52
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !36 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ei, null
  br i1 %.not13.i.i, label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEaSEOSD_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !24
  %i.ek = lshr i64 %i.ej, 1
  %i.el = and i64 %i.ek, 9223372036854775776
  %i.em = add nuw i64 %i.el, 32
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #20
  store ptr null, ptr %i.eh, align 8, !tbaa !36
  br label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEaSEOSD_.exit

_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEaSEOSD_.exit: ; preds = %bb.n, %bb.o
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !24 ; 2 uses
  %i.ep = load <2 x i64>, ptr %2, align 16, !tbaa !75
  store <2 x i64> %i.ep, ptr %i.a, align 8, !tbaa !75
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = load <2 x ptr>, ptr %i.eq, align 16, !tbaa !76
  store <2 x ptr> %i.er, ptr %i.b, align 8, !tbaa !76
  %i.es = icmp eq i64 %i.eo, 0
  br i1 %i.es, label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEaSEOSD_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load float, ptr %i.et, align 8, !tbaa !20
  %i.ev = fpext float %i.eu to double
  %i.ew = uitofp i64 %i.eo to double
  %i.ex = fmul double %i.ew, %i.ev                ; 2 uses
  %i.ey = fcmp ult double %i.ex, f0x43F0000000000000
  %i.ez = fptoui double %i.ex to i64
  %spec.select.i.i = select i1 %i.ey, i64 %i.ez, i64 -1
  br label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEED2Ev.exit

_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEED2Ev.exit: ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEaSEOSD_.exit, %bb.p
  %i.fa = phi i64 [ 0, %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEaSEOSD_.exit ], [ %spec.select.i.i, %bb.p ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.q:                                             ; preds = %bb.l
  %i.fc = extractvalue { ptr, ptr } %i.ec, 0      ; 2 uses
  %i.fd = load ptr, ptr %i.h, align 16, !tbaa !25
  %i.fe = load i64, ptr %i.g, align 8, !tbaa !24
  %i.ff = getelementptr [8 x i8], ptr %i.fd, i64 %i.fe
  %.not4358 = icmp eq ptr %i.fc, %i.ff
  br i1 %.not4358, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.q
  %i.fg = extractvalue { ptr, ptr } %i.ec, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.s

._crit_edge63:                                    ; preds = %_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit, %bb.q
  call void @_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE20unlink_empty_bucketsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #19
  invoke void @__cxa_rethrow() #22
          to label %bb.z unwind label %bb.v

bb.r:                                             ; preds = %bb.l
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph62, %_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit
  %.sroa.040.060 = phi ptr [ %i.fc, %.lr.ph62 ], [ %storemerge.i.i, %_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit ] ; 2 uses
  %.sroa.8.059 = phi ptr [ %i.fg, %.lr.ph62 ], [ %.sroa.8.1, %_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit ] ; 4 uses
  %i.fj = load ptr, ptr %.sroa.040.060, align 8, !tbaa !32 ; 2 uses
  %.not3053 = icmp eq ptr %i.fj, null
  br i1 %.not3053, label %._crit_edge57, label %.lr.ph56

._crit_edge57:                                    ; preds = %.lr.ph56, %bb.s
  %i.fk = load ptr, ptr %.sroa.8.059, align 8, !tbaa !27 ; 2 uses
  %i.fl = ptrtoint ptr %.sroa.040.060 to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.8.059, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !28
  %i.fr = sub nsw i64 63, %i.fo
  %i.fs = lshr i64 -1, %i.fr
  %i.ft = xor i64 %i.fs, -1
  %i.fu = and i64 %i.fq, %i.ft
  %i.fv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fu, i1 false) ; 2 uses
  %i.fw = icmp samesign ult i64 %i.fv, 64
  br i1 %i.fw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge57
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fv
  br label %_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit

bb.u:                                             ; preds = %._crit_edge57
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.8.059, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !29 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !28
  %i.gc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gb, i1 false)
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !27
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gc
  br label %_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit

_ZN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEppEv.exit: ; preds = %bb.t, %bb.u
  %.sroa.8.1 = phi ptr [ %.sroa.8.059, %bb.t ], [ %i.fz, %bb.u ]
  %storemerge.i.i = phi ptr [ %i.fx, %bb.t ], [ %i.ge, %bb.u ] ; 2 uses
  %i.gf = load ptr, ptr %i.h, align 16, !tbaa !25
  %i.gg = load i64, ptr %i.g, align 8, !tbaa !24
  %i.gh = getelementptr [8 x i8], ptr %i.gf, i64 %i.gg
  %.not43 = icmp eq ptr %storemerge.i.i, %i.gh
  br i1 %.not43, label %._crit_edge63, label %bb.s, !llvm.loop !124

.lr.ph56:                                         ; preds = %bb.s, %.lr.ph56
  %.054 = phi ptr [ %i.gi, %.lr.ph56 ], [ %i.fj, %bb.s ] ; 2 uses
  %i.gi = load ptr, ptr %.054, align 8, !tbaa !67 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.054, i64 noundef 16) #20
  %i.gj = load i64, ptr %i.fh, align 8, !tbaa !19
  %i.gk = add i64 %i.gj, -1
  store i64 %i.gk, ptr %i.fh, align 8, !tbaa !19
  %.not30 = icmp eq ptr %i.gi, null
  br i1 %.not30, label %._crit_edge57, label %.lr.ph56, !llvm.loop !125

bb.v:                                             ; preds = %._crit_edge63
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v
  %.pn31.pn = phi { ptr, i32 } [ %i.gl, %bb.v ], [ %i.fi, %bb.r ]
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn31.pn

bb.y:                                             ; preds = %bb.w
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #21
  unreachable

bb.z:                                             ; preds = %._crit_edge63
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE10size_indexEm(i64 noundef %0) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %.not = icmp ugt i64 %0, 13
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %.not.1 = icmp ugt i64 %0, 29
  br i1 %.not.1, label %bb.c, label %bb.al

bb.c:                                             ; preds = %bb.b
  %.not.2 = icmp ugt i64 %0, 53
  br i1 %.not.2, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %.not.3 = icmp ugt i64 %0, 97
  br i1 %.not.3, label %bb.e, label %bb.al

bb.e:                                             ; preds = %bb.d
  %.not.4 = icmp ugt i64 %0, 193
  br i1 %.not.4, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  %.not.5 = icmp ugt i64 %0, 389
  br i1 %.not.5, label %bb.g, label %bb.al

bb.g:                                             ; preds = %bb.f
  %.not.6 = icmp ugt i64 %0, 769
  br i1 %.not.6, label %bb.h, label %bb.al

bb.h:                                             ; preds = %bb.g
  %.not.7 = icmp ugt i64 %0, 1543
  br i1 %.not.7, label %bb.i, label %bb.al

bb.i:                                             ; preds = %bb.h
  %.not.8 = icmp ugt i64 %0, 3079
  br i1 %.not.8, label %bb.j, label %bb.al

bb.j:                                             ; preds = %bb.i
  %.not.9 = icmp ugt i64 %0, 6151
  br i1 %.not.9, label %bb.k, label %bb.al

bb.k:                                             ; preds = %bb.j
  %.not.10 = icmp ugt i64 %0, 12289
  br i1 %.not.10, label %bb.l, label %bb.al

bb.l:                                             ; preds = %bb.k
  %.not.11 = icmp ugt i64 %0, 24593
  br i1 %.not.11, label %bb.m, label %bb.al

bb.m:                                             ; preds = %bb.l
  %.not.12 = icmp ugt i64 %0, 49157
  br i1 %.not.12, label %bb.n, label %bb.al

bb.n:                                             ; preds = %bb.m
  %.not.13 = icmp ugt i64 %0, 98317
  br i1 %.not.13, label %bb.o, label %bb.al

bb.o:                                             ; preds = %bb.n
  %.not.14 = icmp ugt i64 %0, 196613
  br i1 %.not.14, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  %.not.15 = icmp ugt i64 %0, 393241
  br i1 %.not.15, label %bb.q, label %bb.al

bb.q:                                             ; preds = %bb.p
  %.not.16 = icmp ugt i64 %0, 786433
  br i1 %.not.16, label %bb.r, label %bb.al

bb.r:                                             ; preds = %bb.q
  %.not.17 = icmp ugt i64 %0, 1572869
  br i1 %.not.17, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %.not.18 = icmp ugt i64 %0, 3145739
  br i1 %.not.18, label %bb.t, label %bb.al

bb.t:                                             ; preds = %bb.s
  %.not.19 = icmp ugt i64 %0, 6291469
  br i1 %.not.19, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %.not.20 = icmp ugt i64 %0, 12582917
  br i1 %.not.20, label %bb.v, label %bb.al

bb.v:                                             ; preds = %bb.u
  %.not.21 = icmp ugt i64 %0, 25165843
  br i1 %.not.21, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  %.not.22 = icmp ugt i64 %0, 50331653
  br i1 %.not.22, label %bb.x, label %bb.al

bb.x:                                             ; preds = %bb.w
  %.not.23 = icmp ugt i64 %0, 100663319
  br i1 %.not.23, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %.not.24 = icmp ugt i64 %0, 201326611
  br i1 %.not.24, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %.not.25 = icmp ugt i64 %0, 402653189
  br i1 %.not.25, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %.not.26 = icmp ugt i64 %0, 805306457
  br i1 %.not.26, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %.not.27 = icmp ugt i64 %0, 1610612741
  br i1 %.not.27, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %.not.28 = icmp ugt i64 %0, 3221225473
  br i1 %.not.28, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %.not.29 = icmp ugt i64 %0, 6442450939
  br i1 %.not.29, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %.not.30 = icmp ugt i64 %0, 12884901893
  br i1 %.not.30, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %.not.31 = icmp ugt i64 %0, 25769803751
  br i1 %.not.31, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %.not.32 = icmp ugt i64 %0, 51539607551
  br i1 %.not.32, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %.not.33 = icmp ugt i64 %0, 103079215111
  br i1 %.not.33, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not.34 = icmp ugt i64 %0, 206158430209
  br i1 %.not.34, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.not.35 = icmp ugt i64 %0, 412316860441
  br i1 %.not.35, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.not.36 = icmp ugt i64 %0, 824633720831
  %spec.select = select i1 %.not.36, i64 37, i64 36
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ 23, %bb.x ], [ 1, %bb.b ], [ %spec.select, %bb.ak ], [ 2, %bb.c ], [ 19, %bb.t ], [ 3, %bb.d ], [ 35, %bb.aj ], [ 4, %bb.e ], [ 27, %bb.ab ], [ 5, %bb.f ], [ 34, %bb.ai ], [ 6, %bb.g ], [ 20, %bb.u ], [ 7, %bb.h ], [ 33, %bb.ah ], [ 8, %bb.i ], [ 25, %bb.z ], [ 9, %bb.j ], [ 32, %bb.ag ], [ 10, %bb.k ], [ 21, %bb.v ], [ 11, %bb.l ], [ 31, %bb.af ], [ 12, %bb.m ], [ 26, %bb.aa ], [ 13, %bb.n ], [ 30, %bb.ae ], [ 14, %bb.o ], [ 22, %bb.w ], [ 15, %bb.p ], [ 29, %bb.ad ], [ 16, %bb.q ], [ 24, %bb.y ], [ 17, %bb.r ], [ 28, %bb.ac ], [ 18, %bb.s ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEC2EmRKSA_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE10size_indexEm(i64 noundef %1) ; 2 uses
  store i64 %i.e, ptr %0, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !75   ; 4 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !24
  %i.h = add i64 %i.g, 1                          ; 4 uses
  %i.i = lshr i64 %i.g, 6                         ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorIN5boost9unordered6detail6bucketINS2_4nodeINS0_9typeindex15ctti_type_indexEPvEES7_EEE8allocateEmPKv.exit.i, !prof !126

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.l, label %.noexc, label %.noexc33

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc33:                                         ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt15__new_allocatorIN5boost9unordered6detail6bucketINS2_4nodeINS0_9typeindex15ctti_type_indexEPvEES7_EEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.m = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24
  store ptr %i.n, ptr %i.b, align 8, !tbaa !25
  %i.o = icmp eq i64 %i.i, 288230376151711743
  br i1 %i.o, label %bb.d, label %_ZNSt15__new_allocatorIN5boost9unordered6detail12bucket_groupINS2_6bucketINS2_4nodeINS0_9typeindex15ctti_type_indexEPvEES8_EEEEE8allocateEmPKv.exit.i, !prof !126

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN5boost9unordered6detail6bucketINS2_4nodeINS0_9typeindex15ctti_type_indexEPvEES7_EEE8allocateEmPKv.exit.i
  invoke void @_ZSt17__throw_bad_allocv() #22
          to label %.noexc36 unwind label %bb.e

.noexc36:                                         ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE21erase_key_unique_implIS5_EEmRKT_:bb.a
  %.03440.i.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.03440.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader59 ]
  %.03639.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.03639.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader59 ]
  %.03738.i.i.i.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.03738.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader59 ] ; 2 uses
  %i.aa = load i64, ptr %.041.i.i.i.i.i.i.i, align 1
  %i.ab = add i64 %.03738.i.i.i.i.i.i.i, -7046029254386353131 ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw i128 %i.ad, 16088033396387240377 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = xor i64 %.03639.i.i.i.i.i.i.i, %i.ah    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.041.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = add i64 %.03440.i.i.i.i.i.i.i, -8       ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 7
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i.i.i, !llvm.loop !131

._crit_edge.i.i.loopexit.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.03738.i.i.i.i.i.i.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.03738.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa52 = phi i64 [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa51 = phi ptr [ %i.j, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa50 = phi i64 [ %i.l, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = add i64 %.03738.i.i.i.i.i.i.i.lcssa, 4354685564936845354
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.loopexit.i.i.i.i.i, %bb.a
  %.037.lcssa.i.i.i.i.i.i.i = phi i64 [ -8652080075778251037, %bb.a ], [ %i.am, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 2 uses
  %.036.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %.lcssa52, %._crit_edge.i.i.loopexit.i.i.i.i.i ]
  %.034.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.c, %bb.a ], [ %.lcssa50, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.lcssa51, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 5 uses
  %i.an = icmp samesign ugt i64 %.034.lcssa.i.i.i.i.i.i.i, 3
  br i1 %i.an, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ao = add nsw i64 %.034.lcssa.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ao, 3
  %i.at = shl nuw nsw i64 %i.ar, %i.as
  %i.au = load i32, ptr %.0.lcssa.i.i.i.i.i.i.i, align 1
  %i.av = zext i32 %i.au to i64
  %i.aw = or i64 %i.at, %i.av
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.034.lcssa.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = add nuw nsw i64 %.034.lcssa.i.i.i.i.i.i.i, 3
  %i.ay = and i64 %i.ax, 2                        ; 2 uses
  %i.az = lshr i64 %.034.lcssa.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.ay, 3
  %i.be = shl nuw nsw i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.az
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !64
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.az, 3
  %i.bj = shl nuw nsw i64 %i.bh, %i.bi
  %i.bk = or i64 %i.bj, %i.be
  %i.bl = load i8, ptr %.0.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !64
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or i64 %i.bk, %i.bm
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.035.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.b ], [ %i.bn, %bb.d ], [ 0, %bb.c ]
  %i.bo = add i64 %.035.i.i.i.i.i.i.i, %.037.lcssa.i.i.i.i.i.i.i
  %i.bp = zext i64 %i.bo to i128
  %i.bq = mul nuw i128 %i.bp, 16088033396387240377 ; 2 uses
  %i.br = lshr i128 %i.bq, 64
  %i.bs = xor i128 %i.br, %i.bq
  %i.bt = trunc i128 %i.bs to i64
  %i.bu = xor i64 %.036.lcssa.i.i.i.i.i.i.i, %i.bt
  %i.bv = add i64 %i.bu, %.037.lcssa.i.i.i.i.i.i.i
  %i.bw = zext i64 %i.bv to i128
  %i.bx = mul nuw i128 %i.bw, 16088033396387240377 ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64                 ; 3 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !73  ; 4 uses
  %i.cc = icmp ult i64 %i.cb, 29
  br i1 %i.cc, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit
  %i.cd = lshr i64 %i.ca, 32
  %i.ce = add i64 %i.cd, %i.ca
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.cb
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !75
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.cb
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !75
  %i.cj = and i64 %i.ce, 4294967295
  %i.ck = mul i64 %i.cg, %i.cj
  %i.cl = zext i64 %i.ck to i128
  %.mask.i.i = and i64 %i.ci, 4294967295
  %i.cm = zext nneg i64 %.mask.i.i to i128
  %i.cn = mul nuw nsw i128 %i.cm, %i.cl
  %i.co = lshr i128 %i.cn, 64
  %i.cp = trunc nuw nsw i128 %i.co to i64
  br label %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit

bb.f:                                             ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit
  %i.cq = getelementptr [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE9positionsE, i64 %i.cb
  %i.cr = getelementptr i8, ptr %i.cq, i64 -232
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !76
  %i.ct = tail call noundef i64 %i.cs(i64 noundef %i.ca), !inline_history !1
  br label %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit

_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.cp, %bb.e ], [ %i.ct, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !24
  %.not.i = icmp eq i64 %i.cv, 0                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = lshr i64 %.0.i.i, 6
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %i.da ; 3 uses
  %.sroa.3.0.i = select i1 %.not.i, ptr null, ptr %i.db ; 2 uses
  %.sroa.0.0.idx.i = select i1 %.not.i, i64 0, i64 %.0.i.i
  %.sroa.0.0.i = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %.sroa.0.0.idx.i ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19
  %.not.i11 = icmp eq i64 %i.dd, 0
  br i1 %.not.i11, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit
  %i.de = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !68 ; 2 uses
  %.not11.not22.i = icmp eq ptr %i.de, null
  br i1 %.not11.not22.i, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.df = load ptr, ptr %1, align 8, !tbaa !35
  br label %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i

_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i: ; preds = %_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i, %.lr.ph.i
  %i.dg = phi ptr [ %i.de, %.lr.ph.i ], [ %i.dk, %_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i ] ; 4 uses
  %.0823.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.dg, %_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !35
  %i.dj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.df, ptr noundef nonnull dereferenceable(1) %i.di) #19
  %.not.i.i.i14.i = icmp eq i32 %i.dj, 0
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !68 ; 3 uses
  br i1 %.not.i.i.i14.i, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread16, label %_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i

_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i: ; preds = %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i
  %.not11.not.i = icmp eq ptr %i.dk, null
  br i1 %.not11.not.i, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread, label %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i, !llvm.loop !132

_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread16: ; preds = %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i
  store ptr %i.dk, ptr %.0823.i, align 8, !tbaa !68
  %i.dl = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !32
  %.not.i12 = icmp eq ptr %i.dl, null
  br i1 %.not.i12, label %bb.g, label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE18extract_node_afterENS1_23grouped_bucket_iteratorIS9_EEPPS8_.exit

bb.g:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread16
  %i.dm = load ptr, ptr %i.db, align 8, !tbaa !27
  %i.dn = ptrtoint ptr %.sroa.0.0.i to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = xor i64 %i.dr, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !28
  %i.dv = and i64 %i.du, %i.ds                    ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !28
  %.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE18extract_node_afterENS1_23grouped_bucket_iteratorIS9_EEPPS8_.exit

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !70 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !29 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !70
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  br label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE18extract_node_afterENS1_23grouped_bucket_iteratorIS9_EEPPS8_.exit

_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE18extract_node_afterENS1_23grouped_bucket_iteratorIS9_EEPPS8_.exit: ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread16, %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 16) #20
  %i.ec = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.ed = add i64 %i.ec, -1
  store i64 %i.ed, ptr %i.dc, align 8, !tbaa !19
  br label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread

_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE9find_prevIS5_EEPPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread: ; preds = %_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i, %.preheader.i, %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit, %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE18extract_node_afterENS1_23grouped_bucket_iteratorIS9_EEPPS8_.exit
  %.0 = phi i64 [ 1, %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE18extract_node_afterENS1_23grouped_bucket_iteratorIS9_EEPPS8_.exit ], [ 0, %.preheader.i ], [ 0, %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit ], [ 0, %_ZNKSt8equal_toIN5boost9typeindex15ctti_type_indexEEclERKS2_S5_.exit.thread33.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #15

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTSN5boost9unordered6detail9functionsINS_4hashINS_9typeindex15ctti_type_indexEEESt8equal_toIS5_EEE", !7, i64 0, !7, i64 1}
!12 = !{!"long", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTSN5boost9unordered6detail6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES6_EE", !14, i64 0}
!16 = !{!"p1 _ZTSN5boost9unordered6detail12bucket_groupINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEE", !14, i64 0}
!17 = !{!"_ZTSN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEEE", !12, i64 0, !12, i64 8, !15, i64 16, !16, i64 24}
!18 = !{!"_ZTSN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEEE", !11, i64 0, !12, i64 8, !13, i64 16, !12, i64 24, !17, i64 32}
!19 = !{!18, !12, i64 8}
!20 = !{!18, !13, i64 16}
!21 = !{!"bool", !7, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!17, !12, i64 8}
!25 = !{!17, !15, i64 16}
!26 = !{!"_ZTSN5boost9unordered6detail12bucket_groupINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEE", !15, i64 0, !12, i64 8, !16, i64 16, !16, i64 24}
!27 = !{!26, !15, i64 0}
!28 = !{!26, !12, i64 8}
!29 = !{!26, !16, i64 16}
!30 = !{!"p1 _ZTSN5boost9unordered6detail4nodeINS_9typeindex15ctti_type_indexEPvEE", !14, i64 0}
!31 = !{!"_ZTSN5boost9unordered6detail6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES6_EE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!"_ZTSN5boost9typeindex15ctti_type_indexE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!17, !16, i64 24}
!37 = !{!"branch_weights", i32 1, i32 1048575}
!38 = !{!"_ZTSN5boost6detail11test_resultE", !21, i64 0, !8, i64 4}
!39 = !{!38, !21, i64 0}
!40 = !{!38, !8, i64 4}
!41 = !{!"vtable pointer", !6, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!44 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!45 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !12, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!49 = !{!"_ZTSSt6locale", !48, i64 0}
!50 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !43, i64 24, !44, i64 28, !44, i64 32, !45, i64 40, !46, i64 48, !7, i64 64, !8, i64 192, !47, i64 200, !49, i64 208}
!51 = !{!"p1 _ZTSSo", !14, i64 0}
!52 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!53 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!54 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!55 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!56 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !50, i64 0, !51, i64 216, !7, i64 224, !21, i64 225, !52, i64 232, !53, i64 240, !54, i64 248, !55, i64 256}
!57 = !{!56, !53, i64 240}
!58 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!59 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!60 = !{!"p1 int", !14, i64 0}
!61 = !{!"p1 short", !14, i64 0}
!62 = !{!"_ZTSSt5ctypeIcE", !58, i64 0, !59, i64 16, !21, i64 24, !60, i64 32, !60, i64 40, !61, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!63 = !{!62, !7, i64 56}
!64 = !{!7, !7, i64 0}
!65 = !{!8, !8, i64 0}
!66 = !{!"_ZTSN5boost9unordered6detail4nodeINS_9typeindex15ctti_type_indexEPvEE", !30, i64 0, !7, i64 8}
!67 = !{!66, !30, i64 0}
!68 = !{!30, !30, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!26, !16, i64 24}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!17, !12, i64 0}
!74 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!75 = !{!12, !12, i64 0}
!76 = !{!14, !14, i64 0}
!77 = !{!18, !12, i64 24}
!78 = distinct !{!78, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE6insertEOS3_"}
!79 = distinct !{!79, !78, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE6insertEOS3_: argument 0"}
!80 = distinct !{!80, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE7emplaceIJS3_EEESt4pairINS0_6detail15iterator_detail10c_iteratorINSC_4nodeIS3_PvEENSC_6bucketISH_SG_EEEEbEDpOT_"}
!81 = distinct !{!81, !80, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE7emplaceIJS3_EEESt4pairINS0_6detail15iterator_detail10c_iteratorINSC_4nodeIS3_PvEENSC_6bucketISH_SG_EEEEbEDpOT_: argument 0"}
!82 = distinct !{!82, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE6insertEOS3_"}
!83 = distinct !{!83, !82, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE6insertEOS3_: argument 0"}
!84 = distinct !{!84, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE7emplaceIJS3_EEESt4pairINS0_6detail15iterator_detail10c_iteratorINSC_4nodeIS3_PvEENSC_6bucketISH_SG_EEEEbEDpOT_"}
!85 = distinct !{!85, !84, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE7emplaceIJS3_EEESt4pairINS0_6detail15iterator_detail10c_iteratorINSC_4nodeIS3_PvEENSC_6bucketISH_SG_EEEEbEDpOT_: argument 0"}
!86 = distinct !{!86, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE6insertEOS3_"}
!87 = distinct !{!87, !86, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE6insertEOS3_: argument 0"}
!88 = distinct !{!88, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE7emplaceIJS3_EEESt4pairINS0_6detail15iterator_detail10c_iteratorINSC_4nodeIS3_PvEENSC_6bucketISH_SG_EEEEbEDpOT_"}
!89 = distinct !{!89, !88, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE7emplaceIJS3_EEESt4pairINS0_6detail15iterator_detail10c_iteratorINSC_4nodeIS3_PvEENSC_6bucketISH_SG_EEEEbEDpOT_: argument 0"}
!90 = distinct !{!90, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE5beginEv"}
!91 = distinct !{!91, !90, !"_ZN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EE5beginEv: argument 0"}
!92 = distinct !{!92, !"_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE5beginEv"}
!93 = distinct !{!93, !92, !"_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE5beginEv: argument 0"}
!94 = !{!11, !7, i64 0}
!95 = !{!81, !79}
!96 = !{!85, !83}
!97 = !{!"_ZTSN5boost9unordered13unordered_setINS_9typeindex15ctti_type_indexENS_4hashIS3_EESt8equal_toIS3_ESaIS3_EEE", !18, i64 0}
!98 = !{!97, !12, i64 8}
!99 = !{!89, !87}
!100 = !{!21, !21, i64 0}
!101 = !{!93, !91}
!102 = !{!50, !44, i64 32}
!103 = distinct !{null}
!104 = distinct !{!104, !"_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE5beginEv"}
!105 = distinct !{!105, !104, !"_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE5beginEv: argument 0"}
!106 = distinct !{!106, !69}
!107 = distinct !{!107, !69}
!108 = !{!105}
!109 = distinct !{!109, !69, !71, !72}
!110 = distinct !{!110, !69, !72, !71}
!111 = distinct !{!111, !69}
!112 = distinct !{null}
!113 = !{!15, !15, i64 0}
!114 = !{!16, !16, i64 0}
!115 = !{!"_ZTSN5boost9unordered6detail23grouped_bucket_iteratorINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EEEE", !15, i64 0, !16, i64 8}
!116 = !{!"_ZTSN5boost9unordered6detail15iterator_detail8iteratorINS1_4nodeINS_9typeindex15ctti_type_indexEPvEENS1_6bucketIS8_S7_EEEE", !30, i64 0, !115, i64 8}
!117 = !{!"_ZTSSt4pairIN5boost9unordered6detail15iterator_detail8iteratorINS2_4nodeINS0_9typeindex15ctti_type_indexEPvEENS2_6bucketIS9_S8_EEEEbE", !116, i64 0, !21, i64 24}
!118 = !{!117, !21, i64 24}
!119 = distinct !{!119, !69}
!120 = distinct !{!120, !69, !71, !72}
!121 = distinct !{!121, !69, !72, !71}
!122 = distinct !{null}
!123 = distinct !{!123, !69}
!124 = distinct !{!124, !69}
!125 = distinct !{!125, !69}
!126 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!127 = distinct !{!127, !69}
!128 = distinct !{!128, !69}
!129 = distinct !{!129, !69}
!130 = distinct !{!130, !69, !71, !72}
!131 = distinct !{!131, !69, !72, !71}
!132 = distinct !{!132, !69}
end_hunk_2
