Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.11?download=true
inline.NumInlined: 1144
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4_14UnigramTrainer8finalize:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit
  %i.aq = load i64, ptr %i.i, align 8, !range !7, !noundef !6
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !8, !noundef !6 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.av = load i64, ptr %i.au, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.at, i64 %i.av) #29
          to label %bb.z unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.au, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.at, 4
  tail call void @llvm.assume(i1 %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aw, ptr noundef nonnull align 1 dereferenceable(5) @102, i64 5, i1 false)
  store i64 %i.at, ptr %i.y, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aw, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ay = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.g unwind label %bb.c       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringdEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTBQ_dEE9from_iterINtNtNtB1A_8adapters6cloned6ClonedNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model15UnigramIteratorEEB3q_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noundef nonnull align 8 %2, i64 noundef 0)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body57, %bb.an, %.body63.thread, %.body57.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body63.thread ], [ %lpad.thr_comm.split-lp, %.body57 ], [ %eh.lpad-body5883, %.body57.thread ], [ %i.fi, %bb.an ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.014.4 = phi i8 [ 1, %.body63.thread ], [ 0, %.body57 ], [ 1, %.body57.thread ], [ 1, %bb.an ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.af, %bb.ab, %bb.y, %.invoke, %bb.x, %bb.w, %bb.r, %bb.ar, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.bn, %bb.i
  %.sroa.0.0 = phi double [ 0.000000e+00, %bb.i ], [ %.sroa.0.1, %bb.bn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %bb.l unwind label %bb.k

.body63.thread:                                   ; preds = %bb.br, %bb.bk, %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp159, %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bf, %bb.k ], [ %i.gz, %bb.bk ], [ %i.hi, %bb.br ]
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %.body unwind label %bb.bg

bb.k:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body63.thread

bb.l:                                             ; preds = %bb.j
  %i.bg = load i64, ptr %i.g, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.bg, -1
  br i1 %.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bh = load i64, ptr %i.az, align 8, !alias.scope !1887, !noundef !6
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %.noexc49 unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  %i.bk = lshr i64 %i.bj, 57
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = load i64, ptr %i.bb, align 8, !alias.scope !1890, !noundef !6 ; 2 uses
  %i.bn = load ptr, ptr %i.x, align 8, !alias.scope !1890, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = insertelement <16 x i8> poison, i8 %i.bl, i64 0
  %i.bp = shufflevector <16 x i8> %i.bo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.noexc49
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc49 ], [ %i.cg, %bb.q ]
  %.pn.i.i.i = phi i64 [ %i.bj, %.noexc49 ], [ %i.ch, %bb.q ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.bm   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !1891 ; 2 uses
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.bp
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.p
  %.sroa.06.0.i33.i.i = phi i16 [ %i.cf, %bb.p ], [ %i.bs, %bb.o ] ; 3 uses
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.01.0.i.i.i, %i.bu
  %i.bw = and i64 %i.bv, %i.bm
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [32 x i8], ptr %i.bn, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -32
  %i.ca = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bz)
          to label %.noexc50 unwind label %.loopexit.split-lp96.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.lr.ph.i.i
  br i1 %i.ca, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringdNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.p, !prof !23

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %i.cb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %bb.q, label %select.unfold, !prof !9

bb.p:                                             ; preds = %.noexc50
  %i.ce = add i16 %.sroa.06.0.i33.i.i, -1
  %i.cf = and i16 %i.ce, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cg = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ch = add i64 %.sroa.01.0.i.i.i, %i.cg
  br label %bb.o

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !12, !noundef !6
  %.not35 = icmp eq i64 %i.cj, -1                 ; 2 uses
  br i1 %.not35, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52..loopexit93_crit_edge, label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52..loopexit93_crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.loopexit93

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !6 ; 6 uses
  %.idx = shl nuw nsw i64 %i.cn, 5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx
  %i.cp = icmp eq i64 %i.cn, 0
  br i1 %i.cp, label %.loopexit94, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !1892, !noundef !6 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !6
  br label %bb.t

bb.t:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.cu = phi ptr [ %i.cl, %.lr.ph.i ], [ %i.cw, %.backedge.i ] ; 3 uses
  %i.cv = phi i64 [ 0, %.lr.ph.i ], [ %i.db, %.backedge.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 16
  %.val9.i = load i64, ptr %i.cx, align 8, !noalias !1892, !noundef !6
  %i.cy = icmp eq i64 %.val9.i, %i.cr
  br i1 %i.cy, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i, label %.backedge.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i: ; preds = %bb.t
  %i.cz = getelementptr i8, ptr %i.cu, i64 8
  %.val8.i = load ptr, ptr %i.cz, align 8, !noalias !1892, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val8.i, ptr nonnull %i.ct, i64 %i.cr), !noalias !1892
  %i.da = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.da, label %.loopexit93, label %.backedge.i

.backedge.i:                                      ; preds = %bb.t, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i
  %i.db = add nuw nsw i64 %i.cv, 1
  %i.dc = icmp eq ptr %i.cw, %i.co
  br i1 %i.dc, label %.loopexit94, label %bb.t

.loopexit94:                                      ; preds = %.backedge.i, %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.de = load i32, ptr %i.dd, align 8, !noundef !6
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp ult i64 %i.cn, 288230376151711744
  call void @llvm.assume(i1 %i.dg)
  %i.dh = xor i64 %i.cn, -1
  %i.di = add nsw i64 %i.df, %i.dh
  br label %bb.u

bb.u:                                             ; preds = %.loopexit93, %.loopexit94
  %i.dj = phi i64 [ %i.dt, %.loopexit93 ], [ %i.cn, %.loopexit94 ]
  %.sroa.030.0 = phi i1 [ false, %.loopexit93 ], [ true, %.loopexit94 ]
  %.sroa.06.0 = phi i64 [ %i.dy, %.loopexit93 ], [ %i.di, %.loopexit94 ] ; 2 uses
  %.sroa.4.0 = phi i64 [ %.sroa.4.1, %.loopexit93 ], [ 0, %.loopexit94 ]
  %.sroa.05.0 = phi i64 [ %.sroa.05.1, %.loopexit93 ], [ 1, %.loopexit94 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !6 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 288230376151711744
  call void @llvm.assume(i1 %i.dm)
  %.not106 = icmp eq i64 %i.dl, 0
  br i1 %.not106, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  br label %bb.y

.loopexit93:                                      ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52..loopexit93_crit_edge
  %i.dt = phi i64 [ %.pre, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52..loopexit93_crit_edge ], [ %i.cn, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i ] ; 3 uses
  %.sroa.4.1 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52..loopexit93_crit_edge ], [ %i.cv, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i ]
  %.sroa.05.1 = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit52..loopexit93_crit_edge ], [ 1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenuINtNtNtBf_3ops12control_flow11ControlFlowjENCINvNvB1e_8find_map5checkTjB25_EjNCNvMs_NtNtNtB2c_6models7unigram7trainerNtB4D_14UnigramTrainer8finalize0E0E0B2c_.exit.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.dv = load i32, ptr %i.du, align 8, !noundef !6
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp ult i64 %i.dt, 288230376151711744
  call void @llvm.assume(i1 %i.dx)
  %i.dy = sub nsw i64 %i.dw, %i.dt
  br label %bb.u

thread-pre-split:                                 ; preds = %.backedge, %bb.u
  %.pr = load i64, ptr %i.ac, align 8
  %.pre115 = load ptr, ptr %i.ab, align 8
  br label %.loopexit92

.loopexit92:                                      ; preds = %bb.aq, %thread-pre-split
  %i.dz = phi ptr [ %.pre115, %thread-pre-split ], [ %i.fk, %bb.aq ] ; 2 uses
  %i.ea = phi i64 [ %.pr, %thread-pre-split ], [ %.sroa.06.0, %bb.aq ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1893
  store ptr %i.a, ptr %i.b, align 8, !noalias !1894
  %i.eb = icmp samesign ult i64 %i.ea, 2
  br i1 %i.eb, label %bb.ar, label %bb.v, !prof !23

bb.v:                                             ; preds = %.loopexit92
  %i.ec = icmp samesign ult i64 %i.ea, 21
  br i1 %i.ec, label %bb.x, label %bb.w, !prof !23

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0INtNtB14_3vec3VecBZ_EEB2k_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 288230376151711744) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1r_5sliceSB1m_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer8finalizes_0E0EB2I_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 288230376151711744) %i.ea, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.031.0105 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %.backedge ] ; 2 uses
  %i.ed = load ptr, ptr %i.dn, align 8, !nonnull !6, !noundef !6
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %.sroa.031.0105 ; 3 uses
  %i.ef = add nuw nsw i64 %.sroa.031.0105, 1      ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !6 ; 10 uses
  %i.ek = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE12contains_keyeECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ej)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.av, %bb.e
  unreachable

bb.aa:                                            ; preds = %bb.y
  br i1 %i.ek, label %.backedge, label %bb.ab

.backedge:                                        ; preds = %bb.aa, %bb.aq
  %i.el = load i64, ptr %i.dk, align 8, !noundef !6 ; 2 uses
  %i.em = icmp ult i64 %i.el, 288230376151711744
  call void @llvm.assume(i1 %i.em)
  %i.en = icmp samesign ult i64 %i.ef, %i.el
  br i1 %i.en, label %bb.y, label %thread-pre-split

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ej, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.eo = load i64, ptr %i.f, align 8, !range !7, !noundef !6
  %i.ep = trunc nuw i64 %i.eo to i1
  %i.eq = load i64, ptr %i.do, align 8, !range !8, !noundef !6 ; 3 uses
  br i1 %i.ep, label %bb.ad, label %bb.ae, !prof !9

bb.ad:                                            ; preds = %bb.ac
  %i.er = load i64, ptr %i.dp, align 8
  br label %.invoke

bb.ae:                                            ; preds = %bb.ac
  %i.es = load ptr, ptr %i.dp, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.et = icmp ule i64 %i.ej, %i.eq
  call void @llvm.assume(i1 %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not36 = icmp eq i64 %i.ej, 0                  ; 2 uses
  br i1 %.not36, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ag, %bb.ae
  store i64 %i.eq, ptr %i.q, align 8
  store ptr %i.es, ptr %.sroa.422.0..sroa_idx, align 8
  store i64 %i.ej, ptr %.sroa.623.0..sroa_idx, align 8
  %i.eu = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.es, ptr nonnull align 1 %i.eh, i64 %i.ej, i1 false)
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ej, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load i64, ptr %i.e, align 8, !range !7, !noundef !6
  %i.ew = trunc nuw i64 %i.ev to i1
  %i.ex = load i64, ptr %i.dq, align 8, !range !8, !noundef !6 ; 3 uses
  br i1 %i.ew, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load i64, ptr %i.dr, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.ad, %bb.aj
  %i.ez = phi i64 [ %i.ex, %bb.aj ], [ %i.eq, %bb.ad ]
  %i.fa = phi i64 [ %i.ey, %bb.aj ], [ %i.er, %bb.ad ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ez, i64 %i.fa) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fb = load ptr, ptr %i.dr, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.fc = icmp ule i64 %i.ej, %i.ex
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not36, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ap, %bb.ak
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.fe = load double, ptr %i.fd, align 8, !noundef !6 ; 2 uses
  %.inv = fcmp ord double %i.fe, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.fe, double 0.000000e+00
  store i64 %i.ex, ptr %i.p, align 8
  store ptr %i.fb, ptr %.sroa.428.0..sroa_idx, align 8
  store i64 %i.ej, ptr %.sroa.529.0..sroa_idx, align 8
  store double %spec.store.select, ptr %i.ds, align 8
  %i.ff = load i64, ptr %i.ac, align 8, !alias.scope !1895, !noundef !6 ; 4 uses
  %i.fg = load i64, ptr %i.aa, align 8, !range !11, !alias.scope !1895, !noundef !6
  %i.fh = icmp eq i64 %i.ff, %i.fg
  br i1 %i.fh, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.aq unwind label %bb.an, !noalias !1896

bb.an:                                            ; preds = %bb.am
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p) #31
          to label %.body unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
