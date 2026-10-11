Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.03?download=true
inline.NumInlined: 8906
inline.NumDeleted: 2976
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_boolRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan:bb.a
bb.m:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !25693
  unreachable, !dbg !25693

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(56) %i.f) #43
          to label %.thread39 unwind label %bb.m, !dbg !25691

.thread39:                                        ; preds = %bb.n, %bb.l, %.thread21
  %.sroa.05.126 = phi i1 [ true, %.thread21 ], [ false, %bb.l ], [ true, %bb.n ]
  %.pn.pn25 = phi { ptr, i32 } [ %i.y, %.thread21 ], [ %i.an, %bb.l ], [ %lpad.phi, %bb.n ] ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !dbg !25694, !alias.scope !25643, !noundef !3885
  %i.aq = icmp eq ptr %i.ap, null, !dbg !25694
  br i1 %i.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.o, !dbg !25694

bb.o:                                             ; preds = %.thread39
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.m, !dbg !25695

bb.p:                                             ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit
  %.pn.pn.pn19 = phi { ptr, i32 } [ %.pn.pn.pn20, %.thread ], [ %.pn.pn25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit ]
  resume { ptr, i32 } %.pn.pn.pn19, !dbg !25693

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit
  %.pn.pn.pn20 = phi { ptr, i32 } [ %.pn.pn25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit ], [ %lpad.loopexit43, %.thread.loopexit ], [ %lpad.loopexit.split-lp44, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.h) #43
          to label %bb.p unwind label %bb.m, !dbg !25663
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !25696 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !25912
  %.val78 = load ptr, ptr %1, align 8, !dbg !25913, !nonnull !3885, !noundef !3885
  %i.o = getelementptr i8, ptr %1, i64 8, !dbg !25913
  %.val79 = load ptr, ptr %i.o, align 8, !dbg !25913, !nonnull !3885, !align !4041, !noundef !3885
  %i.p = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !25914
  %i.q = load ptr, ptr %i.p, align 8, !dbg !25914, !invariant.load !3885, !nonnull !3885
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %.val78) #48, !dbg !25915
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #48, !dbg !25916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25846), !dbg !25917
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !25918
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !25918 ; 4 uses
  br label %.lr.ph.i, !dbg !25919

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.ab, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.ac, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.t, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !25920 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !25921, !alias.scope !25846, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !25921
  %.sroa.06.0.val8.i = load ptr, ptr %i.u, align 8, !dbg !25921, !alias.scope !25846, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !25922
  %i.w = load ptr, ptr %i.v, align 8, !dbg !25922, !invariant.load !3885, !noalias !25846, !nonnull !3885
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc unwind label %.thread.loopexit, !dbg !25923, !inline_history !775

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !25924
  %i.z = load ptr, ptr %i.y, align 8, !dbg !25924, !invariant.load !3885, !noalias !25846, !nonnull !3885
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !25925, !inline_history !775

.noexc88:                                         ; preds = %.noexc
  %i.ab = add i64 %i.x, %.sroa.0.011.i, !dbg !25926 ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.02.010.i, !dbg !25927 ; 2 uses
  %i.ad = icmp eq ptr %i.t, %i.s, !dbg !25928
  br i1 %i.ad, label %bb.b, label %.lr.ph.i, !dbg !25919

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101: ; preds = %.thread126, %bb.aw
  br i1 %.sroa.032.1130, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread, !dbg !25929

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.av, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !25930
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !25931

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !25932
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ab)
          to label %.lr.ph174 unwind label %bb.d, !dbg !25933

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

.lr.ph174:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.e, !dbg !25860

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph174, %bb.m
  %.sroa.0.0172 = phi i64 [ 0, %.lr.ph174 ], [ %i.bk, %bb.m ]
  %.sroa.034.0171 = phi ptr [ %1, %.lr.ph174 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0171, i64 16, !dbg !25934 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0171, align 8, !dbg !25935, !nonnull !3885, !noundef !3885
  %i.ai = getelementptr i8, ptr %.sroa.034.0171, i64 8, !dbg !25935
  %.sroa.034.0.val77 = load ptr, ptr %i.ai, align 8, !dbg !25935, !nonnull !3885, !align !4041, !noundef !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !25936
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !25936, !invariant.load !3885, !nonnull !3885
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !25937 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !25936 ; 6 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !25936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !25851
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !25938
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !25938, !invariant.load !3885, !nonnull !3885
  invoke void %i.ap(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.am)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !25939

bb.g:                                             ; preds = %bb.f
  %i.aq = load i128, ptr %i.d, align 16, !dbg !25940, !noundef !3885
  %i.ar = icmp eq i128 %i.aq, -167986307344837338960852194745045691260, !dbg !25941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !25851
  br i1 %i.ar, label %bb.j, label %bb.h, !dbg !25942, !prof !3956

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !25943

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = getelementptr i8, ptr %i.am, i64 40, !dbg !25944 ; 2 uses
  %.val82 = load ptr, ptr %i.as, align 8, !dbg !25944, !noundef !3885 ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 48, !dbg !25944 ; 2 uses
  %.val83 = load i64, ptr %i.at, align 8, !dbg !25944, !noundef !3885 ; 3 uses
  %i.au = icmp ult i64 %.val83, 2, !dbg !25945
  br i1 %i.au, label %._crit_edge, label %.lr.ph, !dbg !25945

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val84.pre = load ptr, ptr %i.as, align 8, !dbg !25946
  %.val85.pre = load i64, ptr %i.at, align 8, !dbg !25946
  br label %._crit_edge, !dbg !25946

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !25946 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !25946 ; 2 uses
  %.val81 = load i32, ptr %.val84, align 4, !dbg !25947, !noundef !3885 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !25948
  call void @llvm.assume(i1 %.not.i91), !dbg !25948
  %i.av = getelementptr [4 x i8], ptr %.val84, i64 %.val85, !dbg !25949
  %i.aw = getelementptr i8, ptr %i.av, i64 -4, !dbg !25949
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !25950, !noundef !3885
  %i.ay = sub nuw nsw i32 %i.ax, %.val81, !dbg !25951
  %i.az = sext i32 %i.ay to i64, !dbg !25952
  %i.ba = icmp eq i32 %.val81, 0, !dbg !25953
  br i1 %i.ba, label %bb.k, label %bb.m, !dbg !25953

bb.k:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !25954
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !25955, !nonnull !3885, !noundef !3885
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !25955
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !25955, !nonnull !3885, !align !4041, !noundef !3885
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !25955
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !25955, !invariant.load !3885, !nonnull !3885
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.bc)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !25956

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ne i64 %i.bh, %i.az, !dbg !25957
  %i.bj = zext i1 %i.bi to i64, !dbg !25958
  br label %bb.m, !dbg !25958

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bj, %bb.l ], [ 1, %._crit_edge ], !dbg !25959
  %i.bk = add i64 %.sroa.05.0, %.sroa.0.0172, !dbg !25960 ; 2 uses
  %i.bl = icmp eq ptr %i.ah, %i.s, !dbg !25961
  br i1 %i.bl, label %._crit_edge175, label %bb.e, !dbg !25860

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.0102.0170 = phi ptr [ %i.bn, %bb.r ], [ %.val82, %bb.j ] ; 3 uses
  %.sroa.6.0169 = phi i64 [ %i.bm, %bb.r ], [ %.val83, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0102.0170) ]
  %i.bm = add i64 %.sroa.6.0169, -1, !dbg !25962
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0102.0170, i64 4, !dbg !25963 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !dbg !25964, !alias.scope !25861, !noundef !3885
  %i.bp = load i32, ptr %.sroa.0102.0170, align 4, !dbg !25965, !alias.scope !25861, !noundef !3885
  %i.bq = sub i32 %i.bo, %i.bp, !dbg !25966       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25864), !dbg !25967
  %i.br = icmp sgt i32 %i.bq, -1, !dbg !25968
  br i1 %i.br, label %bb.n, label %bb.q, !dbg !25969

bb.n:                                             ; preds = %.lr.ph
  %i.bs = load i64, ptr %i.af, align 8, !dbg !25970, !alias.scope !25864, !noalias !25865, !noundef !3885 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bs, 0, !dbg !25971
  call void @llvm.assume(i1 %.not.i92), !dbg !25971
  %i.bt = load ptr, ptr %i.ag, align 8, !dbg !25972, !alias.scope !25864, !noalias !25865, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.bs, !dbg !25973
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4, !dbg !25973 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ], !dbg !25974
  %.sroa.035.0.val.i = load i32, ptr %i.bv, align 4, !dbg !25975, !noalias !25866, !noundef !3885
  %i.bw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bq), !dbg !25976 ; 2 uses
  %i.bx = extractvalue { i32, i1 } %i.bw, 1, !dbg !25976
  %i.by = extractvalue { i32, i1 } %i.bw, 0, !dbg !25976
  br i1 %i.bx, label %bb.q, label %bb.o, !dbg !25977

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %i.l, align 8, !dbg !25978, !range !4331, !alias.scope !25867, !noalias !25865, !noundef !3885
  %i.ca = icmp eq i64 %i.bs, %i.bz, !dbg !25979
  br i1 %i.ca, label %bb.p, label %bb.r, !dbg !25979

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc93 unwind label %.loopexit, !dbg !25980

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ag, align 8, !dbg !25981, !alias.scope !25867, !noalias !25865
  br label %bb.r, !dbg !25980

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25982
  store i64 2, ptr %i.cb, align 8, !dbg !25982
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25982
  store i32 0, ptr %.sroa.2120.0..sroa_idx, align 8, !dbg !25982
  %.sroa.3121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !25982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3121.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @620, i64 12), i64 60, i1 false), !dbg !25982
  store i8 42, ptr %0, align 8, !dbg !25982
  br label %bb.s, !dbg !25983

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.cc = phi ptr [ %i.bt, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !25981
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bs, !dbg !25984
  store i32 %i.by, ptr %i.cd, align 4, !dbg !25985, !noalias !25865
  %i.ce = add i64 %i.bs, 1, !dbg !25986
  store i64 %i.ce, ptr %i.af, align 8, !dbg !25986, !alias.scope !25867, !noalias !25865
  %i.cf = icmp ult i64 %.sroa.6.0169, 3, !dbg !25945
  br i1 %i.cf, label %._crit_edge.loopexit, label %.lr.ph, !dbg !25945

bb.s:                                             ; preds = %bb.ae, %bb.au, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.t, !dbg !25987

bb.t:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread126 unwind label %bb.u, !dbg !25988

bb.u:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !25987
  unreachable, !dbg !25987

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !25989

._crit_edge175:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bk, 0, !dbg !25990
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !25990

bb.v:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !25991
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !25992

bb.w:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !25993
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlBU_E0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !25994

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !25890
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !25995
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !25995, !nonnull !3885, !noundef !3885
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !25996
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !25996, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.cl)
          to label %bb.z unwind label %bb.y, !dbg !25890

bb.y:                                             ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !25997

bb.z:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %i.h, align 8, !dbg !25998, !range !3916, !noundef !3885 ; 2 uses
  %.not69 = icmp eq i64 %i.cn, 18, !dbg !25998
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !25999
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !25999 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !25999
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !25999 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !26000

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !26001
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !26001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26003
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26002
  store i64 %i.cn, ptr %i.cs, align 8, !dbg !26002
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26002
  store ptr %i.cp, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !26002
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26002
  store ptr %i.cr, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !26002
  store i8 42, ptr %0, align 8, !dbg !26002
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !25997

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26003
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !25997

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25997
  br label %bb.ad, !dbg !26004

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7107.0 = phi ptr [ %i.cr, %bb.ac ], [ %i.dd, %bb.al ], !dbg !26005 ; 2 uses
  %.sroa.0106.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !26005 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !26006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26008, !noalias !25893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !26007
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc96 unwind label %bb.as, !dbg !26009

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !25997
  br label %bb.s, !dbg !25983

bb.af:                                            ; preds = %bb.aw, %bb.at, %.thread, %.loopexit.split-lp, %bb.as, %bb.ah, %bb.y
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !26010
  unreachable, !dbg !26010

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !25902
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26011
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !26011, !nonnull !3885, !noundef !3885
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26012
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !26012, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cv, i64 noundef %i.cx)
          to label %bb.ai unwind label %bb.ah, !dbg !25902

bb.ah:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan:bb.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !26033
  %i.dl = load ptr, ptr %i.m, align 8, !dbg !26037, !alias.scope !25910, !noundef !3885
  %i.dm = icmp eq ptr %i.dl, null, !dbg !26037
  br i1 %i.dm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.av, !dbg !26037

bb.av:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit unwind label %.thread.loopexit.split-lp, !dbg !26038

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26034
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n), !dbg !25929
  br label %bb.ar, !dbg !26035

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %i.cy, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.thread126 unwind label %bb.af, !dbg !26033

.thread126:                                       ; preds = %bb.at, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72131 = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %i.ae, %bb.d ], [ %i.dk, %bb.at ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1130 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.at ], [ true, %.loopexit.split-lp ]
  %i.dn = load ptr, ptr %i.m, align 8, !dbg !26039, !alias.scope !25911, !noundef !3885
  %i.do = icmp eq ptr %i.dn, null, !dbg !26039
  br i1 %i.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101, label %bb.aw, !dbg !26039

bb.aw:                                            ; preds = %.thread126
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 unwind label %bb.af, !dbg !26040

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread: ; preds = %bb.an, %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101
  %.pn74124 = phi { ptr, i32 } [ %.pn74125, %.thread ], [ %.pn72131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 ], [ %i.di, %bb.an ]
  resume { ptr, i32 } %.pn74124, !dbg !26010

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101
  %.pn74125 = phi { ptr, i32 } [ %.pn72131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 ], [ %lpad.loopexit161, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread unwind label %bb.af, !dbg !25929
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26041 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26257
  %.val86 = load ptr, ptr %1, align 8, !dbg !26258, !nonnull !3885, !noundef !3885
  %i.o = getelementptr i8, ptr %1, i64 8, !dbg !26258
  %.val87 = load ptr, ptr %i.o, align 8, !dbg !26258, !nonnull !3885, !align !4041, !noundef !3885
  %i.p = getelementptr inbounds nuw i8, ptr %.val87, i64 64, !dbg !26259
  %i.q = load ptr, ptr %i.p, align 8, !dbg !26259, !invariant.load !3885, !nonnull !3885
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %.val86) #48, !dbg !26260
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #48, !dbg !26261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26191), !dbg !26262
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !26263
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !26263 ; 4 uses
  br label %.lr.ph.i, !dbg !26264

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.ab, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.ac, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.t, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !26265 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !26266, !alias.scope !26191, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !26266
  %.sroa.06.0.val8.i = load ptr, ptr %i.u, align 8, !dbg !26266, !alias.scope !26191, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !26267
  %i.w = load ptr, ptr %i.v, align 8, !dbg !26267, !invariant.load !3885, !noalias !26191, !nonnull !3885
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc unwind label %.thread.loopexit, !dbg !26268, !inline_history !793

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !26269
  %i.z = load ptr, ptr %i.y, align 8, !dbg !26269, !invariant.load !3885, !noalias !26191, !nonnull !3885
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !26270, !inline_history !793

.noexc88:                                         ; preds = %.noexc
  %i.ab = add i64 %i.x, %.sroa.0.011.i, !dbg !26271 ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.02.010.i, !dbg !26272 ; 2 uses
  %i.ad = icmp eq ptr %i.t, %i.s, !dbg !26273
  br i1 %i.ad, label %bb.b, label %.lr.ph.i, !dbg !26264

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101: ; preds = %.thread126, %bb.aw
  br i1 %.sroa.032.1130, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread, !dbg !26274

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.av, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26275
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !26276

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !26277
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ab)
          to label %.lr.ph174 unwind label %bb.d, !dbg !26278

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

.lr.ph174:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.e, !dbg !26205

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph174, %bb.m
  %.sroa.0.0172 = phi i64 [ 0, %.lr.ph174 ], [ %i.bk, %bb.m ]
  %.sroa.034.0171 = phi ptr [ %1, %.lr.ph174 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0171, i64 16, !dbg !26279 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0171, align 8, !dbg !26280, !nonnull !3885, !noundef !3885
  %i.ai = getelementptr i8, ptr %.sroa.034.0171, i64 8, !dbg !26280
  %.sroa.034.0.val85 = load ptr, ptr %i.ai, align 8, !dbg !26280, !nonnull !3885, !align !4041, !noundef !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val85, i64 32, !dbg !26281
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !26281, !invariant.load !3885, !nonnull !3885
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !26282 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !26281 ; 6 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !26281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26196
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !26283
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !26283, !invariant.load !3885, !nonnull !3885
  invoke void %i.ap(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.am)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !26284

bb.g:                                             ; preds = %bb.f
  %i.aq = load i128, ptr %i.d, align 16, !dbg !26285, !noundef !3885
  %i.ar = icmp eq i128 %i.aq, -167986307344837338960852194745045691260, !dbg !26286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26196
  br i1 %i.ar, label %bb.j, label %bb.h, !dbg !26287, !prof !3956

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26288

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = getelementptr i8, ptr %i.am, i64 40, !dbg !26289 ; 2 uses
  %.val79 = load ptr, ptr %i.as, align 8, !dbg !26289, !noundef !3885 ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 48, !dbg !26289 ; 2 uses
  %.val80 = load i64, ptr %i.at, align 8, !dbg !26289, !noundef !3885 ; 3 uses
  %i.au = icmp ult i64 %.val80, 2, !dbg !26290
  br i1 %i.au, label %._crit_edge, label %.lr.ph, !dbg !26290

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val81.pre = load ptr, ptr %i.as, align 8, !dbg !26291
  %.val82.pre = load i64, ptr %i.at, align 8, !dbg !26291
  br label %._crit_edge, !dbg !26291

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !26291 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !26291 ; 2 uses
  %.val78 = load i32, ptr %.val81, align 4, !dbg !26292, !noundef !3885 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !26293
  call void @llvm.assume(i1 %.not.i91), !dbg !26293
  %i.av = getelementptr [4 x i8], ptr %.val81, i64 %.val82, !dbg !26294
  %i.aw = getelementptr i8, ptr %i.av, i64 -4, !dbg !26294
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !26295, !noundef !3885
  %i.ay = sub nuw nsw i32 %i.ax, %.val78, !dbg !26296
  %i.az = sext i32 %i.ay to i64, !dbg !26297
  %i.ba = icmp eq i32 %.val78, 0, !dbg !26298
  br i1 %i.ba, label %bb.k, label %bb.m, !dbg !26298

bb.k:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !26299
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !26300, !nonnull !3885, !noundef !3885
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !26300
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !26300, !nonnull !3885, !align !4041, !noundef !3885
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !26300
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !26300, !invariant.load !3885, !nonnull !3885
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.bc)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !26301

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ne i64 %i.bh, %i.az, !dbg !26302
  %i.bj = zext i1 %i.bi to i64, !dbg !26303
  br label %bb.m, !dbg !26303

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bj, %bb.l ], [ 1, %._crit_edge ], !dbg !26304
  %i.bk = add i64 %.sroa.05.0, %.sroa.0.0172, !dbg !26305 ; 2 uses
  %i.bl = icmp eq ptr %i.ah, %i.s, !dbg !26306
  br i1 %i.bl, label %._crit_edge175, label %bb.e, !dbg !26205

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.0102.0170 = phi ptr [ %i.bn, %bb.r ], [ %.val79, %bb.j ] ; 3 uses
  %.sroa.6.0169 = phi i64 [ %i.bm, %bb.r ], [ %.val80, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0102.0170) ]
  %i.bm = add i64 %.sroa.6.0169, -1, !dbg !26307
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0102.0170, i64 4, !dbg !26308 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !dbg !26309, !alias.scope !26206, !noundef !3885
  %i.bp = load i32, ptr %.sroa.0102.0170, align 4, !dbg !26310, !alias.scope !26206, !noundef !3885
  %i.bq = sub i32 %i.bo, %i.bp, !dbg !26311       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26209), !dbg !26312
  %i.br = icmp sgt i32 %i.bq, -1, !dbg !26313
  br i1 %i.br, label %bb.n, label %bb.q, !dbg !26314

bb.n:                                             ; preds = %.lr.ph
  %i.bs = load i64, ptr %i.af, align 8, !dbg !26315, !alias.scope !26209, !noalias !26210, !noundef !3885 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bs, 0, !dbg !26316
  call void @llvm.assume(i1 %.not.i92), !dbg !26316
  %i.bt = load ptr, ptr %i.ag, align 8, !dbg !26317, !alias.scope !26209, !noalias !26210, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.bs, !dbg !26318
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4, !dbg !26318 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ], !dbg !26319
  %.sroa.035.0.val.i = load i32, ptr %i.bv, align 4, !dbg !26320, !noalias !26211, !noundef !3885
  %i.bw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bq), !dbg !26321 ; 2 uses
  %i.bx = extractvalue { i32, i1 } %i.bw, 1, !dbg !26321
  %i.by = extractvalue { i32, i1 } %i.bw, 0, !dbg !26321
  br i1 %i.bx, label %bb.q, label %bb.o, !dbg !26322

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %i.l, align 8, !dbg !26323, !range !4331, !alias.scope !26212, !noalias !26210, !noundef !3885
  %i.ca = icmp eq i64 %i.bs, %i.bz, !dbg !26324
  br i1 %i.ca, label %bb.p, label %bb.r, !dbg !26324

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc93 unwind label %.loopexit, !dbg !26325

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ag, align 8, !dbg !26326, !alias.scope !26212, !noalias !26210
  br label %bb.r, !dbg !26325

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26327
  store i64 2, ptr %i.cb, align 8, !dbg !26327
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26327
  store i32 0, ptr %.sroa.2120.0..sroa_idx, align 8, !dbg !26327
  %.sroa.3121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !26327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3121.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @620, i64 12), i64 60, i1 false), !dbg !26327
  store i8 42, ptr %0, align 8, !dbg !26327
  br label %bb.s, !dbg !26328

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.cc = phi ptr [ %i.bt, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !26326
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bs, !dbg !26329
  store i32 %i.by, ptr %i.cd, align 4, !dbg !26330, !noalias !26210
  %i.ce = add i64 %i.bs, 1, !dbg !26331
  store i64 %i.ce, ptr %i.af, align 8, !dbg !26331, !alias.scope !26212, !noalias !26210
  %i.cf = icmp ult i64 %.sroa.6.0169, 3, !dbg !26290
  br i1 %i.cf, label %._crit_edge.loopexit, label %.lr.ph, !dbg !26290

bb.s:                                             ; preds = %bb.ae, %bb.au, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.t, !dbg !26332

bb.t:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread126 unwind label %bb.u, !dbg !26333

bb.u:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !26332
  unreachable, !dbg !26332

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !26334

._crit_edge175:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bk, 0, !dbg !26335
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !26335

bb.v:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !26336
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listlBU_Es_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26337

bb.w:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !26338
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26339

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26235
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !26340
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !26340, !nonnull !3885, !noundef !3885
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !26341
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !26341, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.cl)
          to label %bb.z unwind label %bb.y, !dbg !26235

bb.y:                                             ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !26342

bb.z:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %i.h, align 8, !dbg !26343, !range !3916, !noundef !3885 ; 2 uses
  %.not69 = icmp eq i64 %i.cn, 18, !dbg !26343
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !26344
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !26344 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !26344
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !26344 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !26345

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !26346
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !26346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26348
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26347
  store i64 %i.cn, ptr %i.cs, align 8, !dbg !26347
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26347
  store ptr %i.cp, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !26347
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26347
  store ptr %i.cr, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !26347
  store i8 42, ptr %0, align 8, !dbg !26347
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26342

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26348
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26342

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26342
  br label %bb.ad, !dbg !26349

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7107.0 = phi ptr [ %i.cr, %bb.ac ], [ %i.dd, %bb.al ], !dbg !26350 ; 2 uses
  %.sroa.0106.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !26350 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !26351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26353, !noalias !26238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !26352
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc96 unwind label %bb.as, !dbg !26354

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26342
  br label %bb.s, !dbg !26328

bb.af:                                            ; preds = %bb.aw, %bb.at, %.thread, %.loopexit.split-lp, %bb.as, %bb.ah, %bb.y
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !26355
  unreachable, !dbg !26355

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !26247
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26356
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !26356, !nonnull !3885, !noundef !3885
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26357
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !26357, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cv, i64 noundef %i.cx)
          to label %bb.ai unwind label %bb.ah, !dbg !26247

bb.ah:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.dl = load ptr, ptr %i.m, align 8, !dbg !26382, !alias.scope !26255, !noundef !3885
  %i.dm = icmp eq ptr %i.dl, null, !dbg !26382
  br i1 %i.dm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.av, !dbg !26382

bb.av:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit unwind label %.thread.loopexit.split-lp, !dbg !26383

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26379
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n), !dbg !26274
  br label %bb.ar, !dbg !26380

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %i.cy, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.thread126 unwind label %bb.af, !dbg !26378

.thread126:                                       ; preds = %bb.at, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72131 = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %i.ae, %bb.d ], [ %i.dk, %bb.at ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1130 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.at ], [ true, %.loopexit.split-lp ]
  %i.dn = load ptr, ptr %i.m, align 8, !dbg !26384, !alias.scope !26256, !noundef !3885
  %i.do = icmp eq ptr %i.dn, null, !dbg !26384
  br i1 %i.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101, label %bb.aw, !dbg !26384

bb.aw:                                            ; preds = %.thread126
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 unwind label %bb.af, !dbg !26385

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread: ; preds = %bb.an, %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101
  %.pn74124 = phi { ptr, i32 } [ %.pn74125, %.thread ], [ %.pn72131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 ], [ %i.di, %bb.an ]
  resume { ptr, i32 } %.pn74124, !dbg !26355

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101
  %.pn74125 = phi { ptr, i32 } [ %.pn72131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 ], [ %lpad.loopexit161, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread unwind label %bb.af, !dbg !26274
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26386 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26605
  %.val77 = load ptr, ptr %1, align 8, !dbg !26606, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %.val.i = load ptr, ptr %.val77, align 8, !dbg !26607, !nonnull !3885, !noundef !3885
  %i.o = getelementptr i8, ptr %.val77, i64 8, !dbg !26607
  %.val1.i = load ptr, ptr %i.o, align 8, !dbg !26607, !nonnull !3885, !align !4041, !noundef !3885
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !26608
  %i.q = load ptr, ptr %i.p, align 8, !dbg !26608, !invariant.load !3885, !nonnull !3885
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %.val.i) #48, !dbg !26609
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #48, !dbg !26610
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26539), !dbg !26611
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !26612
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !26612 ; 4 uses
  br label %.lr.ph.i, !dbg !26613

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.ab, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.ac, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.t, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !26614 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !26615, !alias.scope !26539, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !26616, !noalias !26539, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !26616
  %.val1.i.i = load ptr, ptr %i.u, align 8, !dbg !26616, !noalias !26539, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !26617
  %i.w = load ptr, ptr %i.v, align 8, !dbg !26617, !invariant.load !3885, !noalias !26539, !nonnull !3885
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %.val.i.i) #48
          to label %.noexc unwind label %.thread.loopexit, !dbg !26618, !inline_history !812

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !26619
  %i.z = load ptr, ptr %i.y, align 8, !dbg !26619, !invariant.load !3885, !noalias !26539, !nonnull !3885
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull %.val.i.i) #48
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !26620, !inline_history !812

.noexc86:                                         ; preds = %.noexc
  %i.ab = add i64 %i.x, %.sroa.0.010.i, !dbg !26621 ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.02.09.i, !dbg !26622 ; 2 uses
  %i.ad = icmp eq ptr %i.t, %i.s, !dbg !26623
  br i1 %i.ad, label %bb.b, label %.lr.ph.i, !dbg !26613

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101: ; preds = %.thread126, %bb.aw
  br i1 %.sroa.032.1130, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread, !dbg !26624

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.av, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26625
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !26626

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !26627
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ab)
          to label %.lr.ph174 unwind label %bb.d, !dbg !26628

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

.lr.ph174:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.e, !dbg !26553

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph174, %bb.m
  %.sroa.0.0172 = phi i64 [ 0, %.lr.ph174 ], [ %i.bk, %bb.m ]
  %.sroa.034.0171 = phi ptr [ %1, %.lr.ph174 ], [ %i.ah, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0171, i64 8, !dbg !26629 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0171, align 8, !dbg !26630, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !26631, !nonnull !3885, !noundef !3885
  %i.ai = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !26631
  %.val1.i88 = load ptr, ptr %i.ai, align 8, !dbg !26631, !nonnull !3885, !align !4041, !noundef !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !26632
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !26632, !invariant.load !3885, !nonnull !3885
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !26633 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !26632 ; 6 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !26632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26544
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !26634
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !26634, !invariant.load !3885, !nonnull !3885
  invoke void %i.ap(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.am)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !26635

bb.g:                                             ; preds = %bb.f
  %i.aq = load i128, ptr %i.d, align 16, !dbg !26636, !noundef !3885
  %i.ar = icmp eq i128 %i.aq, -167986307344837338960852194745045691260, !dbg !26637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26544
  br i1 %i.ar, label %bb.j, label %bb.h, !dbg !26638, !prof !3956

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26639

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = getelementptr i8, ptr %i.am, i64 40, !dbg !26640 ; 2 uses
  %.val80 = load ptr, ptr %i.as, align 8, !dbg !26640, !noundef !3885 ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 48, !dbg !26640 ; 2 uses
  %.val81 = load i64, ptr %i.at, align 8, !dbg !26640, !noundef !3885 ; 3 uses
  %i.au = icmp ult i64 %.val81, 2, !dbg !26641
  br i1 %i.au, label %._crit_edge, label %.lr.ph, !dbg !26641

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val82.pre = load ptr, ptr %i.as, align 8, !dbg !26642
  %.val83.pre = load i64, ptr %i.at, align 8, !dbg !26642
  br label %._crit_edge, !dbg !26642

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val83 = phi i64 [ %.val83.pre, %._crit_edge.loopexit ], [ %.val81, %bb.j ], !dbg !26642 ; 2 uses
  %.val82 = phi ptr [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !26642 ; 2 uses
  %.val79 = load i32, ptr %.val82, align 4, !dbg !26643, !noundef !3885 ; 2 uses
  %.not.i91 = icmp ne i64 %.val83, 0, !dbg !26644
  call void @llvm.assume(i1 %.not.i91), !dbg !26644
  %i.av = getelementptr [4 x i8], ptr %.val82, i64 %.val83, !dbg !26645
  %i.aw = getelementptr i8, ptr %i.av, i64 -4, !dbg !26645
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !26646, !noundef !3885
  %i.ay = sub nuw nsw i32 %i.ax, %.val79, !dbg !26647
  %i.az = sext i32 %i.ay to i64, !dbg !26648
  %i.ba = icmp eq i32 %.val79, 0, !dbg !26649
  br i1 %i.ba, label %bb.k, label %bb.m, !dbg !26649

bb.k:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !26650
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !26651, !nonnull !3885, !noundef !3885
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !26651
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !26651, !nonnull !3885, !align !4041, !noundef !3885
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !26651
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !26651, !invariant.load !3885, !nonnull !3885
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull %i.bc)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !26652

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp ne i64 %i.bh, %i.az, !dbg !26653
  %i.bj = zext i1 %i.bi to i64, !dbg !26654
  br label %bb.m, !dbg !26654

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bj, %bb.l ], [ 1, %._crit_edge ], !dbg !26655
  %i.bk = add i64 %.sroa.05.0, %.sroa.0.0172, !dbg !26656 ; 2 uses
  %i.bl = icmp eq ptr %i.ah, %i.s, !dbg !26657
  br i1 %i.bl, label %._crit_edge175, label %bb.e, !dbg !26553

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.0102.0170 = phi ptr [ %i.bn, %bb.r ], [ %.val80, %bb.j ] ; 3 uses
  %.sroa.6.0169 = phi i64 [ %i.bm, %bb.r ], [ %.val81, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0102.0170) ]
  %i.bm = add i64 %.sroa.6.0169, -1, !dbg !26658
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0102.0170, i64 4, !dbg !26659 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !dbg !26660, !alias.scope !26554, !noundef !3885
  %i.bp = load i32, ptr %.sroa.0102.0170, align 4, !dbg !26661, !alias.scope !26554, !noundef !3885
  %i.bq = sub i32 %i.bo, %i.bp, !dbg !26662       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26557), !dbg !26663
  %i.br = icmp sgt i32 %i.bq, -1, !dbg !26664
  br i1 %i.br, label %bb.n, label %bb.q, !dbg !26665

bb.n:                                             ; preds = %.lr.ph
  %i.bs = load i64, ptr %i.af, align 8, !dbg !26666, !alias.scope !26557, !noalias !26558, !noundef !3885 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bs, 0, !dbg !26667
  call void @llvm.assume(i1 %.not.i92), !dbg !26667
  %i.bt = load ptr, ptr %i.ag, align 8, !dbg !26668, !alias.scope !26557, !noalias !26558, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.bs, !dbg !26669
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4, !dbg !26669 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ], !dbg !26670
  %.sroa.035.0.val.i = load i32, ptr %i.bv, align 4, !dbg !26671, !noalias !26559, !noundef !3885
  %i.bw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bq), !dbg !26672 ; 2 uses
  %i.bx = extractvalue { i32, i1 } %i.bw, 1, !dbg !26672
  %i.by = extractvalue { i32, i1 } %i.bw, 0, !dbg !26672
  br i1 %i.bx, label %bb.q, label %bb.o, !dbg !26673

bb.o:                                             ; preds = %bb.n
  %i.bz = load i64, ptr %i.l, align 8, !dbg !26674, !range !4331, !alias.scope !26560, !noalias !26558, !noundef !3885
  %i.ca = icmp eq i64 %i.bs, %i.bz, !dbg !26675
  br i1 %i.ca, label %bb.p, label %bb.r, !dbg !26675

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc93 unwind label %.loopexit, !dbg !26676

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ag, align 8, !dbg !26677, !alias.scope !26560, !noalias !26558
  br label %bb.r, !dbg !26676

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26678
  store i64 2, ptr %i.cb, align 8, !dbg !26678
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26678
  store i32 0, ptr %.sroa.2120.0..sroa_idx, align 8, !dbg !26678
  %.sroa.3121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !26678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3121.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @620, i64 12), i64 60, i1 false), !dbg !26678
  store i8 42, ptr %0, align 8, !dbg !26678
  br label %bb.s, !dbg !26679

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.cc = phi ptr [ %i.bt, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !26677
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bs, !dbg !26680
  store i32 %i.by, ptr %i.cd, align 4, !dbg !26681, !noalias !26558
  %i.ce = add i64 %i.bs, 1, !dbg !26682
  store i64 %i.ce, ptr %i.af, align 8, !dbg !26682, !alias.scope !26560, !noalias !26558
  %i.cf = icmp ult i64 %.sroa.6.0169, 3, !dbg !26641
  br i1 %i.cf, label %._crit_edge.loopexit, label %.lr.ph, !dbg !26641

bb.s:                                             ; preds = %bb.ae, %bb.au, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.t, !dbg !26683

bb.t:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread126 unwind label %bb.u, !dbg !26684

bb.u:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !26683
  unreachable, !dbg !26683

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !26685

._crit_edge175:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bk, 0, !dbg !26686
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !26686

bb.v:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !26687
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26688

bb.w:                                             ; preds = %._crit_edge175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !26689
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26690

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26583
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !26691
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !26691, !nonnull !3885, !noundef !3885
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !26692
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !26692, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cj, i64 noundef %i.cl)
          to label %bb.z unwind label %bb.y, !dbg !26583

bb.y:                                             ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !26693

bb.z:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %i.h, align 8, !dbg !26694, !range !3916, !noundef !3885 ; 2 uses
  %.not69 = icmp eq i64 %i.cn, 18, !dbg !26694
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !26695
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !26695 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !26695
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !26695 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !26696

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !26697
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !26697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26699
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26698
  store i64 %i.cn, ptr %i.cs, align 8, !dbg !26698
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26698
  store ptr %i.cp, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !26698
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26698
  store ptr %i.cr, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !26698
  store i8 42, ptr %0, align 8, !dbg !26698
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26693

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26699
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26693

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26693
  br label %bb.ad, !dbg !26700

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7107.0 = phi ptr [ %i.cr, %bb.ac ], [ %i.dd, %bb.al ], !dbg !26701 ; 2 uses
  %.sroa.0106.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !26701 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !26702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !26702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !26703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !26704, !noalias !26586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !26703
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc96 unwind label %bb.as, !dbg !26705

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26693
  br label %bb.s, !dbg !26679

bb.af:                                            ; preds = %bb.aw, %bb.at, %.thread, %.loopexit.split-lp, %bb.as, %bb.ah, %bb.y
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !26706
  unreachable, !dbg !26706

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !26595
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26707
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !26707, !nonnull !3885, !noundef !3885
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26708
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !26708, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cv, i64 noundef %i.cx)
          to label %bb.ai unwind label %bb.ah, !dbg !26595

bb.ah:                                            ; preds = %bb.ag
  %i.cy = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.dm = icmp eq ptr %i.dl, null, !dbg !26733
  br i1 %i.dm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.av, !dbg !26733

bb.av:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit unwind label %.thread.loopexit.split-lp, !dbg !26734

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26730
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n), !dbg !26624
  br label %bb.ar, !dbg !26731

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.cm, %bb.y ], [ %i.cy, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.thread126 unwind label %bb.af, !dbg !26729

.thread126:                                       ; preds = %bb.at, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72131 = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %i.ae, %bb.d ], [ %i.dk, %bb.at ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1130 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.at ], [ true, %.loopexit.split-lp ]
  %i.dn = load ptr, ptr %i.m, align 8, !dbg !26735, !alias.scope !26604, !noundef !3885
  %i.do = icmp eq ptr %i.dn, null, !dbg !26735
  br i1 %i.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101, label %bb.aw, !dbg !26735

bb.aw:                                            ; preds = %.thread126
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 unwind label %bb.af, !dbg !26736

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread: ; preds = %bb.an, %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101
  %.pn74124 = phi { ptr, i32 } [ %.pn74125, %.thread ], [ %.pn72131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 ], [ %i.di, %bb.an ]
  resume { ptr, i32 } %.pn74124, !dbg !26706

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101
  %.pn74125 = phi { ptr, i32 } [ %.pn72131, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101 ], [ %lpad.loopexit161, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit101.thread unwind label %bb.af, !dbg !26624
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26737 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26937
  %.val80 = load ptr, ptr %1, align 8, !dbg !26938, !nonnull !3885, !noundef !3885
  %i.o = getelementptr i8, ptr %1, i64 8, !dbg !26938
  %.val81 = load ptr, ptr %i.o, align 8, !dbg !26938, !nonnull !3885, !align !4041, !noundef !3885
  %i.p = getelementptr inbounds nuw i8, ptr %.val81, i64 64, !dbg !26939
  %i.q = load ptr, ptr %i.p, align 8, !dbg !26939, !invariant.load !3885, !nonnull !3885
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %.val80) #48, !dbg !26940
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #48, !dbg !26941
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26873), !dbg !26942
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !26943
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !26943 ; 4 uses
  br label %.lr.ph.i, !dbg !26944

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.ab, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.ac, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.t, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !26945 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !26946, !alias.scope !26873, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !26946
  %.sroa.06.0.val8.i = load ptr, ptr %i.u, align 8, !dbg !26946, !alias.scope !26873, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !26947
  %i.w = load ptr, ptr %i.v, align 8, !dbg !26947, !invariant.load !3885, !noalias !26873, !nonnull !3885
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc unwind label %.thread.loopexit, !dbg !26948, !inline_history !775

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !26949
  %i.z = load ptr, ptr %i.y, align 8, !dbg !26949, !invariant.load !3885, !noalias !26873, !nonnull !3885
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !26950, !inline_history !775

.noexc88:                                         ; preds = %.noexc
  %i.ab = add i64 %i.x, %.sroa.0.011.i, !dbg !26951 ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.02.010.i, !dbg !26952 ; 2 uses
  %i.ad = icmp eq ptr %i.t, %i.s, !dbg !26953
  br i1 %i.ad, label %bb.b, label %.lr.ph.i, !dbg !26944

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102: ; preds = %.thread122, %bb.at
  br i1 %.sroa.032.1126, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread, !dbg !26954

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.as, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26955
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !26956

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !26957
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ab)
          to label %.lr.ph165 unwind label %bb.d, !dbg !26958

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

.lr.ph165:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.e, !dbg !26889

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph165, %bb.m
  %.sroa.0.0163 = phi i64 [ 0, %.lr.ph165 ], [ %i.bj, %bb.m ]
  %.sroa.034.0162 = phi ptr [ %1, %.lr.ph165 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0162, i64 16, !dbg !26959 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0162, align 8, !dbg !26960, !nonnull !3885, !noundef !3885
  %i.ai = getelementptr i8, ptr %.sroa.034.0162, i64 8, !dbg !26960
  %.sroa.034.0.val79 = load ptr, ptr %i.ai, align 8, !dbg !26960, !nonnull !3885, !align !4041, !noundef !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val79, i64 32, !dbg !26961
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !26961, !invariant.load !3885, !nonnull !3885
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !26962 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !26961 ; 6 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !26961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !26878
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !26963
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !26963, !invariant.load !3885, !nonnull !3885
  invoke void %i.ap(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.am)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !26964

bb.g:                                             ; preds = %bb.f
  %i.aq = load i128, ptr %i.d, align 16, !dbg !26965, !noundef !3885
  %i.ar = icmp eq i128 %i.aq, 128067558350413595523341224040139320593, !dbg !26966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !26878
  br i1 %i.ar, label %bb.j, label %bb.h, !dbg !26967, !prof !3956

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !26968

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = getelementptr i8, ptr %i.am, i64 40, !dbg !26969 ; 2 uses
  %.val82 = load ptr, ptr %i.as, align 8, !dbg !26969, !noundef !3885 ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 48, !dbg !26969 ; 2 uses
  %.val83 = load i64, ptr %i.at, align 8, !dbg !26969, !noundef !3885 ; 3 uses
  %i.au = icmp ult i64 %.val83, 2, !dbg !26970
  br i1 %i.au, label %._crit_edge, label %.lr.ph.preheader, !dbg !26970

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.af, align 8, !dbg !26971, !alias.scope !26887, !noalias !26888
  br label %.lr.ph, !dbg !26972

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.as, align 8, !dbg !26973
  %.val85.pre = load i64, ptr %i.at, align 8, !dbg !26973
  br label %._crit_edge, !dbg !26973

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !26973 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !26973 ; 2 uses
  %.val76 = load i64, ptr %.val84, align 8, !dbg !26974, !noundef !3885 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !26975
  call void @llvm.assume(i1 %.not.i91), !dbg !26975
  %i.av = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !26976
  %i.aw = getelementptr i8, ptr %i.av, i64 -8, !dbg !26976
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !26977, !noundef !3885
  %i.ay = sub nuw nsw i64 %i.ax, %.val76, !dbg !26978
  %i.az = icmp eq i64 %.val76, 0, !dbg !26979
  br i1 %i.az, label %bb.k, label %bb.m, !dbg !26979

bb.k:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !26980
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !26981, !nonnull !3885, !noundef !3885
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !26981
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !26981, !nonnull !3885, !align !4041, !noundef !3885
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48, !dbg !26981
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !26981, !invariant.load !3885, !nonnull !3885
  %i.bg = invoke noundef i64 %i.bf(ptr noundef nonnull %i.bb)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !26982

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp ne i64 %i.ay, %i.bg, !dbg !26983
  %i.bi = zext i1 %i.bh to i64, !dbg !26984
  br label %bb.m, !dbg !26984

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bi, %bb.l ], [ 1, %._crit_edge ], !dbg !26985
  %i.bj = add i64 %.sroa.05.0, %.sroa.0.0163, !dbg !26986 ; 2 uses
  %i.bk = icmp eq ptr %i.ah, %i.s, !dbg !26987
  br i1 %i.bk, label %._crit_edge166, label %bb.e, !dbg !26889

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bl = phi i64 [ %i.ca, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !26971 ; 4 uses
  %.sroa.0103.0161 = phi ptr [ %i.bn, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0160 = phi i64 [ %i.bm, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0103.0161) ]
  %i.bm = add i64 %.sroa.6.0160, -1, !dbg !26988
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0103.0161, i64 8, !dbg !26989 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !26990, !alias.scope !26890, !noundef !3885
  %i.bp = load i64, ptr %.sroa.0103.0161, align 8, !dbg !26991, !alias.scope !26890, !noundef !3885
  %i.bq = sub i64 %i.bo, %i.bp, !dbg !26992
  call void @llvm.experimental.noalias.scope.decl(metadata !26887), !dbg !26993
  %i.br = load ptr, ptr %i.ag, align 8, !dbg !26994, !alias.scope !26887, !noalias !26888, !nonnull !3885 ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bl, !dbg !26994
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8, !dbg !26994
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !26995, !noalias !26893, !noundef !3885
  %i.bv = load i64, ptr %i.l, align 8, !dbg !26996, !range !4331, !alias.scope !26894, !noalias !26888, !noundef !3885
  %i.bw = icmp eq i64 %i.bl, %i.bv, !dbg !26972
  br i1 %i.bw, label %bb.n, label %bb.o, !dbg !26972

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc94 unwind label %.loopexit, !dbg !26997

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ag, align 8, !dbg !26998, !alias.scope !26894, !noalias !26888
  br label %bb.o, !dbg !26997

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bx = phi ptr [ %i.br, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !26998
  %i.by = add i64 %i.bq, %i.bu, !dbg !26999
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bl, !dbg !27000
  store i64 %i.by, ptr %i.bz, align 8, !dbg !27001, !noalias !26888
  %i.ca = add i64 %i.bl, 1, !dbg !27002           ; 2 uses
  store i64 %i.ca, ptr %i.af, align 8, !dbg !27002, !alias.scope !26894, !noalias !26888
  %i.cb = icmp ult i64 %.sroa.6.0160, 3, !dbg !26970
  br i1 %i.cb, label %._crit_edge.loopexit, label %.lr.ph, !dbg !26970

bb.p:                                             ; preds = %bb.ab, %bb.ar
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.q, !dbg !27003

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread122 unwind label %bb.r, !dbg !27004

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !27003
  unreachable, !dbg !27003

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !27005

._crit_edge166:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bj, 0, !dbg !27006
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !27006

bb.s:                                             ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !27007
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27008

bb.t:                                             ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !27009
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxBU_E0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27010

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !26914
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !27011
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !27011, !nonnull !3885, !noundef !3885
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !27012
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !27012, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch)
          to label %bb.w unwind label %bb.v, !dbg !26914

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !27013

bb.w:                                             ; preds = %bb.u
  %i.cj = load i64, ptr %i.h, align 8, !dbg !27014, !range !3916, !noundef !3885 ; 2 uses
  %.not69 = icmp eq i64 %i.cj, 18, !dbg !27014
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !27015
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !27015 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !27015
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !27015 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !27016

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !27017
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !27017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27019
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27018
  store i64 %i.cj, ptr %i.co, align 8, !dbg !27018
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27018
  store ptr %i.cl, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !27018
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27018
  store ptr %i.cn, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !27018
  store i8 42, ptr %0, align 8, !dbg !27018
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27013

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27019
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27013

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27013
  br label %bb.aa, !dbg !27020

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0107.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !27021 ; 2 uses
  %.sroa.7108.0 = phi ptr [ %i.cn, %bb.z ], [ %i.cz, %bb.ai ], !dbg !27021 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !27022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !27023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27024, !noalias !26917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !27023
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc97 unwind label %bb.ap, !dbg !27025

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27013
  br label %bb.p, !dbg !27026

bb.ac:                                            ; preds = %bb.at, %bb.aq, %.thread, %.loopexit.split-lp, %bb.ap, %bb.ae, %bb.v
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !27027
  unreachable, !dbg !27027

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !26927
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27028
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !27028, !nonnull !3885, !noundef !3885
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27029
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !27029, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cr, i64 noundef %i.ct)
          to label %bb.af unwind label %bb.ae, !dbg !26927

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.k) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !27030

bb.af:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.j, align 8, !dbg !27031, !range !3916, !noundef !3885 ; 2 uses
  %.not70 = icmp eq i64 %i.cv, 18, !dbg !27031
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !27032
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !27032 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !27032
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !27032 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !27033

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !27034
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !27034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !27036
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27035
  store i64 %i.cv, ptr %i.da, align 8, !dbg !27035
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27035
  store ptr %i.cx, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !27035
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27035
end_hunk_3
begin_hunk_4_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.di = icmp eq ptr %i.dh, null, !dbg !27054
  br i1 %i.di, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.as, !dbg !27054

bb.as:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit unwind label %.thread.loopexit.split-lp, !dbg !27055

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27051
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n), !dbg !26954
  br label %bb.ao, !dbg !27052

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.cu, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit151, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.thread122 unwind label %bb.ac, !dbg !27050

.thread122:                                       ; preds = %bb.aq, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72127 = phi { ptr, i32 } [ %i.cc, %bb.q ], [ %i.ae, %bb.d ], [ %i.dg, %bb.aq ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1126 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.aq ], [ true, %.loopexit.split-lp ]
  %i.dj = load ptr, ptr %i.m, align 8, !dbg !27056, !alias.scope !26936, !noundef !3885
  %i.dk = icmp eq ptr %i.dj, null, !dbg !27056
  br i1 %i.dk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102, label %bb.at, !dbg !27056

bb.at:                                            ; preds = %.thread122
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102 unwind label %bb.ac, !dbg !27057

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread: ; preds = %bb.ak, %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102
  %.pn74120 = phi { ptr, i32 } [ %.pn74121, %.thread ], [ %.pn72127, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102 ], [ %i.de, %bb.ak ]
  resume { ptr, i32 } %.pn74120, !dbg !27027

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102
  %.pn74121 = phi { ptr, i32 } [ %.pn72127, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102 ], [ %lpad.loopexit154, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread unwind label %bb.ac, !dbg !26954
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27058 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !27258
  %.val80 = load ptr, ptr %1, align 8, !dbg !27259, !nonnull !3885, !noundef !3885
  %i.o = getelementptr i8, ptr %1, i64 8, !dbg !27259
  %.val81 = load ptr, ptr %i.o, align 8, !dbg !27259, !nonnull !3885, !align !4041, !noundef !3885
  %i.p = getelementptr inbounds nuw i8, ptr %.val81, i64 64, !dbg !27260
  %i.q = load ptr, ptr %i.p, align 8, !dbg !27260, !invariant.load !3885, !nonnull !3885
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %.val80) #48, !dbg !27261
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #48, !dbg !27262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27194), !dbg !27263
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !27264
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !27264 ; 4 uses
  br label %.lr.ph.i, !dbg !27265

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.ab, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.ac, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.t, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !27266 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !27267, !alias.scope !27194, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !27267
  %.sroa.06.0.val8.i = load ptr, ptr %i.u, align 8, !dbg !27267, !alias.scope !27194, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !27268
  %i.w = load ptr, ptr %i.v, align 8, !dbg !27268, !invariant.load !3885, !noalias !27194, !nonnull !3885
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc unwind label %.thread.loopexit, !dbg !27269, !inline_history !793

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !27270
  %i.z = load ptr, ptr %i.y, align 8, !dbg !27270, !invariant.load !3885, !noalias !27194, !nonnull !3885
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull %.sroa.06.0.val.i) #48
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !27271, !inline_history !793

.noexc88:                                         ; preds = %.noexc
  %i.ab = add i64 %i.x, %.sroa.0.011.i, !dbg !27272 ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.02.010.i, !dbg !27273 ; 2 uses
  %i.ad = icmp eq ptr %i.t, %i.s, !dbg !27274
  br i1 %i.ad, label %bb.b, label %.lr.ph.i, !dbg !27265

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102: ; preds = %.thread122, %bb.at
  br i1 %.sroa.032.1126, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread, !dbg !27275

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.as, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !27276
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !27277

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !27278
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ab)
          to label %.lr.ph165 unwind label %bb.d, !dbg !27279

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

.lr.ph165:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.e, !dbg !27210

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph165, %bb.m
  %.sroa.0.0163 = phi i64 [ 0, %.lr.ph165 ], [ %i.bj, %bb.m ]
  %.sroa.034.0162 = phi ptr [ %1, %.lr.ph165 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0162, i64 16, !dbg !27280 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0162, align 8, !dbg !27281, !nonnull !3885, !noundef !3885
  %i.ai = getelementptr i8, ptr %.sroa.034.0162, i64 8, !dbg !27281
  %.sroa.034.0.val79 = load ptr, ptr %i.ai, align 8, !dbg !27281, !nonnull !3885, !align !4041, !noundef !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val79, i64 32, !dbg !27282
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !27282, !invariant.load !3885, !nonnull !3885
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !27283 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !27282 ; 6 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !27282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !27199
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !27284
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !27284, !invariant.load !3885, !nonnull !3885
  invoke void %i.ap(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.am)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !27285

bb.g:                                             ; preds = %bb.f
  %i.aq = load i128, ptr %i.d, align 16, !dbg !27286, !noundef !3885
  %i.ar = icmp eq i128 %i.aq, 128067558350413595523341224040139320593, !dbg !27287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27199
  br i1 %i.ar, label %bb.j, label %bb.h, !dbg !27288, !prof !3956

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27289

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = getelementptr i8, ptr %i.am, i64 40, !dbg !27290 ; 2 uses
  %.val82 = load ptr, ptr %i.as, align 8, !dbg !27290, !noundef !3885 ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 48, !dbg !27290 ; 2 uses
  %.val83 = load i64, ptr %i.at, align 8, !dbg !27290, !noundef !3885 ; 3 uses
  %i.au = icmp ult i64 %.val83, 2, !dbg !27291
  br i1 %i.au, label %._crit_edge, label %.lr.ph.preheader, !dbg !27291

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.af, align 8, !dbg !27292, !alias.scope !27208, !noalias !27209
  br label %.lr.ph, !dbg !27293

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.as, align 8, !dbg !27294
  %.val85.pre = load i64, ptr %i.at, align 8, !dbg !27294
  br label %._crit_edge, !dbg !27294

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !27294 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !27294 ; 2 uses
  %.val76 = load i64, ptr %.val84, align 8, !dbg !27295, !noundef !3885 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !27296
  call void @llvm.assume(i1 %.not.i91), !dbg !27296
  %i.av = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !27297
  %i.aw = getelementptr i8, ptr %i.av, i64 -8, !dbg !27297
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !27298, !noundef !3885
  %i.ay = sub nuw nsw i64 %i.ax, %.val76, !dbg !27299
  %i.az = icmp eq i64 %.val76, 0, !dbg !27300
  br i1 %i.az, label %bb.k, label %bb.m, !dbg !27300

bb.k:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !27301
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !27302, !nonnull !3885, !noundef !3885
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !27302
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !27302, !nonnull !3885, !align !4041, !noundef !3885
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48, !dbg !27302
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !27302, !invariant.load !3885, !nonnull !3885
  %i.bg = invoke noundef i64 %i.bf(ptr noundef nonnull %i.bb)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !27303

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp ne i64 %i.ay, %i.bg, !dbg !27304
  %i.bi = zext i1 %i.bh to i64, !dbg !27305
  br label %bb.m, !dbg !27305

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bi, %bb.l ], [ 1, %._crit_edge ], !dbg !27306
  %i.bj = add i64 %.sroa.05.0, %.sroa.0.0163, !dbg !27307 ; 2 uses
  %i.bk = icmp eq ptr %i.ah, %i.s, !dbg !27308
  br i1 %i.bk, label %._crit_edge166, label %bb.e, !dbg !27210

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bl = phi i64 [ %i.ca, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !27292 ; 4 uses
  %.sroa.0103.0161 = phi ptr [ %i.bn, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0160 = phi i64 [ %i.bm, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0103.0161) ]
  %i.bm = add i64 %.sroa.6.0160, -1, !dbg !27309
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0103.0161, i64 8, !dbg !27310 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !27311, !alias.scope !27211, !noundef !3885
  %i.bp = load i64, ptr %.sroa.0103.0161, align 8, !dbg !27312, !alias.scope !27211, !noundef !3885
  %i.bq = sub i64 %i.bo, %i.bp, !dbg !27313
  call void @llvm.experimental.noalias.scope.decl(metadata !27208), !dbg !27314
  %i.br = load ptr, ptr %i.ag, align 8, !dbg !27315, !alias.scope !27208, !noalias !27209, !nonnull !3885 ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bl, !dbg !27315
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8, !dbg !27315
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !27316, !noalias !27214, !noundef !3885
  %i.bv = load i64, ptr %i.l, align 8, !dbg !27317, !range !4331, !alias.scope !27215, !noalias !27209, !noundef !3885
  %i.bw = icmp eq i64 %i.bl, %i.bv, !dbg !27293
  br i1 %i.bw, label %bb.n, label %bb.o, !dbg !27293

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc94 unwind label %.loopexit, !dbg !27318

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ag, align 8, !dbg !27319, !alias.scope !27215, !noalias !27209
  br label %bb.o, !dbg !27318

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bx = phi ptr [ %i.br, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !27319
  %i.by = add i64 %i.bq, %i.bu, !dbg !27320
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bl, !dbg !27321
  store i64 %i.by, ptr %i.bz, align 8, !dbg !27322, !noalias !27209
  %i.ca = add i64 %i.bl, 1, !dbg !27323           ; 2 uses
  store i64 %i.ca, ptr %i.af, align 8, !dbg !27323, !alias.scope !27215, !noalias !27209
  %i.cb = icmp ult i64 %.sroa.6.0160, 3, !dbg !27291
  br i1 %i.cb, label %._crit_edge.loopexit, label %.lr.ph, !dbg !27291

bb.p:                                             ; preds = %bb.ab, %bb.ar
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.q, !dbg !27324

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread122 unwind label %bb.r, !dbg !27325

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !27324
  unreachable, !dbg !27324

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !27326

._crit_edge166:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bj, 0, !dbg !27327
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !27327

bb.s:                                             ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !27328
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listxBU_Es_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27329

bb.t:                                             ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !27330
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27331

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !27235
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !27332
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !27332, !nonnull !3885, !noundef !3885
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !27333
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !27333, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch)
          to label %bb.w unwind label %bb.v, !dbg !27235

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !27334

bb.w:                                             ; preds = %bb.u
  %i.cj = load i64, ptr %i.h, align 8, !dbg !27335, !range !3916, !noundef !3885 ; 2 uses
  %.not69 = icmp eq i64 %i.cj, 18, !dbg !27335
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !27336
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !27336 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !27336
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !27336 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !27337

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !27338
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !27338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27340
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27339
  store i64 %i.cj, ptr %i.co, align 8, !dbg !27339
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27339
  store ptr %i.cl, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !27339
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27339
  store ptr %i.cn, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !27339
  store i8 42, ptr %0, align 8, !dbg !27339
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27334

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27340
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27334

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27334
  br label %bb.aa, !dbg !27341

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0107.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !27342 ; 2 uses
  %.sroa.7108.0 = phi ptr [ %i.cn, %bb.z ], [ %i.cz, %bb.ai ], !dbg !27342 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !27343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !27344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27345, !noalias !27238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !27344
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc97 unwind label %bb.ap, !dbg !27346

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27334
  br label %bb.p, !dbg !27347

bb.ac:                                            ; preds = %bb.at, %bb.aq, %.thread, %.loopexit.split-lp, %bb.ap, %bb.ae, %bb.v
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !27348
  unreachable, !dbg !27348

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !27248
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27349
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !27349, !nonnull !3885, !noundef !3885
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27350
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !27350, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cr, i64 noundef %i.ct)
          to label %bb.af unwind label %bb.ae, !dbg !27248

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.k) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !27351

bb.af:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.j, align 8, !dbg !27352, !range !3916, !noundef !3885 ; 2 uses
  %.not70 = icmp eq i64 %i.cv, 18, !dbg !27352
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !27353
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !27353 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !27353
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !27353 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !27354

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !27355
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !27355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !27357
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27356
  store i64 %i.cv, ptr %i.da, align 8, !dbg !27356
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27356
  store ptr %i.cx, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !27356
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27356
end_hunk_4
begin_hunk_5_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan:bb.a
bb.as:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit unwind label %.thread.loopexit.split-lp, !dbg !27376

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27372
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n), !dbg !27275
  br label %bb.ao, !dbg !27373

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.cu, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit151, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.l) #43
          to label %.thread122 unwind label %bb.ac, !dbg !27371

.thread122:                                       ; preds = %bb.aq, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72127 = phi { ptr, i32 } [ %i.cc, %bb.q ], [ %i.ae, %bb.d ], [ %i.dg, %bb.aq ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1126 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.aq ], [ true, %.loopexit.split-lp ]
  %i.dj = load ptr, ptr %i.m, align 8, !dbg !27377, !alias.scope !27257, !noundef !3885
  %i.dk = icmp eq ptr %i.dj, null, !dbg !27377
  br i1 %i.dk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102, label %bb.at, !dbg !27377

bb.at:                                            ; preds = %.thread122
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102 unwind label %bb.ac, !dbg !27378

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread: ; preds = %bb.ak, %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102
  %.pn74120 = phi { ptr, i32 } [ %.pn74121, %.thread ], [ %.pn72127, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102 ], [ %i.de, %bb.ak ]
  resume { ptr, i32 } %.pn74120, !dbg !27348

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102
  %.pn74121 = phi { ptr, i32 } [ %.pn72127, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102 ], [ %lpad.loopexit154, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread unwind label %bb.ac, !dbg !27275
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27379 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !27582
  %.val79 = load ptr, ptr %1, align 8, !dbg !27583, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %.val.i = load ptr, ptr %.val79, align 8, !dbg !27584, !nonnull !3885, !noundef !3885
  %i.o = getelementptr i8, ptr %.val79, i64 8, !dbg !27584
  %.val1.i = load ptr, ptr %i.o, align 8, !dbg !27584, !nonnull !3885, !align !4041, !noundef !3885
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !27585
  %i.q = load ptr, ptr %i.p, align 8, !dbg !27585, !invariant.load !3885, !nonnull !3885
  %i.r = tail call noundef nonnull align 8 ptr %i.q(ptr noundef nonnull %.val.i) #48, !dbg !27586
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r) #48, !dbg !27587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27518), !dbg !27588
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !27589
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !27589 ; 4 uses
  br label %.lr.ph.i, !dbg !27590

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.ab, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.ac, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.t, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !27591 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !27592, !alias.scope !27518, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !27593, !noalias !27518, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !27593
  %.val1.i.i = load ptr, ptr %i.u, align 8, !dbg !27593, !noalias !27518, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !27594
  %i.w = load ptr, ptr %i.v, align 8, !dbg !27594, !invariant.load !3885, !noalias !27518, !nonnull !3885
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull %.val.i.i) #48
          to label %.noexc unwind label %.thread.loopexit, !dbg !27595, !inline_history !812

.noexc:                                           ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !27596
  %i.z = load ptr, ptr %i.y, align 8, !dbg !27596, !invariant.load !3885, !noalias !27518, !nonnull !3885
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull %.val.i.i) #48
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !27597, !inline_history !812

.noexc86:                                         ; preds = %.noexc
  %i.ab = add i64 %i.x, %.sroa.0.010.i, !dbg !27598 ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.02.09.i, !dbg !27599 ; 2 uses
  %i.ad = icmp eq ptr %i.t, %i.s, !dbg !27600
  br i1 %i.ad, label %bb.b, label %.lr.ph.i, !dbg !27590

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102: ; preds = %.thread122, %bb.at
  br i1 %.sroa.032.1126, label %.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfcROwRM8ZtH_11polars_plan.exit102.thread, !dbg !27601

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.as, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !27602
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !27603

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !27604
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ab)
          to label %.lr.ph165 unwind label %bb.d, !dbg !27605

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.thread122

.lr.ph165:                                        ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.e, !dbg !27534

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph165, %bb.m
  %.sroa.0.0163 = phi i64 [ 0, %.lr.ph165 ], [ %i.bj, %bb.m ]
  %.sroa.034.0162 = phi ptr [ %1, %.lr.ph165 ], [ %i.ah, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0162, i64 8, !dbg !27606 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0162, align 8, !dbg !27607, !nonnull !3885, !align !4041, !noundef !3885 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !27608, !nonnull !3885, !noundef !3885
  %i.ai = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !27608
  %.val1.i88 = load ptr, ptr %i.ai, align 8, !dbg !27608, !nonnull !3885, !align !4041, !noundef !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !27609
  %i.ak = load ptr, ptr %i.aj, align 8, !dbg !27609, !invariant.load !3885, !nonnull !3885
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !27610 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !27609 ; 6 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !27609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !27523
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !27611
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !27611, !invariant.load !3885, !nonnull !3885
  invoke void %i.ap(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef %i.am)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !27612

bb.g:                                             ; preds = %bb.f
  %i.aq = load i128, ptr %i.d, align 16, !dbg !27613, !noundef !3885
  %i.ar = icmp eq i128 %i.aq, 128067558350413595523341224040139320593, !dbg !27614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27523
  br i1 %i.ar, label %bb.j, label %bb.h, !dbg !27615, !prof !3956

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27616

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.as = getelementptr i8, ptr %i.am, i64 40, !dbg !27617 ; 2 uses
  %.val80 = load ptr, ptr %i.as, align 8, !dbg !27617, !noundef !3885 ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 48, !dbg !27617 ; 2 uses
  %.val81 = load i64, ptr %i.at, align 8, !dbg !27617, !noundef !3885 ; 3 uses
  %i.au = icmp ult i64 %.val81, 2, !dbg !27618
  br i1 %i.au, label %._crit_edge, label %.lr.ph.preheader, !dbg !27618

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.af, align 8, !dbg !27619, !alias.scope !27532, !noalias !27533
  br label %.lr.ph, !dbg !27620

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val82.pre = load ptr, ptr %i.as, align 8, !dbg !27621
  %.val83.pre = load i64, ptr %i.at, align 8, !dbg !27621
  br label %._crit_edge, !dbg !27621

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val83 = phi i64 [ %.val83.pre, %._crit_edge.loopexit ], [ %.val81, %bb.j ], !dbg !27621 ; 2 uses
  %.val82 = phi ptr [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !27621 ; 2 uses
  %.val76 = load i64, ptr %.val82, align 8, !dbg !27622, !noundef !3885 ; 2 uses
  %.not.i91 = icmp ne i64 %.val83, 0, !dbg !27623
  call void @llvm.assume(i1 %.not.i91), !dbg !27623
  %i.av = getelementptr [8 x i8], ptr %.val82, i64 %.val83, !dbg !27624
  %i.aw = getelementptr i8, ptr %i.av, i64 -8, !dbg !27624
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !27625, !noundef !3885
  %i.ay = sub nuw nsw i64 %i.ax, %.val76, !dbg !27626
  %i.az = icmp eq i64 %.val76, 0, !dbg !27627
  br i1 %i.az, label %bb.k, label %bb.m, !dbg !27627

bb.k:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 56, !dbg !27628
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !27629, !nonnull !3885, !noundef !3885
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !27629
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !27629, !nonnull !3885, !align !4041, !noundef !3885
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48, !dbg !27629
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !27629, !invariant.load !3885, !nonnull !3885
  %i.bg = invoke noundef i64 %i.bf(ptr noundef nonnull %i.bb)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !27630

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp ne i64 %i.ay, %i.bg, !dbg !27631
  %i.bi = zext i1 %i.bh to i64, !dbg !27632
  br label %bb.m, !dbg !27632

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bi, %bb.l ], [ 1, %._crit_edge ], !dbg !27633
  %i.bj = add i64 %.sroa.05.0, %.sroa.0.0163, !dbg !27634 ; 2 uses
  %i.bk = icmp eq ptr %i.ah, %i.s, !dbg !27635
  br i1 %i.bk, label %._crit_edge166, label %bb.e, !dbg !27534

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bl = phi i64 [ %i.ca, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !27619 ; 4 uses
  %.sroa.0103.0161 = phi ptr [ %i.bn, %bb.o ], [ %.val80, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0160 = phi i64 [ %i.bm, %bb.o ], [ %.val81, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0103.0161) ]
  %i.bm = add i64 %.sroa.6.0160, -1, !dbg !27636
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0103.0161, i64 8, !dbg !27637 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !27638, !alias.scope !27535, !noundef !3885
  %i.bp = load i64, ptr %.sroa.0103.0161, align 8, !dbg !27639, !alias.scope !27535, !noundef !3885
  %i.bq = sub i64 %i.bo, %i.bp, !dbg !27640
  call void @llvm.experimental.noalias.scope.decl(metadata !27532), !dbg !27641
  %i.br = load ptr, ptr %i.ag, align 8, !dbg !27642, !alias.scope !27532, !noalias !27533, !nonnull !3885 ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bl, !dbg !27642
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8, !dbg !27642
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !27643, !noalias !27538, !noundef !3885
  %i.bv = load i64, ptr %i.l, align 8, !dbg !27644, !range !4331, !alias.scope !27539, !noalias !27533, !noundef !3885
  %i.bw = icmp eq i64 %i.bl, %i.bv, !dbg !27620
  br i1 %i.bw, label %bb.n, label %bb.o, !dbg !27620

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc94 unwind label %.loopexit, !dbg !27645

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ag, align 8, !dbg !27646, !alias.scope !27539, !noalias !27533
  br label %bb.o, !dbg !27645

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bx = phi ptr [ %i.br, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !27646
  %i.by = add i64 %i.bq, %i.bu, !dbg !27647
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bl, !dbg !27648
  store i64 %i.by, ptr %i.bz, align 8, !dbg !27649, !noalias !27533
  %i.ca = add i64 %i.bl, 1, !dbg !27650           ; 2 uses
  store i64 %i.ca, ptr %i.af, align 8, !dbg !27650, !alias.scope !27539, !noalias !27533
  %i.cb = icmp ult i64 %.sroa.6.0160, 3, !dbg !27618
  br i1 %i.cb, label %._crit_edge.loopexit, label %.lr.ph, !dbg !27618

bb.p:                                             ; preds = %bb.ab, %bb.ar
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.q, !dbg !27651

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.thread122 unwind label %bb.r, !dbg !27652

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !27651
  unreachable, !dbg !27651

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.d, !dbg !27653

._crit_edge166:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bj, 0, !dbg !27654
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !27654

bb.s:                                             ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !27655
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27656

bb.t:                                             ; preds = %._crit_edge166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !27657
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27658

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !27559
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !27659
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !27659, !nonnull !3885, !noundef !3885
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !27660
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !27660, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch)
          to label %bb.w unwind label %bb.v, !dbg !27559

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !27661

bb.w:                                             ; preds = %bb.u
  %i.cj = load i64, ptr %i.h, align 8, !dbg !27662, !range !3916, !noundef !3885 ; 2 uses
  %.not69 = icmp eq i64 %i.cj, 18, !dbg !27662
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !27663
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !27663 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !27663
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !27663 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !27664

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !27665
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !27665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27667
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27666
  store i64 %i.cj, ptr %i.co, align 8, !dbg !27666
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27666
  store ptr %i.cl, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !27666
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27666
  store ptr %i.cn, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !27666
  store i8 42, ptr %0, align 8, !dbg !27666
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27661

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27667
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !27661

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27661
  br label %bb.aa, !dbg !27668

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0107.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !27669 ; 2 uses
  %.sroa.7108.0 = phi ptr [ %i.cn, %bb.z ], [ %i.cz, %bb.ai ], !dbg !27669 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !27670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !27671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27672, !noalias !27562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !27671
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc97 unwind label %bb.ap, !dbg !27673

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27661
  br label %bb.p, !dbg !27674

bb.ac:                                            ; preds = %bb.at, %bb.aq, %.thread, %.loopexit.split-lp, %bb.ap, %bb.ae, %bb.v
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !27675
  unreachable, !dbg !27675

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !27572
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27676
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !27676, !nonnull !3885, !noundef !3885
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27677
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !27677, !noundef !3885
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cr, i64 noundef %i.ct)
          to label %bb.af unwind label %bb.ae, !dbg !27572

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.k) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !27678

bb.af:                                            ; preds = %bb.ad
  %i.cv = load i64, ptr %i.j, align 8, !dbg !27679, !range !3916, !noundef !3885 ; 2 uses
  %.not70 = icmp eq i64 %i.cv, 18, !dbg !27679
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !27680
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !27680 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !27680
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !27680 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !27681

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !27682
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !27682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !27684
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27683
  store i64 %i.cv, ptr %i.da, align 8, !dbg !27683
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27683
  store ptr %i.cx, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !27683
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27683
end_hunk_5
begin_hunk_6_@_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_implCsfcROwRM8ZtH_11polars_plan:bb.a
          to label %bb.ct unwind label %bb.cs, !dbg !165049

bb.cq:                                            ; preds = %bb.co
  store i8 35, ptr %i.aq, align 16, !dbg !165050
  br label %bb.cr, !dbg !165051

bb.cr:                                            ; preds = %bb.ct, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !165052
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 40, !dbg !165053 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 63, !dbg !165053
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !165053, !range !4397, !noundef !3885 ; 2 uses
  %.not187 = icmp eq i8 %i.jm, -38, !dbg !165053
  br i1 %.not187, label %bb.cv, label %bb.cu, !dbg !165054

bb.cs:                                            ; preds = %bb.cp
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ct:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165055, !noalias !164598
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4323), !dbg !165056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aq, ptr noundef nonnull align 16 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !165057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !165058
  br label %bb.cr, !dbg !165059

bb.cu:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !165060
  %i.jo = icmp eq i8 %i.jm, -40, !dbg !165061
  br i1 %i.jo, label %bb.cx, label %bb.cy, !dbg !165061

bb.cv:                                            ; preds = %bb.cr
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ap, i64 23, !dbg !165062
  store i8 -38, ptr %i.jp, align 1, !dbg !165062
  br label %bb.cw, !dbg !165062

bb.cw:                                            ; preds = %bb.da, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !165063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !165063
  %i.jq = getelementptr inbounds nuw i8, ptr %i.id, i64 169, !dbg !165064
  %i.jr = load i8, ptr %i.jq, align 1, !dbg !165064, !range !4073, !noundef !3885
  %i.js = trunc nuw i8 %i.jr to i1, !dbg !165064
  %i.jt = getelementptr inbounds nuw i8, ptr %i.id, i64 170, !dbg !165065
  %i.ju = load i8, ptr %i.jt, align 2, !dbg !165065, !range !4073, !noundef !3885
  %i.jv = trunc nuw i8 %i.ju to i1, !dbg !165065
  invoke fastcc void @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof6groups10AsofJoinBy13__join_asof_byCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hz, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ar, i8 noundef %i.jj, ptr noalias noundef align 16 captures(address) dereferenceable(48) %i.aq, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ao, i1 noundef zeroext %i.ej, i1 noundef zeroext %i.js, i1 noundef zeroext %i.jv)
          to label %bb.db unwind label %bb.cz, !dbg !165066

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jk)
          to label %bb.da unwind label %bb.de, !dbg !165067

bb.cy:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.jk, i64 24, i1 false), !dbg !165068
  br label %bb.da, !dbg !165069

bb.cz:                                            ; preds = %bb.cw
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.thread398, !dbg !165070

bb.da:                                            ; preds = %bb.cx, %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !165071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !165072
  br label %bb.cw, !dbg !165073

bb.db:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !165070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !165070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !165070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !165070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !165070
  br label %bb.cm, !dbg !165074

bb.dc:                                            ; preds = %bb.cn
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.id, i64 noundef 176, i64 noundef 16) #49, !dbg !165075
  br label %.thread352, !dbg !165076

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.cm, %bb.cn
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.id, i64 noundef 176, i64 noundef 16) #49, !dbg !165077
  br label %bb.by, !dbg !164608

bb.dd:                                            ; preds = %bb.jk, %bb.jf, %bb.ip, %bb.ih, %bb.hp, %bb.gw, %bb.gu, %bb.fz, %bb.ed, %bb.dm, %bb.df, %bb.ji, %bb.jm, %bb.jl, %bb.jc, %bb.jb, %bb.he, %.body265, %.thread405, %bb.gs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit252, %.thread352, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.dg
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !165078
  unreachable, !dbg !165078

bb.de:                                            ; preds = %bb.cx
  %i.jz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ka = load i8, ptr %i.aq, align 16, !dbg !165079, !range !4834, !alias.scope !164613, !noundef !3885
  %i.kb = icmp eq i8 %i.ka, 35, !dbg !165079
  br i1 %i.kb, label %bb.dg, label %bb.df, !dbg !165079

bb.df:                                            ; preds = %bb.de
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.aq)
          to label %bb.dg unwind label %bb.dd, !dbg !165079

bb.dg:                                            ; preds = %bb.cs, %bb.df, %bb.de
  %.pn188.ph = phi { ptr, i32 } [ %i.jn, %bb.cs ], [ %i.jz, %bb.df ], [ %i.jz, %bb.de ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #43
          to label %bb.dh unwind label %bb.dd, !dbg !165070

bb.dh:                                            ; preds = %bb.dg
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.as) #43
          to label %.thread398 unwind label %bb.dd, !dbg !165070

bb.di:                                            ; preds = %bb.dj, %bb.cj
  %i.kc = load i64, ptr %i.ig, align 8, !dbg !164608, !range !4040, !noundef !3885
  %.not480 = icmp eq i64 %i.kc, -9223372036854775808, !dbg !164608
  br i1 %.not480, label %bb.dk, label %bb.dl, !dbg !164608

bb.dj:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.at) #43
          to label %bb.di unwind label %bb.dd, !dbg !164608

bb.dk:                                            ; preds = %bb.dl, %bb.di
  br i1 %.sroa.083.1, label %bb.dn, label %.thread398, !dbg !164608

bb.dl:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ig) #43
          to label %bb.dk unwind label %bb.dd, !dbg !164608

.thread398:                                       ; preds = %bb.cz, %bb.dh, %bb.dn, %bb.dk
  %.pn188.pn377395403 = phi { ptr, i32 } [ %i.jd, %bb.dk ], [ %i.jd, %bb.dn ], [ %.pn188.ph, %bb.dh ], [ %i.jw, %bb.cz ]
  %.sroa.070.7376396402 = phi i8 [ %.sroa.070.8, %bb.dk ], [ %.sroa.070.8, %bb.dn ], [ 1, %bb.dh ], [ 1, %bb.cz ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.id, i64 119, !dbg !165080
  %i.ke = load i8, ptr %i.kd, align 1, !dbg !165080, !range !4397, !alias.scope !164614, !noundef !3885
  %cond.i236 = icmp eq i8 %i.ke, -40, !dbg !165080
  br i1 %cond.i236, label %bb.dm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238, !dbg !165080, !prof !4398

bb.dm:                                            ; preds = %.thread398
  %i.kf = getelementptr inbounds nuw i8, ptr %i.id, i64 96, !dbg !164608
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238 unwind label %bb.dd, !dbg !165081

bb.dn:                                            ; preds = %bb.dk
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 16 dereferenceable(96) %i.id) #43
          to label %.thread398 unwind label %bb.dd, !dbg !164608

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238: ; preds = %.thread398, %bb.dm
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.id, i64 noundef 176, i64 noundef 16) #49, !dbg !165082
  br label %.thread352, !dbg !165083

bb.do:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !165084
  br label %bb.by, !dbg !165084

bb.dp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !165085
  br label %bb.by, !dbg !165085

.thread352:                                       ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238, %bb.dc, %.thread363
  %.pn191361 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread363 ], [ %.pn188.pn377395403, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238 ], [ %i.jx, %bb.dc ]
  %.sroa.066.3360 = phi i8 [ %.sroa.066.4.ph, %.thread363 ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238 ], [ 1, %bb.dc ]
  %.sroa.068.3359 = phi i8 [ %.sroa.066.4.ph, %.thread363 ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238 ], [ 0, %bb.dc ]
  %.sroa.070.3358 = phi i8 [ %.sroa.066.4.ph, %.thread363 ], [ %.sroa.070.7376396402, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit238 ], [ %.sroa.070.9, %bb.dc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bf) #43
          to label %.thread unwind label %bb.dd, !dbg !164993

bb.dq:                                            ; preds = %bb.be
  %i.kg = load i64, ptr %i.ec, align 8, !dbg !165086, !noundef !3885
  %i.kh = or i64 %i.kg, %i.gv, !dbg !165087
  %or.cond478 = icmp eq i64 %i.kh, 0, !dbg !165087
  br i1 %or.cond478, label %bb.dt, label %bb.ds, !dbg !165087

bb.dr:                                            ; preds = %bb.be
  %.old = icmp eq i64 %i.gv, 0, !dbg !165088
  br i1 %.old, label %bb.dt, label %bb.ds, !dbg !165088

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !164640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !164640
  %i.ki = load ptr, ptr %i.es, align 8, !dbg !165089, !nonnull !3885, !noundef !3885
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 64, !dbg !165090 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 8, !dbg !165090, !range !4073, !noundef !3885
  %i.kl = trunc nuw i8 %i.kk to i1, !dbg !165090
  invoke void @_RNvNtNtCsePnBjWcsLF5_10polars_ops5frame4join21prepare_keys_multiple(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ki, i64 noundef %i.gz, i1 noundef zeroext %i.kl)
          to label %bb.dy unwind label %.loopexit.split-lp, !dbg !164640

bb.dt:                                            ; preds = %bb.dq, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !165091
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !165092
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !dbg !165092
  store i64 -4611686018427387904, ptr %.sroa.5329.0..sroa_idx, align 8, !dbg !165092
  %i.km = invoke { ptr, ptr } @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series3ops4nullNtB6_6Series9full_null(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, i64 noundef 0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @731)
          to label %bb.du unwind label %.loopexit.split-lp, !dbg !165093 ; 2 uses

bb.du:                                            ; preds = %bb.dt
  %i.kn = extractvalue { ptr, ptr } %i.km, 0, !dbg !165093 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !165094
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ], !dbg !165095
  %i.ko = atomicrmw add ptr %i.kn, i64 1 monotonic, align 8, !dbg !165096
  %i.kp = icmp slt i64 %i.ko, 0, !dbg !165097
  br i1 %i.kp, label %bb.dw, label %bb.dv, !dbg !165097

bb.dv:                                            ; preds = %bb.du
  %i.kq = extractvalue { ptr, ptr } %i.km, 1, !dbg !165093 ; 2 uses
  %i.kr = insertelement <2 x ptr> poison, ptr %i.kn, i64 0, !dbg !165098
  %i.ks = insertelement <2 x ptr> %i.kr, ptr %i.kq, i64 1, !dbg !165098
  br label %bb.dx, !dbg !165099

bb.dw:                                            ; preds = %bb.du
  call void @llvm.trap(), !dbg !165100
  unreachable, !dbg !165100

bb.dx:                                            ; preds = %bb.ei, %bb.dv
  %.sroa.435.0 = phi ptr [ %i.kq, %bb.dv ], [ %i.lq, %bb.ei ], !dbg !165098
  %.sroa.033.0 = phi ptr [ %i.kn, %bb.dv ], [ %i.lp, %bb.ei ], !dbg !165098
  %i.kt = phi <2 x ptr> [ %i.ks, %bb.dv ], [ %i.lr, %bb.ei ], !dbg !165098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !165101
  store <2 x ptr> %i.kt, ptr %i.ak, align 16, !dbg !165101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !165102
  store ptr %.sroa.033.0, ptr %i.aj, align 16, !dbg !165102
  %i.ku = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !165102
  store ptr %.sroa.435.0, ptr %i.ku, align 8, !dbg !165102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !165103
  br i1 %i.ej, label %bb.en, label %bb.ej, !dbg !165104

bb.dy:                                            ; preds = %bb.ds
  %i.kv = load i64, ptr %i.ag, align 8, !dbg !165105, !range !3916, !noundef !3885 ; 2 uses
  %.not169 = icmp eq i64 %i.kv, 18, !dbg !165105
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !165106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i64 56, i1 false), !dbg !165106
  br i1 %.not169, label %bb.ea, label %bb.dz, !dbg !165107

bb.dz:                                            ; preds = %bb.dy
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 64, !dbg !165108
  %.sroa.6135.0.copyload = load i64, ptr %.sroa.6135.0..sroa_idx, align 8, !dbg !165108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !165109
  %.sroa.2137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false), !dbg !165109
  store i64 %i.kv, ptr %0, align 8, !dbg !165110
  %.sroa.3138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !165110
  store i64 %.sroa.6135.0.copyload, ptr %.sroa.3138.0..sroa_idx, align 8, !dbg !165110
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsfcROwRM8ZtH_11polars_plan.exit241, !dbg !164962

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !165109
  %i.kx = invoke { ptr, ptr } @_RNvXs2D_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_16BinaryOffsetTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.6)
          to label %bb.eb unwind label %.loopexit.split-lp, !dbg !165111 ; 2 uses

bb.eb:                                            ; preds = %bb.ea
  %i.ky = extractvalue { ptr, ptr } %i.kx, 0, !dbg !165111
  %i.kz = extractvalue { ptr, ptr } %i.kx, 1, !dbg !165111
  store ptr %i.ky, ptr %i.ah, align 16, !dbg !165111
  %i.la = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !165111
  store ptr %i.kz, ptr %i.la, align 8, !dbg !165111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !164659
  %i.lb = load ptr, ptr %i.ev, align 8, !dbg !165112, !nonnull !3885, !noundef !3885
  %i.lc = load i64, ptr %i.en, align 8, !dbg !165113, !noundef !3885
  %i.ld = load i8, ptr %i.kj, align 8, !dbg !165114, !range !4073, !noundef !3885
  %i.le = trunc nuw i8 %i.ld to i1, !dbg !165114
  invoke void @_RNvNtNtCsePnBjWcsLF5_10polars_ops5frame4join21prepare_keys_multiple(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lb, i64 noundef %i.lc, i1 noundef zeroext %i.le)
          to label %bb.ee unwind label %bb.ec, !dbg !164659

bb.ec:                                            ; preds = %bb.eh, %bb.eb
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !164655), !dbg !165115
  call void @llvm.experimental.noalias.scope.decl(metadata !164656), !dbg !165116
  call void @llvm.experimental.noalias.scope.decl(metadata !164657), !dbg !165117
  %i.lg = load ptr, ptr %i.ah, align 16, !dbg !165118, !alias.scope !164658, !nonnull !3885, !noundef !3885
  %i.lh = atomicrmw sub ptr %i.lg, i64 1 release, align 8, !dbg !165119, !noalias !164658
  %i.li = icmp eq i64 %i.lh, 1, !dbg !165120
  br i1 %i.li, label %bb.ed, label %.thread, !dbg !165120

bb.ed:                                            ; preds = %bb.ec
  fence acquire, !dbg !165121
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #46
          to label %.thread unwind label %bb.dd, !dbg !165122

bb.ee:                                            ; preds = %bb.eb
  %i.lj = load i64, ptr %i.af, align 8, !dbg !165123, !range !3916, !noundef !3885 ; 2 uses
  %.not170 = icmp eq i64 %i.lj, 18, !dbg !165123
  %i.lk = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !165124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.639, ptr noundef nonnull align 8 dereferenceable(56) %i.lk, i64 56, i1 false), !dbg !165124
  br i1 %.not170, label %bb.eh, label %bb.ef, !dbg !165125

bb.ef:                                            ; preds = %bb.ee
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64, !dbg !165126
  %.sroa.6144.0.copyload = load i64, ptr %.sroa.6144.0..sroa_idx, align 8, !dbg !165126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !165127
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.639, i64 56, i1 false), !dbg !165127
  store i64 %i.lj, ptr %0, align 8, !dbg !165128
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !165128
  store i64 %.sroa.6144.0.copyload, ptr %.sroa.3147.0..sroa_idx, align 8, !dbg !165128
  call void @llvm.experimental.noalias.scope.decl(metadata !164662), !dbg !165115
  call void @llvm.experimental.noalias.scope.decl(metadata !164663), !dbg !165129
  call void @llvm.experimental.noalias.scope.decl(metadata !164664), !dbg !165130
  %i.ll = load ptr, ptr %i.ah, align 16, !dbg !165131, !alias.scope !164665, !nonnull !3885, !noundef !3885
  %i.lm = atomicrmw sub ptr %i.ll, i64 1 release, align 8, !dbg !165132, !noalias !164665
  %i.ln = icmp eq i64 %i.lm, 1, !dbg !165133
  br i1 %i.ln, label %bb.eg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsfcROwRM8ZtH_11polars_plan.exit241, !dbg !165133

bb.eg:                                            ; preds = %bb.ef
  fence acquire, !dbg !165134
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah) #46
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsfcROwRM8ZtH_11polars_plan.exit241 unwind label %.loopexit.split-lp, !dbg !165135

bb.eh:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !165127
  %i.lo = invoke { ptr, ptr } @_RNvXs2D_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_16BinaryOffsetTypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %.sroa.639)
          to label %bb.ei unwind label %bb.ec, !dbg !165136 ; 2 uses

bb.ei:                                            ; preds = %bb.eh
  %i.lp = extractvalue { ptr, ptr } %i.lo, 0, !dbg !165136
  %i.lq = extractvalue { ptr, ptr } %i.lo, 1, !dbg !165136
  %i.lr = load <2 x ptr>, ptr %i.ah, align 16, !dbg !165137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !165115
  br label %bb.dx, !dbg !165099

bb.ej:                                            ; preds = %bb.dx
  store i64 0, ptr %i.ae, align 8, !dbg !165138
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !165138
  store ptr inttoptr (i64 8 to ptr), ptr %i.ls, align 8, !dbg !165138
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !165138
  store i64 0, ptr %i.lt, align 8, !dbg !165138
  br label %bb.ek, !dbg !164667

bb.ek:                                            ; preds = %bb.ep, %bb.eo, %bb.ej
  %i.lu = load i64, ptr %i.cj, align 8, !dbg !165139, !range !4429, !noundef !3885
  switch i64 %i.lu, label %default.unreachable510 [
    i64 0, label %bb.eq
    i64 1, label %bb.er
    i64 2, label %bb.es
    i64 3, label %bb.et
    i64 4, label %bb.eu
    i64 5, label %bb.ev
    i64 6, label %bb.ev
    i64 7, label %.invoke530
    i64 8, label %.invoke530
    i64 9, label %bb.ew
  ], !dbg !165140, !prof !164588

bb.el:                                            ; preds = %.thread405, %bb.em
  %.sroa.066.7 = phi i8 [ %.sroa.066.9411, %.thread405 ], [ %.sroa.066.8, %bb.em ], !dbg !165141 ; 2 uses
  %.sroa.059.0 = phi i8 [ %.sroa.059.2412, %.thread405 ], [ %.sroa.058.1, %bb.em ], !dbg !165101 ; 2 uses
  %.sroa.058.0 = phi i8 [ %.sroa.058.2413, %.thread405 ], [ %.sroa.058.1, %bb.em ], !dbg !165102
  %.pn175.pn = phi { ptr, i32 } [ %.pn175414, %.thread405 ], [ %i.lw, %bb.em ] ; 2 uses
  %i.lv = trunc nuw i8 %.sroa.058.0 to i1, !dbg !165142
  br i1 %i.lv, label %bb.gt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsfcROwRM8ZtH_11polars_plan.exit261, !dbg !165142

bb.em:                                            ; preds = %bb.gg, %bb.fx, %bb.fv, %bb.ep, %bb.eo
  %.sroa.066.8 = phi i8 [ %.sroa.066.17, %bb.fx ], [ 0, %bb.fv ], [ 0, %bb.gg ], [ 1, %bb.ep ], [ 1, %bb.eo ], !dbg !164821
  %.sroa.058.1 = phi i8 [ 1, %bb.fx ], [ 1, %bb.fv ], [ 0, %bb.gg ], [ 1, %bb.ep ], [ 1, %bb.eo ], !dbg !165098 ; 2 uses
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.en:                                            ; preds = %bb.dx
  %.val218 = load i64, ptr %i.cj, align 8, !dbg !165143, !range !4429, !noundef !3885
  %i.lx = icmp eq i64 %.val218, 2, !dbg !165144
  br i1 %i.lx, label %bb.ep, label %bb.eo, !dbg !165143

bb.eo:                                            ; preds = %bb.en
  %i.ly = load ptr, ptr %i.ev, align 8, !dbg !165145, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.lz = load i64, ptr %i.en, align 8, !dbg !165146, !noundef !3885
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %i.lz, !dbg !165147
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB3q_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls2_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull %i.ly, ptr noundef nonnull %i.ma)
          to label %bb.ek unwind label %bb.em, !dbg !165148

bb.ep:                                            ; preds = %bb.en
  %i.mb = load ptr, ptr %i.es, align 8, !dbg !165149, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.mc = load i64, ptr %i.ek, align 8, !dbg !165150, !noundef !3885
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.mc, !dbg !165151
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB3q_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls1_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull %i.mb, ptr noundef nonnull %i.md)
          to label %bb.ek unwind label %bb.em, !dbg !165152

bb.eq:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !165153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !dbg !165153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !165154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !165155
  invoke fastcc void @_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join23DataFrameJoinOpsPrivate23__inner_join_from_seriesCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.ex unwind label %.thread469, !dbg !165156

bb.er:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !165157
  invoke fastcc void @_RNvXs0_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB5_9DataFrameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.v, ptr noundef nonnull align 8 %1)
          to label %bb.fa unwind label %.thread419, !dbg !165158

bb.es:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !165159
  invoke fastcc void @_RNvXs0_NtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframeNtB5_9DataFrameNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull align 8 %2)
          to label %bb.fc unwind label %.thread419, !dbg !165160

bb.et:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !165161
  %i.me = load ptr, ptr %i.es, align 8, !dbg !165162, !nonnull !3885, !noundef !3885 ; 2 uses
  %i.mf = load i64, ptr %i.ek, align 8, !dbg !165163, !noundef !3885
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %i.mf, !dbg !165164
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2g_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCNvYNtNtNtB3q_5frame9dataframe9DataFrameNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join16DataFrameJoinOps10__join_impls3_0EE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %i.me, ptr noundef nonnull %i.mg)
          to label %bb.fe unwind label %.thread419, !dbg !165165

bb.eu:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @1043, i64 72, i1 false), !dbg !165166
end_hunk_6
