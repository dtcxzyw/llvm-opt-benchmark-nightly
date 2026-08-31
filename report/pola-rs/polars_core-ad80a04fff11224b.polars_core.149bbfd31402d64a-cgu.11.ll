Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12724
inline.NumDeleted: 4732
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 641
loop-unroll.NumUnrolled: 647
begin_hunk_0_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column10agg_median:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199692), !dbg !199650
  call void @llvm.experimental.noalias.scope.decl(metadata !199695), !dbg !199698, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199700), !dbg !199703, !noalias !199597
  %i.az = load ptr, ptr %i.q, align 8, !dbg !199705, !alias.scope !199709, !noalias !199597, !nonnull !14, !noundef !14
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !dbg !199710, !noalias !199713
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !199714
  br i1 %i.bb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !199714

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !199715, !noalias !199597
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18 unwind label %bb.bw, !dbg !199717

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column10agg_median0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !199650, !noalias !199565
  call void @llvm.experimental.noalias.scope.decl(metadata !199718), !dbg !199650
  call void @llvm.experimental.noalias.scope.decl(metadata !199721), !dbg !199724, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199726), !dbg !199729, !noalias !199597
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !199731, !alias.scope !199735, !noalias !199597, !nonnull !14, !noundef !14
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !199736, !noalias !199739
  %i.be = icmp eq i64 %i.bd, 1, !dbg !199740
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !199740

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !199741, !noalias !199597
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !199743

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.bi, %bb.r ], [ %.pn18.pn.pn.i62, %.thread ], [ %.pn18.pn.i73, %bb.v ], [ %i.ay, %bb.n ], [ %i.jn, %bb.cf ], [ %i.jn, %bb.ce ], [ %.pn18.i79, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199744), !dbg !199747
  call void @llvm.experimental.noalias.scope.decl(metadata !199748), !dbg !199751, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199753), !dbg !199756, !noalias !199597
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !199758, !alias.scope !199762, !noalias !199597, !nonnull !14, !noundef !14
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !199763, !noalias !199766
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !199767
  br i1 %i.bh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !199767

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18
  fence acquire, !dbg !199768, !noalias !199597
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !199770

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !199650, !noalias !199565
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !199771, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.ax, align 8, !dbg !199771, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !199773
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !199773, !range !1489, !invariant.load !14
  %i.bl = add nsw i64 %i.bk, -1, !dbg !199773
  %i.bm = and i64 %i.bl, -16, !dbg !199773
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.bm, !dbg !199773
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !199773
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !199771
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !199771, !invariant.load !14, !noalias !199597, !nonnull !14
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull %i.bo)
          to label %bb.t unwind label %bb.r, !dbg !199777, !noalias !199597

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.bx, label %bb.u, !dbg !199771

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !199778, !noalias !199565
  %i.bs = load i64, ptr %2, align 8, !dbg !199779, !range !1781, !alias.scope !199782, !noalias !199597, !noundef !14
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808, !dbg !199779 ; 3 uses
  %..i = select i1 %i.bt, i64 24, i64 16, !dbg !199785
  %.6.i = select i1 %i.bt, i64 1152921504606846976, i64 2305843009213693952, !dbg !199785
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !199785
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !199785, !alias.scope !199782, !noalias !199597, !noundef !14 ; 8 uses
  %i.bw = icmp ult i64 %i.bv, %.6.i, !dbg !199785
  call void @llvm.assume(i1 %i.bw), !dbg !199785, !noalias !199597
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.r, !dbg !199786, !noalias !199597

bb.v:                                             ; preds = %.thread68
  br i1 %.sroa.09.3.i72, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !199787

bb.w:                                             ; preds = %bb.ab, %.loopexit93, %bb.aa, %bb.y, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !199788, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.ax, align 8, !dbg !199788, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !199790
  %i.bz = load i64, ptr %i.by, align 8, !dbg !199790, !range !1489, !invariant.load !14
  %i.ca = add nsw i64 %i.bz, -1, !dbg !199790
  %i.cb = and i64 %i.ca, -16, !dbg !199790
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.cb, !dbg !199790
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !199790
  %i.ce = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !199788
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !199788, !invariant.load !14, !noalias !199597, !nonnull !14
  %i.cg = invoke noundef nonnull align 16 ptr %i.cf(ptr noundef nonnull %i.cd)
          to label %bb.y unwind label %bb.w, !dbg !199794, !noalias !199597

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !199795, !noalias !199597

bb.z:                                             ; preds = %bb.y
  br i1 %i.ch, label %bb.aj, label %bb.aa, !dbg !199788

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !199800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !199800, !noalias !199565
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !199801, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.ax, align 8, !dbg !199801, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !199802
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !199802, !range !1489, !invariant.load !14
  %i.ck = add nsw i64 %i.cj, -1, !dbg !199802
  %i.cl = and i64 %i.ck, -16, !dbg !199802
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.cl, !dbg !199802
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !199802
  %i.co = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !199801
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !199801, !invariant.load !14, !noalias !199597, !nonnull !14
  %i.cq = invoke noundef nonnull align 16 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.ab unwind label %bb.w, !dbg !199806, !noalias !199597

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !199807

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !199810), !dbg !199813
  call void @llvm.experimental.noalias.scope.decl(metadata !199814), !dbg !199813
  %i.cr = load i8, ptr %i.k, align 16, !dbg !199816, !range !157009, !alias.scope !199814, !noalias !199819, !noundef !14
  %i.cs = icmp eq i8 %i.cr, 31, !dbg !199816
  br i1 %i.cs, label %bb.ac, label %bb.ag, !dbg !199820, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !199821, !noalias !199822
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !199821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !199821, !noalias !199819
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !199823, !noalias !199822

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !199825, !noalias !199822

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !199826, !noalias !199822
  unreachable, !dbg !199826

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !199827, !alias.scope !199828, !noalias !199597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !199829, !noalias !199565
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !199830, !noalias !199597

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !199830, !noalias !199565
  br label %.thread, !dbg !199829

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !199830, !noalias !199565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !199829
  br label %bb.aj, !dbg !199831

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.bv, 0, !dbg !199832
  br i1 %.not.i28.i.not, label %.loopexit94, label %.lr.ph.i, !dbg !199832

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !199843, !nonnull !14, !noundef !14
  %i.da = load i64, ptr %i.cx, align 8, !noalias !199843, !noundef !14
  br label %.thread.us.i, !dbg !199832

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.db = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.df, %bb.ak ] ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.da, !dbg !199850
  call void @llvm.assume(i1 %i.dc), !dbg !199857, !noalias !199597
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db, !dbg !199858
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.dd, align 4, !dbg !199859, !noalias !199843
  %i.de = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !199860
  br i1 %i.de, label %.loopexit93, label %bb.ak, !dbg !199871

bb.ak:                                            ; preds = %.thread.us.i
  %i.df = add nuw i64 %i.db, 1, !dbg !199872      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.bv, !dbg !199832
  br i1 %exitcond45.not.i, label %.loopexit94, label %.thread.us.i, !dbg !199832

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !199843, !noundef !14
  %i.dk = load ptr, ptr %i.dh, align 8, !noalias !199843, !nonnull !14, !noundef !14
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !199843, !noundef !14
  br label %.else.i, !dbg !199832

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.dm = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ds, %bb.al ] ; 5 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj, !dbg !199874
  call void @llvm.assume(i1 %i.dn), !dbg !199883, !noalias !199597
  %i.do = icmp ult i64 %i.dm, %i.dl, !dbg !199884
  call void @llvm.assume(i1 %i.do), !dbg !199891, !noalias !199597
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dm, !dbg !199892
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.dq, align 4, !dbg !199871, !noalias !199893
  %i.dr = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !199860
  br i1 %i.dr, label %.loopexit93, label %bb.al, !dbg !199871

bb.al:                                            ; preds = %.else.i
  %i.ds = add nuw i64 %i.dm, 1, !dbg !199872      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bv, !dbg !199832
  br i1 %exitcond.not.i, label %.loopexit94, label %.else.i, !dbg !199832

.loopexit94:                                      ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !199894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !199787, !noalias !199565
  br label %bb.am, !dbg !199895

bb.am:                                            ; preds = %bb.cd, %.loopexit94
  call void @llvm.experimental.noalias.scope.decl(metadata !199897), !dbg !199747
  call void @llvm.experimental.noalias.scope.decl(metadata !199900), !dbg !199903, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199905), !dbg !199908, !noalias !199597
  %i.dt = load ptr, ptr %i.r, align 8, !dbg !199910, !alias.scope !199914, !noalias !199597, !nonnull !14, !noundef !14
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !199915, !noalias !199918
  %i.dv = icmp eq i64 %i.du, 1, !dbg !199919
  br i1 %i.dv, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !199919

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !199920, !noalias !199597
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !199922, !noalias !199597
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !199922

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !199747, !noalias !199565
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_10agg_median0EB7_.exit, !dbg !199923

.loopexit93:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.db, %.thread.us.i ], [ %i.dm, %.else.i ], !dbg !199925 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !199926, !noalias !199565
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.bv)
          to label %bb.ao unwind label %bb.w, !dbg !199928, !noalias !199597

bb.ao:                                            ; preds = %.loopexit93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !199929 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !199929, !noalias !199565, !noundef !14 ; 2 uses
  %i.dy = and i64 %i.dx, 63, !dbg !199929         ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.3.0.i, !dbg !199936
  %i.ea = icmp ult i64 %i.dz, 64, !dbg !199936
  br i1 %i.ea, label %bb.aq, label %bb.ap, !dbg !199936, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !199938, !noalias !199597

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.dw, align 8, !dbg !199939, !alias.scope !199945, !noalias !199948
  br label %bb.as, !dbg !199938

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !199950
  %notmask.i = shl nsw i64 -1, %3, !dbg !199950
  %i.eb = xor i64 %notmask.i, -1, !dbg !199950
  %i.ec = shl i64 %i.eb, %i.dy, !dbg !199951
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !199953 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !199953, !noalias !199565, !noundef !14
  %i.ef = or i64 %i.ee, %i.ec, !dbg !199953
  store i64 %i.ef, ptr %i.ed, align 8, !dbg !199953, !noalias !199565
  %i.eg = add i64 %i.dx, %.sroa.3.0.i, !dbg !199954 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !dbg !199954, !noalias !199565
  br label %bb.as, !dbg !199955

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !199956

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.eh = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.aq ], !dbg !199939
  %i.ei = sub i64 %i.bv, %.sroa.3.0.i, !dbg !199957 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199945), !dbg !199958
  %i.ej = add i64 %i.eh, %i.ei, !dbg !199939
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !199959
  %i.el = load i64, ptr %i.ek, align 8, !dbg !199959, !alias.scope !199945, !noalias !199948, !noundef !14
  %i.em = icmp ugt i64 %i.ej, %i.el, !dbg !199939
  br i1 %i.em, label %bb.at, label %.noexc33, !dbg !199939, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.ei)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !199960

.noexc33:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !199961, !noalias !199962
  store ptr %2, ptr %i.b, align 8, !dbg !199961, !noalias !199963
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !199961 ; 2 uses
  store i64 %i.bv, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !199961, !noalias !199963
  %.sroa.053.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !199961 ; 3 uses
  store i64 0, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !199961, !noalias !199963
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !199961 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !199961, !noalias !199963
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !199961
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !199961, !noalias !199963
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !199964

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc33
  %i.es = phi i64 [ %.pre105, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc33 ], !dbg !199966 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199976), !dbg !199979, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199980), !dbg !199983, !noalias !199597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !199984, !noalias !199985
  call void @llvm.experimental.noalias.scope.decl(metadata !199986), !dbg !199989, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199990), !dbg !199989, !noalias !199597
  %.not.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !199966
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !199992, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !199995), !dbg !199998, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !199999), !dbg !199998, !noalias !199597
  %i.et = load i64, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !200001, !alias.scope !200003, !noalias !200004, !noundef !14 ; 7 uses
  %i.eu = load i64, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !200005, !alias.scope !200003, !noalias !200004, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.et, %i.eu, !dbg !200001
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !200001

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.b, align 8, !dbg !200006, !alias.scope !200003, !noalias !200004, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !200006, !range !1781, !noalias !200007, !noundef !14
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808, !dbg !200006
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !200008 ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay, !dbg !200009

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !200010, !noalias !200007, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !200023
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !200023, !noalias !200007, !noundef !14
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !200024
  call void @llvm.assume(i1 %i.fc), !dbg !200027, !noalias !199597
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.et, !dbg !200028
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.fd, align 4, !dbg !200029, !noalias !200007
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !dbg !200030, !alias.scope !200031, !noalias !200032
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !200033

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.ey, align 8, !dbg !200034, !noalias !200007, !noundef !14
  %i.ff = icmp ult i64 %i.et, %i.fe, !dbg !200041
  call void @llvm.assume(i1 %i.ff), !dbg !200044, !noalias !199597
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32, !dbg !200045
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !200045, !noalias !200007, !nonnull !14, !noundef !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 40, !dbg !200063
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !200063, !noalias !200007, !noundef !14
  %i.fk = icmp ult i64 %i.et, %i.fj, !dbg !200064
  call void @llvm.assume(i1 %i.fk), !dbg !200067, !noalias !199597
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.et, !dbg !200068
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !200069

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.fl, %bb.ay ], !dbg !200008 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !200008, !alias.scope !200031, !noalias !200032
  %i.fm = add nuw i64 %i.et, 1, !dbg !200070
  store i64 %i.fm, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !200070, !alias.scope !200003, !noalias !200004
  br label %bb.az, !dbg !200071

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !200074, !alias.scope !200080, !noalias !200081
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.es)
          to label %.noexc34 unwind label %.loopexit, !dbg !200082

.noexc34:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !200083, !range !16, !noalias !199985
  %i.fn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !200071
  br i1 %i.fn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !200071

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc34
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !200084, !noalias !199985
  br label %bb.az, !dbg !200071

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !200084 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !200084, !noalias !199985
  %i.fo = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !200085
  br i1 %i.fo, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_10agg_median0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !200095

.else.i.i.i:                                      ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !200096
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.fp, align 4, !dbg !200095, !noalias !199948, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_10agg_median0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !200095

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_10agg_median0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.fq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !200097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !200098, !noalias !199985
  call void @llvm.experimental.noalias.scope.decl(metadata !200099), !dbg !200102, !noalias !199597
  %i.fr = zext i1 %i.fq to i64, !dbg !200104
  %i.fs = load i64, ptr %i.dw, align 8, !dbg !200107, !alias.scope !200108, !noalias !199948, !noundef !14 ; 2 uses
  %i.ft = and i64 %i.fs, 63, !dbg !200109
  %i.fu = shl nuw i64 %i.fr, %i.ft, !dbg !200104
  %i.fv = load i64, ptr %i.eo, align 8, !dbg !200110, !alias.scope !200108, !noalias !199948, !noundef !14
  %i.fw = or i64 %i.fu, %i.fv, !dbg !200110       ; 3 uses
  store i64 %i.fw, ptr %i.eo, align 8, !dbg !200110, !alias.scope !200108, !noalias !199948
  %i.fx = add i64 %i.fs, 1, !dbg !200111          ; 2 uses
  store i64 %i.fx, ptr %i.dw, align 8, !dbg !200111, !alias.scope !200108, !noalias !199948
  %i.fy = and i64 %i.fx, 63, !dbg !200112
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !200112
  br i1 %i.fz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !200115

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_10agg_median0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ga = load i64, ptr %i.ep, align 8, !dbg !200116, !alias.scope !200108, !noalias !199948, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !200121
  call void @llvm.assume(i1 %i.gb), !dbg !200123, !noalias !199597
  %i.gc = load ptr, ptr %i.eq, align 8, !dbg !200124, !alias.scope !200108, !noalias !199948, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga, !dbg !200134
  store i64 %i.fw, ptr %i.gd, align 1, !dbg !200137, !noalias !200145
  %i.ge = add nuw i64 %i.ga, 8, !dbg !200146
  store i64 %i.ge, ptr %i.ep, align 8, !dbg !200147, !alias.scope !200108, !noalias !199948
  %i.gf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw), !dbg !200150
  %i.gg = load i64, ptr %i.er, align 8, !dbg !200153, !alias.scope !200108, !noalias !199948, !noundef !14
  %i.gh = add i64 %i.gg, %i.gf, !dbg !200153
  store i64 %i.gh, ptr %i.er, align 8, !dbg !200153, !alias.scope !200108, !noalias !199948
  store i64 0, ptr %i.eo, align 8, !dbg !200154, !alias.scope !200108, !noalias !199948
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !200155

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_10agg_median0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre105 = load i64, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !199966, !alias.scope !200080, !noalias !200081
  br label %bb.au, !dbg !200102

bb.bb:                                            ; preds = %.noexc34, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !200098, !noalias !199985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !200156, !noalias !199962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !200157, !noalias !199565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !200158, !noalias !199565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !200158, !noalias !199565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !200158, !noalias !199565
  %i.gi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !200159, !noalias !199597 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200160), !dbg !200163
  call void @llvm.experimental.noalias.scope.decl(metadata !200164), !dbg !200167, !noalias !199597
  call void @llvm.experimental.noalias.scope.decl(metadata !200169), !dbg !200172, !noalias !199597
  %i.gk = load ptr, ptr %i.h, align 8, !dbg !200174, !alias.scope !200178, !noalias !199597, !nonnull !14, !noundef !14
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !dbg !200179, !noalias !200182
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !200183
  br i1 %i.gm, label %bb.bd, label %.thread68, !dbg !200183

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !200184, !noalias !199597
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread68 unwind label %bb.bw, !dbg !200186

bb.be:                                            ; preds = %bb.bb
  %i.gn = extractvalue { ptr, ptr } %i.gi, 0, !dbg !200158 ; 3 uses
  %i.go = extractvalue { ptr, ptr } %i.gi, 1, !dbg !200158 ; 4 uses
  store ptr %i.gn, ptr %i.h, align 8, !dbg !200158, !noalias !199565
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !200158
  store ptr %i.go, ptr %i.gp, align 8, !dbg !200158, !noalias !199565
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !200187
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !200187, !range !1489, !invariant.load !14
  %i.gs = add nsw i64 %i.gr, -1, !dbg !200187
  %i.gt = and i64 %i.gs, -16, !dbg !200187
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt, !dbg !200187
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !200187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !200191, !noalias !199565
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 456, !dbg !200158
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !200158, !invariant.load !14, !noalias !199597, !nonnull !14
  %i.gy = invoke { ptr, ptr } %i.gx(ptr noundef nonnull %i.gv)
          to label %bb.bf unwind label %bb.bc, !dbg !200192, !noalias !199597 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0, !dbg !200158
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1, !dbg !200158
  store ptr %i.gz, ptr %i.i, align 8, !dbg !200158, !noalias !199565
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column17agg_last_non_null:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205392), !dbg !205355
  call void @llvm.experimental.noalias.scope.decl(metadata !205395), !dbg !205398, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205400), !dbg !205403, !noalias !205314
  %i.az = load ptr, ptr %i.q, align 8, !dbg !205405, !alias.scope !205409, !noalias !205314, !nonnull !14, !noundef !14
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !dbg !205410, !noalias !205413
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !205414
  br i1 %i.bb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !205414

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !205415, !noalias !205314
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18 unwind label %bb.bw, !dbg !205417

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column17agg_last_non_null0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !205355, !noalias !205288
  call void @llvm.experimental.noalias.scope.decl(metadata !205418), !dbg !205355
  call void @llvm.experimental.noalias.scope.decl(metadata !205421), !dbg !205424, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205426), !dbg !205429, !noalias !205314
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !205431, !alias.scope !205435, !noalias !205314, !nonnull !14, !noundef !14
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !205436, !noalias !205439
  %i.be = icmp eq i64 %i.bd, 1, !dbg !205440
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !205440

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !205441, !noalias !205314
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !205443

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.bi, %bb.r ], [ %.pn18.pn.pn.i62, %.thread ], [ %.pn18.pn.i73, %bb.v ], [ %i.ay, %bb.n ], [ %i.jn, %bb.cf ], [ %i.jn, %bb.ce ], [ %.pn18.i79, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205444), !dbg !205447
  call void @llvm.experimental.noalias.scope.decl(metadata !205448), !dbg !205451, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205453), !dbg !205456, !noalias !205314
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !205458, !alias.scope !205462, !noalias !205314, !nonnull !14, !noundef !14
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !205463, !noalias !205466
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !205467
  br i1 %i.bh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !205467

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18
  fence acquire, !dbg !205468, !noalias !205314
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !205470

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !205355, !noalias !205288
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !205471, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.ax, align 8, !dbg !205471, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !205473
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !205473, !range !1489, !invariant.load !14
  %i.bl = add nsw i64 %i.bk, -1, !dbg !205473
  %i.bm = and i64 %i.bl, -16, !dbg !205473
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.bm, !dbg !205473
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !205473
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !205471
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !205471, !invariant.load !14, !noalias !205314, !nonnull !14
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull %i.bo)
          to label %bb.t unwind label %bb.r, !dbg !205477, !noalias !205314

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.bx, label %bb.u, !dbg !205471

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !205478, !noalias !205288
  %i.bs = load i64, ptr %2, align 8, !dbg !205479, !range !1781, !alias.scope !205481, !noalias !205314, !noundef !14
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808, !dbg !205479 ; 3 uses
  %..i = select i1 %i.bt, i64 24, i64 16, !dbg !205484
  %.6.i = select i1 %i.bt, i64 1152921504606846976, i64 2305843009213693952, !dbg !205484
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !205484
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !205484, !alias.scope !205481, !noalias !205314, !noundef !14 ; 8 uses
  %i.bw = icmp ult i64 %i.bv, %.6.i, !dbg !205484
  call void @llvm.assume(i1 %i.bw), !dbg !205484, !noalias !205314
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.r, !dbg !205485, !noalias !205314

bb.v:                                             ; preds = %.thread68
  br i1 %.sroa.09.3.i72, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !205486

bb.w:                                             ; preds = %bb.ab, %.loopexit93, %bb.aa, %bb.y, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !205487, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.ax, align 8, !dbg !205487, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !205489
  %i.bz = load i64, ptr %i.by, align 8, !dbg !205489, !range !1489, !invariant.load !14
  %i.ca = add nsw i64 %i.bz, -1, !dbg !205489
  %i.cb = and i64 %i.ca, -16, !dbg !205489
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.cb, !dbg !205489
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !205489
  %i.ce = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !205487
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !205487, !invariant.load !14, !noalias !205314, !nonnull !14
  %i.cg = invoke noundef nonnull align 16 ptr %i.cf(ptr noundef nonnull %i.cd)
          to label %bb.y unwind label %bb.w, !dbg !205493, !noalias !205314

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !205494, !noalias !205314

bb.z:                                             ; preds = %bb.y
  br i1 %i.ch, label %bb.aj, label %bb.aa, !dbg !205487

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !205499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !205499, !noalias !205288
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !205500, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.ax, align 8, !dbg !205500, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !205501
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !205501, !range !1489, !invariant.load !14
  %i.ck = add nsw i64 %i.cj, -1, !dbg !205501
  %i.cl = and i64 %i.ck, -16, !dbg !205501
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.cl, !dbg !205501
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !205501
  %i.co = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !205500
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !205500, !invariant.load !14, !noalias !205314, !nonnull !14
  %i.cq = invoke noundef nonnull align 16 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.ab unwind label %bb.w, !dbg !205505, !noalias !205314

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !205506

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !205508), !dbg !205511
  call void @llvm.experimental.noalias.scope.decl(metadata !205512), !dbg !205511
  %i.cr = load i8, ptr %i.k, align 16, !dbg !205514, !range !157009, !alias.scope !205512, !noalias !205516, !noundef !14
  %i.cs = icmp eq i8 %i.cr, 31, !dbg !205514
  br i1 %i.cs, label %bb.ac, label %bb.ag, !dbg !205517, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !205518, !noalias !205519
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !205518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !205518, !noalias !205516
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !205520, !noalias !205519

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !205521, !noalias !205519

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !205522, !noalias !205519
  unreachable, !dbg !205522

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !205523, !alias.scope !205524, !noalias !205314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !205525, !noalias !205288
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !205526, !noalias !205314

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !205526, !noalias !205288
  br label %.thread, !dbg !205525

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !205526, !noalias !205288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !205525
  br label %bb.aj, !dbg !205527

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.bv, 0, !dbg !205528
  br i1 %.not.i28.i.not, label %.loopexit94, label %.lr.ph.i, !dbg !205528

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !205537, !nonnull !14, !noundef !14
  %i.da = load i64, ptr %i.cx, align 8, !noalias !205537, !noundef !14
  br label %.thread.us.i, !dbg !205528

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.db = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.df, %bb.ak ] ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.da, !dbg !205544
  call void @llvm.assume(i1 %i.dc), !dbg !205547, !noalias !205314
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db, !dbg !205548
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.dd, align 4, !dbg !205549, !noalias !205537
  %i.de = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !205550
  br i1 %i.de, label %.loopexit93, label %bb.ak, !dbg !205557

bb.ak:                                            ; preds = %.thread.us.i
  %i.df = add nuw i64 %i.db, 1, !dbg !205558      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.bv, !dbg !205528
  br i1 %exitcond45.not.i, label %.loopexit94, label %.thread.us.i, !dbg !205528

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !205537, !noundef !14
  %i.dk = load ptr, ptr %i.dh, align 8, !noalias !205537, !nonnull !14, !noundef !14
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !205537, !noundef !14
  br label %.else.i, !dbg !205528

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.dm = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ds, %bb.al ] ; 5 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj, !dbg !205559
  call void @llvm.assume(i1 %i.dn), !dbg !205563, !noalias !205314
  %i.do = icmp ult i64 %i.dm, %i.dl, !dbg !205564
  call void @llvm.assume(i1 %i.do), !dbg !205567, !noalias !205314
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dm, !dbg !205568
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.dq, align 4, !dbg !205557, !noalias !205569
  %i.dr = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !205550
  br i1 %i.dr, label %.loopexit93, label %bb.al, !dbg !205557

bb.al:                                            ; preds = %.else.i
  %i.ds = add nuw i64 %i.dm, 1, !dbg !205558      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bv, !dbg !205528
  br i1 %exitcond.not.i, label %.loopexit94, label %.else.i, !dbg !205528

.loopexit94:                                      ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !205570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !205486, !noalias !205288
  br label %bb.am, !dbg !205571

bb.am:                                            ; preds = %bb.cd, %.loopexit94
  call void @llvm.experimental.noalias.scope.decl(metadata !205573), !dbg !205447
  call void @llvm.experimental.noalias.scope.decl(metadata !205576), !dbg !205579, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205581), !dbg !205584, !noalias !205314
  %i.dt = load ptr, ptr %i.r, align 8, !dbg !205586, !alias.scope !205590, !noalias !205314, !nonnull !14, !noundef !14
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !205591, !noalias !205594
  %i.dv = icmp eq i64 %i.du, 1, !dbg !205595
  br i1 %i.dv, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !205595

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !205596, !noalias !205314
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !205598, !noalias !205314
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !205598

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !205447, !noalias !205288
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_17agg_last_non_null0EB7_.exit, !dbg !205599

.loopexit93:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.db, %.thread.us.i ], [ %i.dm, %.else.i ], !dbg !205601 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !205602, !noalias !205288
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.bv)
          to label %bb.ao unwind label %bb.w, !dbg !205604, !noalias !205314

bb.ao:                                            ; preds = %.loopexit93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !205605 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !205605, !noalias !205288, !noundef !14 ; 2 uses
  %i.dy = and i64 %i.dx, 63, !dbg !205605         ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.3.0.i, !dbg !205609
  %i.ea = icmp ult i64 %i.dz, 64, !dbg !205609
  br i1 %i.ea, label %bb.aq, label %bb.ap, !dbg !205609, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !205611, !noalias !205314

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.dw, align 8, !dbg !205612, !alias.scope !205618, !noalias !205621
  br label %bb.as, !dbg !205611

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !205623
  %notmask.i = shl nsw i64 -1, %3, !dbg !205623
  %i.eb = xor i64 %notmask.i, -1, !dbg !205623
  %i.ec = shl i64 %i.eb, %i.dy, !dbg !205624
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !205626 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !205626, !noalias !205288, !noundef !14
  %i.ef = or i64 %i.ee, %i.ec, !dbg !205626
  store i64 %i.ef, ptr %i.ed, align 8, !dbg !205626, !noalias !205288
  %i.eg = add i64 %i.dx, %.sroa.3.0.i, !dbg !205627 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !dbg !205627, !noalias !205288
  br label %bb.as, !dbg !205628

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !205629

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.eh = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.aq ], !dbg !205612
  %i.ei = sub i64 %i.bv, %.sroa.3.0.i, !dbg !205630 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205618), !dbg !205631
  %i.ej = add i64 %i.eh, %i.ei, !dbg !205612
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !205632
  %i.el = load i64, ptr %i.ek, align 8, !dbg !205632, !alias.scope !205618, !noalias !205621, !noundef !14
  %i.em = icmp ugt i64 %i.ej, %i.el, !dbg !205612
  br i1 %i.em, label %bb.at, label %.noexc33, !dbg !205612, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.ei)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !205633

.noexc33:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !205634, !noalias !205635
  store ptr %2, ptr %i.b, align 8, !dbg !205634, !noalias !205636
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !205634 ; 2 uses
  store i64 %i.bv, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !205634, !noalias !205636
  %.sroa.053.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !205634 ; 3 uses
  store i64 0, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !205634, !noalias !205636
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !205634 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !205634, !noalias !205636
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !205634
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !205634, !noalias !205636
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !205637

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc33
  %i.es = phi i64 [ %.pre105, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc33 ], !dbg !205639 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205645), !dbg !205648, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205649), !dbg !205652, !noalias !205314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !205653, !noalias !205654
  call void @llvm.experimental.noalias.scope.decl(metadata !205655), !dbg !205658, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205659), !dbg !205658, !noalias !205314
  %.not.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !205639
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !205661, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !205663), !dbg !205666, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205667), !dbg !205666, !noalias !205314
  %i.et = load i64, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !205669, !alias.scope !205671, !noalias !205672, !noundef !14 ; 7 uses
  %i.eu = load i64, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !205673, !alias.scope !205671, !noalias !205672, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.et, %i.eu, !dbg !205669
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !205669

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.b, align 8, !dbg !205674, !alias.scope !205671, !noalias !205672, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !205674, !range !1781, !noalias !205675, !noundef !14
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808, !dbg !205674
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !205676 ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay, !dbg !205677

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !205678, !noalias !205675, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !205685
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !205685, !noalias !205675, !noundef !14
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !205686
  call void @llvm.assume(i1 %i.fc), !dbg !205689, !noalias !205314
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.et, !dbg !205690
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.fd, align 4, !dbg !205691, !noalias !205675
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !dbg !205692, !alias.scope !205693, !noalias !205694
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !205695

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.ey, align 8, !dbg !205696, !noalias !205675, !noundef !14
  %i.ff = icmp ult i64 %i.et, %i.fe, !dbg !205700
  call void @llvm.assume(i1 %i.ff), !dbg !205703, !noalias !205314
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32, !dbg !205704
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !205704, !noalias !205675, !nonnull !14, !noundef !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 40, !dbg !205711
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !205711, !noalias !205675, !noundef !14
  %i.fk = icmp ult i64 %i.et, %i.fj, !dbg !205712
  call void @llvm.assume(i1 %i.fk), !dbg !205715, !noalias !205314
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.et, !dbg !205716
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !205717

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.fl, %bb.ay ], !dbg !205676 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !205676, !alias.scope !205693, !noalias !205694
  %i.fm = add nuw i64 %i.et, 1, !dbg !205718
  store i64 %i.fm, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !205718, !alias.scope !205671, !noalias !205672
  br label %bb.az, !dbg !205719

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !205722, !alias.scope !205725, !noalias !205726
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.es)
          to label %.noexc34 unwind label %.loopexit, !dbg !205727

.noexc34:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !205728, !range !16, !noalias !205654
  %i.fn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !205719
  br i1 %i.fn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !205719

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc34
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !205729, !noalias !205654
  br label %bb.az, !dbg !205719

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !205729 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !205729, !noalias !205654
  %i.fo = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !205730
  br i1 %i.fo, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_17agg_last_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !205740

.else.i.i.i:                                      ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !205741
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.fp, align 4, !dbg !205740, !noalias !205621, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_17agg_last_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !205740

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_17agg_last_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.fq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !205742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !205743, !noalias !205654
  call void @llvm.experimental.noalias.scope.decl(metadata !205744), !dbg !205747, !noalias !205314
  %i.fr = zext i1 %i.fq to i64, !dbg !205749
  %i.fs = load i64, ptr %i.dw, align 8, !dbg !205751, !alias.scope !205752, !noalias !205621, !noundef !14 ; 2 uses
  %i.ft = and i64 %i.fs, 63, !dbg !205753
  %i.fu = shl nuw i64 %i.fr, %i.ft, !dbg !205749
  %i.fv = load i64, ptr %i.eo, align 8, !dbg !205754, !alias.scope !205752, !noalias !205621, !noundef !14
  %i.fw = or i64 %i.fu, %i.fv, !dbg !205754       ; 3 uses
  store i64 %i.fw, ptr %i.eo, align 8, !dbg !205754, !alias.scope !205752, !noalias !205621
  %i.fx = add i64 %i.fs, 1, !dbg !205755          ; 2 uses
  store i64 %i.fx, ptr %i.dw, align 8, !dbg !205755, !alias.scope !205752, !noalias !205621
  %i.fy = and i64 %i.fx, 63, !dbg !205756
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !205756
  br i1 %i.fz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !205758

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_17agg_last_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ga = load i64, ptr %i.ep, align 8, !dbg !205759, !alias.scope !205752, !noalias !205621, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !205762
  call void @llvm.assume(i1 %i.gb), !dbg !205763, !noalias !205314
  %i.gc = load ptr, ptr %i.eq, align 8, !dbg !205764, !alias.scope !205752, !noalias !205621, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga, !dbg !205769
  store i64 %i.fw, ptr %i.gd, align 1, !dbg !205771, !noalias !205775
  %i.ge = add nuw i64 %i.ga, 8, !dbg !205776
  store i64 %i.ge, ptr %i.ep, align 8, !dbg !205777, !alias.scope !205752, !noalias !205621
  %i.gf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw), !dbg !205779
  %i.gg = load i64, ptr %i.er, align 8, !dbg !205781, !alias.scope !205752, !noalias !205621, !noundef !14
  %i.gh = add i64 %i.gg, %i.gf, !dbg !205781
  store i64 %i.gh, ptr %i.er, align 8, !dbg !205781, !alias.scope !205752, !noalias !205621
  store i64 0, ptr %i.eo, align 8, !dbg !205782, !alias.scope !205752, !noalias !205621
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !205783

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_17agg_last_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre105 = load i64, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !205639, !alias.scope !205725, !noalias !205726
  br label %bb.au, !dbg !205747

bb.bb:                                            ; preds = %.noexc34, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !205743, !noalias !205654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !205784, !noalias !205635
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !205785, !noalias !205288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !205786, !noalias !205288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !205786, !noalias !205288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !205786, !noalias !205288
  %i.gi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !205787, !noalias !205314 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205788), !dbg !205791
  call void @llvm.experimental.noalias.scope.decl(metadata !205792), !dbg !205795, !noalias !205314
  call void @llvm.experimental.noalias.scope.decl(metadata !205797), !dbg !205800, !noalias !205314
  %i.gk = load ptr, ptr %i.h, align 8, !dbg !205802, !alias.scope !205806, !noalias !205314, !nonnull !14, !noundef !14
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !dbg !205807, !noalias !205810
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !205811
  br i1 %i.gm, label %bb.bd, label %.thread68, !dbg !205811

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !205812, !noalias !205314
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread68 unwind label %bb.bw, !dbg !205814

bb.be:                                            ; preds = %bb.bb
  %i.gn = extractvalue { ptr, ptr } %i.gi, 0, !dbg !205786 ; 3 uses
  %i.go = extractvalue { ptr, ptr } %i.gi, 1, !dbg !205786 ; 4 uses
  store ptr %i.gn, ptr %i.h, align 8, !dbg !205786, !noalias !205288
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !205786
  store ptr %i.go, ptr %i.gp, align 8, !dbg !205786, !noalias !205288
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !205815
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !205815, !range !1489, !invariant.load !14
  %i.gs = add nsw i64 %i.gr, -1, !dbg !205815
  %i.gt = and i64 %i.gs, -16, !dbg !205815
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt, !dbg !205815
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !205815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !205819, !noalias !205288
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 456, !dbg !205786
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !205786, !invariant.load !14, !noalias !205314, !nonnull !14
  %i.gy = invoke { ptr, ptr } %i.gx(ptr noundef nonnull %i.gv)
          to label %bb.bf unwind label %bb.bc, !dbg !205820, !noalias !205314 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0, !dbg !205786
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1, !dbg !205786
  store ptr %i.gz, ptr %i.i, align 8, !dbg !205786, !noalias !205288
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column18agg_first_non_null:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206262), !dbg !206225
  call void @llvm.experimental.noalias.scope.decl(metadata !206265), !dbg !206268, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206270), !dbg !206273, !noalias !206184
  %i.az = load ptr, ptr %i.q, align 8, !dbg !206275, !alias.scope !206279, !noalias !206184, !nonnull !14, !noundef !14
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !dbg !206280, !noalias !206283
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !206284
  br i1 %i.bb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !206284

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !206285, !noalias !206184
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18 unwind label %bb.bw, !dbg !206287

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column18agg_first_non_null0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !206225, !noalias !206158
  call void @llvm.experimental.noalias.scope.decl(metadata !206288), !dbg !206225
  call void @llvm.experimental.noalias.scope.decl(metadata !206291), !dbg !206294, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206296), !dbg !206299, !noalias !206184
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !206301, !alias.scope !206305, !noalias !206184, !nonnull !14, !noundef !14
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !206306, !noalias !206309
  %i.be = icmp eq i64 %i.bd, 1, !dbg !206310
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !206310

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !206311, !noalias !206184
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !206313

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.bi, %bb.r ], [ %.pn18.pn.pn.i62, %.thread ], [ %.pn18.pn.i73, %bb.v ], [ %i.ay, %bb.n ], [ %i.jn, %bb.cf ], [ %i.jn, %bb.ce ], [ %.pn18.i79, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206314), !dbg !206317
  call void @llvm.experimental.noalias.scope.decl(metadata !206318), !dbg !206321, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206323), !dbg !206326, !noalias !206184
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !206328, !alias.scope !206332, !noalias !206184, !nonnull !14, !noundef !14
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !206333, !noalias !206336
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !206337
  br i1 %i.bh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !206337

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18
  fence acquire, !dbg !206338, !noalias !206184
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !206340

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !206225, !noalias !206158
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !206341, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.ax, align 8, !dbg !206341, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !206343
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !206343, !range !1489, !invariant.load !14
  %i.bl = add nsw i64 %i.bk, -1, !dbg !206343
  %i.bm = and i64 %i.bl, -16, !dbg !206343
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.bm, !dbg !206343
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !206343
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !206341
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !206341, !invariant.load !14, !noalias !206184, !nonnull !14
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull %i.bo)
          to label %bb.t unwind label %bb.r, !dbg !206347, !noalias !206184

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.bx, label %bb.u, !dbg !206341

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !206348, !noalias !206158
  %i.bs = load i64, ptr %2, align 8, !dbg !206349, !range !1781, !alias.scope !206351, !noalias !206184, !noundef !14
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808, !dbg !206349 ; 3 uses
  %..i = select i1 %i.bt, i64 24, i64 16, !dbg !206354
  %.6.i = select i1 %i.bt, i64 1152921504606846976, i64 2305843009213693952, !dbg !206354
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !206354
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !206354, !alias.scope !206351, !noalias !206184, !noundef !14 ; 8 uses
  %i.bw = icmp ult i64 %i.bv, %.6.i, !dbg !206354
  call void @llvm.assume(i1 %i.bw), !dbg !206354, !noalias !206184
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.r, !dbg !206355, !noalias !206184

bb.v:                                             ; preds = %.thread68
  br i1 %.sroa.09.3.i72, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !206356

bb.w:                                             ; preds = %bb.ab, %.loopexit93, %bb.aa, %bb.y, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !206357, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.ax, align 8, !dbg !206357, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !206359
  %i.bz = load i64, ptr %i.by, align 8, !dbg !206359, !range !1489, !invariant.load !14
  %i.ca = add nsw i64 %i.bz, -1, !dbg !206359
  %i.cb = and i64 %i.ca, -16, !dbg !206359
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.cb, !dbg !206359
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !206359
  %i.ce = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !206357
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !206357, !invariant.load !14, !noalias !206184, !nonnull !14
  %i.cg = invoke noundef nonnull align 16 ptr %i.cf(ptr noundef nonnull %i.cd)
          to label %bb.y unwind label %bb.w, !dbg !206363, !noalias !206184

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !206364, !noalias !206184

bb.z:                                             ; preds = %bb.y
  br i1 %i.ch, label %bb.aj, label %bb.aa, !dbg !206357

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !206369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !206369, !noalias !206158
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !206370, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.ax, align 8, !dbg !206370, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !206371
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !206371, !range !1489, !invariant.load !14
  %i.ck = add nsw i64 %i.cj, -1, !dbg !206371
  %i.cl = and i64 %i.ck, -16, !dbg !206371
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.cl, !dbg !206371
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !206371
  %i.co = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !206370
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !206370, !invariant.load !14, !noalias !206184, !nonnull !14
  %i.cq = invoke noundef nonnull align 16 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.ab unwind label %bb.w, !dbg !206375, !noalias !206184

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !206376

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !206378), !dbg !206381
  call void @llvm.experimental.noalias.scope.decl(metadata !206382), !dbg !206381
  %i.cr = load i8, ptr %i.k, align 16, !dbg !206384, !range !157009, !alias.scope !206382, !noalias !206386, !noundef !14
  %i.cs = icmp eq i8 %i.cr, 31, !dbg !206384
  br i1 %i.cs, label %bb.ac, label %bb.ag, !dbg !206387, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !206388, !noalias !206389
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !206388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !206388, !noalias !206386
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !206390, !noalias !206389

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !206391, !noalias !206389

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !206392, !noalias !206389
  unreachable, !dbg !206392

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !206393, !alias.scope !206394, !noalias !206184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !206395, !noalias !206158
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !206396, !noalias !206184

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !206396, !noalias !206158
  br label %.thread, !dbg !206395

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !206396, !noalias !206158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !206395
  br label %bb.aj, !dbg !206397

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.bv, 0, !dbg !206398
  br i1 %.not.i28.i.not, label %.loopexit94, label %.lr.ph.i, !dbg !206398

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !206407, !nonnull !14, !noundef !14
  %i.da = load i64, ptr %i.cx, align 8, !noalias !206407, !noundef !14
  br label %.thread.us.i, !dbg !206398

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.db = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.df, %bb.ak ] ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.da, !dbg !206414
  call void @llvm.assume(i1 %i.dc), !dbg !206417, !noalias !206184
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db, !dbg !206418
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.dd, align 4, !dbg !206419, !noalias !206407
  %i.de = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !206420
  br i1 %i.de, label %.loopexit93, label %bb.ak, !dbg !206427

bb.ak:                                            ; preds = %.thread.us.i
  %i.df = add nuw i64 %i.db, 1, !dbg !206428      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.bv, !dbg !206398
  br i1 %exitcond45.not.i, label %.loopexit94, label %.thread.us.i, !dbg !206398

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !206407, !noundef !14
  %i.dk = load ptr, ptr %i.dh, align 8, !noalias !206407, !nonnull !14, !noundef !14
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !206407, !noundef !14
  br label %.else.i, !dbg !206398

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.dm = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ds, %bb.al ] ; 5 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj, !dbg !206429
  call void @llvm.assume(i1 %i.dn), !dbg !206433, !noalias !206184
  %i.do = icmp ult i64 %i.dm, %i.dl, !dbg !206434
  call void @llvm.assume(i1 %i.do), !dbg !206437, !noalias !206184
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dm, !dbg !206438
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.dq, align 4, !dbg !206427, !noalias !206439
  %i.dr = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !206420
  br i1 %i.dr, label %.loopexit93, label %bb.al, !dbg !206427

bb.al:                                            ; preds = %.else.i
  %i.ds = add nuw i64 %i.dm, 1, !dbg !206428      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bv, !dbg !206398
  br i1 %exitcond.not.i, label %.loopexit94, label %.else.i, !dbg !206398

.loopexit94:                                      ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !206440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !206356, !noalias !206158
  br label %bb.am, !dbg !206441

bb.am:                                            ; preds = %bb.cd, %.loopexit94
  call void @llvm.experimental.noalias.scope.decl(metadata !206443), !dbg !206317
  call void @llvm.experimental.noalias.scope.decl(metadata !206446), !dbg !206449, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206451), !dbg !206454, !noalias !206184
  %i.dt = load ptr, ptr %i.r, align 8, !dbg !206456, !alias.scope !206460, !noalias !206184, !nonnull !14, !noundef !14
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !206461, !noalias !206464
  %i.dv = icmp eq i64 %i.du, 1, !dbg !206465
  br i1 %i.dv, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !206465

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !206466, !noalias !206184
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !206468, !noalias !206184
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !206468

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !206317, !noalias !206158
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_18agg_first_non_null0EB7_.exit, !dbg !206469

.loopexit93:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.db, %.thread.us.i ], [ %i.dm, %.else.i ], !dbg !206471 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !206472, !noalias !206158
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.bv)
          to label %bb.ao unwind label %bb.w, !dbg !206474, !noalias !206184

bb.ao:                                            ; preds = %.loopexit93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !206475 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !206475, !noalias !206158, !noundef !14 ; 2 uses
  %i.dy = and i64 %i.dx, 63, !dbg !206475         ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.3.0.i, !dbg !206479
  %i.ea = icmp ult i64 %i.dz, 64, !dbg !206479
  br i1 %i.ea, label %bb.aq, label %bb.ap, !dbg !206479, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !206481, !noalias !206184

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.dw, align 8, !dbg !206482, !alias.scope !206488, !noalias !206491
  br label %bb.as, !dbg !206481

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !206493
  %notmask.i = shl nsw i64 -1, %3, !dbg !206493
  %i.eb = xor i64 %notmask.i, -1, !dbg !206493
  %i.ec = shl i64 %i.eb, %i.dy, !dbg !206494
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !206496 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !206496, !noalias !206158, !noundef !14
  %i.ef = or i64 %i.ee, %i.ec, !dbg !206496
  store i64 %i.ef, ptr %i.ed, align 8, !dbg !206496, !noalias !206158
  %i.eg = add i64 %i.dx, %.sroa.3.0.i, !dbg !206497 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !dbg !206497, !noalias !206158
  br label %bb.as, !dbg !206498

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !206499

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.eh = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.aq ], !dbg !206482
  %i.ei = sub i64 %i.bv, %.sroa.3.0.i, !dbg !206500 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206488), !dbg !206501
  %i.ej = add i64 %i.eh, %i.ei, !dbg !206482
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !206502
  %i.el = load i64, ptr %i.ek, align 8, !dbg !206502, !alias.scope !206488, !noalias !206491, !noundef !14
  %i.em = icmp ugt i64 %i.ej, %i.el, !dbg !206482
  br i1 %i.em, label %bb.at, label %.noexc33, !dbg !206482, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.ei)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !206503

.noexc33:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !206504, !noalias !206505
  store ptr %2, ptr %i.b, align 8, !dbg !206504, !noalias !206506
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !206504 ; 2 uses
  store i64 %i.bv, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !206504, !noalias !206506
  %.sroa.053.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !206504 ; 3 uses
  store i64 0, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !206504, !noalias !206506
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !206504 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !206504, !noalias !206506
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !206504
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !206504, !noalias !206506
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !206507

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc33
  %i.es = phi i64 [ %.pre105, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc33 ], !dbg !206509 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206515), !dbg !206518, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206519), !dbg !206522, !noalias !206184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !206523, !noalias !206524
  call void @llvm.experimental.noalias.scope.decl(metadata !206525), !dbg !206528, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206529), !dbg !206528, !noalias !206184
  %.not.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !206509
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !206531, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !206533), !dbg !206536, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206537), !dbg !206536, !noalias !206184
  %i.et = load i64, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !206539, !alias.scope !206541, !noalias !206542, !noundef !14 ; 7 uses
  %i.eu = load i64, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !206543, !alias.scope !206541, !noalias !206542, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.et, %i.eu, !dbg !206539
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !206539

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.b, align 8, !dbg !206544, !alias.scope !206541, !noalias !206542, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !206544, !range !1781, !noalias !206545, !noundef !14
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808, !dbg !206544
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !206546 ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay, !dbg !206547

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !206548, !noalias !206545, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !206555
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !206555, !noalias !206545, !noundef !14
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !206556
  call void @llvm.assume(i1 %i.fc), !dbg !206559, !noalias !206184
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.et, !dbg !206560
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.fd, align 4, !dbg !206561, !noalias !206545
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !dbg !206562, !alias.scope !206563, !noalias !206564
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !206565

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.ey, align 8, !dbg !206566, !noalias !206545, !noundef !14
  %i.ff = icmp ult i64 %i.et, %i.fe, !dbg !206570
  call void @llvm.assume(i1 %i.ff), !dbg !206573, !noalias !206184
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32, !dbg !206574
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !206574, !noalias !206545, !nonnull !14, !noundef !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 40, !dbg !206581
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !206581, !noalias !206545, !noundef !14
  %i.fk = icmp ult i64 %i.et, %i.fj, !dbg !206582
  call void @llvm.assume(i1 %i.fk), !dbg !206585, !noalias !206184
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.et, !dbg !206586
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !206587

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.fl, %bb.ay ], !dbg !206546 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !206546, !alias.scope !206563, !noalias !206564
  %i.fm = add nuw i64 %i.et, 1, !dbg !206588
  store i64 %i.fm, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !206588, !alias.scope !206541, !noalias !206542
  br label %bb.az, !dbg !206589

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !206592, !alias.scope !206595, !noalias !206596
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.es)
          to label %.noexc34 unwind label %.loopexit, !dbg !206597

.noexc34:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !206598, !range !16, !noalias !206524
  %i.fn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !206589
  br i1 %i.fn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !206589

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc34
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !206599, !noalias !206524
  br label %bb.az, !dbg !206589

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !206599 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !206599, !noalias !206524
  %i.fo = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !206600
  br i1 %i.fo, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_18agg_first_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !206610

.else.i.i.i:                                      ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !206611
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.fp, align 4, !dbg !206610, !noalias !206491, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_18agg_first_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !206610

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_18agg_first_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.fq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !206612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !206613, !noalias !206524
  call void @llvm.experimental.noalias.scope.decl(metadata !206614), !dbg !206617, !noalias !206184
  %i.fr = zext i1 %i.fq to i64, !dbg !206619
  %i.fs = load i64, ptr %i.dw, align 8, !dbg !206621, !alias.scope !206622, !noalias !206491, !noundef !14 ; 2 uses
  %i.ft = and i64 %i.fs, 63, !dbg !206623
  %i.fu = shl nuw i64 %i.fr, %i.ft, !dbg !206619
  %i.fv = load i64, ptr %i.eo, align 8, !dbg !206624, !alias.scope !206622, !noalias !206491, !noundef !14
  %i.fw = or i64 %i.fu, %i.fv, !dbg !206624       ; 3 uses
  store i64 %i.fw, ptr %i.eo, align 8, !dbg !206624, !alias.scope !206622, !noalias !206491
  %i.fx = add i64 %i.fs, 1, !dbg !206625          ; 2 uses
  store i64 %i.fx, ptr %i.dw, align 8, !dbg !206625, !alias.scope !206622, !noalias !206491
  %i.fy = and i64 %i.fx, 63, !dbg !206626
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !206626
  br i1 %i.fz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !206628

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_18agg_first_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ga = load i64, ptr %i.ep, align 8, !dbg !206629, !alias.scope !206622, !noalias !206491, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !206632
  call void @llvm.assume(i1 %i.gb), !dbg !206633, !noalias !206184
  %i.gc = load ptr, ptr %i.eq, align 8, !dbg !206634, !alias.scope !206622, !noalias !206491, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga, !dbg !206639
  store i64 %i.fw, ptr %i.gd, align 1, !dbg !206641, !noalias !206645
  %i.ge = add nuw i64 %i.ga, 8, !dbg !206646
  store i64 %i.ge, ptr %i.ep, align 8, !dbg !206647, !alias.scope !206622, !noalias !206491
  %i.gf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw), !dbg !206649
  %i.gg = load i64, ptr %i.er, align 8, !dbg !206651, !alias.scope !206622, !noalias !206491, !noundef !14
  %i.gh = add i64 %i.gg, %i.gf, !dbg !206651
  store i64 %i.gh, ptr %i.er, align 8, !dbg !206651, !alias.scope !206622, !noalias !206491
  store i64 0, ptr %i.eo, align 8, !dbg !206652, !alias.scope !206622, !noalias !206491
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !206653

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_18agg_first_non_null0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre105 = load i64, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !206509, !alias.scope !206595, !noalias !206596
  br label %bb.au, !dbg !206617

bb.bb:                                            ; preds = %.noexc34, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !206613, !noalias !206524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !206654, !noalias !206505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !206655, !noalias !206158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !206656, !noalias !206158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !206656, !noalias !206158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !206656, !noalias !206158
  %i.gi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !206657, !noalias !206184 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206658), !dbg !206661
  call void @llvm.experimental.noalias.scope.decl(metadata !206662), !dbg !206665, !noalias !206184
  call void @llvm.experimental.noalias.scope.decl(metadata !206667), !dbg !206670, !noalias !206184
  %i.gk = load ptr, ptr %i.h, align 8, !dbg !206672, !alias.scope !206676, !noalias !206184, !nonnull !14, !noundef !14
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !dbg !206677, !noalias !206680
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !206681
  br i1 %i.gm, label %bb.bd, label %.thread68, !dbg !206681

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !206682, !noalias !206184
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread68 unwind label %bb.bw, !dbg !206684

bb.be:                                            ; preds = %bb.bb
  %i.gn = extractvalue { ptr, ptr } %i.gi, 0, !dbg !206656 ; 3 uses
  %i.go = extractvalue { ptr, ptr } %i.gi, 1, !dbg !206656 ; 4 uses
  store ptr %i.gn, ptr %i.h, align 8, !dbg !206656, !noalias !206158
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !206656
  store ptr %i.go, ptr %i.gp, align 8, !dbg !206656, !noalias !206158
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !206685
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !206685, !range !1489, !invariant.load !14
  %i.gs = add nsw i64 %i.gr, -1, !dbg !206685
  %i.gt = and i64 %i.gs, -16, !dbg !206685
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt, !dbg !206685
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !206685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !206689, !noalias !206158
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 456, !dbg !206656
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !206656, !invariant.load !14, !noalias !206184, !nonnull !14
  %i.gy = invoke { ptr, ptr } %i.gx(ptr noundef nonnull %i.gv)
          to label %bb.bf unwind label %bb.bc, !dbg !206690, !noalias !206184 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0, !dbg !206656
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1, !dbg !206656
  store ptr %i.gz, ptr %i.i, align 8, !dbg !206656, !noalias !206158
end_hunk_2
begin_hunk_3_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column6agg_or:bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208941), !dbg !208896
  call void @llvm.experimental.noalias.scope.decl(metadata !208944), !dbg !208947, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !208949), !dbg !208952, !noalias !208847
  %i.bz = load ptr, ptr %i.q, align 8, !dbg !208954, !alias.scope !208958, !noalias !208847, !nonnull !14, !noundef !14
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !208959, !noalias !208962
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !208963
  br i1 %i.cb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !208963

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !208964, !noalias !208847
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24 unwind label %bb.bw, !dbg !208966

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column6agg_or0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !208896, !noalias !208809
  call void @llvm.experimental.noalias.scope.decl(metadata !208967), !dbg !208896
  call void @llvm.experimental.noalias.scope.decl(metadata !208970), !dbg !208973, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !208975), !dbg !208978, !noalias !208847
  %i.cc = load ptr, ptr %i.q, align 8, !dbg !208980, !alias.scope !208984, !noalias !208847, !nonnull !14, !noundef !14
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !208985, !noalias !208988
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !208989
  br i1 %i.ce, label %bb.p, label %bb.s, !dbg !208989

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !208990, !noalias !208847
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !208992

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.by, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.ci, %bb.r ], [ %.pn18.pn.pn.i68, %.thread ], [ %.pn18.pn.i79, %bb.v ], [ %i.by, %bb.n ], [ %i.kn, %bb.cf ], [ %i.kn, %bb.ce ], [ %.pn18.i85, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208993), !dbg !208996
  call void @llvm.experimental.noalias.scope.decl(metadata !208997), !dbg !209000, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !209002), !dbg !209005, !noalias !208847
  %i.cf = load ptr, ptr %i.r, align 8, !dbg !209007, !alias.scope !209011, !noalias !208847, !nonnull !14, !noundef !14
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !209012, !noalias !209015
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !209016
  br i1 %i.ch, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !209016

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24
  fence acquire, !dbg !209017, !noalias !208847
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !209019

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !208896, !noalias !208809
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !209020, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.bx, align 8, !dbg !209020, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !209022
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !209022, !range !1489, !invariant.load !14
  %i.cl = add nsw i64 %i.ck, -1, !dbg !209022
  %i.cm = and i64 %i.cl, -16, !dbg !209022
  %i.cn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.cm, !dbg !209022
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !209022
  %i.cp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !209020
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !209020, !invariant.load !14, !noalias !208847, !nonnull !14
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull %i.co)
          to label %bb.t unwind label %bb.r, !dbg !209026, !noalias !208847

bb.t:                                             ; preds = %bb.s
  br i1 %i.cr, label %bb.bx, label %bb.u, !dbg !209020

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !209027, !noalias !208809
  %i.cs = load i64, ptr %2, align 8, !dbg !209028, !range !1781, !alias.scope !209030, !noalias !208847, !noundef !14
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808, !dbg !209028 ; 3 uses
  %..i = select i1 %i.ct, i64 24, i64 16, !dbg !209033
  %.6.i = select i1 %i.ct, i64 1152921504606846976, i64 2305843009213693952, !dbg !209033
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !209033
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !209033, !alias.scope !209030, !noalias !208847, !noundef !14 ; 8 uses
  %i.cw = icmp ult i64 %i.cv, %.6.i, !dbg !209033
  call void @llvm.assume(i1 %i.cw), !dbg !209033, !noalias !208847
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.r, !dbg !209034, !noalias !208847

bb.v:                                             ; preds = %.thread74
  br i1 %.sroa.09.3.i78, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !209035

bb.w:                                             ; preds = %bb.ab, %.loopexit99, %bb.aa, %bb.y, %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !209036, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.bx, align 8, !dbg !209036, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !209038
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !209038, !range !1489, !invariant.load !14
  %i.da = add nsw i64 %i.cz, -1, !dbg !209038
  %i.db = and i64 %i.da, -16, !dbg !209038
  %i.dc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.db, !dbg !209038
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !209038
  %i.de = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !209036
  %i.df = load ptr, ptr %i.de, align 8, !dbg !209036, !invariant.load !14, !noalias !208847, !nonnull !14
  %i.dg = invoke noundef nonnull align 16 ptr %i.df(ptr noundef nonnull %i.dd)
          to label %bb.y unwind label %bb.w, !dbg !209042, !noalias !208847

bb.y:                                             ; preds = %bb.x
  %i.dh = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !209043, !noalias !208847

bb.z:                                             ; preds = %bb.y
  br i1 %i.dh, label %bb.aj, label %bb.aa, !dbg !209036

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !209048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !209048, !noalias !208809
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !209049, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.bx, align 8, !dbg !209049, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !209050
  %i.dj = load i64, ptr %i.di, align 8, !dbg !209050, !range !1489, !invariant.load !14
  %i.dk = add nsw i64 %i.dj, -1, !dbg !209050
  %i.dl = and i64 %i.dk, -16, !dbg !209050
  %i.dm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.dl, !dbg !209050
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16, !dbg !209050
  %i.do = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !209049
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !209049, !invariant.load !14, !noalias !208847, !nonnull !14
  %i.dq = invoke noundef nonnull align 16 ptr %i.dp(ptr noundef nonnull %i.dn)
          to label %bb.ab unwind label %bb.w, !dbg !209054, !noalias !208847

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !209055

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !209057), !dbg !209060
  call void @llvm.experimental.noalias.scope.decl(metadata !209061), !dbg !209060
  %i.dr = load i8, ptr %i.k, align 16, !dbg !209063, !range !157009, !alias.scope !209061, !noalias !209065, !noundef !14
  %i.ds = icmp eq i8 %i.dr, 31, !dbg !209063
  br i1 %i.ds, label %bb.ac, label %bb.ag, !dbg !209066, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !209067, !noalias !209068
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !209067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dt, i64 72, i1 false), !dbg !209067, !noalias !209065
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !209069, !noalias !209068

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !209070, !noalias !209068

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !209071, !noalias !209068
  unreachable, !dbg !209071

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !209072, !alias.scope !209073, !noalias !208847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !209074, !noalias !208809
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !209075, !noalias !208847

bb.ah:                                            ; preds = %bb.ag
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !209075, !noalias !208809
  br label %.thread, !dbg !209074

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !209075, !noalias !208809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !209074
  br label %bb.aj, !dbg !209076

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.cv, 0, !dbg !209077
  br i1 %.not.i28.i.not, label %.loopexit100, label %.lr.ph.i, !dbg !209077

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.ct, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !209086, !nonnull !14, !noundef !14
  %i.ea = load i64, ptr %i.dx, align 8, !noalias !209086, !noundef !14
  br label %.thread.us.i, !dbg !209077

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.eb = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.ef, %bb.ak ] ; 4 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea, !dbg !209093
  call void @llvm.assume(i1 %i.ec), !dbg !209096, !noalias !208847
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb, !dbg !209097
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.ed, align 4, !dbg !209098, !noalias !209086
  %i.ee = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !209099
  br i1 %i.ee, label %.loopexit99, label %bb.ak, !dbg !209106

bb.ak:                                            ; preds = %.thread.us.i
  %i.ef = add nuw i64 %i.eb, 1, !dbg !209107      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ef, %i.cv, !dbg !209077
  br i1 %exitcond45.not.i, label %.loopexit100, label %.thread.us.i, !dbg !209077

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !209086, !noundef !14
  %i.ek = load ptr, ptr %i.eh, align 8, !noalias !209086, !nonnull !14, !noundef !14
  %i.el = load i64, ptr %i.eg, align 8, !noalias !209086, !noundef !14
  br label %.else.i, !dbg !209077

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.em = phi i64 [ 0, %.lr.ph.split.i ], [ %i.es, %bb.al ] ; 5 uses
  %i.en = icmp ult i64 %i.em, %i.ej, !dbg !209108
  call void @llvm.assume(i1 %i.en), !dbg !209112, !noalias !208847
  %i.eo = icmp ult i64 %i.em, %i.el, !dbg !209113
  call void @llvm.assume(i1 %i.eo), !dbg !209116, !noalias !208847
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.em, !dbg !209117
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.eq, align 4, !dbg !209106, !noalias !209118
  %i.er = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !209099
  br i1 %i.er, label %.loopexit99, label %bb.al, !dbg !209106

bb.al:                                            ; preds = %.else.i
  %i.es = add nuw i64 %i.em, 1, !dbg !209107      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.cv, !dbg !209077
  br i1 %exitcond.not.i, label %.loopexit100, label %.else.i, !dbg !209077

.loopexit100:                                     ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !209119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !209035, !noalias !208809
  br label %bb.am, !dbg !209120

bb.am:                                            ; preds = %bb.cd, %.loopexit100
  call void @llvm.experimental.noalias.scope.decl(metadata !209122), !dbg !208996
  call void @llvm.experimental.noalias.scope.decl(metadata !209125), !dbg !209128, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !209130), !dbg !209133, !noalias !208847
  %i.et = load ptr, ptr %i.r, align 8, !dbg !209135, !alias.scope !209139, !noalias !208847, !nonnull !14, !noundef !14
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !dbg !209140, !noalias !209143
  %i.ev = icmp eq i64 %i.eu, 1, !dbg !209144
  br i1 %i.ev, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !209144

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !209145, !noalias !208847
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !209147, !noalias !208847
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !209147

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !208996, !noalias !208809
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_6agg_or0EB7_.exit, !dbg !209148

.loopexit99:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.eb, %.thread.us.i ], [ %i.em, %.else.i ], !dbg !209150 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !209151, !noalias !208809
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.cv)
          to label %bb.ao unwind label %bb.w, !dbg !209153, !noalias !208847

bb.ao:                                            ; preds = %.loopexit99
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !209154 ; 5 uses
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !209154, !noalias !208809, !noundef !14 ; 2 uses
  %i.ey = and i64 %i.ex, 63, !dbg !209154         ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.3.0.i, !dbg !209158
  %i.fa = icmp ult i64 %i.ez, 64, !dbg !209158
  br i1 %i.fa, label %bb.aq, label %bb.ap, !dbg !209158, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !209160, !noalias !208847

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.ew, align 8, !dbg !209161, !alias.scope !209167, !noalias !209170
  br label %bb.as, !dbg !209160

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !209172
  %notmask.i = shl nsw i64 -1, %3, !dbg !209172
  %i.fb = xor i64 %notmask.i, -1, !dbg !209172
  %i.fc = shl i64 %i.fb, %i.ey, !dbg !209173
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !209175 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !209175, !noalias !208809, !noundef !14
  %i.ff = or i64 %i.fe, %i.fc, !dbg !209175
  store i64 %i.ff, ptr %i.fd, align 8, !dbg !209175, !noalias !208809
  %i.fg = add i64 %i.ex, %.sroa.3.0.i, !dbg !209176 ; 2 uses
  store i64 %i.fg, ptr %i.ew, align 8, !dbg !209176, !noalias !208809
  br label %bb.as, !dbg !209177

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !209178

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.fh = phi i64 [ %.pre, %._crit_edge ], [ %i.fg, %bb.aq ], !dbg !209161
  %i.fi = sub i64 %i.cv, %.sroa.3.0.i, !dbg !209179 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209167), !dbg !209180
  %i.fj = add i64 %i.fh, %i.fi, !dbg !209161
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !209181
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !209181, !alias.scope !209167, !noalias !209170, !noundef !14
  %i.fm = icmp ugt i64 %i.fj, %i.fl, !dbg !209161
  br i1 %i.fm, label %bb.at, label %.noexc39, !dbg !209161, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.fi)
          to label %.noexc39 unwind label %.loopexit.split-lp, !dbg !209182

.noexc39:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !209183, !noalias !209184
  store ptr %2, ptr %i.b, align 8, !dbg !209183, !noalias !209185
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !209183 ; 2 uses
  store i64 %i.cv, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !209183, !noalias !209185
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !209183 ; 3 uses
  store i64 0, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !209183, !noalias !209185
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !209183 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !209183, !noalias !209185
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !209183
  store i64 %i.fi, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !209183, !noalias !209185
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !209186

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc39
  %i.fs = phi i64 [ %.pre111, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc39 ], !dbg !209188 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209194), !dbg !209197, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !209198), !dbg !209201, !noalias !208847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !209202, !noalias !209203
  call void @llvm.experimental.noalias.scope.decl(metadata !209204), !dbg !209207, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !209208), !dbg !209207, !noalias !208847
  %.not.i.i.i.i = icmp eq i64 %i.fs, 0, !dbg !209188
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !209210, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !209212), !dbg !209215, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !209216), !dbg !209215, !noalias !208847
  %i.ft = load i64, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !209218, !alias.scope !209220, !noalias !209221, !noundef !14 ; 7 uses
  %i.fu = load i64, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !209222, !alias.scope !209220, !noalias !209221, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.ft, %i.fu, !dbg !209218
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !209218

bb.aw:                                            ; preds = %bb.av
  %i.fv = load ptr, ptr %i.b, align 8, !dbg !209223, !alias.scope !209220, !noalias !209221, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !209223, !range !1781, !noalias !209224, !noundef !14
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808, !dbg !209223
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16, !dbg !209225 ; 2 uses
  br i1 %i.fx, label %bb.ax, label %bb.ay, !dbg !209226

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !209227, !noalias !209224, !nonnull !14, !noundef !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24, !dbg !209234
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !209234, !noalias !209224, !noundef !14
  %i.gc = icmp ult i64 %i.ft, %i.gb, !dbg !209235
  call void @llvm.assume(i1 %i.gc), !dbg !209238, !noalias !208847
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ft, !dbg !209239
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.gd, align 4, !dbg !209240, !noalias !209224
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.fn, align 8, !dbg !209241, !alias.scope !209242, !noalias !209243
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !209244

bb.ay:                                            ; preds = %bb.aw
  %i.ge = load i64, ptr %i.fy, align 8, !dbg !209245, !noalias !209224, !noundef !14
  %i.gf = icmp ult i64 %i.ft, %i.ge, !dbg !209249
  call void @llvm.assume(i1 %i.gf), !dbg !209252, !noalias !208847
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32, !dbg !209253
  %i.gh = load ptr, ptr %i.gg, align 8, !dbg !209253, !noalias !209224, !nonnull !14, !noundef !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 40, !dbg !209260
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !209260, !noalias !209224, !noundef !14
  %i.gk = icmp ult i64 %i.ft, %i.gj, !dbg !209261
  call void @llvm.assume(i1 %i.gk), !dbg !209264, !noalias !208847
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ft, !dbg !209265
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !209266

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.gl, %bb.ay ], !dbg !209225 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !209225, !alias.scope !209242, !noalias !209243
  %i.gm = add nuw i64 %i.ft, 1, !dbg !209267
  store i64 %i.gm, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !209267, !alias.scope !209220, !noalias !209221
  br label %bb.az, !dbg !209268

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !209271, !alias.scope !209274, !noalias !209275
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.fs)
          to label %.noexc40 unwind label %.loopexit, !dbg !209276

.noexc40:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !209277, !range !16, !noalias !209203
  %i.gn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !209268
  br i1 %i.gn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !209268

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc40
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !209278, !noalias !209203
  br label %bb.az, !dbg !209268

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !209278 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !209278, !noalias !209203
  %i.go = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !209279
  br i1 %i.go, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_6agg_or0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !209289

.else.i.i.i:                                      ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !209290
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.gp, align 4, !dbg !209289, !noalias !209170, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_6agg_or0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !209289

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_6agg_or0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.gq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !209291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !209292, !noalias !209203
  call void @llvm.experimental.noalias.scope.decl(metadata !209293), !dbg !209296, !noalias !208847
  %i.gr = zext i1 %i.gq to i64, !dbg !209298
  %i.gs = load i64, ptr %i.ew, align 8, !dbg !209300, !alias.scope !209301, !noalias !209170, !noundef !14 ; 2 uses
  %i.gt = and i64 %i.gs, 63, !dbg !209302
  %i.gu = shl nuw i64 %i.gr, %i.gt, !dbg !209298
  %i.gv = load i64, ptr %i.fo, align 8, !dbg !209303, !alias.scope !209301, !noalias !209170, !noundef !14
  %i.gw = or i64 %i.gu, %i.gv, !dbg !209303       ; 3 uses
  store i64 %i.gw, ptr %i.fo, align 8, !dbg !209303, !alias.scope !209301, !noalias !209170
  %i.gx = add i64 %i.gs, 1, !dbg !209304          ; 2 uses
  store i64 %i.gx, ptr %i.ew, align 8, !dbg !209304, !alias.scope !209301, !noalias !209170
  %i.gy = and i64 %i.gx, 63, !dbg !209305
  %i.gz = icmp eq i64 %i.gy, 0, !dbg !209305
  br i1 %i.gz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !209307

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_6agg_or0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ha = load i64, ptr %i.fp, align 8, !dbg !209308, !alias.scope !209301, !noalias !209170, !noundef !14 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1, !dbg !209311
  call void @llvm.assume(i1 %i.hb), !dbg !209312, !noalias !208847
  %i.hc = load ptr, ptr %i.fq, align 8, !dbg !209313, !alias.scope !209301, !noalias !209170, !nonnull !14, !noundef !14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha, !dbg !209318
  store i64 %i.gw, ptr %i.hd, align 1, !dbg !209320, !noalias !209324
  %i.he = add nuw i64 %i.ha, 8, !dbg !209325
  store i64 %i.he, ptr %i.fp, align 8, !dbg !209326, !alias.scope !209301, !noalias !209170
  %i.hf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gw), !dbg !209328
  %i.hg = load i64, ptr %i.fr, align 8, !dbg !209330, !alias.scope !209301, !noalias !209170, !noundef !14
  %i.hh = add i64 %i.hg, %i.hf, !dbg !209330
  store i64 %i.hh, ptr %i.fr, align 8, !dbg !209330, !alias.scope !209301, !noalias !209170
  store i64 0, ptr %i.fo, align 8, !dbg !209331, !alias.scope !209301, !noalias !209170
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !209332

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_6agg_or0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre111 = load i64, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !209188, !alias.scope !209274, !noalias !209275
  br label %bb.au, !dbg !209296

bb.bb:                                            ; preds = %.noexc40, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !209292, !noalias !209203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !209333, !noalias !209184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !209334, !noalias !208809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !209335, !noalias !208809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !209335, !noalias !208809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !209335, !noalias !208809
  %i.hi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !209336, !noalias !208847 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209337), !dbg !209340
  call void @llvm.experimental.noalias.scope.decl(metadata !209341), !dbg !209344, !noalias !208847
  call void @llvm.experimental.noalias.scope.decl(metadata !209346), !dbg !209349, !noalias !208847
  %i.hk = load ptr, ptr %i.h, align 8, !dbg !209351, !alias.scope !209355, !noalias !208847, !nonnull !14, !noundef !14
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !dbg !209356, !noalias !209359
  %i.hm = icmp eq i64 %i.hl, 1, !dbg !209360
  br i1 %i.hm, label %bb.bd, label %.thread74, !dbg !209360

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !209361, !noalias !208847
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread74 unwind label %bb.bw, !dbg !209363

bb.be:                                            ; preds = %bb.bb
  %i.hn = extractvalue { ptr, ptr } %i.hi, 0, !dbg !209335 ; 3 uses
  %i.ho = extractvalue { ptr, ptr } %i.hi, 1, !dbg !209335 ; 4 uses
  store ptr %i.hn, ptr %i.h, align 8, !dbg !209335, !noalias !208809
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !209335
  store ptr %i.ho, ptr %i.hp, align 8, !dbg !209335, !noalias !208809
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16, !dbg !209364
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !209364, !range !1489, !invariant.load !14
  %i.hs = add nsw i64 %i.hr, -1, !dbg !209364
  %i.ht = and i64 %i.hs, -16, !dbg !209364
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ht, !dbg !209364
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16, !dbg !209364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !209368, !noalias !208809
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 456, !dbg !209335
  %i.hx = load ptr, ptr %i.hw, align 8, !dbg !209335, !invariant.load !14, !noalias !208847, !nonnull !14
  %i.hy = invoke { ptr, ptr } %i.hx(ptr noundef nonnull %i.hv)
          to label %bb.bf unwind label %bb.bc, !dbg !209369, !noalias !208847 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0, !dbg !209335
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1, !dbg !209335
  store ptr %i.hz, ptr %i.i, align 8, !dbg !209335, !noalias !208809
end_hunk_3
begin_hunk_4_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column7agg_and:bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211189), !dbg !211144
  call void @llvm.experimental.noalias.scope.decl(metadata !211192), !dbg !211195, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211197), !dbg !211200, !noalias !211095
  %i.bz = load ptr, ptr %i.q, align 8, !dbg !211202, !alias.scope !211206, !noalias !211095, !nonnull !14, !noundef !14
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !211207, !noalias !211210
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !211211
  br i1 %i.cb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !211211

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !211212, !noalias !211095
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24 unwind label %bb.bw, !dbg !211214

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column7agg_and0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !211144, !noalias !211057
  call void @llvm.experimental.noalias.scope.decl(metadata !211215), !dbg !211144
  call void @llvm.experimental.noalias.scope.decl(metadata !211218), !dbg !211221, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211223), !dbg !211226, !noalias !211095
  %i.cc = load ptr, ptr %i.q, align 8, !dbg !211228, !alias.scope !211232, !noalias !211095, !nonnull !14, !noundef !14
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !211233, !noalias !211236
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !211237
  br i1 %i.ce, label %bb.p, label %bb.s, !dbg !211237

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !211238, !noalias !211095
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !211240

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.by, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.ci, %bb.r ], [ %.pn18.pn.pn.i68, %.thread ], [ %.pn18.pn.i79, %bb.v ], [ %i.by, %bb.n ], [ %i.kn, %bb.cf ], [ %i.kn, %bb.ce ], [ %.pn18.i85, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211241), !dbg !211244
  call void @llvm.experimental.noalias.scope.decl(metadata !211245), !dbg !211248, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211250), !dbg !211253, !noalias !211095
  %i.cf = load ptr, ptr %i.r, align 8, !dbg !211255, !alias.scope !211259, !noalias !211095, !nonnull !14, !noundef !14
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !211260, !noalias !211263
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !211264
  br i1 %i.ch, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !211264

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24
  fence acquire, !dbg !211265, !noalias !211095
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !211267

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !211144, !noalias !211057
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !211268, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.bx, align 8, !dbg !211268, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !211270
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !211270, !range !1489, !invariant.load !14
  %i.cl = add nsw i64 %i.ck, -1, !dbg !211270
  %i.cm = and i64 %i.cl, -16, !dbg !211270
  %i.cn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.cm, !dbg !211270
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !211270
  %i.cp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !211268
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !211268, !invariant.load !14, !noalias !211095, !nonnull !14
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull %i.co)
          to label %bb.t unwind label %bb.r, !dbg !211274, !noalias !211095

bb.t:                                             ; preds = %bb.s
  br i1 %i.cr, label %bb.bx, label %bb.u, !dbg !211268

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !211275, !noalias !211057
  %i.cs = load i64, ptr %2, align 8, !dbg !211276, !range !1781, !alias.scope !211278, !noalias !211095, !noundef !14
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808, !dbg !211276 ; 3 uses
  %..i = select i1 %i.ct, i64 24, i64 16, !dbg !211281
  %.6.i = select i1 %i.ct, i64 1152921504606846976, i64 2305843009213693952, !dbg !211281
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !211281
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !211281, !alias.scope !211278, !noalias !211095, !noundef !14 ; 8 uses
  %i.cw = icmp ult i64 %i.cv, %.6.i, !dbg !211281
  call void @llvm.assume(i1 %i.cw), !dbg !211281, !noalias !211095
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.r, !dbg !211282, !noalias !211095

bb.v:                                             ; preds = %.thread74
  br i1 %.sroa.09.3.i78, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !211283

bb.w:                                             ; preds = %bb.ab, %.loopexit99, %bb.aa, %bb.y, %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !211284, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.bx, align 8, !dbg !211284, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !211286
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !211286, !range !1489, !invariant.load !14
  %i.da = add nsw i64 %i.cz, -1, !dbg !211286
  %i.db = and i64 %i.da, -16, !dbg !211286
  %i.dc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.db, !dbg !211286
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !211286
  %i.de = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !211284
  %i.df = load ptr, ptr %i.de, align 8, !dbg !211284, !invariant.load !14, !noalias !211095, !nonnull !14
  %i.dg = invoke noundef nonnull align 16 ptr %i.df(ptr noundef nonnull %i.dd)
          to label %bb.y unwind label %bb.w, !dbg !211290, !noalias !211095

bb.y:                                             ; preds = %bb.x
  %i.dh = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !211291, !noalias !211095

bb.z:                                             ; preds = %bb.y
  br i1 %i.dh, label %bb.aj, label %bb.aa, !dbg !211284

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !211296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !211296, !noalias !211057
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !211297, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.bx, align 8, !dbg !211297, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !211298
  %i.dj = load i64, ptr %i.di, align 8, !dbg !211298, !range !1489, !invariant.load !14
  %i.dk = add nsw i64 %i.dj, -1, !dbg !211298
  %i.dl = and i64 %i.dk, -16, !dbg !211298
  %i.dm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.dl, !dbg !211298
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16, !dbg !211298
  %i.do = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !211297
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !211297, !invariant.load !14, !noalias !211095, !nonnull !14
  %i.dq = invoke noundef nonnull align 16 ptr %i.dp(ptr noundef nonnull %i.dn)
          to label %bb.ab unwind label %bb.w, !dbg !211302, !noalias !211095

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !211303

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !211305), !dbg !211308
  call void @llvm.experimental.noalias.scope.decl(metadata !211309), !dbg !211308
  %i.dr = load i8, ptr %i.k, align 16, !dbg !211311, !range !157009, !alias.scope !211309, !noalias !211313, !noundef !14
  %i.ds = icmp eq i8 %i.dr, 31, !dbg !211311
  br i1 %i.ds, label %bb.ac, label %bb.ag, !dbg !211314, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !211315, !noalias !211316
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !211315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dt, i64 72, i1 false), !dbg !211315, !noalias !211313
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !211317, !noalias !211316

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !211318, !noalias !211316

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !211319, !noalias !211316
  unreachable, !dbg !211319

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !211320, !alias.scope !211321, !noalias !211095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !211322, !noalias !211057
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !211323, !noalias !211095

bb.ah:                                            ; preds = %bb.ag
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !211323, !noalias !211057
  br label %.thread, !dbg !211322

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !211323, !noalias !211057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !211322
  br label %bb.aj, !dbg !211324

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.cv, 0, !dbg !211325
  br i1 %.not.i28.i.not, label %.loopexit100, label %.lr.ph.i, !dbg !211325

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.ct, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !211334, !nonnull !14, !noundef !14
  %i.ea = load i64, ptr %i.dx, align 8, !noalias !211334, !noundef !14
  br label %.thread.us.i, !dbg !211325

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.eb = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.ef, %bb.ak ] ; 4 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea, !dbg !211341
  call void @llvm.assume(i1 %i.ec), !dbg !211344, !noalias !211095
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb, !dbg !211345
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.ed, align 4, !dbg !211346, !noalias !211334
  %i.ee = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !211347
  br i1 %i.ee, label %.loopexit99, label %bb.ak, !dbg !211354

bb.ak:                                            ; preds = %.thread.us.i
  %i.ef = add nuw i64 %i.eb, 1, !dbg !211355      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ef, %i.cv, !dbg !211325
  br i1 %exitcond45.not.i, label %.loopexit100, label %.thread.us.i, !dbg !211325

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !211334, !noundef !14
  %i.ek = load ptr, ptr %i.eh, align 8, !noalias !211334, !nonnull !14, !noundef !14
  %i.el = load i64, ptr %i.eg, align 8, !noalias !211334, !noundef !14
  br label %.else.i, !dbg !211325

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.em = phi i64 [ 0, %.lr.ph.split.i ], [ %i.es, %bb.al ] ; 5 uses
  %i.en = icmp ult i64 %i.em, %i.ej, !dbg !211356
  call void @llvm.assume(i1 %i.en), !dbg !211360, !noalias !211095
  %i.eo = icmp ult i64 %i.em, %i.el, !dbg !211361
  call void @llvm.assume(i1 %i.eo), !dbg !211364, !noalias !211095
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.em, !dbg !211365
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.eq, align 4, !dbg !211354, !noalias !211366
  %i.er = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !211347
  br i1 %i.er, label %.loopexit99, label %bb.al, !dbg !211354

bb.al:                                            ; preds = %.else.i
  %i.es = add nuw i64 %i.em, 1, !dbg !211355      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.cv, !dbg !211325
  br i1 %exitcond.not.i, label %.loopexit100, label %.else.i, !dbg !211325

.loopexit100:                                     ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !211367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !211283, !noalias !211057
  br label %bb.am, !dbg !211368

bb.am:                                            ; preds = %bb.cd, %.loopexit100
  call void @llvm.experimental.noalias.scope.decl(metadata !211370), !dbg !211244
  call void @llvm.experimental.noalias.scope.decl(metadata !211373), !dbg !211376, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211378), !dbg !211381, !noalias !211095
  %i.et = load ptr, ptr %i.r, align 8, !dbg !211383, !alias.scope !211387, !noalias !211095, !nonnull !14, !noundef !14
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !dbg !211388, !noalias !211391
  %i.ev = icmp eq i64 %i.eu, 1, !dbg !211392
  br i1 %i.ev, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !211392

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !211393, !noalias !211095
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !211395, !noalias !211095
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !211395

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !211244, !noalias !211057
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_7agg_and0EB7_.exit, !dbg !211396

.loopexit99:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.eb, %.thread.us.i ], [ %i.em, %.else.i ], !dbg !211398 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !211399, !noalias !211057
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.cv)
          to label %bb.ao unwind label %bb.w, !dbg !211401, !noalias !211095

bb.ao:                                            ; preds = %.loopexit99
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !211402 ; 5 uses
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !211402, !noalias !211057, !noundef !14 ; 2 uses
  %i.ey = and i64 %i.ex, 63, !dbg !211402         ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.3.0.i, !dbg !211406
  %i.fa = icmp ult i64 %i.ez, 64, !dbg !211406
  br i1 %i.fa, label %bb.aq, label %bb.ap, !dbg !211406, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !211408, !noalias !211095

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.ew, align 8, !dbg !211409, !alias.scope !211415, !noalias !211418
  br label %bb.as, !dbg !211408

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !211420
  %notmask.i = shl nsw i64 -1, %3, !dbg !211420
  %i.fb = xor i64 %notmask.i, -1, !dbg !211420
  %i.fc = shl i64 %i.fb, %i.ey, !dbg !211421
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !211423 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !211423, !noalias !211057, !noundef !14
  %i.ff = or i64 %i.fe, %i.fc, !dbg !211423
  store i64 %i.ff, ptr %i.fd, align 8, !dbg !211423, !noalias !211057
  %i.fg = add i64 %i.ex, %.sroa.3.0.i, !dbg !211424 ; 2 uses
  store i64 %i.fg, ptr %i.ew, align 8, !dbg !211424, !noalias !211057
  br label %bb.as, !dbg !211425

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !211426

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.fh = phi i64 [ %.pre, %._crit_edge ], [ %i.fg, %bb.aq ], !dbg !211409
  %i.fi = sub i64 %i.cv, %.sroa.3.0.i, !dbg !211427 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211415), !dbg !211428
  %i.fj = add i64 %i.fh, %i.fi, !dbg !211409
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !211429
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !211429, !alias.scope !211415, !noalias !211418, !noundef !14
  %i.fm = icmp ugt i64 %i.fj, %i.fl, !dbg !211409
  br i1 %i.fm, label %bb.at, label %.noexc39, !dbg !211409, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.fi)
          to label %.noexc39 unwind label %.loopexit.split-lp, !dbg !211430

.noexc39:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !211431, !noalias !211432
  store ptr %2, ptr %i.b, align 8, !dbg !211431, !noalias !211433
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !211431 ; 2 uses
  store i64 %i.cv, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !211431, !noalias !211433
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !211431 ; 3 uses
  store i64 0, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !211431, !noalias !211433
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !211431 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !211431, !noalias !211433
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !211431
  store i64 %i.fi, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !211431, !noalias !211433
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !211434

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc39
  %i.fs = phi i64 [ %.pre111, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc39 ], !dbg !211436 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211442), !dbg !211445, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211446), !dbg !211449, !noalias !211095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !211450, !noalias !211451
  call void @llvm.experimental.noalias.scope.decl(metadata !211452), !dbg !211455, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211456), !dbg !211455, !noalias !211095
  %.not.i.i.i.i = icmp eq i64 %i.fs, 0, !dbg !211436
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !211458, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !211460), !dbg !211463, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211464), !dbg !211463, !noalias !211095
  %i.ft = load i64, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !211466, !alias.scope !211468, !noalias !211469, !noundef !14 ; 7 uses
  %i.fu = load i64, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !211470, !alias.scope !211468, !noalias !211469, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.ft, %i.fu, !dbg !211466
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !211466

bb.aw:                                            ; preds = %bb.av
  %i.fv = load ptr, ptr %i.b, align 8, !dbg !211471, !alias.scope !211468, !noalias !211469, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !211471, !range !1781, !noalias !211472, !noundef !14
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808, !dbg !211471
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16, !dbg !211473 ; 2 uses
  br i1 %i.fx, label %bb.ax, label %bb.ay, !dbg !211474

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !211475, !noalias !211472, !nonnull !14, !noundef !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24, !dbg !211482
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !211482, !noalias !211472, !noundef !14
  %i.gc = icmp ult i64 %i.ft, %i.gb, !dbg !211483
  call void @llvm.assume(i1 %i.gc), !dbg !211486, !noalias !211095
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ft, !dbg !211487
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.gd, align 4, !dbg !211488, !noalias !211472
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.fn, align 8, !dbg !211489, !alias.scope !211490, !noalias !211491
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !211492

bb.ay:                                            ; preds = %bb.aw
  %i.ge = load i64, ptr %i.fy, align 8, !dbg !211493, !noalias !211472, !noundef !14
  %i.gf = icmp ult i64 %i.ft, %i.ge, !dbg !211497
  call void @llvm.assume(i1 %i.gf), !dbg !211500, !noalias !211095
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32, !dbg !211501
  %i.gh = load ptr, ptr %i.gg, align 8, !dbg !211501, !noalias !211472, !nonnull !14, !noundef !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 40, !dbg !211508
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !211508, !noalias !211472, !noundef !14
  %i.gk = icmp ult i64 %i.ft, %i.gj, !dbg !211509
  call void @llvm.assume(i1 %i.gk), !dbg !211512, !noalias !211095
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ft, !dbg !211513
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !211514

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.gl, %bb.ay ], !dbg !211473 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !211473, !alias.scope !211490, !noalias !211491
  %i.gm = add nuw i64 %i.ft, 1, !dbg !211515
  store i64 %i.gm, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !211515, !alias.scope !211468, !noalias !211469
  br label %bb.az, !dbg !211516

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !211519, !alias.scope !211522, !noalias !211523
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.fs)
          to label %.noexc40 unwind label %.loopexit, !dbg !211524

.noexc40:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !211525, !range !16, !noalias !211451
  %i.gn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !211516
  br i1 %i.gn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !211516

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc40
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !211526, !noalias !211451
  br label %bb.az, !dbg !211516

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !211526 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !211526, !noalias !211451
  %i.go = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !211527
  br i1 %i.go, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_and0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !211537

.else.i.i.i:                                      ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !211538
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.gp, align 4, !dbg !211537, !noalias !211418, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_and0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !211537

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_and0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.gq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !211539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !211540, !noalias !211451
  call void @llvm.experimental.noalias.scope.decl(metadata !211541), !dbg !211544, !noalias !211095
  %i.gr = zext i1 %i.gq to i64, !dbg !211546
  %i.gs = load i64, ptr %i.ew, align 8, !dbg !211548, !alias.scope !211549, !noalias !211418, !noundef !14 ; 2 uses
  %i.gt = and i64 %i.gs, 63, !dbg !211550
  %i.gu = shl nuw i64 %i.gr, %i.gt, !dbg !211546
  %i.gv = load i64, ptr %i.fo, align 8, !dbg !211551, !alias.scope !211549, !noalias !211418, !noundef !14
  %i.gw = or i64 %i.gu, %i.gv, !dbg !211551       ; 3 uses
  store i64 %i.gw, ptr %i.fo, align 8, !dbg !211551, !alias.scope !211549, !noalias !211418
  %i.gx = add i64 %i.gs, 1, !dbg !211552          ; 2 uses
  store i64 %i.gx, ptr %i.ew, align 8, !dbg !211552, !alias.scope !211549, !noalias !211418
  %i.gy = and i64 %i.gx, 63, !dbg !211553
  %i.gz = icmp eq i64 %i.gy, 0, !dbg !211553
  br i1 %i.gz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !211555

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_and0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ha = load i64, ptr %i.fp, align 8, !dbg !211556, !alias.scope !211549, !noalias !211418, !noundef !14 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1, !dbg !211559
  call void @llvm.assume(i1 %i.hb), !dbg !211560, !noalias !211095
  %i.hc = load ptr, ptr %i.fq, align 8, !dbg !211561, !alias.scope !211549, !noalias !211418, !nonnull !14, !noundef !14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha, !dbg !211566
  store i64 %i.gw, ptr %i.hd, align 1, !dbg !211568, !noalias !211572
  %i.he = add nuw i64 %i.ha, 8, !dbg !211573
  store i64 %i.he, ptr %i.fp, align 8, !dbg !211574, !alias.scope !211549, !noalias !211418
  %i.hf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gw), !dbg !211576
  %i.hg = load i64, ptr %i.fr, align 8, !dbg !211578, !alias.scope !211549, !noalias !211418, !noundef !14
  %i.hh = add i64 %i.hg, %i.hf, !dbg !211578
  store i64 %i.hh, ptr %i.fr, align 8, !dbg !211578, !alias.scope !211549, !noalias !211418
  store i64 0, ptr %i.fo, align 8, !dbg !211579, !alias.scope !211549, !noalias !211418
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !211580

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_and0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre111 = load i64, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !211436, !alias.scope !211522, !noalias !211523
  br label %bb.au, !dbg !211544

bb.bb:                                            ; preds = %.noexc40, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !211540, !noalias !211451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !211581, !noalias !211432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !211582, !noalias !211057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !211583, !noalias !211057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !211583, !noalias !211057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !211583, !noalias !211057
  %i.hi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !211584, !noalias !211095 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211585), !dbg !211588
  call void @llvm.experimental.noalias.scope.decl(metadata !211589), !dbg !211592, !noalias !211095
  call void @llvm.experimental.noalias.scope.decl(metadata !211594), !dbg !211597, !noalias !211095
  %i.hk = load ptr, ptr %i.h, align 8, !dbg !211599, !alias.scope !211603, !noalias !211095, !nonnull !14, !noundef !14
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !dbg !211604, !noalias !211607
  %i.hm = icmp eq i64 %i.hl, 1, !dbg !211608
  br i1 %i.hm, label %bb.bd, label %.thread74, !dbg !211608

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !211609, !noalias !211095
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread74 unwind label %bb.bw, !dbg !211611

bb.be:                                            ; preds = %bb.bb
  %i.hn = extractvalue { ptr, ptr } %i.hi, 0, !dbg !211583 ; 3 uses
  %i.ho = extractvalue { ptr, ptr } %i.hi, 1, !dbg !211583 ; 4 uses
  store ptr %i.hn, ptr %i.h, align 8, !dbg !211583, !noalias !211057
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !211583
  store ptr %i.ho, ptr %i.hp, align 8, !dbg !211583, !noalias !211057
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16, !dbg !211612
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !211612, !range !1489, !invariant.load !14
  %i.hs = add nsw i64 %i.hr, -1, !dbg !211612
  %i.ht = and i64 %i.hs, -16, !dbg !211612
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ht, !dbg !211612
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16, !dbg !211612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !211616, !noalias !211057
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 456, !dbg !211583
  %i.hx = load ptr, ptr %i.hw, align 8, !dbg !211583, !invariant.load !14, !noalias !211095, !nonnull !14
  %i.hy = invoke { ptr, ptr } %i.hx(ptr noundef nonnull %i.hv)
          to label %bb.bf unwind label %bb.bc, !dbg !211617, !noalias !211095 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0, !dbg !211583
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1, !dbg !211583
  store ptr %i.hz, ptr %i.i, align 8, !dbg !211583, !noalias !211057
end_hunk_4
begin_hunk_5_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column7agg_max:bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211974), !dbg !211929
  call void @llvm.experimental.noalias.scope.decl(metadata !211977), !dbg !211980, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !211982), !dbg !211985, !noalias !211880
  %i.bz = load ptr, ptr %i.q, align 8, !dbg !211987, !alias.scope !211991, !noalias !211880, !nonnull !14, !noundef !14
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !211992, !noalias !211995
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !211996
  br i1 %i.cb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !211996

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !211997, !noalias !211880
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24 unwind label %bb.bw, !dbg !211999

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column7agg_max0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !211929, !noalias !211842
  call void @llvm.experimental.noalias.scope.decl(metadata !212000), !dbg !211929
  call void @llvm.experimental.noalias.scope.decl(metadata !212003), !dbg !212006, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212008), !dbg !212011, !noalias !211880
  %i.cc = load ptr, ptr %i.q, align 8, !dbg !212013, !alias.scope !212017, !noalias !211880, !nonnull !14, !noundef !14
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !212018, !noalias !212021
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !212022
  br i1 %i.ce, label %bb.p, label %bb.s, !dbg !212022

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !212023, !noalias !211880
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !212025

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.by, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.ci, %bb.r ], [ %.pn18.pn.pn.i68, %.thread ], [ %.pn18.pn.i79, %bb.v ], [ %i.by, %bb.n ], [ %i.kn, %bb.cf ], [ %i.kn, %bb.ce ], [ %.pn18.i85, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212026), !dbg !212029
  call void @llvm.experimental.noalias.scope.decl(metadata !212030), !dbg !212033, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212035), !dbg !212038, !noalias !211880
  %i.cf = load ptr, ptr %i.r, align 8, !dbg !212040, !alias.scope !212044, !noalias !211880, !nonnull !14, !noundef !14
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !212045, !noalias !212048
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !212049
  br i1 %i.ch, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !212049

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24
  fence acquire, !dbg !212050, !noalias !211880
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !212052

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !211929, !noalias !211842
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !212053, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.bx, align 8, !dbg !212053, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !212055
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !212055, !range !1489, !invariant.load !14
  %i.cl = add nsw i64 %i.ck, -1, !dbg !212055
  %i.cm = and i64 %i.cl, -16, !dbg !212055
  %i.cn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.cm, !dbg !212055
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !212055
  %i.cp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !212053
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !212053, !invariant.load !14, !noalias !211880, !nonnull !14
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull %i.co)
          to label %bb.t unwind label %bb.r, !dbg !212059, !noalias !211880

bb.t:                                             ; preds = %bb.s
  br i1 %i.cr, label %bb.bx, label %bb.u, !dbg !212053

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !212060, !noalias !211842
  %i.cs = load i64, ptr %2, align 8, !dbg !212061, !range !1781, !alias.scope !212063, !noalias !211880, !noundef !14
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808, !dbg !212061 ; 3 uses
  %..i = select i1 %i.ct, i64 24, i64 16, !dbg !212066
  %.6.i = select i1 %i.ct, i64 1152921504606846976, i64 2305843009213693952, !dbg !212066
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !212066
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !212066, !alias.scope !212063, !noalias !211880, !noundef !14 ; 8 uses
  %i.cw = icmp ult i64 %i.cv, %.6.i, !dbg !212066
  call void @llvm.assume(i1 %i.cw), !dbg !212066, !noalias !211880
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.r, !dbg !212067, !noalias !211880

bb.v:                                             ; preds = %.thread74
  br i1 %.sroa.09.3.i78, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !212068

bb.w:                                             ; preds = %bb.ab, %.loopexit99, %bb.aa, %bb.y, %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !212069, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.bx, align 8, !dbg !212069, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !212071
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !212071, !range !1489, !invariant.load !14
  %i.da = add nsw i64 %i.cz, -1, !dbg !212071
  %i.db = and i64 %i.da, -16, !dbg !212071
  %i.dc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.db, !dbg !212071
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !212071
  %i.de = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !212069
  %i.df = load ptr, ptr %i.de, align 8, !dbg !212069, !invariant.load !14, !noalias !211880, !nonnull !14
  %i.dg = invoke noundef nonnull align 16 ptr %i.df(ptr noundef nonnull %i.dd)
          to label %bb.y unwind label %bb.w, !dbg !212075, !noalias !211880

bb.y:                                             ; preds = %bb.x
  %i.dh = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !212076, !noalias !211880

bb.z:                                             ; preds = %bb.y
  br i1 %i.dh, label %bb.aj, label %bb.aa, !dbg !212069

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !212081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !212081, !noalias !211842
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !212082, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.bx, align 8, !dbg !212082, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !212083
  %i.dj = load i64, ptr %i.di, align 8, !dbg !212083, !range !1489, !invariant.load !14
  %i.dk = add nsw i64 %i.dj, -1, !dbg !212083
  %i.dl = and i64 %i.dk, -16, !dbg !212083
  %i.dm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.dl, !dbg !212083
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16, !dbg !212083
  %i.do = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !212082
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !212082, !invariant.load !14, !noalias !211880, !nonnull !14
  %i.dq = invoke noundef nonnull align 16 ptr %i.dp(ptr noundef nonnull %i.dn)
          to label %bb.ab unwind label %bb.w, !dbg !212087, !noalias !211880

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !212088

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !212090), !dbg !212093
  call void @llvm.experimental.noalias.scope.decl(metadata !212094), !dbg !212093
  %i.dr = load i8, ptr %i.k, align 16, !dbg !212096, !range !157009, !alias.scope !212094, !noalias !212098, !noundef !14
  %i.ds = icmp eq i8 %i.dr, 31, !dbg !212096
  br i1 %i.ds, label %bb.ac, label %bb.ag, !dbg !212099, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !212100, !noalias !212101
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !212100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dt, i64 72, i1 false), !dbg !212100, !noalias !212098
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !212102, !noalias !212101

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !212103, !noalias !212101

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !212104, !noalias !212101
  unreachable, !dbg !212104

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !212105, !alias.scope !212106, !noalias !211880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !212107, !noalias !211842
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !212108, !noalias !211880

bb.ah:                                            ; preds = %bb.ag
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !212108, !noalias !211842
  br label %.thread, !dbg !212107

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !212108, !noalias !211842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !212107
  br label %bb.aj, !dbg !212109

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.cv, 0, !dbg !212110
  br i1 %.not.i28.i.not, label %.loopexit100, label %.lr.ph.i, !dbg !212110

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.ct, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !212119, !nonnull !14, !noundef !14
  %i.ea = load i64, ptr %i.dx, align 8, !noalias !212119, !noundef !14
  br label %.thread.us.i, !dbg !212110

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.eb = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.ef, %bb.ak ] ; 4 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea, !dbg !212126
  call void @llvm.assume(i1 %i.ec), !dbg !212129, !noalias !211880
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb, !dbg !212130
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.ed, align 4, !dbg !212131, !noalias !212119
  %i.ee = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !212132
  br i1 %i.ee, label %.loopexit99, label %bb.ak, !dbg !212139

bb.ak:                                            ; preds = %.thread.us.i
  %i.ef = add nuw i64 %i.eb, 1, !dbg !212140      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ef, %i.cv, !dbg !212110
  br i1 %exitcond45.not.i, label %.loopexit100, label %.thread.us.i, !dbg !212110

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !212119, !noundef !14
  %i.ek = load ptr, ptr %i.eh, align 8, !noalias !212119, !nonnull !14, !noundef !14
  %i.el = load i64, ptr %i.eg, align 8, !noalias !212119, !noundef !14
  br label %.else.i, !dbg !212110

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.em = phi i64 [ 0, %.lr.ph.split.i ], [ %i.es, %bb.al ] ; 5 uses
  %i.en = icmp ult i64 %i.em, %i.ej, !dbg !212141
  call void @llvm.assume(i1 %i.en), !dbg !212145, !noalias !211880
  %i.eo = icmp ult i64 %i.em, %i.el, !dbg !212146
  call void @llvm.assume(i1 %i.eo), !dbg !212149, !noalias !211880
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.em, !dbg !212150
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.eq, align 4, !dbg !212139, !noalias !212151
  %i.er = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !212132
  br i1 %i.er, label %.loopexit99, label %bb.al, !dbg !212139

bb.al:                                            ; preds = %.else.i
  %i.es = add nuw i64 %i.em, 1, !dbg !212140      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.cv, !dbg !212110
  br i1 %exitcond.not.i, label %.loopexit100, label %.else.i, !dbg !212110

.loopexit100:                                     ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !212152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !212068, !noalias !211842
  br label %bb.am, !dbg !212153

bb.am:                                            ; preds = %bb.cd, %.loopexit100
  call void @llvm.experimental.noalias.scope.decl(metadata !212155), !dbg !212029
  call void @llvm.experimental.noalias.scope.decl(metadata !212158), !dbg !212161, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212163), !dbg !212166, !noalias !211880
  %i.et = load ptr, ptr %i.r, align 8, !dbg !212168, !alias.scope !212172, !noalias !211880, !nonnull !14, !noundef !14
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !dbg !212173, !noalias !212176
  %i.ev = icmp eq i64 %i.eu, 1, !dbg !212177
  br i1 %i.ev, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !212177

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !212178, !noalias !211880
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !212180, !noalias !211880
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !212180

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !212029, !noalias !211842
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_7agg_max0EB7_.exit, !dbg !212181

.loopexit99:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.eb, %.thread.us.i ], [ %i.em, %.else.i ], !dbg !212183 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !212184, !noalias !211842
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.cv)
          to label %bb.ao unwind label %bb.w, !dbg !212186, !noalias !211880

bb.ao:                                            ; preds = %.loopexit99
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !212187 ; 5 uses
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !212187, !noalias !211842, !noundef !14 ; 2 uses
  %i.ey = and i64 %i.ex, 63, !dbg !212187         ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.3.0.i, !dbg !212191
  %i.fa = icmp ult i64 %i.ez, 64, !dbg !212191
  br i1 %i.fa, label %bb.aq, label %bb.ap, !dbg !212191, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !212193, !noalias !211880

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.ew, align 8, !dbg !212194, !alias.scope !212200, !noalias !212203
  br label %bb.as, !dbg !212193

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !212205
  %notmask.i = shl nsw i64 -1, %3, !dbg !212205
  %i.fb = xor i64 %notmask.i, -1, !dbg !212205
  %i.fc = shl i64 %i.fb, %i.ey, !dbg !212206
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !212208 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !212208, !noalias !211842, !noundef !14
  %i.ff = or i64 %i.fe, %i.fc, !dbg !212208
  store i64 %i.ff, ptr %i.fd, align 8, !dbg !212208, !noalias !211842
  %i.fg = add i64 %i.ex, %.sroa.3.0.i, !dbg !212209 ; 2 uses
  store i64 %i.fg, ptr %i.ew, align 8, !dbg !212209, !noalias !211842
  br label %bb.as, !dbg !212210

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !212211

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.fh = phi i64 [ %.pre, %._crit_edge ], [ %i.fg, %bb.aq ], !dbg !212194
  %i.fi = sub i64 %i.cv, %.sroa.3.0.i, !dbg !212212 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212200), !dbg !212213
  %i.fj = add i64 %i.fh, %i.fi, !dbg !212194
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !212214
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !212214, !alias.scope !212200, !noalias !212203, !noundef !14
  %i.fm = icmp ugt i64 %i.fj, %i.fl, !dbg !212194
  br i1 %i.fm, label %bb.at, label %.noexc39, !dbg !212194, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.fi)
          to label %.noexc39 unwind label %.loopexit.split-lp, !dbg !212215

.noexc39:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !212216, !noalias !212217
  store ptr %2, ptr %i.b, align 8, !dbg !212216, !noalias !212218
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !212216 ; 2 uses
  store i64 %i.cv, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !212216, !noalias !212218
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !212216 ; 3 uses
  store i64 0, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !212216, !noalias !212218
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !212216 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !212216, !noalias !212218
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !212216
  store i64 %i.fi, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !212216, !noalias !212218
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !212219

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc39
  %i.fs = phi i64 [ %.pre111, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc39 ], !dbg !212221 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212227), !dbg !212230, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212231), !dbg !212234, !noalias !211880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !212235, !noalias !212236
  call void @llvm.experimental.noalias.scope.decl(metadata !212237), !dbg !212240, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212241), !dbg !212240, !noalias !211880
  %.not.i.i.i.i = icmp eq i64 %i.fs, 0, !dbg !212221
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !212243, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !212245), !dbg !212248, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212249), !dbg !212248, !noalias !211880
  %i.ft = load i64, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !212251, !alias.scope !212253, !noalias !212254, !noundef !14 ; 7 uses
  %i.fu = load i64, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !212255, !alias.scope !212253, !noalias !212254, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.ft, %i.fu, !dbg !212251
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !212251

bb.aw:                                            ; preds = %bb.av
  %i.fv = load ptr, ptr %i.b, align 8, !dbg !212256, !alias.scope !212253, !noalias !212254, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !212256, !range !1781, !noalias !212257, !noundef !14
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808, !dbg !212256
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16, !dbg !212258 ; 2 uses
  br i1 %i.fx, label %bb.ax, label %bb.ay, !dbg !212259

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !212260, !noalias !212257, !nonnull !14, !noundef !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24, !dbg !212267
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !212267, !noalias !212257, !noundef !14
  %i.gc = icmp ult i64 %i.ft, %i.gb, !dbg !212268
  call void @llvm.assume(i1 %i.gc), !dbg !212271, !noalias !211880
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ft, !dbg !212272
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.gd, align 4, !dbg !212273, !noalias !212257
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.fn, align 8, !dbg !212274, !alias.scope !212275, !noalias !212276
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !212277

bb.ay:                                            ; preds = %bb.aw
  %i.ge = load i64, ptr %i.fy, align 8, !dbg !212278, !noalias !212257, !noundef !14
  %i.gf = icmp ult i64 %i.ft, %i.ge, !dbg !212282
  call void @llvm.assume(i1 %i.gf), !dbg !212285, !noalias !211880
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32, !dbg !212286
  %i.gh = load ptr, ptr %i.gg, align 8, !dbg !212286, !noalias !212257, !nonnull !14, !noundef !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 40, !dbg !212293
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !212293, !noalias !212257, !noundef !14
  %i.gk = icmp ult i64 %i.ft, %i.gj, !dbg !212294
  call void @llvm.assume(i1 %i.gk), !dbg !212297, !noalias !211880
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ft, !dbg !212298
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !212299

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.gl, %bb.ay ], !dbg !212258 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !212258, !alias.scope !212275, !noalias !212276
  %i.gm = add nuw i64 %i.ft, 1, !dbg !212300
  store i64 %i.gm, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !212300, !alias.scope !212253, !noalias !212254
  br label %bb.az, !dbg !212301

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !212304, !alias.scope !212307, !noalias !212308
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.fs)
          to label %.noexc40 unwind label %.loopexit, !dbg !212309

.noexc40:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !212310, !range !16, !noalias !212236
  %i.gn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !212301
  br i1 %i.gn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !212301

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc40
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !212311, !noalias !212236
  br label %bb.az, !dbg !212301

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !212311 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !212311, !noalias !212236
  %i.go = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !212312
  br i1 %i.go, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_max0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !212322

.else.i.i.i:                                      ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !212323
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.gp, align 4, !dbg !212322, !noalias !212203, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_max0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !212322

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_max0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.gq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !212324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !212325, !noalias !212236
  call void @llvm.experimental.noalias.scope.decl(metadata !212326), !dbg !212329, !noalias !211880
  %i.gr = zext i1 %i.gq to i64, !dbg !212331
  %i.gs = load i64, ptr %i.ew, align 8, !dbg !212333, !alias.scope !212334, !noalias !212203, !noundef !14 ; 2 uses
  %i.gt = and i64 %i.gs, 63, !dbg !212335
  %i.gu = shl nuw i64 %i.gr, %i.gt, !dbg !212331
  %i.gv = load i64, ptr %i.fo, align 8, !dbg !212336, !alias.scope !212334, !noalias !212203, !noundef !14
  %i.gw = or i64 %i.gu, %i.gv, !dbg !212336       ; 3 uses
  store i64 %i.gw, ptr %i.fo, align 8, !dbg !212336, !alias.scope !212334, !noalias !212203
  %i.gx = add i64 %i.gs, 1, !dbg !212337          ; 2 uses
  store i64 %i.gx, ptr %i.ew, align 8, !dbg !212337, !alias.scope !212334, !noalias !212203
  %i.gy = and i64 %i.gx, 63, !dbg !212338
  %i.gz = icmp eq i64 %i.gy, 0, !dbg !212338
  br i1 %i.gz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !212340

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_max0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ha = load i64, ptr %i.fp, align 8, !dbg !212341, !alias.scope !212334, !noalias !212203, !noundef !14 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1, !dbg !212344
  call void @llvm.assume(i1 %i.hb), !dbg !212345, !noalias !211880
  %i.hc = load ptr, ptr %i.fq, align 8, !dbg !212346, !alias.scope !212334, !noalias !212203, !nonnull !14, !noundef !14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha, !dbg !212351
  store i64 %i.gw, ptr %i.hd, align 1, !dbg !212353, !noalias !212357
  %i.he = add nuw i64 %i.ha, 8, !dbg !212358
  store i64 %i.he, ptr %i.fp, align 8, !dbg !212359, !alias.scope !212334, !noalias !212203
  %i.hf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gw), !dbg !212361
  %i.hg = load i64, ptr %i.fr, align 8, !dbg !212363, !alias.scope !212334, !noalias !212203, !noundef !14
  %i.hh = add i64 %i.hg, %i.hf, !dbg !212363
  store i64 %i.hh, ptr %i.fr, align 8, !dbg !212363, !alias.scope !212334, !noalias !212203
  store i64 0, ptr %i.fo, align 8, !dbg !212364, !alias.scope !212334, !noalias !212203
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !212365

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_max0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre111 = load i64, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !212221, !alias.scope !212307, !noalias !212308
  br label %bb.au, !dbg !212329

bb.bb:                                            ; preds = %.noexc40, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !212325, !noalias !212236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !212366, !noalias !212217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !212367, !noalias !211842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !212368, !noalias !211842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !212368, !noalias !211842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !212368, !noalias !211842
  %i.hi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !212369, !noalias !211880 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212370), !dbg !212373
  call void @llvm.experimental.noalias.scope.decl(metadata !212374), !dbg !212377, !noalias !211880
  call void @llvm.experimental.noalias.scope.decl(metadata !212379), !dbg !212382, !noalias !211880
  %i.hk = load ptr, ptr %i.h, align 8, !dbg !212384, !alias.scope !212388, !noalias !211880, !nonnull !14, !noundef !14
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !dbg !212389, !noalias !212392
  %i.hm = icmp eq i64 %i.hl, 1, !dbg !212393
  br i1 %i.hm, label %bb.bd, label %.thread74, !dbg !212393

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !212394, !noalias !211880
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread74 unwind label %bb.bw, !dbg !212396

bb.be:                                            ; preds = %bb.bb
  %i.hn = extractvalue { ptr, ptr } %i.hi, 0, !dbg !212368 ; 3 uses
  %i.ho = extractvalue { ptr, ptr } %i.hi, 1, !dbg !212368 ; 4 uses
  store ptr %i.hn, ptr %i.h, align 8, !dbg !212368, !noalias !211842
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !212368
  store ptr %i.ho, ptr %i.hp, align 8, !dbg !212368, !noalias !211842
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16, !dbg !212397
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !212397, !range !1489, !invariant.load !14
  %i.hs = add nsw i64 %i.hr, -1, !dbg !212397
  %i.ht = and i64 %i.hs, -16, !dbg !212397
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ht, !dbg !212397
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16, !dbg !212397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !212401, !noalias !211842
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 456, !dbg !212368
  %i.hx = load ptr, ptr %i.hw, align 8, !dbg !212368, !invariant.load !14, !noalias !211880, !nonnull !14
  %i.hy = invoke { ptr, ptr } %i.hx(ptr noundef nonnull %i.hv)
          to label %bb.bf unwind label %bb.bc, !dbg !212402, !noalias !211880 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0, !dbg !212368
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1, !dbg !212368
  store ptr %i.hz, ptr %i.i, align 8, !dbg !212368, !noalias !211842
end_hunk_5
begin_hunk_6_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column7agg_min:bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212759), !dbg !212714
  call void @llvm.experimental.noalias.scope.decl(metadata !212762), !dbg !212765, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !212767), !dbg !212770, !noalias !212665
  %i.bz = load ptr, ptr %i.q, align 8, !dbg !212772, !alias.scope !212776, !noalias !212665, !nonnull !14, !noundef !14
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !dbg !212777, !noalias !212780
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !212781
  br i1 %i.cb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !212781

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !212782, !noalias !212665
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24 unwind label %bb.bw, !dbg !212784

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column7agg_min0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !212714, !noalias !212627
  call void @llvm.experimental.noalias.scope.decl(metadata !212785), !dbg !212714
  call void @llvm.experimental.noalias.scope.decl(metadata !212788), !dbg !212791, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !212793), !dbg !212796, !noalias !212665
  %i.cc = load ptr, ptr %i.q, align 8, !dbg !212798, !alias.scope !212802, !noalias !212665, !nonnull !14, !noundef !14
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !dbg !212803, !noalias !212806
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !212807
  br i1 %i.ce, label %bb.p, label %bb.s, !dbg !212807

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !212808, !noalias !212665
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !212810

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.by, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.ci, %bb.r ], [ %.pn18.pn.pn.i68, %.thread ], [ %.pn18.pn.i79, %bb.v ], [ %i.by, %bb.n ], [ %i.kn, %bb.cf ], [ %i.kn, %bb.ce ], [ %.pn18.i85, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit51 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212811), !dbg !212814
  call void @llvm.experimental.noalias.scope.decl(metadata !212815), !dbg !212818, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !212820), !dbg !212823, !noalias !212665
  %i.cf = load ptr, ptr %i.r, align 8, !dbg !212825, !alias.scope !212829, !noalias !212665, !nonnull !14, !noundef !14
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !dbg !212830, !noalias !212833
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !212834
  br i1 %i.ch, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !212834

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24
  fence acquire, !dbg !212835, !noalias !212665
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !212837

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !212714, !noalias !212627
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !212838, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.bx, align 8, !dbg !212838, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !212840
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !212840, !range !1489, !invariant.load !14
  %i.cl = add nsw i64 %i.ck, -1, !dbg !212840
  %i.cm = and i64 %i.cl, -16, !dbg !212840
  %i.cn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.cm, !dbg !212840
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !212840
  %i.cp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !212838
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !212838, !invariant.load !14, !noalias !212665, !nonnull !14
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull %i.co)
          to label %bb.t unwind label %bb.r, !dbg !212844, !noalias !212665

bb.t:                                             ; preds = %bb.s
  br i1 %i.cr, label %bb.bx, label %bb.u, !dbg !212838

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !212845, !noalias !212627
  %i.cs = load i64, ptr %2, align 8, !dbg !212846, !range !1781, !alias.scope !212848, !noalias !212665, !noundef !14
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808, !dbg !212846 ; 3 uses
  %..i = select i1 %i.ct, i64 24, i64 16, !dbg !212851
  %.6.i = select i1 %i.ct, i64 1152921504606846976, i64 2305843009213693952, !dbg !212851
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !212851
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !212851, !alias.scope !212848, !noalias !212665, !noundef !14 ; 8 uses
  %i.cw = icmp ult i64 %i.cv, %.6.i, !dbg !212851
  call void @llvm.assume(i1 %i.cw), !dbg !212851, !noalias !212665
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.cv)
          to label %bb.x unwind label %bb.r, !dbg !212852, !noalias !212665

bb.v:                                             ; preds = %.thread74
  br i1 %.sroa.09.3.i78, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !212853

bb.w:                                             ; preds = %bb.ab, %.loopexit99, %bb.aa, %bb.y, %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !212854, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.bx, align 8, !dbg !212854, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !212856
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !212856, !range !1489, !invariant.load !14
  %i.da = add nsw i64 %i.cz, -1, !dbg !212856
  %i.db = and i64 %i.da, -16, !dbg !212856
  %i.dc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.db, !dbg !212856
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !212856
  %i.de = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !212854
  %i.df = load ptr, ptr %i.de, align 8, !dbg !212854, !invariant.load !14, !noalias !212665, !nonnull !14
  %i.dg = invoke noundef nonnull align 16 ptr %i.df(ptr noundef nonnull %i.dd)
          to label %bb.y unwind label %bb.w, !dbg !212860, !noalias !212665

bb.y:                                             ; preds = %bb.x
  %i.dh = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !212861, !noalias !212665

bb.z:                                             ; preds = %bb.y
  br i1 %i.dh, label %bb.aj, label %bb.aa, !dbg !212854

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !212866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !212866, !noalias !212627
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !212867, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.bx, align 8, !dbg !212867, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !212868
  %i.dj = load i64, ptr %i.di, align 8, !dbg !212868, !range !1489, !invariant.load !14
  %i.dk = add nsw i64 %i.dj, -1, !dbg !212868
  %i.dl = and i64 %i.dk, -16, !dbg !212868
  %i.dm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.dl, !dbg !212868
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16, !dbg !212868
  %i.do = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !212867
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !212867, !invariant.load !14, !noalias !212665, !nonnull !14
  %i.dq = invoke noundef nonnull align 16 ptr %i.dp(ptr noundef nonnull %i.dn)
          to label %bb.ab unwind label %bb.w, !dbg !212872, !noalias !212665

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !212873

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !212875), !dbg !212878
  call void @llvm.experimental.noalias.scope.decl(metadata !212879), !dbg !212878
  %i.dr = load i8, ptr %i.k, align 16, !dbg !212881, !range !157009, !alias.scope !212879, !noalias !212883, !noundef !14
  %i.ds = icmp eq i8 %i.dr, 31, !dbg !212881
  br i1 %i.ds, label %bb.ac, label %bb.ag, !dbg !212884, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !212885, !noalias !212886
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !212885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dt, i64 72, i1 false), !dbg !212885, !noalias !212883
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !212887, !noalias !212886

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !212888, !noalias !212886

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !212889, !noalias !212886
  unreachable, !dbg !212889

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !212890, !alias.scope !212891, !noalias !212665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !212892, !noalias !212627
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !212893, !noalias !212665

bb.ah:                                            ; preds = %bb.ag
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !212893, !noalias !212627
  br label %.thread, !dbg !212892

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !212893, !noalias !212627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !212892
  br label %bb.aj, !dbg !212894

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.cv, 0, !dbg !212895
  br i1 %.not.i28.i.not, label %.loopexit100, label %.lr.ph.i, !dbg !212895

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.ct, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !212904, !nonnull !14, !noundef !14
  %i.ea = load i64, ptr %i.dx, align 8, !noalias !212904, !noundef !14
  br label %.thread.us.i, !dbg !212895

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.eb = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.ef, %bb.ak ] ; 4 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea, !dbg !212911
  call void @llvm.assume(i1 %i.ec), !dbg !212914, !noalias !212665
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb, !dbg !212915
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.ed, align 4, !dbg !212916, !noalias !212904
  %i.ee = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !212917
  br i1 %i.ee, label %.loopexit99, label %bb.ak, !dbg !212924

bb.ak:                                            ; preds = %.thread.us.i
  %i.ef = add nuw i64 %i.eb, 1, !dbg !212925      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ef, %i.cv, !dbg !212895
  br i1 %exitcond45.not.i, label %.loopexit100, label %.thread.us.i, !dbg !212895

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !212904, !noundef !14
  %i.ek = load ptr, ptr %i.eh, align 8, !noalias !212904, !nonnull !14, !noundef !14
  %i.el = load i64, ptr %i.eg, align 8, !noalias !212904, !noundef !14
  br label %.else.i, !dbg !212895

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.em = phi i64 [ 0, %.lr.ph.split.i ], [ %i.es, %bb.al ] ; 5 uses
  %i.en = icmp ult i64 %i.em, %i.ej, !dbg !212926
  call void @llvm.assume(i1 %i.en), !dbg !212930, !noalias !212665
  %i.eo = icmp ult i64 %i.em, %i.el, !dbg !212931
  call void @llvm.assume(i1 %i.eo), !dbg !212934, !noalias !212665
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.em, !dbg !212935
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.eq, align 4, !dbg !212924, !noalias !212936
  %i.er = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !212917
  br i1 %i.er, label %.loopexit99, label %bb.al, !dbg !212924

bb.al:                                            ; preds = %.else.i
  %i.es = add nuw i64 %i.em, 1, !dbg !212925      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.cv, !dbg !212895
  br i1 %exitcond.not.i, label %.loopexit100, label %.else.i, !dbg !212895

.loopexit100:                                     ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !212937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !212853, !noalias !212627
  br label %bb.am, !dbg !212938

bb.am:                                            ; preds = %bb.cd, %.loopexit100
  call void @llvm.experimental.noalias.scope.decl(metadata !212940), !dbg !212814
  call void @llvm.experimental.noalias.scope.decl(metadata !212943), !dbg !212946, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !212948), !dbg !212951, !noalias !212665
  %i.et = load ptr, ptr %i.r, align 8, !dbg !212953, !alias.scope !212957, !noalias !212665, !nonnull !14, !noundef !14
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !dbg !212958, !noalias !212961
  %i.ev = icmp eq i64 %i.eu, 1, !dbg !212962
  br i1 %i.ev, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !212962

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !212963, !noalias !212665
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !212965, !noalias !212665
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34, !dbg !212965

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit34: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !212814, !noalias !212627
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_7agg_min0EB7_.exit, !dbg !212966

.loopexit99:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.eb, %.thread.us.i ], [ %i.em, %.else.i ], !dbg !212968 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !212969, !noalias !212627
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.cv)
          to label %bb.ao unwind label %bb.w, !dbg !212971, !noalias !212665

bb.ao:                                            ; preds = %.loopexit99
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !212972 ; 5 uses
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !212972, !noalias !212627, !noundef !14 ; 2 uses
  %i.ey = and i64 %i.ex, 63, !dbg !212972         ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.3.0.i, !dbg !212976
  %i.fa = icmp ult i64 %i.ez, 64, !dbg !212976
  br i1 %i.fa, label %bb.aq, label %bb.ap, !dbg !212976, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !212978, !noalias !212665

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.ew, align 8, !dbg !212979, !alias.scope !212985, !noalias !212988
  br label %bb.as, !dbg !212978

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !212990
  %notmask.i = shl nsw i64 -1, %3, !dbg !212990
  %i.fb = xor i64 %notmask.i, -1, !dbg !212990
  %i.fc = shl i64 %i.fb, %i.ey, !dbg !212991
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !212993 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !dbg !212993, !noalias !212627, !noundef !14
  %i.ff = or i64 %i.fe, %i.fc, !dbg !212993
  store i64 %i.ff, ptr %i.fd, align 8, !dbg !212993, !noalias !212627
  %i.fg = add i64 %i.ex, %.sroa.3.0.i, !dbg !212994 ; 2 uses
  store i64 %i.fg, ptr %i.ew, align 8, !dbg !212994, !noalias !212627
  br label %bb.as, !dbg !212995

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit24, !dbg !212996

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread74

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.fh = phi i64 [ %.pre, %._crit_edge ], [ %i.fg, %bb.aq ], !dbg !212979
  %i.fi = sub i64 %i.cv, %.sroa.3.0.i, !dbg !212997 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212985), !dbg !212998
  %i.fj = add i64 %i.fh, %i.fi, !dbg !212979
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !212999
  %i.fl = load i64, ptr %i.fk, align 8, !dbg !212999, !alias.scope !212985, !noalias !212988, !noundef !14
  %i.fm = icmp ugt i64 %i.fj, %i.fl, !dbg !212979
  br i1 %i.fm, label %bb.at, label %.noexc39, !dbg !212979, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.fi)
          to label %.noexc39 unwind label %.loopexit.split-lp, !dbg !213000

.noexc39:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !213001, !noalias !213002
  store ptr %2, ptr %i.b, align 8, !dbg !213001, !noalias !213003
  %.sroa.059.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !213001 ; 2 uses
  store i64 %i.cv, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !213001, !noalias !213003
  %.sroa.059.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !213001 ; 3 uses
  store i64 0, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !213001, !noalias !213003
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !213001 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !213001, !noalias !213003
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !213001
  store i64 %i.fi, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !213001, !noalias !213003
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !213004

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc39
  %i.fs = phi i64 [ %.pre111, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc39 ], !dbg !213006 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213012), !dbg !213015, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !213016), !dbg !213019, !noalias !212665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !213020, !noalias !213021
  call void @llvm.experimental.noalias.scope.decl(metadata !213022), !dbg !213025, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !213026), !dbg !213025, !noalias !212665
  %.not.i.i.i.i = icmp eq i64 %i.fs, 0, !dbg !213006
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !213028, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !213030), !dbg !213033, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !213034), !dbg !213033, !noalias !212665
  %i.ft = load i64, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !213036, !alias.scope !213038, !noalias !213039, !noundef !14 ; 7 uses
  %i.fu = load i64, ptr %.sroa.059.sroa.4.0..sroa_idx, align 8, !dbg !213040, !alias.scope !213038, !noalias !213039, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.ft, %i.fu, !dbg !213036
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !213036

bb.aw:                                            ; preds = %bb.av
  %i.fv = load ptr, ptr %i.b, align 8, !dbg !213041, !alias.scope !213038, !noalias !213039, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !213041, !range !1781, !noalias !213042, !noundef !14
  %i.fx = icmp eq i64 %i.fw, -9223372036854775808, !dbg !213041
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16, !dbg !213043 ; 2 uses
  br i1 %i.fx, label %bb.ax, label %bb.ay, !dbg !213044

bb.ax:                                            ; preds = %bb.aw
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !213045, !noalias !213042, !nonnull !14, !noundef !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24, !dbg !213052
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !213052, !noalias !213042, !noundef !14
  %i.gc = icmp ult i64 %i.ft, %i.gb, !dbg !213053
  call void @llvm.assume(i1 %i.gc), !dbg !213056, !noalias !212665
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ft, !dbg !213057
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.gd, align 4, !dbg !213058, !noalias !213042
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.fn, align 8, !dbg !213059, !alias.scope !213060, !noalias !213061
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !213062

bb.ay:                                            ; preds = %bb.aw
  %i.ge = load i64, ptr %i.fy, align 8, !dbg !213063, !noalias !213042, !noundef !14
  %i.gf = icmp ult i64 %i.ft, %i.ge, !dbg !213067
  call void @llvm.assume(i1 %i.gf), !dbg !213070, !noalias !212665
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32, !dbg !213071
  %i.gh = load ptr, ptr %i.gg, align 8, !dbg !213071, !noalias !213042, !nonnull !14, !noundef !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 40, !dbg !213078
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !213078, !noalias !213042, !noundef !14
  %i.gk = icmp ult i64 %i.ft, %i.gj, !dbg !213079
  call void @llvm.assume(i1 %i.gk), !dbg !213082, !noalias !212665
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ft, !dbg !213083
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !213084

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.gl, %bb.ay ], !dbg !213043 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !213043, !alias.scope !213060, !noalias !213061
  %i.gm = add nuw i64 %i.ft, 1, !dbg !213085
  store i64 %i.gm, ptr %.sroa.059.sroa.5.0..sroa_idx, align 8, !dbg !213085, !alias.scope !213038, !noalias !213039
  br label %bb.az, !dbg !213086

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !213089, !alias.scope !213092, !noalias !213093
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.fs)
          to label %.noexc40 unwind label %.loopexit, !dbg !213094

.noexc40:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !213095, !range !16, !noalias !213021
  %i.gn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !213086
  br i1 %i.gn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !213086

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc40
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !213096, !noalias !213021
  br label %bb.az, !dbg !213086

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !213096 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !213096, !noalias !213021
  %i.go = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !213097
  br i1 %i.go, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_min0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !213107

.else.i.i.i:                                      ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !213108
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.gp, align 4, !dbg !213107, !noalias !212988, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_min0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !213107

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_min0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.gq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !213109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !213110, !noalias !213021
  call void @llvm.experimental.noalias.scope.decl(metadata !213111), !dbg !213114, !noalias !212665
  %i.gr = zext i1 %i.gq to i64, !dbg !213116
  %i.gs = load i64, ptr %i.ew, align 8, !dbg !213118, !alias.scope !213119, !noalias !212988, !noundef !14 ; 2 uses
  %i.gt = and i64 %i.gs, 63, !dbg !213120
  %i.gu = shl nuw i64 %i.gr, %i.gt, !dbg !213116
  %i.gv = load i64, ptr %i.fo, align 8, !dbg !213121, !alias.scope !213119, !noalias !212988, !noundef !14
  %i.gw = or i64 %i.gu, %i.gv, !dbg !213121       ; 3 uses
  store i64 %i.gw, ptr %i.fo, align 8, !dbg !213121, !alias.scope !213119, !noalias !212988
  %i.gx = add i64 %i.gs, 1, !dbg !213122          ; 2 uses
  store i64 %i.gx, ptr %i.ew, align 8, !dbg !213122, !alias.scope !213119, !noalias !212988
  %i.gy = and i64 %i.gx, 63, !dbg !213123
  %i.gz = icmp eq i64 %i.gy, 0, !dbg !213123
  br i1 %i.gz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !213125

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_min0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ha = load i64, ptr %i.fp, align 8, !dbg !213126, !alias.scope !213119, !noalias !212988, !noundef !14 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1, !dbg !213129
  call void @llvm.assume(i1 %i.hb), !dbg !213130, !noalias !212665
  %i.hc = load ptr, ptr %i.fq, align 8, !dbg !213131, !alias.scope !213119, !noalias !212988, !nonnull !14, !noundef !14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha, !dbg !213136
  store i64 %i.gw, ptr %i.hd, align 1, !dbg !213138, !noalias !213142
  %i.he = add nuw i64 %i.ha, 8, !dbg !213143
  store i64 %i.he, ptr %i.fp, align 8, !dbg !213144, !alias.scope !213119, !noalias !212988
  %i.hf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gw), !dbg !213146
  %i.hg = load i64, ptr %i.fr, align 8, !dbg !213148, !alias.scope !213119, !noalias !212988, !noundef !14
  %i.hh = add i64 %i.hg, %i.hf, !dbg !213148
  store i64 %i.hh, ptr %i.fr, align 8, !dbg !213148, !alias.scope !213119, !noalias !212988
  store i64 0, ptr %i.fo, align 8, !dbg !213149, !alias.scope !213119, !noalias !212988
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !213150

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_7agg_min0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre111 = load i64, ptr %.sroa.460.0..sroa_idx, align 8, !dbg !213006, !alias.scope !213092, !noalias !213093
  br label %bb.au, !dbg !213114

bb.bb:                                            ; preds = %.noexc40, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !213110, !noalias !213021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !213151, !noalias !213002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !213152, !noalias !212627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !213153, !noalias !212627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !213153, !noalias !212627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !213153, !noalias !212627
  %i.hi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !213154, !noalias !212665 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213155), !dbg !213158
  call void @llvm.experimental.noalias.scope.decl(metadata !213159), !dbg !213162, !noalias !212665
  call void @llvm.experimental.noalias.scope.decl(metadata !213164), !dbg !213167, !noalias !212665
  %i.hk = load ptr, ptr %i.h, align 8, !dbg !213169, !alias.scope !213173, !noalias !212665, !nonnull !14, !noundef !14
  %i.hl = atomicrmw sub ptr %i.hk, i64 1 release, align 8, !dbg !213174, !noalias !213177
  %i.hm = icmp eq i64 %i.hl, 1, !dbg !213178
  br i1 %i.hm, label %bb.bd, label %.thread74, !dbg !213178

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !213179, !noalias !212665
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread74 unwind label %bb.bw, !dbg !213181

bb.be:                                            ; preds = %bb.bb
  %i.hn = extractvalue { ptr, ptr } %i.hi, 0, !dbg !213153 ; 3 uses
  %i.ho = extractvalue { ptr, ptr } %i.hi, 1, !dbg !213153 ; 4 uses
  store ptr %i.hn, ptr %i.h, align 8, !dbg !213153, !noalias !212627
  %i.hp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !213153
  store ptr %i.ho, ptr %i.hp, align 8, !dbg !213153, !noalias !212627
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16, !dbg !213182
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !213182, !range !1489, !invariant.load !14
  %i.hs = add nsw i64 %i.hr, -1, !dbg !213182
  %i.ht = and i64 %i.hs, -16, !dbg !213182
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ht, !dbg !213182
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16, !dbg !213182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !213186, !noalias !212627
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 456, !dbg !213153
  %i.hx = load ptr, ptr %i.hw, align 8, !dbg !213153, !invariant.load !14, !noalias !212665, !nonnull !14
  %i.hy = invoke { ptr, ptr } %i.hx(ptr noundef nonnull %i.hv)
          to label %bb.bf unwind label %bb.bc, !dbg !213187, !noalias !212665 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.hz = extractvalue { ptr, ptr } %i.hy, 0, !dbg !213153
  %i.ia = extractvalue { ptr, ptr } %i.hy, 1, !dbg !213153
  store ptr %i.hz, ptr %i.i, align 8, !dbg !213153, !noalias !212627
end_hunk_6
begin_hunk_7_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column8agg_last:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214368), !dbg !214331
  call void @llvm.experimental.noalias.scope.decl(metadata !214371), !dbg !214374, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214376), !dbg !214379, !noalias !214290
  %i.az = load ptr, ptr %i.q, align 8, !dbg !214381, !alias.scope !214385, !noalias !214290, !nonnull !14, !noundef !14
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !dbg !214386, !noalias !214389
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !214390
  br i1 %i.bb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !214390

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !214391, !noalias !214290
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18 unwind label %bb.bw, !dbg !214393

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column8agg_last0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !214331, !noalias !214264
  call void @llvm.experimental.noalias.scope.decl(metadata !214394), !dbg !214331
  call void @llvm.experimental.noalias.scope.decl(metadata !214397), !dbg !214400, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214402), !dbg !214405, !noalias !214290
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !214407, !alias.scope !214411, !noalias !214290, !nonnull !14, !noundef !14
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !214412, !noalias !214415
  %i.be = icmp eq i64 %i.bd, 1, !dbg !214416
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !214416

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !214417, !noalias !214290
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !214419

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.bi, %bb.r ], [ %.pn18.pn.pn.i62, %.thread ], [ %.pn18.pn.i73, %bb.v ], [ %i.ay, %bb.n ], [ %i.jn, %bb.cf ], [ %i.jn, %bb.ce ], [ %.pn18.i79, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214420), !dbg !214423
  call void @llvm.experimental.noalias.scope.decl(metadata !214424), !dbg !214427, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214429), !dbg !214432, !noalias !214290
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !214434, !alias.scope !214438, !noalias !214290, !nonnull !14, !noundef !14
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !214439, !noalias !214442
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !214443
  br i1 %i.bh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !214443

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18
  fence acquire, !dbg !214444, !noalias !214290
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !214446

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !214331, !noalias !214264
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !214447, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.ax, align 8, !dbg !214447, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !214449
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !214449, !range !1489, !invariant.load !14
  %i.bl = add nsw i64 %i.bk, -1, !dbg !214449
  %i.bm = and i64 %i.bl, -16, !dbg !214449
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.bm, !dbg !214449
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !214449
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !214447
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !214447, !invariant.load !14, !noalias !214290, !nonnull !14
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull %i.bo)
          to label %bb.t unwind label %bb.r, !dbg !214453, !noalias !214290

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.bx, label %bb.u, !dbg !214447

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !214454, !noalias !214264
  %i.bs = load i64, ptr %2, align 8, !dbg !214455, !range !1781, !alias.scope !214457, !noalias !214290, !noundef !14
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808, !dbg !214455 ; 3 uses
  %..i = select i1 %i.bt, i64 24, i64 16, !dbg !214460
  %.6.i = select i1 %i.bt, i64 1152921504606846976, i64 2305843009213693952, !dbg !214460
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !214460
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !214460, !alias.scope !214457, !noalias !214290, !noundef !14 ; 8 uses
  %i.bw = icmp ult i64 %i.bv, %.6.i, !dbg !214460
  call void @llvm.assume(i1 %i.bw), !dbg !214460, !noalias !214290
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.r, !dbg !214461, !noalias !214290

bb.v:                                             ; preds = %.thread68
  br i1 %.sroa.09.3.i72, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !214462

bb.w:                                             ; preds = %bb.ab, %.loopexit93, %bb.aa, %bb.y, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !214463, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.ax, align 8, !dbg !214463, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !214465
  %i.bz = load i64, ptr %i.by, align 8, !dbg !214465, !range !1489, !invariant.load !14
  %i.ca = add nsw i64 %i.bz, -1, !dbg !214465
  %i.cb = and i64 %i.ca, -16, !dbg !214465
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.cb, !dbg !214465
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !214465
  %i.ce = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !214463
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !214463, !invariant.load !14, !noalias !214290, !nonnull !14
  %i.cg = invoke noundef nonnull align 16 ptr %i.cf(ptr noundef nonnull %i.cd)
          to label %bb.y unwind label %bb.w, !dbg !214469, !noalias !214290

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !214470, !noalias !214290

bb.z:                                             ; preds = %bb.y
  br i1 %i.ch, label %bb.aj, label %bb.aa, !dbg !214463

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !214475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !214475, !noalias !214264
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !214476, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.ax, align 8, !dbg !214476, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !214477
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !214477, !range !1489, !invariant.load !14
  %i.ck = add nsw i64 %i.cj, -1, !dbg !214477
  %i.cl = and i64 %i.ck, -16, !dbg !214477
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.cl, !dbg !214477
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !214477
  %i.co = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !214476
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !214476, !invariant.load !14, !noalias !214290, !nonnull !14
  %i.cq = invoke noundef nonnull align 16 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.ab unwind label %bb.w, !dbg !214481, !noalias !214290

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !214482

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !214484), !dbg !214487
  call void @llvm.experimental.noalias.scope.decl(metadata !214488), !dbg !214487
  %i.cr = load i8, ptr %i.k, align 16, !dbg !214490, !range !157009, !alias.scope !214488, !noalias !214492, !noundef !14
  %i.cs = icmp eq i8 %i.cr, 31, !dbg !214490
  br i1 %i.cs, label %bb.ac, label %bb.ag, !dbg !214493, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !214494, !noalias !214495
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !214494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !214494, !noalias !214492
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !214496, !noalias !214495

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !214497, !noalias !214495

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !214498, !noalias !214495
  unreachable, !dbg !214498

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !214499, !alias.scope !214500, !noalias !214290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !214501, !noalias !214264
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !214502, !noalias !214290

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !214502, !noalias !214264
  br label %.thread, !dbg !214501

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !214502, !noalias !214264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !214501
  br label %bb.aj, !dbg !214503

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.bv, 0, !dbg !214504
  br i1 %.not.i28.i.not, label %.loopexit94, label %.lr.ph.i, !dbg !214504

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !214513, !nonnull !14, !noundef !14
  %i.da = load i64, ptr %i.cx, align 8, !noalias !214513, !noundef !14
  br label %.thread.us.i, !dbg !214504

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.db = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.df, %bb.ak ] ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.da, !dbg !214520
  call void @llvm.assume(i1 %i.dc), !dbg !214523, !noalias !214290
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db, !dbg !214524
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.dd, align 4, !dbg !214525, !noalias !214513
  %i.de = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !214526
  br i1 %i.de, label %.loopexit93, label %bb.ak, !dbg !214533

bb.ak:                                            ; preds = %.thread.us.i
  %i.df = add nuw i64 %i.db, 1, !dbg !214534      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.bv, !dbg !214504
  br i1 %exitcond45.not.i, label %.loopexit94, label %.thread.us.i, !dbg !214504

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !214513, !noundef !14
  %i.dk = load ptr, ptr %i.dh, align 8, !noalias !214513, !nonnull !14, !noundef !14
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !214513, !noundef !14
  br label %.else.i, !dbg !214504

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.dm = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ds, %bb.al ] ; 5 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj, !dbg !214535
  call void @llvm.assume(i1 %i.dn), !dbg !214539, !noalias !214290
  %i.do = icmp ult i64 %i.dm, %i.dl, !dbg !214540
  call void @llvm.assume(i1 %i.do), !dbg !214543, !noalias !214290
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dm, !dbg !214544
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.dq, align 4, !dbg !214533, !noalias !214545
  %i.dr = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !214526
  br i1 %i.dr, label %.loopexit93, label %bb.al, !dbg !214533

bb.al:                                            ; preds = %.else.i
  %i.ds = add nuw i64 %i.dm, 1, !dbg !214534      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bv, !dbg !214504
  br i1 %exitcond.not.i, label %.loopexit94, label %.else.i, !dbg !214504

.loopexit94:                                      ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !214546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !214462, !noalias !214264
  br label %bb.am, !dbg !214547

bb.am:                                            ; preds = %bb.cd, %.loopexit94
  call void @llvm.experimental.noalias.scope.decl(metadata !214549), !dbg !214423
  call void @llvm.experimental.noalias.scope.decl(metadata !214552), !dbg !214555, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214557), !dbg !214560, !noalias !214290
  %i.dt = load ptr, ptr %i.r, align 8, !dbg !214562, !alias.scope !214566, !noalias !214290, !nonnull !14, !noundef !14
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !214567, !noalias !214570
  %i.dv = icmp eq i64 %i.du, 1, !dbg !214571
  br i1 %i.dv, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !214571

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !214572, !noalias !214290
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !214574, !noalias !214290
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !214574

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !214423, !noalias !214264
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_8agg_last0EB7_.exit, !dbg !214575

.loopexit93:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.db, %.thread.us.i ], [ %i.dm, %.else.i ], !dbg !214577 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !214578, !noalias !214264
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.bv)
          to label %bb.ao unwind label %bb.w, !dbg !214580, !noalias !214290

bb.ao:                                            ; preds = %.loopexit93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !214581 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !214581, !noalias !214264, !noundef !14 ; 2 uses
  %i.dy = and i64 %i.dx, 63, !dbg !214581         ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.3.0.i, !dbg !214585
  %i.ea = icmp ult i64 %i.dz, 64, !dbg !214585
  br i1 %i.ea, label %bb.aq, label %bb.ap, !dbg !214585, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !214587, !noalias !214290

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.dw, align 8, !dbg !214588, !alias.scope !214594, !noalias !214597
  br label %bb.as, !dbg !214587

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !214599
  %notmask.i = shl nsw i64 -1, %3, !dbg !214599
  %i.eb = xor i64 %notmask.i, -1, !dbg !214599
  %i.ec = shl i64 %i.eb, %i.dy, !dbg !214600
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !214602 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !214602, !noalias !214264, !noundef !14
  %i.ef = or i64 %i.ee, %i.ec, !dbg !214602
  store i64 %i.ef, ptr %i.ed, align 8, !dbg !214602, !noalias !214264
  %i.eg = add i64 %i.dx, %.sroa.3.0.i, !dbg !214603 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !dbg !214603, !noalias !214264
  br label %bb.as, !dbg !214604

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !214605

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.eh = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.aq ], !dbg !214588
  %i.ei = sub i64 %i.bv, %.sroa.3.0.i, !dbg !214606 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214594), !dbg !214607
  %i.ej = add i64 %i.eh, %i.ei, !dbg !214588
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !214608
  %i.el = load i64, ptr %i.ek, align 8, !dbg !214608, !alias.scope !214594, !noalias !214597, !noundef !14
  %i.em = icmp ugt i64 %i.ej, %i.el, !dbg !214588
  br i1 %i.em, label %bb.at, label %.noexc33, !dbg !214588, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.ei)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !214609

.noexc33:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !214610, !noalias !214611
  store ptr %2, ptr %i.b, align 8, !dbg !214610, !noalias !214612
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !214610 ; 2 uses
  store i64 %i.bv, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !214610, !noalias !214612
  %.sroa.053.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !214610 ; 3 uses
  store i64 0, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !214610, !noalias !214612
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !214610 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !214610, !noalias !214612
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !214610
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !214610, !noalias !214612
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !214613

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc33
  %i.es = phi i64 [ %.pre105, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc33 ], !dbg !214615 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214621), !dbg !214624, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214625), !dbg !214628, !noalias !214290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !214629, !noalias !214630
  call void @llvm.experimental.noalias.scope.decl(metadata !214631), !dbg !214634, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214635), !dbg !214634, !noalias !214290
  %.not.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !214615
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !214637, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !214639), !dbg !214642, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214643), !dbg !214642, !noalias !214290
  %i.et = load i64, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !214645, !alias.scope !214647, !noalias !214648, !noundef !14 ; 7 uses
  %i.eu = load i64, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !214649, !alias.scope !214647, !noalias !214648, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.et, %i.eu, !dbg !214645
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !214645

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.b, align 8, !dbg !214650, !alias.scope !214647, !noalias !214648, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !214650, !range !1781, !noalias !214651, !noundef !14
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808, !dbg !214650
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !214652 ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay, !dbg !214653

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !214654, !noalias !214651, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !214661
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !214661, !noalias !214651, !noundef !14
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !214662
  call void @llvm.assume(i1 %i.fc), !dbg !214665, !noalias !214290
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.et, !dbg !214666
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.fd, align 4, !dbg !214667, !noalias !214651
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !dbg !214668, !alias.scope !214669, !noalias !214670
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !214671

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.ey, align 8, !dbg !214672, !noalias !214651, !noundef !14
  %i.ff = icmp ult i64 %i.et, %i.fe, !dbg !214676
  call void @llvm.assume(i1 %i.ff), !dbg !214679, !noalias !214290
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32, !dbg !214680
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !214680, !noalias !214651, !nonnull !14, !noundef !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 40, !dbg !214687
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !214687, !noalias !214651, !noundef !14
  %i.fk = icmp ult i64 %i.et, %i.fj, !dbg !214688
  call void @llvm.assume(i1 %i.fk), !dbg !214691, !noalias !214290
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.et, !dbg !214692
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !214693

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.fl, %bb.ay ], !dbg !214652 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !214652, !alias.scope !214669, !noalias !214670
  %i.fm = add nuw i64 %i.et, 1, !dbg !214694
  store i64 %i.fm, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !214694, !alias.scope !214647, !noalias !214648
  br label %bb.az, !dbg !214695

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !214698, !alias.scope !214701, !noalias !214702
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.es)
          to label %.noexc34 unwind label %.loopexit, !dbg !214703

.noexc34:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !214704, !range !16, !noalias !214630
  %i.fn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !214695
  br i1 %i.fn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !214695

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc34
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !214705, !noalias !214630
  br label %bb.az, !dbg !214695

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !214705 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !214705, !noalias !214630
  %i.fo = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !214706
  br i1 %i.fo, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_last0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !214716

.else.i.i.i:                                      ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !214717
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.fp, align 4, !dbg !214716, !noalias !214597, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_last0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !214716

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_last0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.fq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !214718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !214719, !noalias !214630
  call void @llvm.experimental.noalias.scope.decl(metadata !214720), !dbg !214723, !noalias !214290
  %i.fr = zext i1 %i.fq to i64, !dbg !214725
  %i.fs = load i64, ptr %i.dw, align 8, !dbg !214727, !alias.scope !214728, !noalias !214597, !noundef !14 ; 2 uses
  %i.ft = and i64 %i.fs, 63, !dbg !214729
  %i.fu = shl nuw i64 %i.fr, %i.ft, !dbg !214725
  %i.fv = load i64, ptr %i.eo, align 8, !dbg !214730, !alias.scope !214728, !noalias !214597, !noundef !14
  %i.fw = or i64 %i.fu, %i.fv, !dbg !214730       ; 3 uses
  store i64 %i.fw, ptr %i.eo, align 8, !dbg !214730, !alias.scope !214728, !noalias !214597
  %i.fx = add i64 %i.fs, 1, !dbg !214731          ; 2 uses
  store i64 %i.fx, ptr %i.dw, align 8, !dbg !214731, !alias.scope !214728, !noalias !214597
  %i.fy = and i64 %i.fx, 63, !dbg !214732
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !214732
  br i1 %i.fz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !214734

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_last0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ga = load i64, ptr %i.ep, align 8, !dbg !214735, !alias.scope !214728, !noalias !214597, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !214738
  call void @llvm.assume(i1 %i.gb), !dbg !214739, !noalias !214290
  %i.gc = load ptr, ptr %i.eq, align 8, !dbg !214740, !alias.scope !214728, !noalias !214597, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga, !dbg !214745
  store i64 %i.fw, ptr %i.gd, align 1, !dbg !214747, !noalias !214751
  %i.ge = add nuw i64 %i.ga, 8, !dbg !214752
  store i64 %i.ge, ptr %i.ep, align 8, !dbg !214753, !alias.scope !214728, !noalias !214597
  %i.gf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw), !dbg !214755
  %i.gg = load i64, ptr %i.er, align 8, !dbg !214757, !alias.scope !214728, !noalias !214597, !noundef !14
  %i.gh = add i64 %i.gg, %i.gf, !dbg !214757
  store i64 %i.gh, ptr %i.er, align 8, !dbg !214757, !alias.scope !214728, !noalias !214597
  store i64 0, ptr %i.eo, align 8, !dbg !214758, !alias.scope !214728, !noalias !214597
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !214759

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_last0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre105 = load i64, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !214615, !alias.scope !214701, !noalias !214702
  br label %bb.au, !dbg !214723

bb.bb:                                            ; preds = %.noexc34, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !214719, !noalias !214630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !214760, !noalias !214611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !214761, !noalias !214264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !214762, !noalias !214264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !214762, !noalias !214264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !214762, !noalias !214264
  %i.gi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !214763, !noalias !214290 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214764), !dbg !214767
  call void @llvm.experimental.noalias.scope.decl(metadata !214768), !dbg !214771, !noalias !214290
  call void @llvm.experimental.noalias.scope.decl(metadata !214773), !dbg !214776, !noalias !214290
  %i.gk = load ptr, ptr %i.h, align 8, !dbg !214778, !alias.scope !214782, !noalias !214290, !nonnull !14, !noundef !14
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !dbg !214783, !noalias !214786
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !214787
  br i1 %i.gm, label %bb.bd, label %.thread68, !dbg !214787

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !214788, !noalias !214290
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread68 unwind label %bb.bw, !dbg !214790

bb.be:                                            ; preds = %bb.bb
  %i.gn = extractvalue { ptr, ptr } %i.gi, 0, !dbg !214762 ; 3 uses
  %i.go = extractvalue { ptr, ptr } %i.gi, 1, !dbg !214762 ; 4 uses
  store ptr %i.gn, ptr %i.h, align 8, !dbg !214762, !noalias !214264
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !214762
  store ptr %i.go, ptr %i.gp, align 8, !dbg !214762, !noalias !214264
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !214791
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !214791, !range !1489, !invariant.load !14
  %i.gs = add nsw i64 %i.gr, -1, !dbg !214791
  %i.gt = and i64 %i.gs, -16, !dbg !214791
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt, !dbg !214791
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !214791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !214795, !noalias !214264
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 456, !dbg !214762
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !214762, !invariant.load !14, !noalias !214290, !nonnull !14
  %i.gy = invoke { ptr, ptr } %i.gx(ptr noundef nonnull %i.gv)
          to label %bb.bf unwind label %bb.bc, !dbg !214796, !noalias !214290 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0, !dbg !214762
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1, !dbg !214762
  store ptr %i.gz, ptr %i.i, align 8, !dbg !214762, !noalias !214264
end_hunk_7
begin_hunk_8_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column8agg_mean:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215160), !dbg !215123
  call void @llvm.experimental.noalias.scope.decl(metadata !215163), !dbg !215166, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215168), !dbg !215171, !noalias !215082
  %i.az = load ptr, ptr %i.q, align 8, !dbg !215173, !alias.scope !215177, !noalias !215082, !nonnull !14, !noundef !14
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !dbg !215178, !noalias !215181
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !215182
  br i1 %i.bb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !215182

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !215183, !noalias !215082
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18 unwind label %bb.bw, !dbg !215185

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column8agg_mean0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !215123, !noalias !215056
  call void @llvm.experimental.noalias.scope.decl(metadata !215186), !dbg !215123
  call void @llvm.experimental.noalias.scope.decl(metadata !215189), !dbg !215192, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215194), !dbg !215197, !noalias !215082
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !215199, !alias.scope !215203, !noalias !215082, !nonnull !14, !noundef !14
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !215204, !noalias !215207
  %i.be = icmp eq i64 %i.bd, 1, !dbg !215208
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !215208

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !215209, !noalias !215082
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !215211

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.bi, %bb.r ], [ %.pn18.pn.pn.i62, %.thread ], [ %.pn18.pn.i73, %bb.v ], [ %i.ay, %bb.n ], [ %i.jn, %bb.cf ], [ %i.jn, %bb.ce ], [ %.pn18.i79, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215212), !dbg !215215
  call void @llvm.experimental.noalias.scope.decl(metadata !215216), !dbg !215219, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215221), !dbg !215224, !noalias !215082
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !215226, !alias.scope !215230, !noalias !215082, !nonnull !14, !noundef !14
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !215231, !noalias !215234
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !215235
  br i1 %i.bh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !215235

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18
  fence acquire, !dbg !215236, !noalias !215082
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !215238

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !215123, !noalias !215056
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !215239, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.ax, align 8, !dbg !215239, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !215241
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !215241, !range !1489, !invariant.load !14
  %i.bl = add nsw i64 %i.bk, -1, !dbg !215241
  %i.bm = and i64 %i.bl, -16, !dbg !215241
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.bm, !dbg !215241
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !215241
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !215239
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !215239, !invariant.load !14, !noalias !215082, !nonnull !14
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull %i.bo)
          to label %bb.t unwind label %bb.r, !dbg !215245, !noalias !215082

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.bx, label %bb.u, !dbg !215239

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !215246, !noalias !215056
  %i.bs = load i64, ptr %2, align 8, !dbg !215247, !range !1781, !alias.scope !215249, !noalias !215082, !noundef !14
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808, !dbg !215247 ; 3 uses
  %..i = select i1 %i.bt, i64 24, i64 16, !dbg !215252
  %.6.i = select i1 %i.bt, i64 1152921504606846976, i64 2305843009213693952, !dbg !215252
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !215252
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !215252, !alias.scope !215249, !noalias !215082, !noundef !14 ; 8 uses
  %i.bw = icmp ult i64 %i.bv, %.6.i, !dbg !215252
  call void @llvm.assume(i1 %i.bw), !dbg !215252, !noalias !215082
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.r, !dbg !215253, !noalias !215082

bb.v:                                             ; preds = %.thread68
  br i1 %.sroa.09.3.i72, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !215254

bb.w:                                             ; preds = %bb.ab, %.loopexit93, %bb.aa, %bb.y, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !215255, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.ax, align 8, !dbg !215255, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !215257
  %i.bz = load i64, ptr %i.by, align 8, !dbg !215257, !range !1489, !invariant.load !14
  %i.ca = add nsw i64 %i.bz, -1, !dbg !215257
  %i.cb = and i64 %i.ca, -16, !dbg !215257
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.cb, !dbg !215257
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !215257
  %i.ce = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !215255
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !215255, !invariant.load !14, !noalias !215082, !nonnull !14
  %i.cg = invoke noundef nonnull align 16 ptr %i.cf(ptr noundef nonnull %i.cd)
          to label %bb.y unwind label %bb.w, !dbg !215261, !noalias !215082

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !215262, !noalias !215082

bb.z:                                             ; preds = %bb.y
  br i1 %i.ch, label %bb.aj, label %bb.aa, !dbg !215255

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !215267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !215267, !noalias !215056
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !215268, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.ax, align 8, !dbg !215268, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !215269
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !215269, !range !1489, !invariant.load !14
  %i.ck = add nsw i64 %i.cj, -1, !dbg !215269
  %i.cl = and i64 %i.ck, -16, !dbg !215269
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.cl, !dbg !215269
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !215269
  %i.co = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !215268
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !215268, !invariant.load !14, !noalias !215082, !nonnull !14
  %i.cq = invoke noundef nonnull align 16 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.ab unwind label %bb.w, !dbg !215273, !noalias !215082

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !215274

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !215276), !dbg !215279
  call void @llvm.experimental.noalias.scope.decl(metadata !215280), !dbg !215279
  %i.cr = load i8, ptr %i.k, align 16, !dbg !215282, !range !157009, !alias.scope !215280, !noalias !215284, !noundef !14
  %i.cs = icmp eq i8 %i.cr, 31, !dbg !215282
  br i1 %i.cs, label %bb.ac, label %bb.ag, !dbg !215285, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !215286, !noalias !215287
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !215286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !215286, !noalias !215284
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !215288, !noalias !215287

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !215289, !noalias !215287

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !215290, !noalias !215287
  unreachable, !dbg !215290

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !215291, !alias.scope !215292, !noalias !215082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !215293, !noalias !215056
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !215294, !noalias !215082

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !215294, !noalias !215056
  br label %.thread, !dbg !215293

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !215294, !noalias !215056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !215293
  br label %bb.aj, !dbg !215295

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.bv, 0, !dbg !215296
  br i1 %.not.i28.i.not, label %.loopexit94, label %.lr.ph.i, !dbg !215296

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !215305, !nonnull !14, !noundef !14
  %i.da = load i64, ptr %i.cx, align 8, !noalias !215305, !noundef !14
  br label %.thread.us.i, !dbg !215296

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.db = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.df, %bb.ak ] ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.da, !dbg !215312
  call void @llvm.assume(i1 %i.dc), !dbg !215315, !noalias !215082
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db, !dbg !215316
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.dd, align 4, !dbg !215317, !noalias !215305
  %i.de = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !215318
  br i1 %i.de, label %.loopexit93, label %bb.ak, !dbg !215325

bb.ak:                                            ; preds = %.thread.us.i
  %i.df = add nuw i64 %i.db, 1, !dbg !215326      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.bv, !dbg !215296
  br i1 %exitcond45.not.i, label %.loopexit94, label %.thread.us.i, !dbg !215296

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !215305, !noundef !14
  %i.dk = load ptr, ptr %i.dh, align 8, !noalias !215305, !nonnull !14, !noundef !14
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !215305, !noundef !14
  br label %.else.i, !dbg !215296

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.dm = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ds, %bb.al ] ; 5 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj, !dbg !215327
  call void @llvm.assume(i1 %i.dn), !dbg !215331, !noalias !215082
  %i.do = icmp ult i64 %i.dm, %i.dl, !dbg !215332
  call void @llvm.assume(i1 %i.do), !dbg !215335, !noalias !215082
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dm, !dbg !215336
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.dq, align 4, !dbg !215325, !noalias !215337
  %i.dr = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !215318
  br i1 %i.dr, label %.loopexit93, label %bb.al, !dbg !215325

bb.al:                                            ; preds = %.else.i
  %i.ds = add nuw i64 %i.dm, 1, !dbg !215326      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bv, !dbg !215296
  br i1 %exitcond.not.i, label %.loopexit94, label %.else.i, !dbg !215296

.loopexit94:                                      ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !215338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !215254, !noalias !215056
  br label %bb.am, !dbg !215339

bb.am:                                            ; preds = %bb.cd, %.loopexit94
  call void @llvm.experimental.noalias.scope.decl(metadata !215341), !dbg !215215
  call void @llvm.experimental.noalias.scope.decl(metadata !215344), !dbg !215347, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215349), !dbg !215352, !noalias !215082
  %i.dt = load ptr, ptr %i.r, align 8, !dbg !215354, !alias.scope !215358, !noalias !215082, !nonnull !14, !noundef !14
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !215359, !noalias !215362
  %i.dv = icmp eq i64 %i.du, 1, !dbg !215363
  br i1 %i.dv, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !215363

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !215364, !noalias !215082
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !215366, !noalias !215082
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !215366

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !215215, !noalias !215056
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_8agg_mean0EB7_.exit, !dbg !215367

.loopexit93:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.db, %.thread.us.i ], [ %i.dm, %.else.i ], !dbg !215369 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !215370, !noalias !215056
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.bv)
          to label %bb.ao unwind label %bb.w, !dbg !215372, !noalias !215082

bb.ao:                                            ; preds = %.loopexit93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !215373 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !215373, !noalias !215056, !noundef !14 ; 2 uses
  %i.dy = and i64 %i.dx, 63, !dbg !215373         ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.3.0.i, !dbg !215377
  %i.ea = icmp ult i64 %i.dz, 64, !dbg !215377
  br i1 %i.ea, label %bb.aq, label %bb.ap, !dbg !215377, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !215379, !noalias !215082

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.dw, align 8, !dbg !215380, !alias.scope !215386, !noalias !215389
  br label %bb.as, !dbg !215379

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !215391
  %notmask.i = shl nsw i64 -1, %3, !dbg !215391
  %i.eb = xor i64 %notmask.i, -1, !dbg !215391
  %i.ec = shl i64 %i.eb, %i.dy, !dbg !215392
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !215394 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !215394, !noalias !215056, !noundef !14
  %i.ef = or i64 %i.ee, %i.ec, !dbg !215394
  store i64 %i.ef, ptr %i.ed, align 8, !dbg !215394, !noalias !215056
  %i.eg = add i64 %i.dx, %.sroa.3.0.i, !dbg !215395 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !dbg !215395, !noalias !215056
  br label %bb.as, !dbg !215396

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !215397

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.eh = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.aq ], !dbg !215380
  %i.ei = sub i64 %i.bv, %.sroa.3.0.i, !dbg !215398 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215386), !dbg !215399
  %i.ej = add i64 %i.eh, %i.ei, !dbg !215380
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !215400
  %i.el = load i64, ptr %i.ek, align 8, !dbg !215400, !alias.scope !215386, !noalias !215389, !noundef !14
  %i.em = icmp ugt i64 %i.ej, %i.el, !dbg !215380
  br i1 %i.em, label %bb.at, label %.noexc33, !dbg !215380, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.ei)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !215401

.noexc33:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !215402, !noalias !215403
  store ptr %2, ptr %i.b, align 8, !dbg !215402, !noalias !215404
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !215402 ; 2 uses
  store i64 %i.bv, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !215402, !noalias !215404
  %.sroa.053.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !215402 ; 3 uses
  store i64 0, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !215402, !noalias !215404
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !215402 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !215402, !noalias !215404
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !215402
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !215402, !noalias !215404
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !215405

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc33
  %i.es = phi i64 [ %.pre105, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc33 ], !dbg !215407 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215413), !dbg !215416, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215417), !dbg !215420, !noalias !215082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !215421, !noalias !215422
  call void @llvm.experimental.noalias.scope.decl(metadata !215423), !dbg !215426, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215427), !dbg !215426, !noalias !215082
  %.not.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !215407
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !215429, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !215431), !dbg !215434, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215435), !dbg !215434, !noalias !215082
  %i.et = load i64, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !215437, !alias.scope !215439, !noalias !215440, !noundef !14 ; 7 uses
  %i.eu = load i64, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !215441, !alias.scope !215439, !noalias !215440, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.et, %i.eu, !dbg !215437
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !215437

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.b, align 8, !dbg !215442, !alias.scope !215439, !noalias !215440, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !215442, !range !1781, !noalias !215443, !noundef !14
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808, !dbg !215442
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !215444 ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay, !dbg !215445

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !215446, !noalias !215443, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !215453
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !215453, !noalias !215443, !noundef !14
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !215454
  call void @llvm.assume(i1 %i.fc), !dbg !215457, !noalias !215082
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.et, !dbg !215458
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.fd, align 4, !dbg !215459, !noalias !215443
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !dbg !215460, !alias.scope !215461, !noalias !215462
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !215463

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.ey, align 8, !dbg !215464, !noalias !215443, !noundef !14
  %i.ff = icmp ult i64 %i.et, %i.fe, !dbg !215468
  call void @llvm.assume(i1 %i.ff), !dbg !215471, !noalias !215082
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32, !dbg !215472
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !215472, !noalias !215443, !nonnull !14, !noundef !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 40, !dbg !215479
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !215479, !noalias !215443, !noundef !14
  %i.fk = icmp ult i64 %i.et, %i.fj, !dbg !215480
  call void @llvm.assume(i1 %i.fk), !dbg !215483, !noalias !215082
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.et, !dbg !215484
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !215485

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.fl, %bb.ay ], !dbg !215444 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !215444, !alias.scope !215461, !noalias !215462
  %i.fm = add nuw i64 %i.et, 1, !dbg !215486
  store i64 %i.fm, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !215486, !alias.scope !215439, !noalias !215440
  br label %bb.az, !dbg !215487

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !215490, !alias.scope !215493, !noalias !215494
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.es)
          to label %.noexc34 unwind label %.loopexit, !dbg !215495

.noexc34:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !215496, !range !16, !noalias !215422
  %i.fn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !215487
  br i1 %i.fn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !215487

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc34
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !215497, !noalias !215422
  br label %bb.az, !dbg !215487

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !215497 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !215497, !noalias !215422
  %i.fo = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !215498
  br i1 %i.fo, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_mean0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !215508

.else.i.i.i:                                      ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !215509
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.fp, align 4, !dbg !215508, !noalias !215389, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_mean0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !215508

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_mean0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.fq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !215510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !215511, !noalias !215422
  call void @llvm.experimental.noalias.scope.decl(metadata !215512), !dbg !215515, !noalias !215082
  %i.fr = zext i1 %i.fq to i64, !dbg !215517
  %i.fs = load i64, ptr %i.dw, align 8, !dbg !215519, !alias.scope !215520, !noalias !215389, !noundef !14 ; 2 uses
  %i.ft = and i64 %i.fs, 63, !dbg !215521
  %i.fu = shl nuw i64 %i.fr, %i.ft, !dbg !215517
  %i.fv = load i64, ptr %i.eo, align 8, !dbg !215522, !alias.scope !215520, !noalias !215389, !noundef !14
  %i.fw = or i64 %i.fu, %i.fv, !dbg !215522       ; 3 uses
  store i64 %i.fw, ptr %i.eo, align 8, !dbg !215522, !alias.scope !215520, !noalias !215389
  %i.fx = add i64 %i.fs, 1, !dbg !215523          ; 2 uses
  store i64 %i.fx, ptr %i.dw, align 8, !dbg !215523, !alias.scope !215520, !noalias !215389
  %i.fy = and i64 %i.fx, 63, !dbg !215524
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !215524
  br i1 %i.fz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !215526

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_mean0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ga = load i64, ptr %i.ep, align 8, !dbg !215527, !alias.scope !215520, !noalias !215389, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !215530
  call void @llvm.assume(i1 %i.gb), !dbg !215531, !noalias !215082
  %i.gc = load ptr, ptr %i.eq, align 8, !dbg !215532, !alias.scope !215520, !noalias !215389, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga, !dbg !215537
  store i64 %i.fw, ptr %i.gd, align 1, !dbg !215539, !noalias !215543
  %i.ge = add nuw i64 %i.ga, 8, !dbg !215544
  store i64 %i.ge, ptr %i.ep, align 8, !dbg !215545, !alias.scope !215520, !noalias !215389
  %i.gf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw), !dbg !215547
  %i.gg = load i64, ptr %i.er, align 8, !dbg !215549, !alias.scope !215520, !noalias !215389, !noundef !14
  %i.gh = add i64 %i.gg, %i.gf, !dbg !215549
  store i64 %i.gh, ptr %i.er, align 8, !dbg !215549, !alias.scope !215520, !noalias !215389
  store i64 0, ptr %i.eo, align 8, !dbg !215550, !alias.scope !215520, !noalias !215389
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !215551

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_8agg_mean0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre105 = load i64, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !215407, !alias.scope !215493, !noalias !215494
  br label %bb.au, !dbg !215515

bb.bb:                                            ; preds = %.noexc34, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !215511, !noalias !215422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !215552, !noalias !215403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !215553, !noalias !215056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !215554, !noalias !215056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !215554, !noalias !215056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !215554, !noalias !215056
  %i.gi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !215555, !noalias !215082 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215556), !dbg !215559
  call void @llvm.experimental.noalias.scope.decl(metadata !215560), !dbg !215563, !noalias !215082
  call void @llvm.experimental.noalias.scope.decl(metadata !215565), !dbg !215568, !noalias !215082
  %i.gk = load ptr, ptr %i.h, align 8, !dbg !215570, !alias.scope !215574, !noalias !215082, !nonnull !14, !noundef !14
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !dbg !215575, !noalias !215578
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !215579
  br i1 %i.gm, label %bb.bd, label %.thread68, !dbg !215579

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !215580, !noalias !215082
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread68 unwind label %bb.bw, !dbg !215582

bb.be:                                            ; preds = %bb.bb
  %i.gn = extractvalue { ptr, ptr } %i.gi, 0, !dbg !215554 ; 3 uses
  %i.go = extractvalue { ptr, ptr } %i.gi, 1, !dbg !215554 ; 4 uses
  store ptr %i.gn, ptr %i.h, align 8, !dbg !215554, !noalias !215056
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !215554
  store ptr %i.go, ptr %i.gp, align 8, !dbg !215554, !noalias !215056
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !215583
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !215583, !range !1489, !invariant.load !14
  %i.gs = add nsw i64 %i.gr, -1, !dbg !215583
  %i.gt = and i64 %i.gs, -16, !dbg !215583
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt, !dbg !215583
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !215583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !215587, !noalias !215056
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 456, !dbg !215554
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !215554, !invariant.load !14, !noalias !215082, !nonnull !14
  %i.gy = invoke { ptr, ptr } %i.gx(ptr noundef nonnull %i.gv)
          to label %bb.bf unwind label %bb.bc, !dbg !215588, !noalias !215082 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0, !dbg !215554
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1, !dbg !215554
  store ptr %i.gz, ptr %i.i, align 8, !dbg !215554, !noalias !215056
end_hunk_8
begin_hunk_9_@_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9agg_first:bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216887), !dbg !216850
  call void @llvm.experimental.noalias.scope.decl(metadata !216890), !dbg !216893, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !216895), !dbg !216898, !noalias !216809
  %i.az = load ptr, ptr %i.q, align 8, !dbg !216900, !alias.scope !216904, !noalias !216809, !nonnull !14, !noundef !14
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !dbg !216905, !noalias !216908
  %i.bb = icmp eq i64 %i.ba, 1, !dbg !216909
  br i1 %i.bb, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !216909

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !216910, !noalias !216809
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18 unwind label %bb.bw, !dbg !216912

bb.o:                                             ; preds = %_RNCNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB4_6Column9agg_first0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !216850, !noalias !216783
  call void @llvm.experimental.noalias.scope.decl(metadata !216913), !dbg !216850
  call void @llvm.experimental.noalias.scope.decl(metadata !216916), !dbg !216919, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !216921), !dbg !216924, !noalias !216809
  %i.bc = load ptr, ptr %i.q, align 8, !dbg !216926, !alias.scope !216930, !noalias !216809, !nonnull !14, !noundef !14
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !216931, !noalias !216934
  %i.be = icmp eq i64 %i.bd, 1, !dbg !216935
  br i1 %i.be, label %bb.p, label %bb.s, !dbg !216935

bb.p:                                             ; preds = %bb.o
  fence acquire, !dbg !216936, !noalias !216809
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #51
          to label %bb.s unwind label %bb.r, !dbg !216938

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18: ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45, %bb.ce, %bb.cf, %bb.m, %bb.n, %.thread, %bb.v, %bb.r
  %.pn22.pn.i = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %lpad.thr_comm.split-lp, %bb.ar ], [ %i.bi, %bb.r ], [ %.pn18.pn.pn.i62, %.thread ], [ %.pn18.pn.i73, %bb.v ], [ %i.ay, %bb.n ], [ %i.jn, %bb.cf ], [ %i.jn, %bb.ce ], [ %.pn18.i79, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit45 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !216939), !dbg !216942
  call void @llvm.experimental.noalias.scope.decl(metadata !216943), !dbg !216946, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !216948), !dbg !216951, !noalias !216809
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !216953, !alias.scope !216957, !noalias !216809, !nonnull !14, !noundef !14
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !dbg !216958, !noalias !216961
  %i.bh = icmp eq i64 %i.bg, 1, !dbg !216962
  br i1 %i.bh, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit, !dbg !216962

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18
  fence acquire, !dbg !216963, !noalias !216809
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit unwind label %bb.bw, !dbg !216965

bb.r:                                             ; preds = %bb.p, %bb.bz, %bb.bx, %bb.u, %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18

bb.s:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !216850, !noalias !216783
  %.val12 = load ptr, ptr %i.r, align 8, !dbg !216966, !nonnull !14, !noundef !14
  %.val13 = load ptr, ptr %i.ax, align 8, !dbg !216966, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val13, i64 16, !dbg !216968
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !216968, !range !1489, !invariant.load !14
  %i.bl = add nsw i64 %i.bk, -1, !dbg !216968
  %i.bm = and i64 %i.bl, -16, !dbg !216968
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12, i64 %i.bm, !dbg !216968
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16, !dbg !216968
  %i.bp = getelementptr inbounds nuw i8, ptr %.val13, i64 616, !dbg !216966
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !216966, !invariant.load !14, !noalias !216809, !nonnull !14
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull %i.bo)
          to label %bb.t unwind label %bb.r, !dbg !216972, !noalias !216809

bb.t:                                             ; preds = %bb.s
  br i1 %i.br, label %bb.bx, label %bb.u, !dbg !216966

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !216973, !noalias !216783
  %i.bs = load i64, ptr %2, align 8, !dbg !216974, !range !1781, !alias.scope !216976, !noalias !216809, !noundef !14
  %i.bt = icmp eq i64 %i.bs, -9223372036854775808, !dbg !216974 ; 3 uses
  %..i = select i1 %i.bt, i64 24, i64 16, !dbg !216979
  %.6.i = select i1 %i.bt, i64 1152921504606846976, i64 2305843009213693952, !dbg !216979
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %..i, !dbg !216979
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !216979, !alias.scope !216976, !noalias !216809, !noundef !14 ; 8 uses
  %i.bw = icmp ult i64 %i.bv, %.6.i, !dbg !216979
  call void @llvm.assume(i1 %i.bw), !dbg !216979, !noalias !216809
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn6resize(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %1, i64 noundef %i.bv)
          to label %bb.x unwind label %bb.r, !dbg !216980, !noalias !216809

bb.v:                                             ; preds = %.thread68
  br i1 %.sroa.09.3.i72, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !216981

bb.w:                                             ; preds = %bb.ab, %.loopexit93, %bb.aa, %bb.y, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %.val8 = load ptr, ptr %i.r, align 8, !dbg !216982, !nonnull !14, !noundef !14
  %.val9 = load ptr, ptr %i.ax, align 8, !dbg !216982, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val9, i64 16, !dbg !216984
  %i.bz = load i64, ptr %i.by, align 8, !dbg !216984, !range !1489, !invariant.load !14
  %i.ca = add nsw i64 %i.bz, -1, !dbg !216984
  %i.cb = and i64 %i.ca, -16, !dbg !216984
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.cb, !dbg !216984
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !216984
  %i.ce = getelementptr inbounds nuw i8, ptr %.val9, i64 304, !dbg !216982
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !216982, !invariant.load !14, !noalias !216809, !nonnull !14
  %i.cg = invoke noundef nonnull align 16 ptr %i.cf(ptr noundef nonnull %i.cd)
          to label %bb.y unwind label %bb.w, !dbg !216988, !noalias !216809

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.z unwind label %bb.w, !dbg !216989, !noalias !216809

bb.z:                                             ; preds = %bb.y
  br i1 %i.ch, label %bb.aj, label %bb.aa, !dbg !216982

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !216994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !216994, !noalias !216783
  %.val6 = load ptr, ptr %i.r, align 8, !dbg !216995, !nonnull !14, !noundef !14
  %.val7 = load ptr, ptr %i.ax, align 8, !dbg !216995, !nonnull !14, !align !1668, !noundef !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val7, i64 16, !dbg !216996
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !216996, !range !1489, !invariant.load !14
  %i.ck = add nsw i64 %i.cj, -1, !dbg !216996
  %i.cl = and i64 %i.ck, -16, !dbg !216996
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.cl, !dbg !216996
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !216996
  %i.co = getelementptr inbounds nuw i8, ptr %.val7, i64 304, !dbg !216995
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !216995, !invariant.load !14, !noalias !216809, !nonnull !14
  %i.cq = invoke noundef nonnull align 16 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.ab unwind label %bb.w, !dbg !217000, !noalias !216809

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn17cast_with_options(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.k, ptr noundef nonnull align 16 %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cq, i8 noundef 1)
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit unwind label %bb.w, !dbg !217001

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !217003), !dbg !217006
  call void @llvm.experimental.noalias.scope.decl(metadata !217007), !dbg !217006
  %i.cr = load i8, ptr %i.k, align 16, !dbg !217009, !range !157009, !alias.scope !217007, !noalias !217011, !noundef !14
  %i.cs = icmp eq i8 %i.cr, 31, !dbg !217009
  br i1 %i.cs, label %bb.ac, label %bb.ag, !dbg !217012, !prof !182

bb.ac:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !217013, !noalias !217014
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !217013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !217013, !noalias !217011
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #48
          to label %bb.ae unwind label %bb.ad, !dbg !217015, !noalias !217014

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.thread unwind label %bb.af, !dbg !217016, !noalias !217014

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !217017, !noalias !217014
  unreachable, !dbg !217017

bb.ag:                                            ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn4cast.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !217018, !alias.scope !217019, !noalias !216809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !217020, !noalias !216783
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnEBO_(ptr noalias noundef align 16 dereferenceable(160) %i.m)
          to label %bb.ai unwind label %bb.ah, !dbg !217021, !noalias !216809

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !217021, !noalias !216783
  br label %.thread, !dbg !217020

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.m, ptr noundef nonnull align 16 dereferenceable(160) %i.l, i64 160, i1 false), !dbg !217021, !noalias !216783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !217020
  br label %bb.aj, !dbg !217022

bb.aj:                                            ; preds = %bb.z, %bb.ai
  %.not.i28.i.not = icmp eq i64 %i.bv, 0, !dbg !217023
  br i1 %.not.i28.i.not, label %.loopexit94, label %.lr.ph.i, !dbg !217023

.lr.ph.i:                                         ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !217032, !nonnull !14, !noundef !14
  %i.da = load i64, ptr %i.cx, align 8, !noalias !217032, !noundef !14
  br label %.thread.us.i, !dbg !217023

.thread.us.i:                                     ; preds = %bb.ak, %.lr.ph.split.us.i
  %i.db = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.df, %bb.ak ] ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.da, !dbg !217039
  call void @llvm.assume(i1 %i.dc), !dbg !217042, !noalias !216809
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db, !dbg !217043
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.dd, align 4, !dbg !217044, !noalias !217032
  %i.de = icmp ult i64 %.sroa.05.0.copyload.i.us.i, 4294967296, !dbg !217045
  br i1 %i.de, label %.loopexit93, label %bb.ak, !dbg !217052

bb.ak:                                            ; preds = %.thread.us.i
  %i.df = add nuw i64 %i.db, 1, !dbg !217053      ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.df, %i.bv, !dbg !217023
  br i1 %exitcond45.not.i, label %.loopexit94, label %.thread.us.i, !dbg !217023

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !noalias !217032, !noundef !14
  %i.dk = load ptr, ptr %i.dh, align 8, !noalias !217032, !nonnull !14, !noundef !14
  %i.dl = load i64, ptr %i.dg, align 8, !noalias !217032, !noundef !14
  br label %.else.i, !dbg !217023

.else.i:                                          ; preds = %bb.al, %.lr.ph.split.i
  %i.dm = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ds, %bb.al ] ; 5 uses
  %i.dn = icmp ult i64 %i.dm, %i.dj, !dbg !217054
  call void @llvm.assume(i1 %i.dn), !dbg !217058, !noalias !216809
  %i.do = icmp ult i64 %i.dm, %i.dl, !dbg !217059
  call void @llvm.assume(i1 %i.do), !dbg !217062, !noalias !216809
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dm, !dbg !217063
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.in.i.i.else.val.i = load i32, ptr %i.dq, align 4, !dbg !217052, !noalias !217064
  %i.dr = icmp eq i32 %.sroa.0.0.in.i.i.else.val.i, 0, !dbg !217045
  br i1 %i.dr, label %.loopexit93, label %bb.al, !dbg !217052

bb.al:                                            ; preds = %.else.i
  %i.ds = add nuw i64 %i.dm, 1, !dbg !217053      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ds, %i.bv, !dbg !217023
  br i1 %exitcond.not.i, label %.loopexit94, label %.else.i, !dbg !217023

.loopexit94:                                      ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !217065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !216981, !noalias !216783
  br label %bb.am, !dbg !217066

bb.am:                                            ; preds = %bb.cd, %.loopexit94
  call void @llvm.experimental.noalias.scope.decl(metadata !217068), !dbg !216942
  call void @llvm.experimental.noalias.scope.decl(metadata !217071), !dbg !217074, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !217076), !dbg !217079, !noalias !216809
  %i.dt = load ptr, ptr %i.r, align 8, !dbg !217081, !alias.scope !217085, !noalias !216809, !nonnull !14, !noundef !14
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !217086, !noalias !217089
  %i.dv = icmp eq i64 %i.du, 1, !dbg !217090
  br i1 %i.dv, label %bb.an, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !217090

bb.an:                                            ; preds = %bb.am
  fence acquire, !dbg !217091, !noalias !216809
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #51, !dbg !217093, !noalias !216809
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28, !dbg !217093

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit28: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !216942, !noalias !216783
  br label %_RINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB3_6Column24agg_with_scalar_identityNCNvB2_9agg_first0EB7_.exit, !dbg !217094

.loopexit93:                                      ; preds = %.else.i, %.thread.us.i
  %.sroa.3.0.i = phi i64 [ %i.db, %.thread.us.i ], [ %i.dm, %.else.i ], !dbg !217096 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !217097, !noalias !216783
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.bv)
          to label %bb.ao unwind label %bb.w, !dbg !217099, !noalias !216809

bb.ao:                                            ; preds = %.loopexit93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !217100 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !217100, !noalias !216783, !noundef !14 ; 2 uses
  %i.dy = and i64 %i.dx, 63, !dbg !217100         ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.3.0.i, !dbg !217104
  %i.ea = icmp ult i64 %i.dz, 64, !dbg !217104
  br i1 %i.ea, label %bb.aq, label %bb.ap, !dbg !217104, !prof !861

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %.sroa.3.0.i, i1 noundef zeroext true)
          to label %._crit_edge unwind label %.loopexit.split-lp, !dbg !217106, !noalias !216809

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load i64, ptr %i.dw, align 8, !dbg !217107, !alias.scope !217113, !noalias !217116
  br label %bb.as, !dbg !217106

bb.aq:                                            ; preds = %bb.ao
  %3 = and i64 %.sroa.3.0.i, 63, !dbg !217118
  %notmask.i = shl nsw i64 -1, %3, !dbg !217118
  %i.eb = xor i64 %notmask.i, -1, !dbg !217118
  %i.ec = shl i64 %i.eb, %i.dy, !dbg !217119
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !217121 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !217121, !noalias !216783, !noundef !14
  %i.ef = or i64 %i.ee, %i.ec, !dbg !217121
  store i64 %i.ef, ptr %i.ed, align 8, !dbg !217121, !noalias !216783
  %i.eg = add i64 %i.dx, %.sroa.3.0.i, !dbg !217122 ; 2 uses
  store i64 %i.eg, ptr %i.dw, align 8, !dbg !217122, !noalias !216783
  br label %bb.as, !dbg !217123

bb.ar:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit18, !dbg !217124

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.bb, %bb.at
  %.sroa.09.4.i.ph = phi i1 [ true, %bb.ap ], [ true, %bb.at ], [ false, %bb.bb ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.as:                                            ; preds = %._crit_edge, %bb.aq
  %i.eh = phi i64 [ %.pre, %._crit_edge ], [ %i.eg, %bb.aq ], !dbg !217107
  %i.ei = sub i64 %i.bv, %.sroa.3.0.i, !dbg !217125 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217113), !dbg !217126
  %i.ej = add i64 %i.eh, %i.ei, !dbg !217107
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !217127
  %i.el = load i64, ptr %i.ek, align 8, !dbg !217127, !alias.scope !217113, !noalias !217116, !noundef !14
  %i.em = icmp ugt i64 %i.ej, %i.el, !dbg !217107
  br i1 %i.em, label %bb.at, label %.noexc33, !dbg !217107, !prof !182

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.ei)
          to label %.noexc33 unwind label %.loopexit.split-lp, !dbg !217128

.noexc33:                                         ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !217129, !noalias !217130
  store ptr %2, ptr %i.b, align 8, !dbg !217129, !noalias !217131
  %.sroa.053.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !217129 ; 2 uses
  store i64 %i.bv, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !217129, !noalias !217131
  %.sroa.053.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !217129 ; 3 uses
  store i64 0, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !217129, !noalias !217131
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !217129 ; 3 uses
  store i64 %.sroa.3.0.i, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !217129, !noalias !217131
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !217129
  store i64 %i.ei, ptr %.sroa.555.0..sroa_idx, align 8, !dbg !217129, !noalias !217131
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  br label %bb.au, !dbg !217132

bb.au:                                            ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, %.noexc33
  %i.es = phi i64 [ %.pre105, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i ], [ %.sroa.3.0.i, %.noexc33 ], !dbg !217134 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217140), !dbg !217143, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !217144), !dbg !217147, !noalias !216809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !217148, !noalias !217149
  call void @llvm.experimental.noalias.scope.decl(metadata !217150), !dbg !217153, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !217154), !dbg !217153, !noalias !216809
  %.not.i.i.i.i = icmp eq i64 %i.es, 0, !dbg !217134
  br i1 %.not.i.i.i.i, label %bb.av, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i, !dbg !217156, !prof !861

bb.av:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !217158), !dbg !217161, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !217162), !dbg !217161, !noalias !216809
  %i.et = load i64, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !217164, !alias.scope !217166, !noalias !217167, !noundef !14 ; 7 uses
  %i.eu = load i64, ptr %.sroa.053.sroa.4.0..sroa_idx, align 8, !dbg !217168, !alias.scope !217166, !noalias !217167, !noundef !14
  %.not.i.i.i.i.i = icmp ult i64 %i.et, %i.eu, !dbg !217164
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.bb, !dbg !217164

bb.aw:                                            ; preds = %bb.av
  %i.ev = load ptr, ptr %i.b, align 8, !dbg !217169, !alias.scope !217166, !noalias !217167, !nonnull !14, !align !1668, !noundef !14 ; 5 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !217169, !range !1781, !noalias !217170, !noundef !14
  %i.ex = icmp eq i64 %i.ew, -9223372036854775808, !dbg !217169
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16, !dbg !217171 ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay, !dbg !217172

bb.ax:                                            ; preds = %bb.aw
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !217173, !noalias !217170, !nonnull !14, !noundef !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24, !dbg !217180
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !217180, !noalias !217170, !noundef !14
  %i.fc = icmp ult i64 %i.et, %i.fb, !dbg !217181
  call void @llvm.assume(i1 %i.fc), !dbg !217184, !noalias !216809
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.et, !dbg !217185
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %i.fd, align 4, !dbg !217186, !noalias !217170
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.en, align 8, !dbg !217187, !alias.scope !217188, !noalias !217189
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !217190

bb.ay:                                            ; preds = %bb.aw
  %i.fe = load i64, ptr %i.ey, align 8, !dbg !217191, !noalias !217170, !noundef !14
  %i.ff = icmp ult i64 %i.et, %i.fe, !dbg !217195
  call void @llvm.assume(i1 %i.ff), !dbg !217198, !noalias !216809
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32, !dbg !217199
  %i.fh = load ptr, ptr %i.fg, align 8, !dbg !217199, !noalias !217170, !nonnull !14, !noundef !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 40, !dbg !217206
  %i.fj = load i64, ptr %i.fi, align 8, !dbg !217206, !noalias !217170, !noundef !14
  %i.fk = icmp ult i64 %i.et, %i.fj, !dbg !217207
  call void @llvm.assume(i1 %i.fk), !dbg !217210, !noalias !216809
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.et, !dbg !217211
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i, !dbg !217212

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.ax ], [ %i.fl, %bb.ay ], !dbg !217171 ; 2 uses
  store ptr %.sink.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !217171, !alias.scope !217188, !noalias !217189
  %i.fm = add nuw i64 %i.et, 1, !dbg !217213
  store i64 %i.fm, ptr %.sroa.053.sroa.5.0..sroa_idx, align 8, !dbg !217213, !alias.scope !217166, !noalias !217167
  br label %bb.az, !dbg !217214

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %bb.au
  store i64 0, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !217217, !alias.scope !217220, !noalias !217221
  invoke void @_RNvXsd_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8positionNtB5_14GroupsTypeIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3nth(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef %i.es)
          to label %.noexc34 unwind label %.loopexit, !dbg !217222

.noexc34:                                         ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !dbg !217223, !range !16, !noalias !217149
  %i.fn = trunc nuw i64 %.pre.i.i.i to i1, !dbg !217214
  br i1 %i.fn, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, label %bb.bb, !dbg !217214

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i: ; preds = %.noexc34
  %.sroa.5.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !dbg !217224, !noalias !217149
  br label %bb.az, !dbg !217214

bb.az:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i
  %.sroa.5.0.copyload.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.pre.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.i._crit_edge.i.i ], [ %.sink.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENtNtNtB8_6traits8iterator8Iterator4nextB15_.exit.thread.i.i.i ], !dbg !217224 ; 2 uses
  %.sroa.42.0.copyload.i.i.i = load i32, ptr %.sroa.42.0..sroa_idx.i.i.i, align 4, !dbg !217224, !noalias !217149
  %i.fo = icmp eq ptr %.sroa.5.0.copyload.i.i.i, null, !dbg !217225
  br i1 %i.fo, label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_9agg_first0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, label %.else.i.i.i, !dbg !217235

.else.i.i.i:                                      ; preds = %bb.az
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i.i, i64 8, !dbg !217236
  %.sroa.0.0.in.i.else.val.i.i.i = load i32, ptr %i.fp, align 4, !dbg !217235, !noalias !217116, !noundef !14
  br label %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_9agg_first0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i, !dbg !217235

_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_9agg_first0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i: ; preds = %.else.i.i.i, %bb.az
  %.sroa.0.0.in.i.i.i.i = phi i32 [ %.sroa.42.0.copyload.i.i.i, %bb.az ], [ %.sroa.0.0.in.i.else.val.i.i.i, %.else.i.i.i ]
  %i.fq = icmp ne i32 %.sroa.0.0.in.i.i.i.i, 0, !dbg !217237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !217238, !noalias !217149
  call void @llvm.experimental.noalias.scope.decl(metadata !217239), !dbg !217242, !noalias !216809
  %i.fr = zext i1 %i.fq to i64, !dbg !217244
  %i.fs = load i64, ptr %i.dw, align 8, !dbg !217246, !alias.scope !217247, !noalias !217116, !noundef !14 ; 2 uses
  %i.ft = and i64 %i.fs, 63, !dbg !217248
  %i.fu = shl nuw i64 %i.fr, %i.ft, !dbg !217244
  %i.fv = load i64, ptr %i.eo, align 8, !dbg !217249, !alias.scope !217247, !noalias !217116, !noundef !14
  %i.fw = or i64 %i.fu, %i.fv, !dbg !217249       ; 3 uses
  store i64 %i.fw, ptr %i.eo, align 8, !dbg !217249, !alias.scope !217247, !noalias !217116
  %i.fx = add i64 %i.fs, 1, !dbg !217250          ; 2 uses
  store i64 %i.fx, ptr %i.dw, align 8, !dbg !217250, !alias.scope !217247, !noalias !217116
  %i.fy = and i64 %i.fx, 63, !dbg !217251
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !217251
  br i1 %i.fz, label %bb.ba, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !217253

bb.ba:                                            ; preds = %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_9agg_first0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %i.ga = load i64, ptr %i.ep, align 8, !dbg !217254, !alias.scope !217247, !noalias !217116, !noundef !14 ; 3 uses
  %i.gb = icmp sgt i64 %i.ga, -1, !dbg !217257
  call void @llvm.assume(i1 %i.gb), !dbg !217258, !noalias !216809
  %i.gc = load ptr, ptr %i.eq, align 8, !dbg !217259, !alias.scope !217247, !noalias !217116, !nonnull !14, !noundef !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga, !dbg !217264
  store i64 %i.fw, ptr %i.gd, align 1, !dbg !217266, !noalias !217270
  %i.ge = add nuw i64 %i.ga, 8, !dbg !217271
  store i64 %i.ge, ptr %i.ep, align 8, !dbg !217272, !alias.scope !217247, !noalias !217116
  %i.gf = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fw), !dbg !217274
  %i.gg = load i64, ptr %i.er, align 8, !dbg !217276, !alias.scope !217247, !noalias !217116, !noundef !14
  %i.gh = add i64 %i.gg, %i.gf, !dbg !217276
  store i64 %i.gh, ptr %i.er, align 8, !dbg !217276, !alias.scope !217247, !noalias !217116
  store i64 0, ptr %i.eo, align 8, !dbg !217277, !alias.scope !217247, !noalias !217116
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i, !dbg !217278

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i: ; preds = %bb.ba, %_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1c_4skip4SkipNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupsTypeIterENCINvMNtB2k_6columnNtB3y_6Column24agg_with_scalar_identityNCNvB3x_9agg_first0Es_0EbENtNtNtB1e_6traits8iterator8Iterator4nextB2m_.exit.i
  %.pre105 = load i64, ptr %.sroa.454.0..sroa_idx, align 8, !dbg !217134, !alias.scope !217220, !noalias !217221
  br label %bb.au, !dbg !217242

bb.bb:                                            ; preds = %.noexc34, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !217238, !noalias !217149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !217279, !noalias !217130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !217280, !noalias !216783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !217281, !noalias !216783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !217281, !noalias !216783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.g, ptr noundef nonnull align 16 dereferenceable(160) %i.m, i64 160, i1 false), !dbg !217281, !noalias !216783
  %i.gi = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn24take_materialized_series(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.g)
          to label %bb.be unwind label %.loopexit.split-lp, !dbg !217282, !noalias !216809 ; 2 uses

bb.bc:                                            ; preds = %bb.be
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217283), !dbg !217286
  call void @llvm.experimental.noalias.scope.decl(metadata !217287), !dbg !217290, !noalias !216809
  call void @llvm.experimental.noalias.scope.decl(metadata !217292), !dbg !217295, !noalias !216809
  %i.gk = load ptr, ptr %i.h, align 8, !dbg !217297, !alias.scope !217301, !noalias !216809, !nonnull !14, !noundef !14
  %i.gl = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !dbg !217302, !noalias !217305
  %i.gm = icmp eq i64 %i.gl, 1, !dbg !217306
  br i1 %i.gm, label %bb.bd, label %.thread68, !dbg !217306

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !217307, !noalias !216809
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h) #51
          to label %.thread68 unwind label %bb.bw, !dbg !217309

bb.be:                                            ; preds = %bb.bb
  %i.gn = extractvalue { ptr, ptr } %i.gi, 0, !dbg !217281 ; 3 uses
  %i.go = extractvalue { ptr, ptr } %i.gi, 1, !dbg !217281 ; 4 uses
  store ptr %i.gn, ptr %i.h, align 8, !dbg !217281, !noalias !216783
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !217281
  store ptr %i.go, ptr %i.gp, align 8, !dbg !217281, !noalias !216783
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gn) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16, !dbg !217310
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !217310, !range !1489, !invariant.load !14
  %i.gs = add nsw i64 %i.gr, -1, !dbg !217310
  %i.gt = and i64 %i.gs, -16, !dbg !217310
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gt, !dbg !217310
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !217310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !217314, !noalias !216783
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 456, !dbg !217281
  %i.gx = load ptr, ptr %i.gw, align 8, !dbg !217281, !invariant.load !14, !noalias !216809, !nonnull !14
  %i.gy = invoke { ptr, ptr } %i.gx(ptr noundef nonnull %i.gv)
          to label %bb.bf unwind label %bb.bc, !dbg !217315, !noalias !216809 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.gz = extractvalue { ptr, ptr } %i.gy, 0, !dbg !217281
  %i.ha = extractvalue { ptr, ptr } %i.gy, 1, !dbg !217281
  store ptr %i.gz, ptr %i.i, align 8, !dbg !217281, !noalias !216783
end_hunk_9
