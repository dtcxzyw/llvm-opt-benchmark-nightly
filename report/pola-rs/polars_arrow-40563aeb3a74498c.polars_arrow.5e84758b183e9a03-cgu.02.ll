Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.02?download=true
inline.NumInlined: 1595
inline.NumDeleted: 611
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array5unionNtB2_10UnionArray7try_new:bb.a
  %.val1.i.i.i.i.peel = load ptr, ptr %i.ar, align 8, !dbg !10534, !noalias !10435, !nonnull !903, !noundef !903
  %i.as = getelementptr i8, ptr %i.ar, i64 8, !dbg !10534
  %.val2.i.i.i.i.peel = load ptr, ptr %i.as, align 8, !dbg !10534, !noalias !10435, !nonnull !903, !align !1102, !noundef !903
  %i.at = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.peel, i64 64, !dbg !10535
  %i.au = load ptr, ptr %i.at, align 8, !dbg !10535, !invariant.load !903, !noalias !10435, !nonnull !903
  %i.av = invoke noundef nonnull align 8 ptr %i.au(ptr noundef nonnull %.val1.i.i.i.i.peel) #32
          to label %.noexc108.peel unwind label %.loopexit179.loopexit.split-lp, !dbg !10536, !inline_history !10267 ; 2 uses

.noexc108.peel:                                   ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0124.0.copyload, i64 %.sroa.6127.0.copyload, !dbg !10537 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10538, !noalias !10438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10538, !noalias !10438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10538, !noalias !10438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10538, !noalias !10443
  store i64 0, ptr %i.e, align 8, !dbg !10538, !noalias !10443
  store ptr %i.aw, ptr %i.d, align 8, !dbg !10539, !noalias !10443
  store ptr %i.av, ptr %i.c, align 8, !dbg !10540, !noalias !10443
  %i.ax = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av) #32
          to label %.noexc109.peel unwind label %.loopexit179.loopexit.split-lp, !dbg !10541

.noexc109.peel:                                   ; preds = %.noexc108.peel
  br i1 %i.ax, label %bb.k, label %.loopexit193, !dbg !10542, !prof !1126

bb.k:                                             ; preds = %.noexc109.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10543, !noalias !10443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10544, !noalias !10438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10544, !noalias !10438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10544, !noalias !10438
  %exitcond.not.i.peel = icmp eq i64 %i.aq, %.sroa.8.0.copyload, !dbg !10531
  br i1 %exitcond.not.i.peel, label %._crit_edge.loopexit.i, label %.peel.next, !dbg !10531

.peel.next:                                       ; preds = %bb.k, %bb.l
  %i.ay = phi i64 [ %i.ba, %bb.l ], [ %i.aq, %bb.k ] ; 3 uses
  %i.az = phi i64 [ %i.bk, %bb.l ], [ 1, %bb.k ]  ; 2 uses
  %i.ba = add i64 %i.ay, 1, !dbg !10532           ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5125.0.copyload, i64 %i.ay, !dbg !10533 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.bb, align 8, !dbg !10534, !noalias !10435, !nonnull !903, !noundef !903
  %i.bc = getelementptr i8, ptr %i.bb, i64 8, !dbg !10534
  %.val2.i.i.i.i = load ptr, ptr %i.bc, align 8, !dbg !10534, !noalias !10435, !nonnull !903, !align !1102, !noundef !903
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 64, !dbg !10535
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !10535, !invariant.load !903, !noalias !10435, !nonnull !903
  %i.bf = invoke noundef nonnull align 8 ptr %i.be(ptr noundef nonnull %.val1.i.i.i.i) #32
          to label %.noexc108 unwind label %.loopexit179.loopexit, !dbg !10536, !inline_history !10267 ; 2 uses

.noexc108:                                        ; preds = %.peel.next
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0124.0.copyload, i64 %i.ay, !dbg !10537 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10538, !noalias !10438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10538, !noalias !10438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10538, !noalias !10438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10538, !noalias !10443
  store i64 %i.az, ptr %i.e, align 8, !dbg !10538, !noalias !10443
  store ptr %i.bg, ptr %i.d, align 8, !dbg !10539, !noalias !10443
  store ptr %i.bf, ptr %i.c, align 8, !dbg !10540, !noalias !10443
  %i.bh = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf) #32
          to label %.noexc109 unwind label %.loopexit179.loopexit, !dbg !10541

.noexc109:                                        ; preds = %.noexc108
  br i1 %i.bh, label %bb.l, label %.loopexit193, !dbg !10542, !prof !1126

.loopexit193:                                     ; preds = %.noexc109, %.noexc109.peel
  store i64 18, ptr %i.f, align 8, !dbg !10545, !noalias !10444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10546, !noalias !10443
  store ptr %i.e, ptr %i.a, align 8, !dbg !10546, !noalias !10443
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10546
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !dbg !10546, !noalias !10443
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10546
  store ptr %i.d, ptr %i.bi, align 8, !dbg !10546, !noalias !10443
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !10546
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtB6_5Debug3fmtBA_, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !dbg !10546, !noalias !10443
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !10546
  store ptr %i.c, ptr %i.bj, align 8, !dbg !10546, !noalias !10443
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !10546
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtB6_5Debug3fmtBA_, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !dbg !10546, !noalias !10443
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %.noexc110 unwind label %.loopexit.split-lp, !dbg !10547

.noexc110:                                        ; preds = %.loopexit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10548, !noalias !10443
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.m unwind label %.loopexit.split-lp, !dbg !10549

bb.l:                                             ; preds = %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10543, !noalias !10443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10544, !noalias !10438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10544, !noalias !10438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10544, !noalias !10438
  %i.bk = add nuw i64 %i.az, 1, !dbg !10550
  %exitcond.not.i = icmp eq i64 %i.ba, %.sroa.8.0.copyload, !dbg !10531
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.peel.next, !dbg !10531, !llvm.loop !10305

bb.m:                                             ; preds = %.noexc110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10543, !noalias !10443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10544, !noalias !10438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10544, !noalias !10438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10544, !noalias !10438
  %.sroa.2144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2144.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !10552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10553
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10551
  store i64 2, ptr %i.bl, align 8, !dbg !10551
  store i64 2, ptr %0, align 8, !dbg !10551
  br label %bb.ag, !dbg !10554

._crit_edge.loopexit.i:                           ; preds = %bb.l, %bb.k, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvMNtNtB1n_5array5unionNtB2h_10UnionArray7try_news_0ENtNtNtBa_6traits8iterator8Iterator3zipIB4_IBS_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB2j_5ArrayEL_EENCB2e_s0_0EEB1n_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10553
  %i.bm = load ptr, ptr %4, align 8, !dbg !10555, !noundef !903
  %.not94 = icmp eq ptr %i.bm, null, !dbg !10555  ; 2 uses
  br i1 %.not94, label %bb.o, label %bb.n, !dbg !10556

bb.n:                                             ; preds = %._crit_edge.loopexit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !10557
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !10557, !noundef !903
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !10558
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !10558, !noundef !903
  %.not95 = icmp eq i64 %i.bo, %i.bq, !dbg !10559
  br i1 %.not95, label %bb.o, label %bb.p, !dbg !10559

bb.o:                                             ; preds = %bb.n, %._crit_edge.loopexit.i
  %i.br = xor i1 %.not94, %i.ac, !dbg !10560
  br i1 %i.br, label %bb.r, label %bb.q, !dbg !10560

bb.p:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10561
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, ptr noundef nonnull align 8 dereferenceable(72) @107, i64 72, i1 false), !dbg !10561
  store i64 2, ptr %0, align 8, !dbg !10561
  br label %bb.ag, !dbg !10554

bb.q:                                             ; preds = %bb.o
  %.not97 = icmp eq ptr %.sroa.01.0.i, null, !dbg !10562
  br i1 %.not97, label %bb.t, label %bb.s, !dbg !10563

bb.r:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10564
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bt, ptr noundef nonnull align 8 dereferenceable(72) @115, i64 72, i1 false), !dbg !10564
  store i64 2, ptr %0, align 8, !dbg !10564
  br label %bb.ag, !dbg !10554

bb.s:                                             ; preds = %bb.q
  %i.bu = load i64, ptr %i.ad, align 8, !dbg !10565, !noundef !903 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 576460752303423488, !dbg !10566
  tail call void @llvm.assume(i1 %i.bv), !dbg !10567
  %.not98 = icmp eq i64 %.sroa.52.0.i, %i.bu, !dbg !10568
  br i1 %.not98, label %bb.v, label %bb.w, !dbg !10568

bb.t:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !10569
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !10569, !nonnull !903, !noundef !903 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !10570
  %i.bz = load i64, ptr %i.by, align 8, !dbg !10570, !noundef !903 ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz, !dbg !10571
  %i.cb = icmp samesign eq i64 %i.bz, 0, !dbg !10572
  br i1 %i.cb, label %.critedge, label %iter.check, !dbg !10466

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.bz, 8, !dbg !10466
  br i1 %min.iters.check, label %.lr.ph186.preheader, label %vector.main.loop.iter.check, !dbg !10466

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check199 = icmp ult i64 %i.bz, 32, !dbg !10466
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph, !dbg !10466

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.bz, 24
  %n.vec = and i64 %i.bz, -32                     ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bx, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !10466

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi200 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bx, i64 %index ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep, i64 16, !dbg !10573
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !10573
  %wide.load201 = load <16 x i8>, ptr %i.ce, align 1, !dbg !10573
  %i.cf = icmp uge <16 x i8> %wide.load, %broadcast.splat, !dbg !10574
  %i.cg = icmp uge <16 x i8> %wide.load201, %broadcast.splat, !dbg !10574
  %i.ch = or <16 x i1> %vec.phi, %i.cf            ; 2 uses
  %i.ci = or <16 x i1> %vec.phi200, %i.cg         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec, !dbg !10466
  br i1 %i.cj, label %middle.block, label %vector.body, !dbg !10466, !llvm.loop !10332

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.ci, %i.ch, !dbg !10466
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx, !dbg !10466
  %i.ck = bitcast <16 x i1> %bin.rdx.fr to i16, !dbg !10466
  %.not = icmp eq i16 %i.ck, 0, !dbg !10466       ; 3 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec, !dbg !10466
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check, !dbg !10466

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.preheader, label %vec.epilog.ph, !prof !10467

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %i.cl = xor i1 %bc.merge.rdx, true, !dbg !10466
  %n.vec202 = and i64 %i.bz, -8                   ; 3 uses
  %i.cm = getelementptr i8, ptr %i.bx, i64 %n.vec202
  %broadcast.splatinsert203.a = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat204.a = shufflevector <8 x i8> %broadcast.splatinsert203.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <8 x i1> poison, i1 %i.cl, i64 0
  %broadcast.splat206 = shufflevector <8 x i1> %broadcast.splatinsert205, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index207 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi208 = phi <8 x i1> [ %broadcast.splat206, %vec.epilog.ph ], [ %.fr215, %vec.epilog.vector.body ]
  %next.gep209 = getelementptr i8, ptr %i.bx, i64 %index207
  %wide.load210 = load <8 x i8>, ptr %next.gep209, align 1, !dbg !10573
  %i.cn = icmp uge <8 x i8> %wide.load210, %broadcast.splat204.a, !dbg !10574
  %i.co = or <8 x i1> %vec.phi208, %i.cn
  %.fr215 = freeze <8 x i1> %i.co, !dbg !10466    ; 2 uses
  %index.next211 = add nuw i64 %index207, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next211, %n.vec202, !dbg !10466
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !10466, !llvm.loop !10333

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cq = bitcast <8 x i1> %.fr215 to i8, !dbg !10466
  %.not216 = icmp eq i8 %i.cq, 0, !dbg !10466     ; 2 uses
  %cmp.n212 = icmp eq i64 %i.bz, %n.vec202, !dbg !10466
  br i1 %cmp.n212, label %._crit_edge, label %.lr.ph186.preheader, !dbg !10466

.lr.ph186.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.042.0185.ph = phi i1 [ true, %iter.check ], [ %.not, %vec.epilog.iter.check ], [ %.not216, %vec.epilog.middle.block ]
  %.sroa.043.0184.ph = phi ptr [ %i.bx, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph186, !dbg !10466

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %.sroa.042.0185 = phi i1 [ %spec.select, %.lr.ph186 ], [ %.sroa.042.0185.ph, %.lr.ph186.preheader ]
  %.sroa.043.0184 = phi ptr [ %i.cr, %.lr.ph186 ], [ %.sroa.043.0184.ph, %.lr.ph186.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.043.0184, i64 1, !dbg !10575 ; 2 uses
  %i.cs = load i8, ptr %.sroa.043.0184, align 1, !dbg !10573, !noundef !903
  %or.cond.not = icmp ult i8 %i.cs, %i.ai, !dbg !10574
  %spec.select = select i1 %or.cond.not, i1 %.sroa.042.0185, i1 false, !dbg !10574 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.ca, !dbg !10572
  br i1 %i.ct, label %._crit_edge, label %.lr.ph186, !dbg !10466, !llvm.loop !10335

._crit_edge:                                      ; preds = %.lr.ph186, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %.not216, %vec.epilog.middle.block ], [ %.not, %middle.block ], [ %spec.select, %.lr.ph186 ], !dbg !10574
  br i1 %spec.select.lcssa, label %.critedge, label %bb.u, !dbg !10576

bb.u:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10577
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(72) @109, i64 72, i1 false), !dbg !10577
  store i64 2, ptr %0, align 8, !dbg !10577
  br label %bb.ag, !dbg !10554

.critedge:                                        ; preds = %bb.t, %._crit_edge, %.loopexit
  %.sroa.032.0 = phi i64 [ 1, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.t ], !dbg !10578
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !10579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.649.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !10580
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !10579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.548.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !10581
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1112, !dbg !10579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.851.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !dbg !10582
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1088, !dbg !10579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.750.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !10583
  store i64 %.sroa.032.0, ptr %0, align 8, !dbg !10579
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.333, i64 1024, i1 false), !dbg !10579
  %.sroa.952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136, !dbg !10579
  store i64 0, ptr %.sroa.952.0..sroa_idx, align 8, !dbg !10579
  br label %bb.ac, !dbg !10584

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10585
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false), !dbg !10586
  %.idx = shl nuw nsw i64 %.sroa.52.0.i, 2, !dbg !10587
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %.idx, !dbg !10587
  %i.cw = icmp eq i64 %.sroa.52.0.i, 0, !dbg !10588
  br i1 %i.cw, label %.thread169, label %.lr.ph, !dbg !10589

bb.w:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10590
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, ptr noundef nonnull align 8 dereferenceable(72) @113, i64 72, i1 false), !dbg !10590
  store i64 2, ptr %0, align 8, !dbg !10590
  br label %bb.ag, !dbg !10591

.lr.ph:                                           ; preds = %bb.v, %bb.af
  %.sroa.0129.0183 = phi ptr [ %i.dp, %bb.af ], [ %.sroa.01.0.i, %bb.v ] ; 2 uses
  %.sroa.8131.0182 = phi i64 [ %i.do, %bb.af ], [ 0, %bb.v ] ; 2 uses
  %i.cy = load i32, ptr %.sroa.0129.0183, align 4, !dbg !10592, !noundef !903 ; 2 uses
  %spec.select.i = icmp ult i32 %i.cy, 128, !dbg !10593
  br i1 %spec.select.i, label %bb.af, label %bb.ae, !dbg !10594

.thread169:                                       ; preds = %bb.af, %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !10595
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !10595, !nonnull !903, !noundef !903 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !10596
  %i.dc = load i64, ptr %i.db, align 8, !dbg !10596, !noundef !903 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc, !dbg !10597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10487), !dbg !10598
  %i.de = icmp samesign eq i64 %i.dc, 0, !dbg !10599
  br i1 %i.de, label %.loopexit, label %.lr.ph.i113, !dbg !10600

.lr.ph.i113:                                      ; preds = %.thread169, %bb.aa
  %i.df = phi ptr [ %i.dg, %bb.aa ], [ %i.da, %.thread169 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1, !dbg !10601 ; 2 uses
  %.val6.i = load i8, ptr %i.df, align 1, !dbg !10602, !noalias !10489, !noundef !903 ; 2 uses
  %i.dh = icmp slt i8 %.val6.i, 0, !dbg !10603
  br i1 %i.dh, label %bb.x, label %bb.y, !dbg !10603

bb.x:                                             ; preds = %.lr.ph.i113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.712.i, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @30, i64 8), i64 64, i1 false), !dbg !10604
  br label %bb.ab, !dbg !10605

bb.y:                                             ; preds = %.lr.ph.i113
  %i.di = zext nneg i8 %.val6.i to i64, !dbg !10606
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.di, !dbg !10607
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !10607, !alias.scope !10487, !noalias !10491, !noundef !903
  %.not.i.i.i = icmp ult i64 %i.dk, %.sroa.52.0.i, !dbg !10608
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z, !dbg !10608

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.712.i, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @28, i64 8), i64 64, i1 false), !dbg !10609
  br label %bb.ab, !dbg !10605

bb.aa:                                            ; preds = %bb.y
  %i.dl = icmp eq ptr %i.dg, %i.dd, !dbg !10599
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i113, !dbg !10600

bb.ab:                                            ; preds = %bb.z, %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10610
  store i64 2, ptr %i.dm, align 8, !dbg !10610
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2154.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.712.i, i64 64, i1 false), !dbg !10610
  br label %bb.ad, !dbg !10611

.loopexit:                                        ; preds = %bb.aa, %.thread169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.333, ptr noundef nonnull align 8 dereferenceable(1024) %i.g, i64 1024, i1 false), !dbg !10612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10613
  br label %.critedge, !dbg !10614

bb.ac:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferaEECs8774dFTUdNv_12polars_arrow.exit120, %.critedge
  ret void, !dbg !10615

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  store i64 2, ptr %0, align 8, !dbg !10616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10613
  br label %bb.ag, !dbg !10591

bb.ae:                                            ; preds = %.lr.ph
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10617
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, ptr noundef nonnull align 8 dereferenceable(72) @111, i64 72, i1 false), !dbg !10617
  br label %bb.ad, !dbg !10611

bb.af:                                            ; preds = %.lr.ph
  %i.do = add nuw nsw i64 %.sroa.8131.0182, 1, !dbg !10618
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0129.0183, i64 4, !dbg !10619 ; 2 uses
  %i.dq = zext nneg i32 %i.cy to i64, !dbg !10620
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dq, !dbg !10621
  store i64 %.sroa.8131.0182, ptr %i.dr, align 8, !dbg !10621
  %i.ds = icmp eq ptr %i.dp, %i.cv, !dbg !10588
  br i1 %i.ds, label %.thread169, label %.lr.ph, !dbg !10589

bb.ag:                                            ; preds = %bb.h, %bb.r, %bb.p, %bb.m, %bb.j, %bb.u, %bb.ad, %bb.w, %bb.e
  %i.dt = load ptr, ptr %4, align 8, !dbg !10622, !alias.scope !10495, !noundef !903
  %i.du = icmp eq ptr %i.dt, null, !dbg !10622
  br i1 %i.du, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit116, label %bb.ah, !dbg !10622

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragelENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit116 unwind label %bb.ai, !dbg !10623

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %.loopexit179, %bb.d, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.ai ], [ %lpad.phi, %bb.d ], [ %lpad.phi, %.loopexit179 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEB1A_(ptr noalias noundef align 8 dereferenceable(24) %3) #36
          to label %.body unwind label %bb.ao, !dbg !10584

bb.ai:                                            ; preds = %bb.ah
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit116: ; preds = %bb.ag, %bb.ah
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ak unwind label %bb.aj, !dbg !10624

bb.aj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit116
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body unwind label %bb.al, !dbg !10625

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit116
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEB1A_.exit unwind label %bb.am, !dbg !10626

bb.al:                                            ; preds = %bb.aj
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !10624
  unreachable, !dbg !10624

.body:                                            ; preds = %bb.am, %bb.aj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit
  %.pn102 = phi { ptr, i32 } [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferlEEECs8774dFTUdNv_12polars_arrow.exit ], [ %i.dy, %bb.am ], [ %i.dw, %bb.aj ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageaENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferaEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.ao, !dbg !10627

bb.am:                                            ; preds = %bb.ak
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEEB1A_.exit: ; preds = %bb.ak
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageaENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferaEECs8774dFTUdNv_12polars_arrow.exit120 unwind label %bb.an, !dbg !10628
end_hunk_0
