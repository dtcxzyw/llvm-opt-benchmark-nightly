inline.NumInlined: 2387
inline.NumDeleted: 1171
begin_hunk_0_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvXs3_NtCs8EvorvD8vmS_4ruff5cacheNtBV_15PackageCacheMapNtBV_13PackageCaches7persist0INtB6_5FnMutTTRNtNtCs2AWtUsOyxgP_3std4path4PathNtBV_5CacheEEE8call_mutBX_:bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.024.0.copyload25.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i
  %.sroa.7.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx26.i.i.i, i64 16, i1 false), !noalias !3385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3394
  store i64 %.sroa.024.0.copyload25.i.i.i, ptr %i.l, align 8, !noalias !3394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx28.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false), !noalias !3394
  call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  call void @llvm.experimental.noalias.scope.decl(metadata !3414)
  %i.br = invoke noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !3416 ; 3 uses

.loopexit.i.i.i.i:                                ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.i.i.i.i.i, %.noexc.i.i.i.i, %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i.i.i.i:                       ; preds = %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0EB1t_.exit.i.i.i.i, %bb.k
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #33
          to label %.body.i.i.i unwind label %bb.u, !noalias !3416

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.bs = lshr i64 %i.br, 57
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  %i.bu = load i64, ptr %i.am, align 8, !alias.scope !3425, !noalias !3426, !noundef !11 ; 2 uses
  %i.bv = load ptr, ptr %i.ak, align 8, !alias.scope !3425, !noalias !3426, !nonnull !11, !noundef !11 ; 2 uses
  %i.bw = insertelement <16 x i8> poison, i8 %i.bt, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx28.i.i.i, align 8, !alias.scope !3428, !noalias !3429 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !3428, !noalias !3429
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.dc, %bb.r ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.br, %bb.m ], [ %i.dd, %bb.r ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.bu ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.by, align 1, !noalias !3430 ; 2 uses
  %i.bz = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.bx
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i.not36.i.i.i.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.not36.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.q
  %.sroa.06.0.i37.i.i.i.i.i = phi i16 [ %i.db, %bb.q ], [ %i.ca, %bb.n ] ; 3 uses
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i37.i.i.i.i.i, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.cc
  %i.ce = and i64 %i.cd, %i.bu
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [48 x i8], ptr %i.bv, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -40
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !3433, !nonnull !11, !noundef !11
  %i.ci = getelementptr i8, ptr %i.cg, i64 -32
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !noalias !3433, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3436
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !3416

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3436
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i) ], !noalias !3437
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i.i)
          to label %.noexc5.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !3416

.noexc5.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3438), !noalias !3437
  call void @llvm.experimental.noalias.scope.decl(metadata !3441), !noalias !3437
  %i.cj = load ptr, ptr %i.i, align 8, !alias.scope !3438, !noalias !3443, !nonnull !11, !noundef !11
  %i.ck = load i64, ptr %i.bh, align 8, !alias.scope !3438, !noalias !3443, !noundef !11 ; 2 uses
  %i.cl = load ptr, ptr %i.h, align 8, !alias.scope !3441, !noalias !3444, !nonnull !11, !noundef !11
  %i.cm = load i64, ptr %i.bi, align 8, !alias.scope !3441, !noalias !3444, !noundef !11
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.o, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.i.i.i.i.i

bb.o:                                             ; preds = %.noexc5.i.i.i.i
  %i.co = load i8, ptr %i.bj, align 8, !range !1688, !alias.scope !3438, !noalias !3443, !noundef !11
  %i.cp = load i8, ptr %i.bk, align 8, !range !1688, !alias.scope !3441, !noalias !3444, !noundef !11
  %i.cq = icmp eq i8 %i.co, %i.cp
  %i.cr = load i8, ptr %i.bl, align 1, !range !1688, !alias.scope !3438, !noalias !3443
  %i.cs = icmp eq i8 %i.cr, 2
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.cq, i1 %i.cs, i1 false
  %i.ct = load i8, ptr %i.bm, align 1, !range !1688, !alias.scope !3441, !noalias !3444
  %i.cu = icmp eq i8 %i.ct, 2
  %or.cond7.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i1 %i.cu, i1 false
  br i1 %or.cond7.i.i.i.i.i.i.i.i.i, label %bb.p, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cj, ptr nonnull %i.cl, i64 %i.ck), !noalias !3445
  %i.cv = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.thread.i.i.i.i.i, label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.i.i.i.i.i

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.thread.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3436
  br label %.loopexit8.i.i.i.i

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %.noexc5.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !3444
  %i.cw = invoke noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.g)
          to label %.noexc6.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !3416

.noexc6.i.i.i.i:                                  ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3436
  br i1 %i.cw, label %.loopexit8.i.i.i.i, label %bb.q, !prof !1798

._crit_edge.i.i.i.i.i:                            ; preds = %bb.q, %bb.n
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0EB1t_.exit.i.i.i.i, !prof !74

bb.q:                                             ; preds = %.noexc6.i.i.i.i
  %i.da = add i16 %.sroa.06.0.i37.i.i.i.i.i, -1
  %i.db = and i16 %i.da, %.sroa.06.0.i37.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dc = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.dd = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.dc
  br label %bb.n

.loopexit8.i.i.i.i:                               ; preds = %.noexc6.i.i.i.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0E0B1v_.exit.thread.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff.exit.i.i.i.i unwind label %bb.s, !noalias !3416

bb.s:                                             ; preds = %.loopexit8.i.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i.i.i unwind label %bb.t, !noalias !3416

bb.t:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !3416
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff.exit.i.i.i.i: ; preds = %.loopexit8.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.thread.i.i.i unwind label %bb.j, !noalias !3385

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0EB1t_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE0EB1t_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y)
          to label %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !3416

bb.u:                                             ; preds = %bb.l
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !3416
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i: ; preds = %bb.y, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i, %.loopexit99.i.i.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.ac unwind label %bb.ab, !noalias !3385

_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.i.i.i: ; preds = %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1p_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entry0EB1t_.exit.i.i.i.i
  %.sroa.039.0.copyload40.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !3447, !noalias !3448 ; 2 uses
  %.sroa.741.0.copyload43.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx28.i.i.i, align 8, !alias.scope !3447, !noalias !3448 ; 2 uses
  %.not10.i.i.i = icmp eq i64 %.sroa.039.0.copyload40.i.i.i, -1
  br i1 %.not10.i.i.i, label %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.thread.i.i.i, label %bb.x

_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.thread.i.i.i: ; preds = %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff.exit.i.i.i.i
  %.sroa.741.072.i.i.i = phi ptr [ %.sroa.741.0.copyload43.i.i.i, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.i.i.i ], [ %i.cg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff.exit.i.i.i.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.741.072.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3394
  %i.dh = getelementptr inbounds i8, ptr %.sroa.741.072.i.i.i, i64 -24 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !noalias !3385, !noundef !11
  %.not11.i.i.i = icmp eq i64 %i.di, %.sroa.7.sroa.5.0.copyload.i.i.i
  br i1 %.not11.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.thread.i.i.i
  %i.dj = getelementptr inbounds i8, ptr %.sroa.741.072.i.i.i, i64 -8
  store i8 0, ptr %i.dj, align 8, !noalias !3385
  %i.dk = getelementptr inbounds i8, ptr %.sroa.741.072.i.i.i, i64 -7
  store i8 0, ptr %i.dk, align 1, !noalias !3385
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.thread.i.i.i
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %i.dh, align 8, !noalias !3385
  %i.dl = load i64, ptr %i.ai, align 8, !alias.scope !3395, !noalias !3385, !noundef !11
  %i.dm = getelementptr inbounds i8, ptr %.sroa.741.072.i.i.i, i64 -16
  store atomic i64 %i.dl, ptr %i.dm monotonic, align 8, !noalias !3385
  br label %2

bb.x:                                             ; preds = %_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryB1C_.exit.i.i.i
  %.sroa.9.0.copyload45.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !3447, !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3394
  %.val13.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !3395, !noalias !3385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3449
  store i64 %.sroa.039.0.copyload40.i.i.i, ptr %i.f, align 8, !noalias !3394
  store ptr %.sroa.741.0.copyload43.i.i.i, ptr %.sroa.432.0..sroa_idx33.i.i.i, align 8, !noalias !3394
  store ptr %.sroa.9.0.copyload45.i.i.i, ptr %.sroa.6.0..sroa_idx36.i.i.i, align 8, !noalias !3394
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %i.bn, align 8, !noalias !3449
  store i64 %.val13.i.i.i, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 8, !noalias !3449
  store i8 0, ptr %.sroa.5.0..sroa_idx.i22.i.i.i, align 8, !noalias !3449
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !noalias !3449
  %i.dn = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEE14insert_no_growB1s_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef %i.br, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %.noexc23.i.i.i unwind label %bb.j, !noalias !3385

.noexc23.i.i.i:                                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3449
  br label %2

2:                                                ; preds = %.noexc23.i.i.i, %bb.w
  %.pn.i.i.i.i = phi ptr [ %i.dn, %.noexc23.i.i.i ], [ %.sroa.741.072.i.i.i, %bb.w ] ; 2 uses
  %3 = icmp eq i8 %.sroa.7.sroa.6.0.copyload.i.i.i, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -7
  store i8 1, ptr %5, align 1, !noalias !3385
  br label %bb.y

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -8
  store i8 %.sroa.7.sroa.6.0.copyload.i.i.i, ptr %7, align 8, !noalias !3385
  br label %bb.y

bb.y:                                             ; preds = %6, %4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.do = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !3452, !noalias !3406, !nonnull !11, !noundef !11
  %i.dp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3452, !noalias !3406, !nonnull !11, !noundef !11 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.do
  br i1 %i.dq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i.i.i

bb.z:                                             ; preds = %bb.aa, %.body.i.i.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !3385
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.h, %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i.i.i:                         ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs8EvorvD8vmS_4ruff5cache6ChangeEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #33
          to label %.body.i.i unwind label %bb.z, !noalias !3385

.body.i.i:                                        ; preds = %bb.bo, %bb.bn, %.split.i.i, %bb.al, %bb.ab, %bb.aa, %.body.i.i.i, %bb.d
  %.pn46.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.al ], [ %.pn4488.i.i, %bb.bo ], [ %lpad.phi.i.i.i, %bb.aa ], [ %i.ag, %bb.d ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ds, %bb.ab ], [ %i.ff, %bb.bn ], [ %lpad.thr_comm.split-lp.i.i, %.split.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8EvorvD8vmS_4ruff5cache5CacheEBF_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.w) #33
          to label %bb.bp unwind label %bb.bh, !noalias !3385

bb.ab:                                            ; preds = %bb.ai, %bb.af, %bb.ae, %bb.ac, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs8EvorvD8vmS_4ruff5cache6ChangeEEB1b_.exit.i.i.i, %bb.b, %bb.a
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ac:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8EvorvD8vmS_4ruff5cache6ChangeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3454
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !3388, !noalias !3385, !nonnull !11, !noundef !11
  %i.dv = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !3388, !noalias !3385, !noundef !11
  %i.dx = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dw)
          to label %bb.ad unwind label %bb.ab, !noalias !3385 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i, label %bb.af, label %bb.ae, !prof !74

bb.ae:                                            ; preds = %bb.ad
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3455
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 6, ptr %i.ea, align 8, !noalias !3455
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @97, ptr %i.eb, align 8, !noalias !3455
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 4, ptr %i.ec, align 8, !noalias !3455
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ed, align 8, !noalias !3455
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.ee, align 8, !noalias !3455
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 0, ptr %i.ef, align 8, !noalias !3455
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  store i8 0, ptr %i.eh, align 1, !noalias !3455
  store i32 1, ptr %i.e, align 8, !noalias !3455
  store i32 438, ptr %i.eg, align 4, !noalias !3455
  invoke void @_RINvMs_CsfvFeDaCgI3J_8tempfileNtB5_7Builder11tempfile_inRNtNtCs2AWtUsOyxgP_3std4path4PathECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef %i.dz)
          to label %bb.ah unwind label %bb.ab, !noalias !3385

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #36
          to label %bb.ag unwind label %bb.ab, !noalias !3385

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3455
  call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ej = load i8, ptr %i.ei, align 8, !range !429, !alias.scope !3462, !noalias !3464, !noundef !11 ; 2 uses
  %i.ek = icmp eq i8 %i.ej, 2
  %i.el = load ptr, ptr %i.u, align 8, !alias.scope !3465, !noalias !3454 ; 2 uses
  br i1 %i.ek, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.em = invoke noundef nonnull ptr @_RINvXNtNtCsiXichZnxgbf_6anyhow7context3extNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB3_8StdError11ext_contextReECs8EvorvD8vmS_4ruff(ptr noundef nonnull %i.el, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 31)
          to label %bb.aj unwind label %bb.ab, !noalias !3385

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3454
  br label %bb.bf

bb.ak:                                            ; preds = %bb.ah
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3466, !noalias !3454
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.11.0..sroa_idx.i.i, i64 15, i1 false), !noalias !3454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3454
  store ptr %i.el, ptr %i.v, align 8, !noalias !3454
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3454
  %.sroa.513.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 %i.ej, ptr %.sroa.513.0..sroa_idx.i.i, align 8, !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3454
  invoke void @_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv4util5alloc11aligned_vecNtB4_10AlignedVec13with_capacityCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef 0)
          to label %bb.am unwind label %.split.thread.i.i, !noalias !3385

bb.al:                                            ; preds = %bb.ar
  br i1 %.sroa.028.2.i.i, label %bb.bo, label %.body.i.i

.split.thread.i.i:                                ; preds = %_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1b_E7contextReECs8EvorvD8vmS_4ruff.exit.i.i, %bb.ao, %bb.am, %bb.ak
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.split.i.i:                                       ; preds = %bb.bi, %bb.bd
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.am:                                            ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.434.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !3454
  store ptr %i.en, ptr %i.o, align 8, !noalias !3454
  invoke void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocator5alloc5ArenaEEE4withNCINvNtNtNtNtB1W_4util5alloc5arena6detail10with_arenaINtNtBZ_6result6ResultNtNtB2W_11aligned_vec10AlignedVecNtCsht2POEgrkhf_6rancor5ErrorENCINvNtNtB1W_3api4high11to_bytes_inB40_B4x_NtNtCs8EvorvD8vmS_4ruff5cache12PackageCacheE0E0B3E_EB5M_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @94, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.an unwind label %.split.thread.i.i, !noalias !3385

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3454
  call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  %i.eo = load ptr, ptr %i.s, align 8, !alias.scope !3470, !noalias !3472, !noundef !11 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.eq = invoke noundef nonnull ptr @_RINvXNtNtCsiXichZnxgbf_6anyhow7context3extNtCsht2POEgrkhf_6rancor5ErrorNtB3_8StdError11ext_contextReECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 30)
          to label %bb.ap unwind label %.split.thread.i.i, !noalias !3385

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3454
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsgYAxyi3ZRSt_4rkyv4util5alloc11aligned_vec10AlignedVecECs8EvorvD8vmS_4ruff.exit59.i.i

bb.aq:                                            ; preds = %bb.an
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.674.0.copyload.i.i = load ptr, ptr %.sroa.674.0..sroa_idx.i.i, align 8, !alias.scope !3473, !noalias !3454
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.9.0.copyload.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !3473, !noalias !3454 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3454
  store ptr %i.eo, ptr %i.t, align 8, !noalias !3454
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.674.0.copyload.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !3454
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !3454
  %i.er = invoke noundef ptr @_RNvXsk_NtCsfvFeDaCgI3J_8tempfile4fileNtB5_13NamedTempFileNtNtCs2AWtUsOyxgP_3std2io5Write9write_allCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %.sroa.9.0.copyload.i.i)
          to label %bb.at unwind label %bb.as, !noalias !3385 ; 2 uses

bb.ar:                                            ; preds = %bb.bg, %.body62.i.i, %bb.as
  %.sroa.028.2.i.i = phi i1 [ %.sroa.028.3.i.i, %bb.as ], [ false, %.body62.i.i ], [ false, %bb.bg ]
  %.pn.i.i = phi { ptr, i32 } [ %i.es, %bb.as ], [ %eh.lpad-body63.i.i, %.body62.i.i ], [ %eh.lpad-body63.i.i, %bb.bg ] ; 2 uses
  invoke void @_RNvXNtNtNtCsgYAxyi3ZRSt_4rkyv4util5alloc11aligned_vecNtB2_10AlignedVecNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.al unwind label %bb.bh, !noalias !3385

bb.as:                                            ; preds = %bb.be, %bb.av, %bb.au, %bb.aq
  %.sroa.028.3.i.i = phi i1 [ false, %bb.be ], [ true, %bb.aq ], [ false, %bb.av ], [ true, %bb.au ]
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq
  %.not.i56.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i56.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = invoke noundef nonnull ptr @_RINvXNtNtCsiXichZnxgbf_6anyhow7context3extNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB3_8StdError11ext_contextReECs8EvorvD8vmS_4ruff(ptr noundef nonnull %i.er, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 51)
          to label %_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1b_E7contextReECs8EvorvD8vmS_4ruff.exit.i.i unwind label %bb.as, !noalias !3385

_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1b_E7contextReECs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %bb.au
  invoke void @_RNvXNtNtNtCsgYAxyi3ZRSt_4rkyv4util5alloc11aligned_vecNtB2_10AlignedVecNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsgYAxyi3ZRSt_4rkyv4util5alloc11aligned_vec10AlignedVecECs8EvorvD8vmS_4ruff.exit59.i.i unwind label %.split.thread.i.i, !noalias !3385

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !3454
  invoke void @_RINvMsg_NtCsfvFeDaCgI3J_8tempfile4fileNtB6_13NamedTempFile7persistRNtNtCs2AWtUsOyxgP_3std4path7PathBufECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w)
end_hunk_0
