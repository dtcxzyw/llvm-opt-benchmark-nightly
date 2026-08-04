begin_hunk_0_@_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14emplace_uniqueIJS5_EEESt4pairINS1_15iterator_detail8iteratorINS1_4nodeIS5_PvEENS1_6bucketISJ_SI_EEEEbERKS5_DpOT_:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 -1606050821391897906, i64 -8652080075778251037>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.n, %vector.ph ], [ %i.w, %vector.body ]
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
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %i.y = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.w) ; 2 uses
  %ind.escape = add i64 %i.l, 5439978432994455225
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.i.i.preheader82:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.041.i.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.i, %middle.block ]
  %.03440.i.i.i.i.i.i.i.ph = phi i64 [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block ]
  %.03639.i.i.i.i.i.i.i.ph = phi i64 [ -1606050821391897906, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.m, %middle.block ]
  %.03738.i.i.i.i.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i.i.i
  %.041.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.041.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ] ; 2 uses
  %.03440.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.03440.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ]
  %.03639.i.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.03639.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ] ; 2 uses
  %.03738.i.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.03738.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader82 ]
  %i.z = load i64, ptr %.041.i.i.i.i.i.i.i, align 1
  %i.aa = add i64 %.03639.i.i.i.i.i.i.i, -7046029254386353131 ; 2 uses
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, 16088033396387240377 ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64
  %i.ah = xor i64 %.03738.i.i.i.i.i.i.i, %i.ag    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.041.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = add i64 %.03440.i.i.i.i.i.i.i, -8       ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 7
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i.i.i, !llvm.loop !104

._crit_edge.i.i.loopexit.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  %.03639.i.i.i.i.i.i.i.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.03639.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa78 = phi i64 [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa77 = phi ptr [ %i.i, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa = phi i64 [ %i.k, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = add i64 %.03639.i.i.i.i.i.i.i.lcssa, 4354685564936845354
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.loopexit.i.i.i.i.i, %bb.a
  %.037.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.c, %bb.a ], [ %.lcssa78, %._crit_edge.i.i.loopexit.i.i.i.i.i ]
  %.036.lcssa.i.i.i.i.i.i.i = phi i64 [ -8652080075778251037, %bb.a ], [ %i.al, %._crit_edge.i.i.loopexit.i.i.i.i.i ] ; 2 uses
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
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !87
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.ax, 3
  %i.bd = shl nuw nsw i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 %i.ay
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !87
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.ay, 3
  %i.bi = shl nuw nsw i64 %i.bg, %i.bh
  %i.bj = or i64 %i.bi, %i.bd
  %i.bk = load i8, ptr %.0.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !87
  %i.bl = zext i8 %i.bk to i64
  %i.bm = or i64 %i.bj, %i.bl
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.035.i.i.i.i.i.i.i = phi i64 [ %i.av, %bb.b ], [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %i.bn = add i64 %.035.i.i.i.i.i.i.i, %.036.lcssa.i.i.i.i.i.i.i
  %i.bo = zext i64 %i.bn to i128
  %i.bp = mul nuw i128 %i.bo, 16088033396387240377 ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %.037.lcssa.i.i.i.i.i.i.i, %i.bs
  %i.bu = add i64 %i.bt, %.036.lcssa.i.i.i.i.i.i.i
  %i.bv = zext i64 %i.bu to i128
  %i.bw = mul nuw i128 %i.bv, 16088033396387240377 ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64                 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !105 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, 29
  br i1 %i.cc, label %bb.e, label %bb.f, !prof !106

bb.e:                                             ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE4hashIS5_EEmRKT_.exit
  %i.cd = lshr i64 %i.bz, 32
  %i.ce = add i64 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.cb
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !107
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.cb
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !107
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
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !108
  %i.ct = tail call noundef i64 %i.cs(i64 noundef %i.bz), !inline_history !109
  br label %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit

_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.cp, %bb.e ], [ %i.ct, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !41 ; 3 uses
  %.not.i = icmp eq i64 %i.cv, 0                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !47 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
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
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !96 ; 4 uses
  %.not.i23 = icmp eq ptr %.0.i, null
  br i1 %.not.i23, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread, label %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i

_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i: ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !55
  %i.dg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull dereferenceable(1) %i.df) #19
  %.not.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit, label %bb.g, !llvm.loop !110

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread: ; preds = %bb.g, %_ZNK5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE8positionEm.exit
  %i.dh = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 6 uses
  store ptr null, ptr %i.dh, align 8, !tbaa !94
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %3, align 8
  store i64 %i.dj, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.dm = add i64 %i.dl, 1                        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !111
  %i.dp = icmp ugt i64 %i.dm, %i.do
  br i1 %i.dp, label %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i, label %bb.n

_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i: ; preds = %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !19 ; 2 uses
  %i.ds = uitofp i64 %i.dm to float
  %4 = fdiv float %i.ds, %i.dr
  %i.dt = tail call noundef float @llvm.ceil.f32(float %4) ; 2 uses
  %i.du = fcmp ult float %i.dt, f0x5F800000
  %i.dv = fptoui float %i.dt to i64
  %5 = uitofp i64 %i.dl to float
  %6 = fdiv float %5, %i.dr
  %i.dw = tail call noundef float @llvm.ceil.f32(float %6) ; 2 uses
  %i.dx = fcmp ult float %i.dw, f0x5F800000
  %i.dy = fptoui float %i.dw to i64
  %i.dz = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.dy)
  %i.ea = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.eb = and i1 %i.dx, %i.du
  %i.ec = select i1 %i.eb, i64 %i.ea, i64 -1
  %i.ed = tail call noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE10size_indexEm(i64 noundef %i.ec)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !107 ; 2 uses
  %i.eg = load i64, ptr %i.cu, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.ef, %i.eg
  br i1 %.not.i.i, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i
  invoke void @_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ef)
          to label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit unwind label %bb.l

_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit: ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i, %bb.h
  %i.eh = load i64, ptr %i.ca, align 8, !tbaa !105 ; 4 uses
  %i.ei = icmp ult i64 %i.eh, 29
  br i1 %i.ei, label %bb.i, label %bb.j, !prof !106

bb.i:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit
  %i.ej = lshr i64 %i.bz, 32
  %i.ek = add i64 %i.ej, %i.bz
  %i.el = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.eh
  %i.em = load i64, ptr %i.el, align 8, !tbaa !107
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.eh
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !107
  %i.ep = and i64 %i.ek, 4294967295
  %i.eq = mul i64 %i.em, %i.ep
  %i.er = zext i64 %i.eq to i128
  %.mask.i.i25 = and i64 %i.eo, 4294967295
  %i.es = zext nneg i64 %.mask.i.i25 to i128
  %i.et = mul nuw nsw i128 %i.es, %i.er
  %i.eu = lshr i128 %i.et, 64
  %i.ev = trunc nuw nsw i128 %i.eu to i64
  br label %bb.k

bb.j:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit
  %i.ew = getelementptr [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE9positionsE, i64 %i.eh
  %i.ex = getelementptr i8, ptr %i.ew, i64 -232
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !108
  %i.ez = invoke noundef i64 %i.ey(i64 noundef %i.bz)
          to label %bb.k unwind label %bb.m, !inline_history !112

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i24 = phi i64 [ %i.ev, %bb.i ], [ %i.ez, %bb.j ] ; 2 uses
  %i.fa = load i64, ptr %i.cu, align 8, !tbaa !41 ; 2 uses
  %.not.i28 = icmp eq i64 %i.fa, 0                ; 2 uses
  %i.fb = load ptr, ptr %i.cw, align 8, !tbaa !47 ; 2 uses
  %i.fc = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.fd = lshr i64 %.0.i.i24, 6
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %i.fd
  %.sroa.3.0.i29 = select i1 %.not.i28, ptr null, ptr %i.fe
  %.sroa.0.0.idx.i30 = select i1 %.not.i28, i64 0, i64 %.0.i.i24
  %.sroa.0.0.i31 = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.sroa.0.0.idx.i30
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38

bb.m:                                             ; preds = %bb.j
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38

bb.n:                                             ; preds = %bb.k, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread
  %i.fh = phi ptr [ %i.fc, %bb.k ], [ %i.cz, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ]
  %i.fi = phi i64 [ %i.fa, %bb.k ], [ %i.cv, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ]
  %i.fj = phi ptr [ %i.fb, %bb.k ], [ %i.cx, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 2 uses
  %.sroa.012.0 = phi ptr [ %.sroa.0.0.i31, %bb.k ], [ %.sroa.0.0.i, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 4 uses
  %.sroa.9.0 = phi ptr [ %.sroa.3.0.i29, %bb.k ], [ %.sroa.3.0.i, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 7 uses
  %i.fk = load ptr, ptr %.sroa.012.0, align 8, !tbaa !52 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i34, label %bb.o, label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.fl = ptrtoint ptr %.sroa.012.0 to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !50 ; 2 uses
  %.not17.i.i = icmp eq i64 %i.fq, 0
  br i1 %.not17.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fr = lshr i64 %i.fi, 6
  %i.fs = getelementptr [32 x i8], ptr %i.fh, i64 %i.fr ; 2 uses
  %i.ft = and i64 %i.fo, -64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.ft
  store ptr %i.fu, ptr %.sroa.9.0, align 8, !tbaa !48
  %i.fv = getelementptr i8, ptr %i.fs, i64 16     ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !51 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %.sroa.9.0, ptr %i.fy, align 8, !tbaa !99
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 24
  store ptr %i.fs, ptr %i.fz, align 8, !tbaa !99
  store ptr %.sroa.9.0, ptr %i.fv, align 8, !tbaa !51
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ga = and i64 %i.fo, 63
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = or i64 %i.gb, %i.fq
  store i64 %i.gc, ptr %i.fp, align 8, !tbaa !50
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit

_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit: ; preds = %bb.q, %bb.n
  store ptr %i.fk, ptr %i.dh, align 8, !tbaa !94
  store ptr %i.dh, ptr %.sroa.012.0, align 8, !tbaa !52
  %i.gd = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.dk, align 8, !tbaa !11
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit

_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38: ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.m ], [ %i.ff, %bb.l ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 16) #20
  resume { ptr, i32 } %.pn

_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit: ; preds = %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit
  %.sink75 = phi ptr [ %i.dh, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ %.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  %.sroa.012.0.sink = phi ptr [ %.sroa.012.0, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ %.sroa.0.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  %.sroa.9.0.sink = phi ptr [ %.sroa.9.0, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ %.sroa.3.0.i, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  %.sink = phi i8 [ 1, %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit ], [ 0, %_ZN5boost9typeindex6detail18is_constant_stringEPKc.exit9.i.i.i.i.i ]
  store ptr %.sink75, ptr %0, align 8, !tbaa !96
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !113
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.0.sink, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !114
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.gf, align 8, !tbaa !115
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
end_hunk_0
