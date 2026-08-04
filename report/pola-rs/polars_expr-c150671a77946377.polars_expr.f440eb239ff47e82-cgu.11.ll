inline.NumInlined: 9010
inline.NumDeleted: 3867
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvXs1_NtNtCs8774dFTUdNv_12polars_arrow5array20static_array_collectINtNtB8_9primitive14PrimitiveArraydEINtB6_13ArrayFromIterINtNtCscgRAwXFJnXP_4core6option6OptiondEE13arr_from_iterINtNtNtNtB24_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB4t_:bb.a
          to label %bb.ab unwind label %bb.j, !dbg !70821

bb.aa:                                            ; preds = %._crit_edge79, %bb.k, %bb.ab
  %i.bn = phi i64 [ %.pre, %._crit_edge79 ], [ %i.az, %bb.k ], [ %i.ce, %bb.ab ], !dbg !70822 ; 2 uses
  %i.bo = load ptr, ptr %i.z, align 8, !dbg !70826, !nonnull !13, !noundef !13
  %i.bp = icmp ult i64 %i.bn, 1152921504606846976, !dbg !70835
  call void @llvm.assume(i1 %i.bp), !dbg !70837
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn, !dbg !70838
  store double %.sroa.07.0, ptr %i.bq, align 8, !dbg !70841
  %i.br = load i64, ptr %i.aa, align 8, !dbg !70845, !noundef !13 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 1152921504606846976, !dbg !70847
  call void @llvm.assume(i1 %i.bs), !dbg !70849
  %i.bt = add nuw nsw i64 %i.br, 1, !dbg !70850
  store i64 %i.bt, ptr %i.aa, align 8, !dbg !70851
  call void @llvm.experimental.noalias.scope.decl(metadata !70854), !dbg !70857
  %i.bu = zext i1 %i.as to i64, !dbg !70858
  %i.bv = load i64, ptr %i.ai, align 8, !dbg !70860, !alias.scope !70854, !noundef !13 ; 2 uses
  %i.bw = and i64 %i.bv, 63, !dbg !70861
  %i.bx = shl nuw i64 %i.bu, %i.bw, !dbg !70858
  %i.by = load i64, ptr %i.ak, align 8, !dbg !70862, !alias.scope !70854, !noundef !13
  %i.bz = or i64 %i.bx, %i.by, !dbg !70862        ; 3 uses
  store i64 %i.bz, ptr %i.ak, align 8, !dbg !70862, !alias.scope !70854
  %i.ca = add i64 %i.bv, 1, !dbg !70863           ; 2 uses
  store i64 %i.ca, ptr %i.ai, align 8, !dbg !70863, !alias.scope !70854
  %i.cb = and i64 %i.ca, 63, !dbg !70864
  %i.cc = icmp eq i64 %i.cb, 0, !dbg !70864
  br i1 %i.cc, label %bb.ad, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !70866

bb.ab:                                            ; preds = %bb.z
  %i.cd = load i64, ptr %i.j, align 8, !dbg !70867, !range !56, !noundef !13
  %i.ce = load i64, ptr %i.aa, align 8, !dbg !70873, !noundef !13 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 1152921504606846976, !dbg !70875
  call void @llvm.assume(i1 %i.cf), !dbg !70877
  %i.cg = sub nsw i64 %i.cd, %i.ce, !dbg !70878   ; 2 uses
  %i.ch = load i64, ptr %i.ai, align 8, !dbg !70879, !noundef !13
  %i.ci = add i64 %i.ch, %i.cg, !dbg !70879
  %i.cj = load i64, ptr %i.aj, align 8, !dbg !70882, !noundef !13
  %i.ck = icmp ugt i64 %i.ci, %i.cj, !dbg !70879
  br i1 %i.ck, label %bb.ac, label %bb.aa, !dbg !70879, !prof !395

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.cg)
          to label %._crit_edge79 unwind label %bb.j, !dbg !70883

._crit_edge79:                                    ; preds = %bb.ac
  %.pre = load i64, ptr %i.aa, align 8, !dbg !70822
  br label %bb.aa, !dbg !70883

bb.ad:                                            ; preds = %bb.aa
  %i.cl = load i64, ptr %i.al, align 8, !dbg !70884, !alias.scope !70854, !noundef !13 ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, -1, !dbg !70887
  call void @llvm.assume(i1 %i.cm), !dbg !70888
  %i.cn = load ptr, ptr %i.am, align 8, !dbg !70889, !alias.scope !70854, !nonnull !13, !noundef !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl, !dbg !70894
  store i64 %i.bz, ptr %i.co, align 1, !dbg !70896, !noalias !70854
  %i.cp = add nuw i64 %i.cl, 8, !dbg !70900
  store i64 %i.cp, ptr %i.al, align 8, !dbg !70901, !alias.scope !70854
  %i.cq = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bz), !dbg !70903
  %i.cr = load i64, ptr %i.an, align 8, !dbg !70905, !alias.scope !70854, !noundef !13
  %i.cs = add i64 %i.cr, %i.cq, !dbg !70905
  store i64 %i.cs, ptr %i.an, align 8, !dbg !70905, !alias.scope !70854
  store i64 0, ptr %i.ak, align 8, !dbg !70906, !alias.scope !70854
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !70907

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.aa, %bb.ad
  %i.ct = load ptr, ptr %i.ac, align 8, !dbg !70703, !alias.scope !70908, !noalias !70713, !nonnull !13, !noundef !13
  %i.cu = load ptr, ptr %i.ad, align 8, !dbg !70715, !alias.scope !70908, !noalias !70713, !nonnull !13, !noundef !13 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ct, !dbg !70715
  br i1 %i.cv, label %._crit_edge, label %bb.h, !dbg !70717

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit.thread: ; preds = %bb.j, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit
  %.pn1653 = phi { ptr, i32 } [ %.pn.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit ], [ %i.ay, %bb.j ], [ %i.bd, %bb.l ] ; 2 uses
  %.sroa.011.152 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit ], [ true, %bb.j ], [ true, %bb.l ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.i) #45
          to label %bb.f unwind label %bb.x, !dbg !70773

bb.ae:                                            ; preds = %.thread37, %bb.f
  %.pn16.pn42 = phi { ptr, i32 } [ %i.ab, %.thread37 ], [ %.pn1653, %bb.f ] ; 2 uses
  %.sroa.012.141 = phi i1 [ true, %.thread37 ], [ false, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #45
          to label %bb.b unwind label %bb.x, !dbg !70700

bb.af:                                            ; preds = %bb.e
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit24: ; preds = %bb.s, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit, %bb.f, %bb.ag, %bb.b
  %.pn1930 = phi { ptr, i32 } [ %.pn16.pn42, %bb.b ], [ %.pn1931, %bb.ag ], [ %.pn1653, %bb.f ], [ %.pn.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit ], [ %i.bj, %bb.s ]
  resume { ptr, i32 } %.pn1930, !dbg !70820

bb.ag:                                            ; preds = %.thread, %bb.b
  %.pn1931 = phi { ptr, i32 } [ %i.t, %.thread ], [ %.pn16.pn42, %bb.b ]
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTdjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTdjEENCNvNtNtCskY9G75ZWc4U_11polars_expr6reduce4mean13finish_outputs1_0EEB2f_.exit24 unwind label %bb.x, !dbg !70911
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs8774dFTUdNv_12polars_arrow5array20static_array_collectINtNtB8_9primitive14PrimitiveArraydEINtB6_13ArrayFromIterINtNtCscgRAwXFJnXP_4core6option6OptiondEE13arr_from_iterINtNtNtNtB24_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB4t_15BoolMeanReducerNtB4v_7Reducer6finish0EEB4x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !70914 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !70915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !70916, !alias.scope !70919
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !70923
  %.val = load ptr, ptr %i.l, align 8, !dbg !70923, !nonnull !13, !noundef !13 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !70923
  %.val21 = load ptr, ptr %i.m, align 8, !dbg !70923, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = ptrtoint ptr %.val21 to i64, !dbg !70925
  %i.o = ptrtoint ptr %.val to i64, !dbg !70925
  %i.p = sub nuw i64 %i.n, %i.o, !dbg !70925      ; 2 uses
  %i.q = lshr exact i64 %i.p, 4, !dbg !70925      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !70937
  %i.r = lshr exact i64 %i.p, 1, !dbg !70939      ; 2 uses
  %i.s = icmp eq ptr %.val21, %.val, !dbg !70953
  br i1 %i.s, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !70953

bb.b:                                             ; preds = %bb.ac
  br i1 %.sroa.012.141, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit24, !dbg !70954

.thread:                                          ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae, !dbg !70954

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !dbg !70955, !noalias !70956
  %i.u = tail call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !dbg !70959, !noalias !70956 ; 2 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !70964
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !70965

bb.d:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.u to i64, !dbg !70966
  br label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit, !dbg !70967

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.r) #44
          to label %bb.ad unwind label %.thread, !dbg !70968

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.d
  %.sroa.426.0 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.a ], !dbg !70970 ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.w, %bb.d ], [ 8, %bb.a ]
  %i.x = inttoptr i64 %.sroa.10.0 to ptr, !dbg !70971
  %i.y = icmp samesign ule i64 %i.q, %.sroa.426.0, !dbg !70972
  tail call void @llvm.assume(i1 %i.y), !dbg !70976
  store i64 %.sroa.426.0, ptr %i.j, align 8, !dbg !70979
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !70979 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !dbg !70979
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !70979 ; 6 uses
  store i64 0, ptr %i.aa, align 8, !dbg !70979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !70980
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, i64 noundef %i.q)
          to label %bb.g unwind label %.thread37, !dbg !70982

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit.thread
  br i1 %.sroa.011.150, label %bb.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit24, !dbg !70983

.thread37:                                        ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac, !dbg !70983

bb.g:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !70984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !70984
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !dbg !70986, !alias.scope !70993, !noalias !70998, !nonnull !13, !noundef !13
  %i.af = load ptr, ptr %i.ad, align 8, !dbg !71000, !alias.scope !70993, !noalias !70998, !nonnull !13, !noundef !13 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ae, !dbg !71000
  br i1 %i.ag, label %.thread43, label %.lr.ph, !dbg !71003

.lr.ph:                                           ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  br label %bb.i, !dbg !71003

bb.h:                                             ; preds = %bb.aa, %bb.x
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit.thread unwind label %bb.v, !dbg !71004

bb.i:                                             ; preds = %.lr.ph, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %i.ao = phi ptr [ %i.af, %.lr.ph ], [ %i.cn, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71009), !dbg !71011
  call void @llvm.experimental.noalias.scope.decl(metadata !71012), !dbg !71014
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !71015
  store ptr %i.ap, ptr %i.ad, align 8, !dbg !71019, !alias.scope !71020, !noalias !70998
  %2 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !71021
  %i.aq = load i64, ptr %2, align 8, !dbg !71021, !noalias !71027, !noundef !13
  %3 = load <2 x i64>, ptr %i.ao, align 8, !dbg !71021, !noalias !71027
  %4 = icmp ne i64 %i.aq, 0, !dbg !71028          ; 2 uses
  %5 = uitofp <2 x i64> %3 to <2 x double>, !dbg !71028 ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0, !dbg !71028
  %7 = extractelement <2 x double> %5, i64 1, !dbg !71028
  %i.ar = fdiv double %6, %7, !dbg !71028
  %i.as = load i64, ptr %i.aa, align 8, !dbg !71041, !noundef !13 ; 3 uses
  %i.at = icmp ult i64 %i.as, 1152921504606846976, !dbg !71045
  call void @llvm.assume(i1 %i.at), !dbg !71047
  %i.au = load i64, ptr %i.j, align 8, !dbg !71048, !range !56, !noundef !13
  %i.av = icmp eq i64 %i.as, %i.au, !dbg !71055
  br i1 %i.av, label %bb.x, label %bb.y, !dbg !71055

.thread43:                                        ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, %bb.g
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTjjEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.k unwind label %bb.j, !dbg !71056

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit: ; preds = %bb.w
  br i1 %.sroa.010.1.ph, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit24, !dbg !71059

bb.j:                                             ; preds = %.thread43
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit.thread

bb.k:                                             ; preds = %.thread43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !71060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !71061
  store i8 14, ptr %i.g, align 8, !dbg !71062, !alias.scope !71066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !71069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !71069
  %i.ax = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragedE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.m unwind label %bb.l, !dbg !71070

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferdE12from_storageCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.ax)
          to label %bb.n unwind label %bb.l, !dbg !71077

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !71078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !71079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !dbg !71079
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder17into_opt_validity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.o unwind label %bb.u, !dbg !71080

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !71081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71082
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArraydE7try_newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !dbg !71082
  call void @llvm.experimental.noalias.scope.decl(metadata !71085), !dbg !71088
  call void @llvm.experimental.noalias.scope.decl(metadata !71089), !dbg !71088
  %i.az = load i8, ptr %i.b, align 8, !dbg !71091, !range !393, !alias.scope !71089, !noalias !71085, !noundef !13
  %i.ba = icmp eq i8 %i.az, 42, !dbg !71091
  br i1 %i.ba, label %bb.p, label %bb.t, !dbg !71093, !prof !395

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71094, !noalias !71095
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !71094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bb, i64 72, i1 false), !dbg !71094, !noalias !71085
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #44
          to label %bb.r unwind label %bb.q, !dbg !71096, !noalias !71095

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #45
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit24 unwind label %bb.s, !dbg !71097, !noalias !71095

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !71098, !noalias !71095
  unreachable, !dbg !71098

bb.t:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !71099, !alias.scope !71095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !71101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !71059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !70983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !70954
  ret void, !dbg !71102

bb.u:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragedENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.v, !dbg !71103

bb.v:                                             ; preds = %bb.ae, %bb.u, %bb.h, %bb.ac, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit.thread, %bb.w
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #46, !dbg !71106
  unreachable, !dbg !71106

bb.w:                                             ; preds = %bb.l, %bb.u
  %.sroa.010.1.ph = phi i1 [ true, %bb.l ], [ false, %bb.u ]
  %.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.be, %bb.u ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.g) #45
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit unwind label %bb.v, !dbg !71101

bb.x:                                             ; preds = %bb.i
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecdE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %bb.z unwind label %bb.h, !dbg !71107

bb.y:                                             ; preds = %._crit_edge, %bb.i, %bb.z
  %i.bg = phi i64 [ %.pre, %._crit_edge ], [ %i.as, %bb.i ], [ %i.bx, %bb.z ], !dbg !71108 ; 2 uses
  %.sroa.07.0 = select i1 %4, double %i.ar, double 0.000000e+00, !dbg !71112
  %i.bh = load ptr, ptr %i.z, align 8, !dbg !71115, !nonnull !13, !noundef !13
  %i.bi = icmp ult i64 %i.bg, 1152921504606846976, !dbg !71124
  call void @llvm.assume(i1 %i.bi), !dbg !71126
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg, !dbg !71127
  store double %.sroa.07.0, ptr %i.bj, align 8, !dbg !71130
  %i.bk = load i64, ptr %i.aa, align 8, !dbg !71134, !noundef !13 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976, !dbg !71136
  call void @llvm.assume(i1 %i.bl), !dbg !71138
  %i.bm = add nuw nsw i64 %i.bk, 1, !dbg !71139
  store i64 %i.bm, ptr %i.aa, align 8, !dbg !71140
  call void @llvm.experimental.noalias.scope.decl(metadata !71143), !dbg !71146
  %i.bn = zext i1 %4 to i64, !dbg !71147
  %i.bo = load i64, ptr %i.ah, align 8, !dbg !71149, !alias.scope !71143, !noundef !13 ; 2 uses
  %i.bp = and i64 %i.bo, 63, !dbg !71150
  %i.bq = shl nuw i64 %i.bn, %i.bp, !dbg !71147
  %i.br = load i64, ptr %i.aj, align 8, !dbg !71151, !alias.scope !71143, !noundef !13
  %i.bs = or i64 %i.bq, %i.br, !dbg !71151        ; 3 uses
  store i64 %i.bs, ptr %i.aj, align 8, !dbg !71151, !alias.scope !71143
  %i.bt = add i64 %i.bo, 1, !dbg !71152           ; 2 uses
  store i64 %i.bt, ptr %i.ah, align 8, !dbg !71152, !alias.scope !71143
  %i.bu = and i64 %i.bt, 63, !dbg !71153
  %i.bv = icmp eq i64 %i.bu, 0, !dbg !71153
  br i1 %i.bv, label %bb.ab, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !71155

bb.z:                                             ; preds = %bb.x
  %i.bw = load i64, ptr %i.j, align 8, !dbg !71156, !range !56, !noundef !13
  %i.bx = load i64, ptr %i.aa, align 8, !dbg !71162, !noundef !13 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 1152921504606846976, !dbg !71164
  call void @llvm.assume(i1 %i.by), !dbg !71166
  %i.bz = sub nsw i64 %i.bw, %i.bx, !dbg !71167   ; 2 uses
  %i.ca = load i64, ptr %i.ah, align 8, !dbg !71168, !noundef !13
  %i.cb = add i64 %i.ca, %i.bz, !dbg !71168
  %i.cc = load i64, ptr %i.ai, align 8, !dbg !71171, !noundef !13
  %i.cd = icmp ugt i64 %i.cb, %i.cc, !dbg !71168
  br i1 %i.cd, label %bb.aa, label %bb.y, !dbg !71168, !prof !395

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.bz)
          to label %._crit_edge unwind label %bb.h, !dbg !71172

._crit_edge:                                      ; preds = %bb.aa
  %.pre = load i64, ptr %i.aa, align 8, !dbg !71108
  br label %bb.y, !dbg !71172

bb.ab:                                            ; preds = %bb.y
  %i.ce = load i64, ptr %i.ak, align 8, !dbg !71173, !alias.scope !71143, !noundef !13 ; 3 uses
  %i.cf = icmp sgt i64 %i.ce, -1, !dbg !71176
  call void @llvm.assume(i1 %i.cf), !dbg !71177
  %i.cg = load ptr, ptr %i.al, align 8, !dbg !71178, !alias.scope !71143, !nonnull !13, !noundef !13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce, !dbg !71183
  store i64 %i.bs, ptr %i.ch, align 1, !dbg !71185, !noalias !71143
  %i.ci = add nuw i64 %i.ce, 8, !dbg !71189
  store i64 %i.ci, ptr %i.ak, align 8, !dbg !71190, !alias.scope !71143
  %i.cj = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bs), !dbg !71192
  %i.ck = load i64, ptr %i.am, align 8, !dbg !71194, !alias.scope !71143, !noundef !13
  %i.cl = add i64 %i.ck, %i.cj, !dbg !71194
  store i64 %i.cl, ptr %i.am, align 8, !dbg !71194, !alias.scope !71143
  store i64 0, ptr %i.aj, align 8, !dbg !71195, !alias.scope !71143
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !71196

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.y, %bb.ab
  %i.cm = load ptr, ptr %i.ac, align 8, !dbg !70986, !alias.scope !71197, !noalias !70998, !nonnull !13, !noundef !13
  %i.cn = load ptr, ptr %i.ad, align 8, !dbg !71000, !alias.scope !71197, !noalias !70998, !nonnull !13, !noundef !13 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cm, !dbg !71000
  br i1 %i.co, label %.thread43, label %bb.i, !dbg !71003

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit.thread: ; preds = %bb.h, %bb.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit
  %.pn1651 = phi { ptr, i32 } [ %.pn.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit ], [ %i.an, %bb.h ], [ %i.aw, %bb.j ] ; 2 uses
  %.sroa.011.150 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit ], [ true, %bb.h ], [ true, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.i) #45
          to label %bb.f unwind label %bb.v, !dbg !71059

bb.ac:                                            ; preds = %.thread37, %bb.f
  %.pn16.pn42 = phi { ptr, i32 } [ %i.ab, %.thread37 ], [ %.pn1651, %bb.f ] ; 2 uses
  %.sroa.012.141 = phi i1 [ true, %.thread37 ], [ false, %bb.f ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #45
          to label %bb.b unwind label %bb.v, !dbg !70983

bb.ad:                                            ; preds = %bb.e
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit24: ; preds = %bb.q, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit, %bb.f, %bb.ae, %bb.b
  %.pn1930 = phi { ptr, i32 } [ %.pn16.pn42, %bb.b ], [ %.pn1931, %bb.ae ], [ %.pn1651, %bb.f ], [ %.pn.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTjjEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce4meanNtB2f_15BoolMeanReducerNtB2h_7Reducer6finish0EEB2j_.exit ], [ %i.bc, %bb.q ]
  resume { ptr, i32 } %.pn1930, !dbg !71106

bb.ae:                                            ; preds = %.thread, %bb.b
end_hunk_0
