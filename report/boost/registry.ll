Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/registry?download=true
inline.NumInlined: 337
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14emplace_uniqueIJS5_EEESt4pairINS1_15iterator_detail8iteratorINS1_4nodeIS5_PvEENS1_6bucketISJ_SI_EEEEbERKS5_DpOT_:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.n, %vector.ph ], [ %i.w, %vector.body ]
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
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !101

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
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i.i.i, !llvm.loop !104

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
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp eq i64 %i.cv, 0                  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !47
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
  %4 = load float, ptr %i.dq, align 8, !tbaa !19
  %i.dr = uitofp i64 %i.dm to float
  %i.ds = uitofp i64 %i.dl to float
  %5 = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = insertelement <2 x float> %5, float %i.ds, i64 1
  %i.du = insertelement <2 x float> poison, float %4, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fdiv <2 x float> %i.dt, %i.dv           ; 2 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0
  %i.dy = tail call noundef float @llvm.ceil.f32(float %i.dx) ; 2 uses
  %i.dz = fcmp ult float %i.dy, f0x5F800000
  %i.ea = fptoui float %i.dy to i64
  %i.eb = extractelement <2 x float> %i.dw, i64 1
  %i.ec = tail call noundef float @llvm.ceil.f32(float %i.eb) ; 2 uses
  %i.ed = fcmp ult float %i.ec, f0x5F800000
  %i.ee = fptoui float %i.ec to i64
  %i.ef = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %i.ee)
  %i.eg = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eh = and i1 %i.ed, %i.dz
  %i.ei = select i1 %i.eh, i64 %i.eg, i64 -1
  %i.ej = tail call noundef i64 @_ZN5boost9unordered6detail15prime_fmod_sizeIvE10size_indexEm(i64 noundef %i.ei)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !107 ; 2 uses
  %i.em = load i64, ptr %i.cu, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.el, %i.em
  br i1 %.not.i.i, label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i
  invoke void @_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.el)
          to label %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit unwind label %bb.l

_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit: ; preds = %_ZN5boost9unordered6detail20grouped_bucket_arrayINS1_6bucketINS1_4nodeINS_9typeindex15ctti_type_indexEPvEES7_EESaIS6_ENS1_15prime_fmod_sizeIvEEE16bucket_count_forEm.exit.i.i, %bb.h
  %i.en = load i64, ptr %i.ca, align 8, !tbaa !105 ; 4 uses
  %i.eo = icmp ult i64 %i.en, 29
  br i1 %i.eo, label %bb.i, label %bb.j, !prof !106

bb.i:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit
  %i.ep = lshr i64 %i.bz, 32
  %i.eq = add i64 %i.ep, %i.bz
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE11inv_sizes32E, i64 %i.en
  %i.es = load i64, ptr %i.er, align 8, !tbaa !107
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE5sizesE, i64 %i.en
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !107
  %i.ev = and i64 %i.eq, 4294967295
  %i.ew = mul i64 %i.es, %i.ev
  %i.ex = zext i64 %i.ew to i128
  %.mask.i.i25 = and i64 %i.eu, 4294967295
  %i.ey = zext nneg i64 %.mask.i.i25 to i128
  %i.ez = mul nuw nsw i128 %i.ey, %i.ex
  %i.fa = lshr i128 %i.ez, 64
  %i.fb = trunc nuw nsw i128 %i.fa to i64
  br label %bb.k

bb.j:                                             ; preds = %_ZN5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE7reserveEm.exit
  %i.fc = getelementptr [8 x i8], ptr @_ZN5boost9unordered6detail15prime_fmod_sizeIvE9positionsE, i64 %i.en
  %i.fd = getelementptr i8, ptr %i.fc, i64 -232
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !108
  %i.ff = invoke noundef i64 %i.fe(i64 noundef %i.bz)
          to label %bb.k unwind label %bb.m, !inline_history !112

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i24 = phi i64 [ %i.fb, %bb.i ], [ %i.ff, %bb.j ] ; 2 uses
  %i.fg = load i64, ptr %i.cu, align 8, !tbaa !41
  %.not.i28 = icmp eq i64 %i.fg, 0                ; 2 uses
  %i.fh = load ptr, ptr %i.cw, align 8, !tbaa !47
  %i.fi = load ptr, ptr %i.cy, align 8
  %i.fj = lshr i64 %.0.i.i24, 6
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %i.fj
  %.sroa.3.0.i29 = select i1 %.not.i28, ptr null, ptr %i.fk
  %.sroa.0.0.idx.i30 = select i1 %.not.i28, i64 0, i64 %.0.i.i24
  %.sroa.0.0.i31 = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %.sroa.0.0.idx.i30
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38

bb.m:                                             ; preds = %bb.j
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38

bb.n:                                             ; preds = %bb.k, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread
  %.sroa.012.0 = phi ptr [ %.sroa.0.0.i31, %bb.k ], [ %.sroa.0.0.i, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 4 uses
  %.sroa.9.0 = phi ptr [ %.sroa.3.0.i29, %bb.k ], [ %.sroa.3.0.i, %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit.thread ] ; 7 uses
  %i.fn = load ptr, ptr %.sroa.012.0, align 8, !tbaa !52 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i34, label %bb.o, label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.fo = load ptr, ptr %i.cw, align 8, !tbaa !47 ; 2 uses
  %i.fp = ptrtoint ptr %.sroa.012.0 to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !50 ; 2 uses
  %.not17.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not17.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fv = load i64, ptr %i.cu, align 8, !tbaa !41
  %i.fw = lshr i64 %i.fv, 6
  %i.fx = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.fy = getelementptr [32 x i8], ptr %i.fx, i64 %i.fw ; 2 uses
  %i.fz = and i64 %i.fs, -64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fz
  store ptr %i.ga, ptr %.sroa.9.0, align 8, !tbaa !48
  %i.gb = getelementptr i8, ptr %i.fy, i64 16     ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !51 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 16
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !51
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %.sroa.9.0, ptr %i.ge, align 8, !tbaa !99
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 24
  store ptr %i.fy, ptr %i.gf, align 8, !tbaa !99
  store ptr %.sroa.9.0, ptr %i.gb, align 8, !tbaa !51
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gg = and i64 %i.fs, 63
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = or i64 %i.gh, %i.fu
  store i64 %i.gi, ptr %i.ft, align 8, !tbaa !50
  br label %_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit

_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit: ; preds = %bb.q, %bb.n
  store ptr %i.fn, ptr %i.dh, align 8, !tbaa !94
  store ptr %i.dh, ptr %.sroa.012.0, align 8, !tbaa !52
  %i.gj = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.dk, align 8, !tbaa !11
  br label %_ZNK5boost9unordered6detail5tableINS1_3setISaINS_9typeindex15ctti_type_indexEES5_NS_4hashIS5_EESt8equal_toIS5_EEEE14find_node_implIS5_EEPNS1_4nodeIS5_PvEERKT_NS1_23grouped_bucket_iteratorINS1_6bucketISG_SF_EEEE.exit

_ZN5boost9unordered6detail8node_tmpISaINS1_4nodeINS_9typeindex15ctti_type_indexEPvEEEED2Ev.exit38: ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.m ], [ %i.fl, %bb.l ]
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
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %i.gl, align 8, !tbaa !115
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
end_hunk_0
