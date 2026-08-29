Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.11?download=true
inline.NumInlined: 6320
inline.NumDeleted: 2547
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness13is_sorted_rec0B9_:bb.a
  store i64 %i.wo, ptr %i.wp, align 8, !dbg !98695
  br label %bb.eb, !dbg !98696

.thread337:                                       ; preds = %bb.do, %bb.dm
  %i.wq = getelementptr i8, ptr %i.ge, i64 299, !dbg !98697
  %.val166 = load i8, ptr %i.wq, align 1, !dbg !98697, !range !620, !noundef !11
  %.not280 = icmp eq i8 %.val166, 2, !dbg !98698
  br i1 %.not280, label %.thread, label %bb.es, !dbg !98701

bb.es:                                            ; preds = %.thread337
  %i.wr = getelementptr inbounds nuw i8, ptr %i.cz, i64 48, !dbg !98702
  %i.ws = load i64, ptr %i.wr, align 16, !dbg !98702, !noundef !11 ; 2 uses
  %i.wt = icmp ult i64 %i.ws, 82351536043346213, !dbg !98710
  call void @llvm.assume(i1 %i.wt), !dbg !98712
  %i.wu = icmp eq i64 %i.ws, 0, !dbg !98713
  br i1 %i.wu, label %bb.et, label %.thread, !dbg !98713

bb.et:                                            ; preds = %bb.es
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ge, i64 152, !dbg !98716
  %i.ww = call fastcc ptr @_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness13is_sorted_rec0si_0Bb_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.wv) #46, !dbg !98717 ; 2 uses
  store ptr %i.ww, ptr %i.ba, align 8, !dbg !98718
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !98718
  store i64 1, ptr %i.wx, align 8, !dbg !98718
  br label %bb.ab, !dbg !98719

bb.eu:                                            ; preds = %bb.dm, %bb.dn
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ge, i64 40, !dbg !98720 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ge, i64 63, !dbg !98722
  %i.xa = load i8, ptr %i.wz, align 1, !dbg !98722, !range !5336, !noundef !11
  %i.xb = icmp eq i8 %i.xa, -40, !dbg !98734
  br i1 %i.xb, label %bb.ev, label %bb.ew, !dbg !98734

bb.ev:                                            ; preds = %bb.eu
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wy) #44, !dbg !98735
  br label %bb.ex, !dbg !98735

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.wy, i64 24, i1 false), !dbg !98736
  br label %bb.ex, !dbg !98739

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !98740
  store i64 1, ptr %i.d, align 8, !dbg !98740
  %i.xc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98740
  store i64 1, ptr %i.xc, align 8, !dbg !98740
  %i.xd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !98740 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xd, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !98740
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !98740
  store i8 2, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !98740
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 41, !dbg !98740
  store i8 2, ptr %.sroa.551.0..sroa_idx, align 1, !dbg !98740
  %i.xe = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 48)
          to label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerANtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6Sortedj1_EE3newB19_.exit unwind label %bb.ey, !dbg !98749, !noalias !98751 ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  %i.xh = load i8, ptr %i.xg, align 1, !dbg !98754, !range !5336, !alias.scope !98764, !noundef !11
  %i.xi = icmp eq i8 %i.xh, -40, !dbg !98779
  br i1 %i.xi, label %.split.i.i, label %common.resume, !prof !32

.split.i.i:                                       ; preds = %bb.ey
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.xd)
          to label %common.resume unwind label %bb.ez, !dbg !98780

bb.ez:                                            ; preds = %.split.i.i
  %i.xj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !98781
  unreachable, !dbg !98781

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerANtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6Sortedj1_EE3newB19_.exit: ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.xe, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !98782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !98783
  br label %.thread266, !dbg !98784

bb.fa:                                            ; preds = %bb.v
  %i.xk = extractvalue { ptr, i64 } %i.gt, 1, !dbg !97417
  store ptr %i.gu, ptr %i.u, align 8, !dbg !98785
  %i.xl = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !98785 ; 2 uses
  store i64 %i.xk, ptr %i.xl, align 8, !dbg !98785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !98788
  %i.xm = invoke fastcc { ptr, i64 } @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness13is_sorted_rec(i64 noundef %i.gj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.go, ptr noalias noundef align 8 dereferenceable(64) %i.bl, ptr noalias noundef align 8 dereferenceable(64) %i.be, ptr noalias noundef align 8 dereferenceable(64) %i.gq, ptr noalias noundef align 8 dereferenceable(64) %i.gs, i1 noundef zeroext %i.bt)
          to label %bb.fd unwind label %bb.fc, !dbg !98790 ; 2 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit228: ; preds = %bb.ff, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit235, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !98791
  br label %_RNvXsb_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortednessNtB5_8IRSortedNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.sink.split, !dbg !97220

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit230: ; preds = %bb.fh, %bb.fi, %bb.fc
  %.pn142 = phi { ptr, i32 } [ %i.xq, %bb.fc ], [ %.pn140, %bb.fi ], [ %.pn140, %bb.fh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98792), !dbg !98791
  call void @llvm.experimental.noalias.scope.decl(metadata !98795), !dbg !98798
  call void @llvm.experimental.noalias.scope.decl(metadata !98800), !dbg !98803
  %i.xn = load ptr, ptr %i.u, align 8, !dbg !98805, !alias.scope !98809, !nonnull !11, !noundef !11
  %i.xo = atomicrmw sub ptr %i.xn, i64 1 release, align 8, !dbg !98810, !noalias !98809
  %i.xp = icmp eq i64 %i.xo, 1, !dbg !98813
  br i1 %i.xp, label %bb.fb, label %common.resume, !dbg !98813

bb.fb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit230
  fence acquire, !dbg !98814
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #44
          to label %common.resume unwind label %bb.ay, !dbg !98816

bb.fc:                                            ; preds = %bb.fw, %bb.fu, %bb.fa
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit230

bb.fd:                                            ; preds = %bb.fa
  %i.xr = extractvalue { ptr, i64 } %i.xm, 0, !dbg !98790 ; 6 uses
  %.not131 = icmp eq ptr %i.xr, null, !dbg !98817
  br i1 %.not131, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit235, label %bb.fe, !dbg !98819

bb.fe:                                            ; preds = %bb.fd
  %i.xs = extractvalue { ptr, i64 } %i.xm, 1, !dbg !98790 ; 2 uses
  store ptr %i.xr, ptr %i.t, align 8, !dbg !98820
  %i.xt = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !98820
  store i64 %i.xs, ptr %i.xt, align 8, !dbg !98820
  %i.xu = icmp eq i64 %i.xs, 1, !dbg !98823
  br i1 %i.xu, label %bb.fg, label %.loopexit283, !dbg !98823

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit235: ; preds = %.loopexit283, %bb.fw, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !98825
  call void @llvm.experimental.noalias.scope.decl(metadata !98826), !dbg !98791
  call void @llvm.experimental.noalias.scope.decl(metadata !98829), !dbg !98832
  call void @llvm.experimental.noalias.scope.decl(metadata !98834), !dbg !98837
  %i.xv = load ptr, ptr %i.u, align 8, !dbg !98839, !alias.scope !98843, !nonnull !11, !noundef !11
  %i.xw = atomicrmw sub ptr %i.xv, i64 1 release, align 8, !dbg !98844, !noalias !98843
  %i.xx = icmp eq i64 %i.xw, 1, !dbg !98847
  br i1 %i.xx, label %bb.ff, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit228, !dbg !98847

bb.ff:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit235
  fence acquire, !dbg !98848
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #44, !dbg !98850
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit228, !dbg !98850

bb.fg:                                            ; preds = %bb.fe
  %i.xy = load ptr, ptr %i.u, align 8, !dbg !98851, !nonnull !11, !noundef !11
  %i.xz = load i64, ptr %i.xl, align 8, !dbg !98851, !noundef !11 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 16, !dbg !98858 ; 3 uses
  %.idx361 = shl nuw nsw i64 %i.xz, 5, !dbg !98865
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %.idx361, !dbg !98865 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xr, i64 41 ; 2 uses
  %i.yd = icmp eq i64 %i.xz, 0, !dbg !98869
  br i1 %i.yd, label %._crit_edge360, label %.lr.ph359, !dbg !98871

bb.fh:                                            ; preds = %bb.fs, %bb.fj
  %.pn140 = phi { ptr, i32 } [ %i.yh, %bb.fj ], [ %i.abc, %bb.fs ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98878), !dbg !98825
  call void @llvm.experimental.noalias.scope.decl(metadata !98881), !dbg !98884
  call void @llvm.experimental.noalias.scope.decl(metadata !98886), !dbg !98889
  %i.ye = load ptr, ptr %i.t, align 8, !dbg !98891, !alias.scope !98895, !nonnull !11, !noundef !11
  %i.yf = atomicrmw sub ptr %i.ye, i64 1 release, align 8, !dbg !98896, !noalias !98895
  %i.yg = icmp eq i64 %i.yf, 1, !dbg !98899
  br i1 %i.yg, label %bb.fi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit230, !dbg !98899

bb.fi:                                            ; preds = %bb.fh
  fence acquire, !dbg !98900
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit230 unwind label %bb.ay, !dbg !98902

bb.fj:                                            ; preds = %bb.fm
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fk:                                            ; preds = %bb.fl
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.065.0357, i64 32, !dbg !98903 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.yb, !dbg !98869
  br i1 %i.yj, label %._crit_edge360, label %.lr.ph359, !dbg !98871

.lr.ph359:                                        ; preds = %bb.fg, %bb.fk
  %.sroa.065.0357 = phi ptr [ %i.yi, %bb.fk ], [ %i.ya, %bb.fg ] ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.065.0357, i64 25, !dbg !98906
  %i.yl = load i8, ptr %i.yk, align 1, !dbg !98906, !range !620, !noundef !11 ; 2 uses
  %.not132 = icmp eq i8 %i.yl, 2, !dbg !98906
  br i1 %.not132, label %.loopexit283, label %bb.fl, !dbg !98915

._crit_edge360:                                   ; preds = %bb.fk, %bb.fg
  br i1 %i.gm, label %bb.fn, label %bb.fm, !dbg !98916

bb.fl:                                            ; preds = %.lr.ph359
  %i.ym = load i8, ptr %i.yc, align 1, !dbg !98917, !range !620, !noundef !11
  %.not134 = icmp eq i8 %i.yl, %i.ym
  br i1 %.not134, label %bb.fk, label %.loopexit283, !dbg !98922

bb.fm:                                            ; preds = %bb.fo, %._crit_edge360
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterB13_EEE9from_iterB1b_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull %i.ya, ptr noundef nonnull %i.yb)
          to label %bb.fp unwind label %bb.fj, !dbg !98923

bb.fn:                                            ; preds = %._crit_edge360
  %i.yn = load i8, ptr %i.yc, align 1, !dbg !98935, !range !620, !noundef !11 ; 2 uses
  %.not136 = icmp eq i8 %i.yn, 2, !dbg !98935
  br i1 %.not136, label %.loopexit283, label %bb.fo, !dbg !98941

bb.fo:                                            ; preds = %bb.fn
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xr, i64 40, !dbg !98942
  %i.yp = load i8, ptr %i.yo, align 8, !dbg !98942, !range !620, !noundef !11 ; 2 uses
  %.not135 = icmp eq i8 %i.yp, 2, !dbg !98943
  %.not277 = icmp eq i8 %i.yp, %i.yn
  %or.cond = or i1 %.not135, %.not277, !dbg !98946
  br i1 %or.cond, label %.loopexit283, label %bb.fm, !dbg !98946

bb.fp:                                            ; preds = %bb.fm
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xr, i64 40, !dbg !98947
  %i.yr = load i8, ptr %i.yq, align 8, !dbg !98947, !range !620, !noundef !11
  switch i8 %i.yr, label %bb.fr [
    i8 2, label %bb.fq
    i8 0, label %.loopexit
  ], !dbg !98949

bb.fq:                                            ; preds = %bb.fp
  %i.ys = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !98950
  %i.yt = load ptr, ptr %i.ys, align 8, !dbg !98950, !nonnull !11, !noundef !11 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !98964
  %i.yv = load i64, ptr %i.yu, align 8, !dbg !98964, !noundef !11 ; 2 uses
  %.idx290 = shl i64 %i.yv, 5, !dbg !98965        ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %.idx290, !dbg !98965
  %i.yx = icmp eq i64 %i.yv, 0, !dbg !98973
  br i1 %i.yx, label %.loopexit, label %.lr.ph286.preheader, !dbg !98982

.lr.ph286.preheader:                              ; preds = %bb.fq
  %i.yy = add i64 %.idx290, -32, !dbg !98982      ; 2 uses
  %i.yz = lshr exact i64 %i.yy, 5, !dbg !98982
  %i.za = add nuw nsw i64 %i.yz, 1, !dbg !98982
  %xtraiter = and i64 %i.za, 7, !dbg !98982       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !98982
  br i1 %lcmp.mod.not, label %.lr.ph286.prol.loopexit, label %.lr.ph286.prol, !dbg !98982

.lr.ph286.prol:                                   ; preds = %.lr.ph286.preheader, %.lr.ph286.prol
  %.sroa.079.0284.prol = phi ptr [ %i.zb, %.lr.ph286.prol ], [ %i.yt, %.lr.ph286.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph286.prol ], [ 0, %.lr.ph286.preheader ]
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.079.0284.prol, i64 32, !dbg !98983 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.079.0284.prol, i64 24, !dbg !98985
  store i8 2, ptr %i.zc, align 8, !dbg !98985
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.079.0284.prol, i64 25, !dbg !98987
  store i8 2, ptr %i.zd, align 1, !dbg !98987
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !98982 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !98982
  br i1 %prol.iter.cmp.not, label %.lr.ph286.prol.loopexit, label %.lr.ph286.prol, !dbg !98982, !llvm.loop !98988

.lr.ph286.prol.loopexit:                          ; preds = %.lr.ph286.prol, %.lr.ph286.preheader
  %.sroa.079.0284.unr = phi ptr [ %i.yt, %.lr.ph286.preheader ], [ %i.zb, %.lr.ph286.prol ]
  %i.ze = icmp ult i64 %i.yy, 224, !dbg !98982
  br i1 %i.ze, label %.loopexit, label %.lr.ph286, !dbg !98982

.lr.ph286:                                        ; preds = %.lr.ph286.prol.loopexit, %.lr.ph286
  %.sroa.079.0284 = phi ptr [ %i.zt, %.lr.ph286 ], [ %.sroa.079.0284.unr, %.lr.ph286.prol.loopexit ] ; 17 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 24, !dbg !98985
  store i8 2, ptr %i.zf, align 8, !dbg !98985
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 25, !dbg !98987
  store i8 2, ptr %i.zg, align 1, !dbg !98987
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 56, !dbg !98985
  store i8 2, ptr %i.zh, align 8, !dbg !98985
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 57, !dbg !98987
  store i8 2, ptr %i.zi, align 1, !dbg !98987
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 88, !dbg !98985
  store i8 2, ptr %i.zj, align 8, !dbg !98985
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 89, !dbg !98987
  store i8 2, ptr %i.zk, align 1, !dbg !98987
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 120, !dbg !98985
  store i8 2, ptr %i.zl, align 8, !dbg !98985
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 121, !dbg !98987
  store i8 2, ptr %i.zm, align 1, !dbg !98987
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 152, !dbg !98985
  store i8 2, ptr %i.zn, align 8, !dbg !98985
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 153, !dbg !98987
  store i8 2, ptr %i.zo, align 1, !dbg !98987
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 184, !dbg !98985
  store i8 2, ptr %i.zp, align 8, !dbg !98985
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 185, !dbg !98987
  store i8 2, ptr %i.zq, align 1, !dbg !98987
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 216, !dbg !98985
  store i8 2, ptr %i.zr, align 8, !dbg !98985
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 217, !dbg !98987
  store i8 2, ptr %i.zs, align 1, !dbg !98987
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 256, !dbg !98983 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 248, !dbg !98985
  store i8 2, ptr %i.zu, align 8, !dbg !98985
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.079.0284, i64 249, !dbg !98987
  store i8 2, ptr %i.zv, align 1, !dbg !98987
  %i.zw = icmp eq ptr %i.zt, %i.yw, !dbg !98973
  br i1 %i.zw, label %.loopexit, label %.lr.ph286, !dbg !98982

.loopexit:                                        ; preds = %.lr.ph286.prol.loopexit, %.lr.ph286, %.lr.ph289.prol.loopexit, %.lr.ph289, %bb.fq, %bb.fr, %bb.fp
  %i.zx = invoke fastcc { ptr, i64 } @_RNvXs1b_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtB8_3vec3VecBI_EE4fromBQ_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.s)
          to label %bb.ft unwind label %bb.fs, !dbg !98989 ; 2 uses

bb.fr:                                            ; preds = %bb.fp
  %i.zy = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !98991
  %i.zz = load ptr, ptr %i.zy, align 8, !dbg !98991, !nonnull !11, !noundef !11 ; 5 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !99005
  %i.aab = load i64, ptr %i.aaa, align 8, !dbg !99005, !noundef !11 ; 2 uses
  %.idx291 = shl i64 %i.aab, 5, !dbg !99006       ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 %.idx291, !dbg !99006
  %i.aad = icmp eq i64 %i.aab, 0, !dbg !99014
  br i1 %i.aad, label %.loopexit, label %.lr.ph289.preheader, !dbg !99022

.lr.ph289.preheader:                              ; preds = %bb.fr
  %i.aae = add i64 %.idx291, -32, !dbg !99022     ; 2 uses
  %i.aaf = and i64 %i.aae, 32, !dbg !99022
  %lcmp.mod364.not.not = icmp eq i64 %i.aaf, 0, !dbg !99022
  br i1 %lcmp.mod364.not.not, label %.lr.ph289.prol, label %.lr.ph289.prol.loopexit, !dbg !99022

.lr.ph289.prol:                                   ; preds = %.lr.ph289.preheader
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zz, i64 32, !dbg !99023
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zz, i64 24, !dbg !99025 ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 8, !dbg !99025, !range !620, !noundef !11 ; 2 uses
  %.not138.prol = icmp eq i8 %i.aai, 2, !dbg !99027
  %i.aaj = xor i8 %i.aai, 1, !dbg !99030
  %.sroa.073.0.prol = select i1 %.not138.prol, i8 2, i8 %i.aaj, !dbg !99030
  store i8 %.sroa.073.0.prol, ptr %i.aah, align 8, !dbg !99031
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zz, i64 25, !dbg !99032 ; 2 uses
  %i.aal = load i8, ptr %i.aak, align 1, !dbg !99032, !range !620, !noundef !11 ; 2 uses
  %.not139.prol = icmp eq i8 %i.aal, 2, !dbg !99033
  %i.aam = xor i8 %i.aal, 1, !dbg !99036
  %.sroa.076.0.prol = select i1 %.not139.prol, i8 2, i8 %i.aam, !dbg !99036
  store i8 %.sroa.076.0.prol, ptr %i.aak, align 1, !dbg !99037
  br label %.lr.ph289.prol.loopexit, !dbg !99022

.lr.ph289.prol.loopexit:                          ; preds = %.lr.ph289.prol, %.lr.ph289.preheader
  %.sroa.070.0287.unr = phi ptr [ %i.zz, %.lr.ph289.preheader ], [ %i.aag, %.lr.ph289.prol ]
  %i.aan = icmp eq i64 %i.aae, 0, !dbg !99022
  br i1 %i.aan, label %.loopexit, label %.lr.ph289, !dbg !99022

.lr.ph289:                                        ; preds = %.lr.ph289.prol.loopexit, %.lr.ph289
  %.sroa.070.0287 = phi ptr [ %i.aau, %.lr.ph289 ], [ %.sroa.070.0287.unr, %.lr.ph289.prol.loopexit ] ; 5 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.070.0287, i64 24, !dbg !99025 ; 2 uses
  %i.aap = load i8, ptr %i.aao, align 8, !dbg !99025, !range !620, !noundef !11 ; 2 uses
  %.not138 = icmp eq i8 %i.aap, 2, !dbg !99027
  %i.aaq = xor i8 %i.aap, 1, !dbg !99030
  %.sroa.073.0 = select i1 %.not138, i8 2, i8 %i.aaq, !dbg !99030
  store i8 %.sroa.073.0, ptr %i.aao, align 8, !dbg !99031
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.070.0287, i64 25, !dbg !99032 ; 2 uses
  %i.aas = load i8, ptr %i.aar, align 1, !dbg !99032, !range !620, !noundef !11 ; 2 uses
  %.not139 = icmp eq i8 %i.aas, 2, !dbg !99033
  %i.aat = xor i8 %i.aas, 1, !dbg !99036
  %.sroa.076.0 = select i1 %.not139, i8 2, i8 %i.aat, !dbg !99036
  store i8 %.sroa.076.0, ptr %i.aar, align 1, !dbg !99037
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.070.0287, i64 64, !dbg !99023 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.070.0287, i64 56, !dbg !99025 ; 2 uses
  %i.aaw = load i8, ptr %i.aav, align 8, !dbg !99025, !range !620, !noundef !11 ; 2 uses
  %.not138.1 = icmp eq i8 %i.aaw, 2, !dbg !99027
  %i.aax = xor i8 %i.aaw, 1, !dbg !99030
  %.sroa.073.0.1 = select i1 %.not138.1, i8 2, i8 %i.aax, !dbg !99030
  store i8 %.sroa.073.0.1, ptr %i.aav, align 8, !dbg !99031
  %i.aay = getelementptr inbounds nuw i8, ptr %.sroa.070.0287, i64 57, !dbg !99032 ; 2 uses
  %i.aaz = load i8, ptr %i.aay, align 1, !dbg !99032, !range !620, !noundef !11 ; 2 uses
  %.not139.1 = icmp eq i8 %i.aaz, 2, !dbg !99033
  %i.aba = xor i8 %i.aaz, 1, !dbg !99036
  %.sroa.076.0.1 = select i1 %.not139.1, i8 2, i8 %i.aba, !dbg !99036
  store i8 %.sroa.076.0.1, ptr %i.aay, align 1, !dbg !99037
  %i.abb = icmp eq ptr %i.aau, %i.aac, !dbg !99014
  br i1 %i.abb, label %.loopexit, label %.lr.ph289, !dbg !99022

bb.fs:                                            ; preds = %.loopexit
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh, !dbg !99038

bb.ft:                                            ; preds = %.loopexit
  %i.abd = extractvalue { ptr, i64 } %i.zx, 0, !dbg !98989
  %i.abe = extractvalue { ptr, i64 } %i.zx, 1, !dbg !98989
  store ptr %i.abd, ptr %i.ba, align 8, !dbg !99039
  %i.abf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !99039
  store i64 %i.abe, ptr %i.abf, align 8, !dbg !99039
  call void @llvm.experimental.noalias.scope.decl(metadata !99040), !dbg !98825
  call void @llvm.experimental.noalias.scope.decl(metadata !99043), !dbg !99046
  call void @llvm.experimental.noalias.scope.decl(metadata !99048), !dbg !99051
  %i.abg = load ptr, ptr %i.t, align 8, !dbg !99053, !alias.scope !99057, !nonnull !11, !noundef !11
  %i.abh = atomicrmw sub ptr %i.abg, i64 1 release, align 8, !dbg !99058, !noalias !99057
  %i.abi = icmp eq i64 %i.abh, 1, !dbg !99061
  br i1 %i.abi, label %bb.fu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit232, !dbg !99061

bb.fu:                                            ; preds = %bb.ft
  fence acquire, !dbg !99062
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit232 unwind label %bb.fc, !dbg !99064

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit232: ; preds = %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !98825
  call void @llvm.experimental.noalias.scope.decl(metadata !99065), !dbg !98791
  call void @llvm.experimental.noalias.scope.decl(metadata !99068), !dbg !99071
  call void @llvm.experimental.noalias.scope.decl(metadata !99073), !dbg !99076
  %i.abj = load ptr, ptr %i.u, align 8, !dbg !99078, !alias.scope !99082, !nonnull !11, !noundef !11
  %i.abk = atomicrmw sub ptr %i.abj, i64 1 release, align 8, !dbg !99083, !noalias !99082
  %i.abl = icmp eq i64 %i.abk, 1, !dbg !99086
  br i1 %i.abl, label %bb.fv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit233, !dbg !99086

bb.fv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit232
  fence acquire, !dbg !99087
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6SortedE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #44, !dbg !99089
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit233, !dbg !99089

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit233: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit232, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !98791
  br label %thread-pre-split, !dbg !99090

.loopexit283:                                     ; preds = %bb.fl, %.lr.ph359, %bb.fo, %bb.fn, %bb.fe
  %i.abm = atomicrmw sub ptr %i.xr, i64 1 release, align 8, !dbg !99091, !noalias !99097
  %i.abn = icmp eq i64 %i.abm, 1, !dbg !99104
  br i1 %i.abn, label %bb.fw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness8IRSortedEBO_.exit235, !dbg !99104
end_hunk_0
