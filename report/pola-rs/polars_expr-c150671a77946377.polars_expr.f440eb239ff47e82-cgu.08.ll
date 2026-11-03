Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.08?download=true
inline.NumInlined: 7444
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtBa_5slice4iter4IteryEEs_0s0_0INtB6_5FnMutTjEE8call_mutCskY9G75ZWc4U_11polars_expr:bb.a
  %i.ec = getelementptr inbounds [24 x i8], ptr %i.dq, i64 %i.eb, !dbg !98056
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -24, !dbg !98057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !98058, !noalias !97892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !98059, !noalias !97892
  br label %bb.v, !dbg !98060

bb.x:                                             ; preds = %.body.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !98061, !noalias !97892
  unreachable, !dbg !98061

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapyINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !98061

_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s0_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.v, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !dbg !98062, !noalias !97891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !97951, !noalias !97892
  ret void, !dbg !98063
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtBa_5slice4iter4IteryEEs_0s_0INtB6_5FnMutTTjB2g_EEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !98064 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !4123, !noundef !4123 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !98186, !nonnull !4123, !align !4215, !noundef !4123 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98174), !dbg !98187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !98188, !noalias !98175
  %i.d = load ptr, ptr %i.c, align 8, !dbg !98189, !alias.scope !98174, !nonnull !4123, !align !4215, !noundef !4123 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !98190
  %i.f = load ptr, ptr %i.e, align 8, !dbg !98190, !alias.scope !98174, !nonnull !4123, !align !4215, !noundef !4123
  %i.g = load i64, ptr %i.f, align 8, !dbg !98190, !noalias !98175, !noundef !4123 ; 8 uses
  %i.h = mul i64 %i.g, %.sroa.0.0.copyload, !dbg !98191 ; 3 uses
  %i.i = add i64 %.sroa.0.0.copyload, 1, !dbg !98192
  %i.j = mul i64 %i.g, %i.i, !dbg !98192          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !98193
  %i.l = load i64, ptr %i.k, align 8, !dbg !98193, !noalias !98175, !noundef !4123 ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.h, !dbg !98194
  %.not.i = icmp ugt i64 %i.j, %i.l
  %or.cond.i = or i1 %i.m, %.not.i, !dbg !98194
  br i1 %or.cond.i, label %bb.b, label %bb.c, !dbg !98194, !prof !4689

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #46, !dbg !98195, !noalias !98175
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98196
  %i.o = load ptr, ptr %i.n, align 8, !dbg !98196, !noalias !98175, !nonnull !4123, !noundef !4123
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.h, !dbg !98197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !98198, !noalias !98175
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !98198, !noalias !98175
  %i.q = load i64, ptr %i.a, align 8, !dbg !98198, !range !4217, !noalias !98175, !noundef !4123
  %i.r = trunc nuw i64 %i.q to i1, !dbg !98199
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !98200
  %i.t = load i64, ptr %i.s, align 8, !dbg !98200, !range !4125, !noalias !98175, !noundef !4123 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !98200 ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e, !dbg !98199, !prof !4174

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.u, align 8, !dbg !98201, !noalias !98175
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #46, !dbg !98202, !noalias !98175
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.u, align 8, !dbg !98203, !noalias !98175, !nonnull !4123, !noundef !4123 ; 2 uses
  %i.x = icmp ule i64 %i.g, %i.t, !dbg !98204
  tail call void @llvm.assume(i1 %i.x), !dbg !98205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !98206, !noalias !98175
  store i64 %i.t, ptr %i.b, align 8, !dbg !98207, !noalias !98175
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !98207 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !98207, !noalias !98175
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !98207 ; 2 uses
  store i64 0, ptr %i.z, align 8, !dbg !98207, !noalias !98175
  %.not9.i = icmp eq i64 %i.g, 0, !dbg !98208
  br i1 %.not9.i, label %bb.g, label %bb.f, !dbg !98208

bb.f:                                             ; preds = %bb.e
  %i.aa = shl i64 %i.g, 3, !dbg !98209
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.p, i64 %i.aa, i1 false), !dbg !98209, !noalias !98175
  store i64 %i.g, ptr %i.z, align 8, !dbg !98210, !noalias !98175
  br label %bb.g, !dbg !98211

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.ab = icmp eq ptr %.sroa.2.0.copyload, %.sroa.3.0.copyload, !dbg !98212
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i, !dbg !98213

.lr.ph.i:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !98174, !nonnull !4123, !align !4215, !noundef !4123
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !98174, !nonnull !4123, !align !4215, !noundef !4123 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !98174, !nonnull !4123, !align !4215
  br label %bb.k, !dbg !98213

._crit_edge.i:                                    ; preds = %bb.l, %bb.g
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s_0CskY9G75ZWc4U_11polars_expr.exit unwind label %bb.h, !dbg !98214, !noalias !98175

bb.h:                                             ; preds = %._crit_edge.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.i, !dbg !98215, !noalias !98175

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !98214, !noalias !98175
  unreachable, !dbg !98214

common.resume.i:                                  ; preds = %bb.j, %bb.h
  %common.resume.op.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.am, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !98216

bb.j:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43
          to label %common.resume.i unwind label %bb.o, !dbg !98217, !noalias !98175

bb.k:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.7.024.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aw, %bb.l ] ; 2 uses
  %.sroa.015.023.i = phi ptr [ %.sroa.2.0.copyload, %.lr.ph.i ], [ %i.ax, %bb.l ] ; 2 uses
  %.val.i.i = load i64, ptr %.sroa.015.023.i, align 8, !dbg !98218, !noalias !98175, !noundef !4123 ; 2 uses
  %i.an = mul i64 %.val.i.i, 6195824352614963433, !dbg !98219
  %i.ao = tail call i64 @llvm.umulh.i64(i64 %i.an, i64 %i.g), !dbg !98220
  %i.ap = load ptr, ptr %i.y, align 8, !dbg !98221, !noalias !98175, !nonnull !4123, !noundef !4123
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao, !dbg !98222 ; 4 uses
  %i.ar = load ptr, ptr %i.ad, align 8, !dbg !98223, !noalias !98175, !noundef !4123
  %i.as = load i64, ptr %i.aq, align 8, !dbg !98224, !noalias !98175, !noundef !4123
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as, !dbg !98225
  store i64 %.val.i.i, ptr %i.at, align 8, !dbg !98226, !noalias !98175
  %i.au = load i64, ptr %i.ag, align 8, !dbg !98227, !noalias !98175, !noundef !4123 ; 2 uses
  %i.av = icmp ult i64 %.sroa.0.0.copyload, %i.au, !dbg !98228
  br i1 %i.av, label %bb.l, label %bb.m, !dbg !98228

bb.l:                                             ; preds = %bb.k
  %i.aw = add i64 %.sroa.7.024.i, 1, !dbg !98229
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.015.023.i, i64 8, !dbg !98230 ; 2 uses
  %i.ay = load ptr, ptr %i.ah, align 8, !dbg !98231, !noalias !98175, !nonnull !4123, !noundef !4123
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.0.copyload, !dbg !98232
  %i.ba = load i64, ptr %i.az, align 8, !dbg !98233, !noalias !98175, !noundef !4123
  %i.bb = add i64 %i.ba, %.sroa.7.024.i, !dbg !98234
  %i.bc = load ptr, ptr %i.aj, align 8, !dbg !98235, !noalias !98175, !noundef !4123
  %i.bd = load i64, ptr %i.aq, align 8, !dbg !98236, !noalias !98175, !noundef !4123
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd, !dbg !98237
  %i.bf = trunc i64 %i.bb to i32, !dbg !98238
  store i32 %i.bf, ptr %i.be, align 4, !dbg !98238, !noalias !98175
  %i.bg = load i64, ptr %i.aq, align 8, !dbg !98239, !noalias !98175, !noundef !4123
  %i.bh = add i64 %i.bg, 1, !dbg !98239
  store i64 %i.bh, ptr %i.aq, align 8, !dbg !98239, !noalias !98175
  %i.bi = icmp eq ptr %i.ax, %.sroa.3.0.copyload, !dbg !98212
  br i1 %i.bi, label %._crit_edge.i, label %bb.k, !dbg !98213

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.copyload, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #46
          to label %bb.n unwind label %bb.j, !dbg !98228, !noalias !98175

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !98240, !noalias !98175
  unreachable, !dbg !98240

_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %._crit_edge.i
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !98241, !noalias !98175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !98217, !noalias !98175
  ret void, !dbg !98242
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1Q_13OffsetsBufferxE7lengths0EENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 !dbg !98243 {
bb.a:
  %i.a = icmp eq i64 %1, 0, !dbg !98285
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !dbg !98286 ; 3 uses
  br i1 %i.a, label %bb.b, label %.loopexit, !dbg !98285

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.c, 0, !dbg !98287
  br i1 %.not, label %.loopexit, label %_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7.lr.ph, !dbg !98276

_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7.lr.ph: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.d, align 8, !range !5010, !alias.scope !98277, !noundef !4123
  %i.e = icmp samesign ugt i64 %.val4, 1
  br i1 %i.e, label %.loopexit, label %_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7

.loopexit:                                        ; preds = %bb.a, %_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7.lr.ph, %bb.b
  %i.f = phi i64 [ %i.c, %_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7.lr.ph ], [ 0, %bb.b ], [ %i.c, %bb.a ], !dbg !98288
  %.val5 = load ptr, ptr %0, align 8, !dbg !98289, !alias.scope !98277, !nonnull !4123, !align !4215, !noundef !4123
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !98289
  %.val6 = load i64, ptr %i.g, align 8, !dbg !98289, !range !5010, !alias.scope !98277, !noundef !4123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98279), !dbg !98290
  %i.h = icmp samesign ugt i64 %.val6, 1, !dbg !98291
  br i1 %i.h, label %_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !98291

bb.c:                                             ; preds = %.loopexit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #45, !dbg !98291, !noalias !98279
  unreachable, !dbg !98291

_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.loopexit
  %i.i = getelementptr [8 x i8], ptr %.val5, i64 %1, !dbg !98292
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %i.f, !dbg !98292 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !98291
  %i.l = load i64, ptr %i.k, align 8, !dbg !98291, !alias.scope !98279, !noundef !4123
  %i.m = load i64, ptr %i.j, align 8, !dbg !98293, !alias.scope !98279, !noundef !4123
  %i.n = sub i64 %i.l, %i.m, !dbg !98294
  ret i64 %i.n, !dbg !98295

_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7: ; preds = %_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr.exit7.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #45, !dbg !98296, !noalias !98283
  unreachable, !dbg !98296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterRNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1s_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 !dbg !98297 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !98306
  %i.b = load i64, ptr %i.a, align 8, !dbg !98306, !noundef !4123
  %.val = load ptr, ptr %0, align 8, !dbg !98307, !nonnull !4123, !noundef !4123
  %i.c = getelementptr [8 x i8], ptr %.val, i64 %1, !dbg !98308
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b, !dbg !98308
  ret ptr %i.d, !dbg !98309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsb_NtNtCse67t6KqNqGQ_5rayon5slice6chunksINtB5_17ChunksMutProducerTmxEENtNtNtB9_4iter8plumbing8Producer8split_atCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !98310 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !98324
  %i.b = load i64, ptr %i.a, align 8, !dbg !98324, !noundef !4123 ; 3 uses
  %i.c = mul i64 %i.b, %2, !dbg !98325
  %i.d = load ptr, ptr %1, align 8, !dbg !98326, !nonnull !4123, !align !4215, !noundef !4123 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !98326
  %i.f = load i64, ptr %i.e, align 8, !dbg !98326, !noundef !4123 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c), !dbg !98327 ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.sroa.0.0.i, !dbg !98328
  %i.h = sub nuw nsw i64 %i.f, %.sroa.0.0.i, !dbg !98329
  store ptr %i.d, ptr %0, align 8, !dbg !98330
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98330
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !98330
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !98330
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !98330
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !98330
  store ptr %i.g, ptr %i.i, align 8, !dbg !98330
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !98330
  store i64 %i.h, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !98330
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !98330
  store i64 %i.b, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !98330
  ret void, !dbg !98331
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtCse67t6KqNqGQ_5rayon5slice6chunksINtB5_17ChunksMutProducerTmxEENtNtNtB9_4iter8plumbing8Producer9into_iterCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !98332 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !98338
  %i.b = load i64, ptr %i.a, align 8, !dbg !98338, !noundef !4123
  %i.c = icmp eq i64 %i.b, 0, !dbg !98339
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !98339, !prof !4174

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @429, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @430) #45, !dbg !98340
  unreachable, !dbg !98340

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !98341
  %i.e = load ptr, ptr %1, align 8, !dbg !98341, !nonnull !4123, !align !4215, !noundef !4123
  store ptr %i.e, ptr %0, align 8, !dbg !98342
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !98342
  %i.g = load <2 x i64>, ptr %i.d, align 8, !dbg !98341
  store <2 x i64> %i.g, ptr %i.f, align 8, !dbg !98342
  ret void, !dbg !98343
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB5_14CatMaxSelectorNtNtCs1LHh8CLbVkQ_11polars_core9datatypes16Categorical8TypeENtB5_13SelectReducer10select_oneB9_(ptr %.0.val, ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %0, i8 noundef %1) unnamed_addr #0 !dbg !98344 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = zext i8 %1 to i64, !dbg !98400
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 256, !dbg !98401 ; 2 uses
  %i.c = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr(i64 noundef range(i64 0, 4294967296) %i.a), !dbg !98402
  %i.d = tail call noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.b, i64 noundef %i.c), !dbg !98403 ; 4 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !98404
  br i1 %.not.i, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.b, !dbg !98405

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !98406
  %i.f = load atomic i8, ptr %i.e acquire, align 8, !dbg !98407
  %i.g = icmp eq i8 %i.f, 0, !dbg !98408
  br i1 %i.g, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit, !dbg !98409

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !dbg !98410, !nonnull !4123, !noundef !4123
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98410
  %i.j = load i64, ptr %i.i, align 8, !dbg !98410, !noundef !4123 ; 2 uses
  %.val = load i8, ptr %0, align 1, !dbg !98411, !noundef !4123
  %i.k = zext i8 %.val to i64, !dbg !98412
  %i.l = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr(i64 noundef range(i64 0, 4294967296) %i.k), !dbg !98413
  %i.m = tail call noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.b, i64 noundef %i.l), !dbg !98414 ; 4 uses
  %.not.i17 = icmp eq ptr %i.m, null, !dbg !98415
  br i1 %.not.i17, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %bb.c, !dbg !98416

bb.c:                                             ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !98417
  %i.o = load atomic i8, ptr %i.n acquire, align 8, !dbg !98418
  %i.p = icmp eq i8 %i.o, 0, !dbg !98419
  br i1 %i.p, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20, !dbg !98420

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split: ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit, %bb.c
  store i8 %1, ptr %0, align 1, !dbg !98421
  br label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !98422

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, %bb.b, %bb.a, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20 ], [ false, %bb.b ], [ true, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split ]
  ret i1 %.sroa.0.0.shrunk, !dbg !98422

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20: ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !dbg !98423, !nonnull !4123, !noundef !4123
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !98423
  %i.s = load i64, ptr %i.r, align 8, !dbg !98423, !noundef !4123 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.s), !dbg !98424
  %i.t = tail call i32 @memcmp(ptr nonnull %i.h, ptr nonnull %i.q, i64 %spec.store.select), !dbg !98425 ; 2 uses
  %i.u = sext i32 %i.t to i64, !dbg !98425
  %i.v = icmp eq i32 %i.t, 0, !dbg !98426
  %i.w = sub i64 %i.j, %i.s
  %spec.select = select i1 %i.v, i64 %i.w, i64 %i.u, !dbg !98426
  %i.x = icmp sgt i64 %spec.select, 0, !dbg !98427
  br i1 %i.x, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !98428
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB5_14CatMaxSelectorNtNtCs1LHh8CLbVkQ_11polars_core9datatypes17Categorical16TypeENtB5_13SelectReducer10select_oneB9_(ptr %.0.val, ptr noalias nofree noundef nonnull align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #0 !dbg !98429 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = zext i16 %1 to i64, !dbg !98485
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 256, !dbg !98486 ; 2 uses
  %i.c = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr(i64 noundef range(i64 0, 4294967296) %i.a), !dbg !98487
  %i.d = tail call noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.b, i64 noundef %i.c), !dbg !98488 ; 4 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !98489
  br i1 %.not.i, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.b, !dbg !98490

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !98491
  %i.f = load atomic i8, ptr %i.e acquire, align 8, !dbg !98492
  %i.g = icmp eq i8 %i.f, 0, !dbg !98493
  br i1 %i.g, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit, !dbg !98494

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !dbg !98495, !nonnull !4123, !noundef !4123
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98495
  %i.j = load i64, ptr %i.i, align 8, !dbg !98495, !noundef !4123 ; 2 uses
  %.val = load i16, ptr %0, align 2, !dbg !98496, !noundef !4123
  %i.k = zext i16 %.val to i64, !dbg !98497
  %i.l = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr(i64 noundef range(i64 0, 4294967296) %i.k), !dbg !98498
  %i.m = tail call noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.b, i64 noundef %i.l), !dbg !98499 ; 4 uses
  %.not.i17 = icmp eq ptr %i.m, null, !dbg !98500
  br i1 %.not.i17, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %bb.c, !dbg !98501

bb.c:                                             ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !98502
  %i.o = load atomic i8, ptr %i.n acquire, align 8, !dbg !98503
  %i.p = icmp eq i8 %i.o, 0, !dbg !98504
  br i1 %i.p, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20, !dbg !98505

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split: ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit, %bb.c
  store i16 %1, ptr %0, align 2, !dbg !98506
  br label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !98507

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, %bb.b, %bb.a, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20 ], [ false, %bb.b ], [ true, %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split ]
  ret i1 %.sroa.0.0.shrunk, !dbg !98507

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit20: ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !dbg !98508, !nonnull !4123, !noundef !4123
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !98508
  %i.s = load i64, ptr %i.r, align 8, !dbg !98508, !noundef !4123 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.s), !dbg !98509
  %i.t = tail call i32 @memcmp(ptr nonnull %i.h, ptr nonnull %i.q, i64 %spec.store.select), !dbg !98510 ; 2 uses
  %i.u = sext i32 %i.t to i64, !dbg !98510
  %i.v = icmp eq i32 %i.t, 0, !dbg !98511
  %i.w = sub i64 %i.j, %i.s
  %spec.select = select i1 %i.v, i64 %i.w, i64 %i.u, !dbg !98511
  %i.x = icmp sgt i64 %spec.select, 0, !dbg !98512
  br i1 %i.x, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !98513
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB5_14CatMaxSelectorNtNtCs1LHh8CLbVkQ_11polars_core9datatypes17Categorical32TypeENtB5_13SelectReducer10select_oneB9_(ptr %.0.val, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) unnamed_addr #0 !dbg !98514 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = zext i32 %1 to i64, !dbg !98570
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 256, !dbg !98571 ; 2 uses
  %i.c = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr(i64 noundef range(i64 0, 4294967296) %i.a), !dbg !98572
  %i.d = tail call noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.b, i64 noundef %i.c), !dbg !98573 ; 4 uses
  %.not.i = icmp eq ptr %i.d, null, !dbg !98574
  br i1 %.not.i, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.b, !dbg !98575

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !98576
  %i.f = load atomic i8, ptr %i.e acquire, align 8, !dbg !98577
  %i.g = icmp eq i8 %i.f, 0, !dbg !98578
  br i1 %i.g, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit, !dbg !98579

_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !dbg !98580, !nonnull !4123, !noundef !4123
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !98580
  %i.j = load i64, ptr %i.i, align 8, !dbg !98580, !noundef !4123 ; 2 uses
  %.val = load i32, ptr %0, align 4, !dbg !98581, !noundef !4123
  %i.k = zext i32 %.val to i64, !dbg !98582
  %i.l = tail call noundef i64 @_RNvMs8_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCskY9G75ZWc4U_11polars_expr(i64 noundef range(i64 0, 4294967296) %i.k), !dbg !98583
  %i.m = tail call noundef align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E3getCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.b, i64 noundef %i.l), !dbg !98584 ; 4 uses
  %.not.i17 = icmp eq ptr %i.m, null, !dbg !98585
  br i1 %.not.i17, label %_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr.exit.thread.sink.split, label %bb.c, !dbg !98586
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!98050 = !DILocation(line: 2589, column: 22, scope: !1834, inlinedAt: !97876)
!98051 = !DILocation(line: 2593, column: 13, scope: !1839, inlinedAt: !97876)
!98052 = !DILocation(line: 961, column: 18, scope: !1836, inlinedAt: !97882)
!98053 = !DILocation(line: 2594, column: 13, scope: !1839, inlinedAt: !97876)
!98054 = !DILocation(line: 2463, column: 9, scope: !1831, inlinedAt: !97861)
!98055 = !DILocation(line: 1072, column: 47, scope: !1840, inlinedAt: !97885)
!98056 = !DILocation(line: 1072, column: 22, scope: !1840, inlinedAt: !97885)
!98057 = !DILocation(line: 1072, column: 22, scope: !1840, inlinedAt: !97888)
!98058 = !DILocation(line: 1921, column: 41, scope: !1846, inlinedAt: !97890)
!98059 = !DILocation(line: 4225, column: 9, scope: !97820, inlinedAt: !97822)
!98060 = !DILocation(line: 157, column: 33, scope: !97761, inlinedAt: !97667)
!98061 = !DILocation(line: 127, column: 18, scope: !97666, inlinedAt: !97667)
!98062 = !DILocation(line: 163, column: 17, scope: !97701, inlinedAt: !97667)
!98063 = !DILocation(line: 275, column: 10, scope: !97663)
!98064 = distinct !DISubprogram(name: "call_mut<((usize, core::slice::iter::Iter<u64>)), polars_ops::frame::join::hash_join::single_keys::build_tables::{closure#1}::{closure_env#1}<&u64, core::slice::iter::Iter<u64>>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtBa_5slice4iter4IteryEEs_0s_0INtB6_5FnMutTTjB2g_EEE8call_mutCskY9G75ZWc4U_11polars_expr", scope: !5104, file: !4146, line: 273, type: !4124, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98065 = distinct !{!98065, i1 true, !"_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s_0CskY9G75ZWc4U_11polars_expr"}
!98066 = distinct !{!98066, !98065, !"_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!98067 = distinct !{!98067, !98065, !"_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s_0CskY9G75ZWc4U_11polars_expr: argument 1"}
!98068 = distinct !DISubprogram(name: "{closure#1}<&u64, core::slice::iter::Iter<u64>>", linkageName: "_RNCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join11single_keys12build_tablesRyINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryEEs_0s_0CskY9G75ZWc4U_11polars_expr", scope: !5105, file: !4432, line: 103, type: !4124, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98069 = distinct !DILexicalBlock(scope: !98068, file: !4432, line: 103, column: 42)
!98070 = distinct !DILocation(line: 274, column: 22, scope: !98064)
!98071 = distinct !DISubprogram(name: "as_slice<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE8as_sliceCskY9G75ZWc4U_11polars_expr", scope: !4237, file: !4234, line: 1824, type: !4124, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98072 = distinct !DISubprogram(name: "deref<usize, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCskY9G75ZWc4U_11polars_expr", scope: !4236, file: !4234, line: 3755, type: !4124, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98073 = distinct !DISubprogram(name: "index<usize, core::ops::range::Range<usize>, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexINtNtBM_5range5RangejEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4345, file: !4234, line: 3830, type: !4124, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98074 = distinct !DILocation(line: 105, column: 49, scope: !98069, inlinedAt: !98070)
!98075 = distinct !DILocation(line: 3831, column: 23, scope: !98073, inlinedAt: !98074)
!98076 = distinct !DILocation(line: 3756, column: 14, scope: !98072, inlinedAt: !98075)
!98077 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !4452, file: !4450, line: 971, type: !4124, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98078 = distinct !DISubprogram(name: "index<usize>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexSjE5indexCskY9G75ZWc4U_11polars_expr", scope: !4474, file: !4294, line: 435, type: !4124, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98079 = distinct !DISubprogram(name: "index<usize, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSjINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4346, file: !4294, line: 18, type: !4124, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98080 = distinct !DILocation(line: 3831, column: 9, scope: !98073, inlinedAt: !98074)
!98081 = distinct !DILocation(line: 19, column: 15, scope: !98079, inlinedAt: !98080)
!98082 = distinct !DILocation(line: 437, column: 32, scope: !98078, inlinedAt: !98081)
!98083 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nulljECskY9G75ZWc4U_11polars_expr", scope: !4231, file: !4229, line: 613, type: !4124, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98084 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, usize>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrjECskY9G75ZWc4U_11polars_expr", scope: !4231, file: !4229, line: 608, type: !4124, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98085 = distinct !DISubprogram(name: "ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE3ptrCskY9G75ZWc4U_11polars_expr", scope: !4238, file: !4229, line: 295, type: !4124, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98086 = distinct !DISubprogram(name: "as_ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE6as_ptrCskY9G75ZWc4U_11polars_expr", scope: !4237, file: !4234, line: 1939, type: !4124, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98087 = distinct !DILocation(line: 1841, column: 76, scope: !98071, inlinedAt: !98076)
!98088 = distinct !DILocation(line: 1942, column: 18, scope: !98086, inlinedAt: !98087)
!98089 = distinct !DILocation(line: 296, column: 20, scope: !98085, inlinedAt: !98088)
!98090 = distinct !DILocation(line: 609, column: 14, scope: !98084, inlinedAt: !98089)
!98091 = distinct !DISubprogram(name: "get_offset_len_noubcheck<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckjECskY9G75ZWc4U_11polars_expr", scope: !4295, file: !4294, line: 82, type: !4124, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98092 = distinct !DILexicalBlock(scope: !98091, file: !4294, line: 87, column: 5)
!98093 = distinct !DILocation(line: 441, column: 24, scope: !98078, inlinedAt: !98081)
!98094 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !4231, file: !4229, line: 433, type: !4124, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98095 = distinct !DISubprogram(name: "with_capacity_in<usize, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !4238, file: !4229, line: 175, type: !4124, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98096 = distinct !DISubprogram(name: "with_capacity_in<usize, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE16with_capacity_inCskY9G75ZWc4U_11polars_expr", scope: !4237, file: !4234, line: 976, type: !4124, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98097 = distinct !DISubprogram(name: "to_vec<usize, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_injNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskY9G75ZWc4U_11polars_expr", scope: !4759, file: !4461, line: 446, type: !4124, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98098 = distinct !DILexicalBlock(scope: !98097, file: !4461, line: 447, column: 17)
!98099 = distinct !DISubprogram(name: "to_vec_in<usize, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSj9to_vec_inNtNtB5_5alloc6GlobalECskY9G75ZWc4U_11polars_expr", scope: !4463, file: !4461, line: 396, type: !4124, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98100 = distinct !DISubprogram(name: "to_vec<usize>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSj6to_vecCskY9G75ZWc4U_11polars_expr", scope: !4463, file: !4461, line: 372, type: !4124, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98101 = distinct !DILocation(line: 105, column: 92, scope: !98069, inlinedAt: !98070)
!98102 = distinct !DILocation(line: 376, column: 14, scope: !98100, inlinedAt: !98101)
!98103 = distinct !DILocation(line: 400, column: 16, scope: !98099, inlinedAt: !98102)
!98104 = distinct !DILocation(line: 448, column: 29, scope: !98098, inlinedAt: !98103)
!98105 = distinct !DILocation(line: 977, column: 20, scope: !98096, inlinedAt: !98104)
!98106 = distinct !DILocation(line: 177, column: 20, scope: !98095, inlinedAt: !98105)
!98107 = distinct !DILexicalBlock(scope: !98094, file: !4229, line: 442, column: 13)
!98108 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCskY9G75ZWc4U_11polars_expr", scope: !4231, file: !4229, line: 766, type: !4124, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98109 = distinct !DILexicalBlock(scope: !98094, file: !4229, line: 435, column: 13)
!98110 = distinct !DILocation(line: 438, column: 50, scope: !98109, inlinedAt: !98106)
!98111 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !4349, file: !4348, line: 202, type: !4124, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98112 = distinct !DILocation(line: 438, column: 21, scope: !98109, inlinedAt: !98106)
!98113 = distinct !DILexicalBlock(scope: !98098, file: !4461, line: 448, column: 17)
!98114 = distinct !DISubprogram(name: "copy_nonoverlapping<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappingjECskY9G75ZWc4U_11polars_expr", scope: !4122, file: !4120, line: 531, type: !4124, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98115 = distinct !DISubprogram(name: "copy_to_nonoverlapping<usize>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPj22copy_to_nonoverlappingCskY9G75ZWc4U_11polars_expr", scope: !4566, file: !4564, line: 1247, type: !4124, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98116 = distinct !DILocation(line: 454, column: 36, scope: !98113, inlinedAt: !98103)
!98117 = distinct !DILocation(line: 1252, column: 18, scope: !98115, inlinedAt: !98116)
!98118 = distinct !DISubprogram(name: "set_len<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE7set_lenCskY9G75ZWc4U_11polars_expr", scope: !4237, file: !4234, line: 2188, type: !4124, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98119 = distinct !DILocation(line: 455, column: 27, scope: !98113, inlinedAt: !98103)
!98120 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u64>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4766, file: !4764, line: 79, type: !4124, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98121 = distinct !DILexicalBlock(scope: !98069, file: !4432, line: 104, column: 17)
!98122 = distinct !DILexicalBlock(scope: !98121, file: !4432, line: 106, column: 17)
!98123 = distinct !DILocation(line: 106, column: 33, scope: !98122, inlinedAt: !98070)
!98124 = distinct !DILocation(line: 80, column: 27, scope: !98120, inlinedAt: !98123)
!98125 = distinct !DILocation(line: 180, column: 28, scope: !1339, inlinedAt: !98124)
!98126 = distinct !DILocation(line: 117, column: 13, scope: !98069, inlinedAt: !98070)
!98127 = distinct !DILocation(line: 810, column: 1, scope: !85, inlinedAt: !98126)
!98128 = distinct !DILexicalBlock(scope: !98122, file: !4432, line: 106, column: 17)
!98129 = distinct !DILocation(line: 107, column: 35, scope: !98128, inlinedAt: !98070)
!98130 = distinct !DILexicalBlock(scope: !98128, file: !4432, line: 107, column: 21)
!98131 = distinct !DILocation(line: 109, column: 55, scope: !98130, inlinedAt: !98070)
!98132 = distinct !DILocation(line: 138, column: 32, scope: !2959, inlinedAt: !98131)
!98133 = distinct !DISubprogram(name: "hash_to_partition", linkageName: "_RNvNtCs2mZqlW55729_12polars_utils7hashing17hash_to_partition", scope: !4578, file: !4577, line: 62, type: !4124, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98134 = distinct !DILocation(line: 109, column: 33, scope: !98130, inlinedAt: !98070)
!98135 = distinct !DISubprogram(name: "as_mut_ptr<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE10as_mut_ptrCskY9G75ZWc4U_11polars_expr", scope: !4237, file: !4234, line: 2023, type: !4124, scopeLine: 2023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98136 = distinct !DISubprogram(name: "as_mut_slice<usize, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecjE12as_mut_sliceCskY9G75ZWc4U_11polars_expr", scope: !4237, file: !4234, line: 1860, type: !4124, scopeLine: 1860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98137 = distinct !DISubprogram(name: "deref_mut<usize, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCskY9G75ZWc4U_11polars_expr", scope: !4704, file: !4234, line: 3763, type: !4124, scopeLine: 3763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98138 = distinct !DILexicalBlock(scope: !98130, file: !4432, line: 109, column: 25)
!98139 = distinct !DILocation(line: 110, column: 35, scope: !98138, inlinedAt: !98070)
!98140 = distinct !DILocation(line: 3764, column: 14, scope: !98137, inlinedAt: !98139)
!98141 = distinct !DILocation(line: 1877, column: 78, scope: !98136, inlinedAt: !98140)
!98142 = distinct !DILocation(line: 2026, column: 18, scope: !98178, inlinedAt: !98141)
!98143 = distinct !DILocation(line: 296, column: 20, scope: !98177, inlinedAt: !98142)
!98144 = distinct !DILocation(line: 609, column: 14, scope: !98176, inlinedAt: !98143)
!98145 = distinct !DISubprogram(name: "get_unchecked_mut<usize>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSjE17get_unchecked_mutCskY9G75ZWc4U_11polars_expr", scope: !4296, file: !4294, line: 259, type: !4124, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98146 = distinct !DISubprogram(name: "get_unchecked_mut<usize, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSj17get_unchecked_mutjECskY9G75ZWc4U_11polars_expr", scope: !4244, file: !4242, line: 684, type: !4124, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98147 = distinct !DILocation(line: 110, column: 53, scope: !98138, inlinedAt: !98070)
!98148 = distinct !DILocation(line: 691, column: 30, scope: !98146, inlinedAt: !98147)
!98149 = distinct !DISubprogram(name: "get<u64>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtryE3getCskY9G75ZWc4U_11polars_expr", scope: !5116, file: !5114, line: 25, type: !4124, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98150 = distinct !DILexicalBlock(scope: !98138, file: !4432, line: 110, column: 25)
!98151 = distinct !DILocation(line: 111, column: 43, scope: !98150, inlinedAt: !98070)
!98152 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCskY9G75ZWc4U_11polars_expr", scope: !4241, file: !4239, line: 927, type: !4124, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98153 = distinct !DILocation(line: 111, column: 49, scope: !98150, inlinedAt: !98070)
!98154 = distinct !DISubprogram(name: "index<usize, usize, alloc::alloc::Global>", linkageName: "_RNvXsc_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexjE5indexCskY9G75ZWc4U_11polars_expr", scope: !4345, file: !4234, line: 3830, type: !4124, scopeLine: 3830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98155 = distinct !DILocation(line: 113, column: 54, scope: !98150, inlinedAt: !98070)
!98156 = distinct !DILocation(line: 3831, column: 23, scope: !98180, inlinedAt: !98155)
!98157 = distinct !DILocation(line: 3756, column: 14, scope: !98179, inlinedAt: !98156)
!98158 = distinct !DISubprogram(name: "index<usize>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSjE5indexCskY9G75ZWc4U_11polars_expr", scope: !4296, file: !4294, line: 270, type: !4124, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98159 = distinct !DISubprogram(name: "index<usize, usize>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSjINtNtNtB6_3ops5index5IndexjE5indexCskY9G75ZWc4U_11polars_expr", scope: !4346, file: !4294, line: 18, type: !4124, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98160 = distinct !DILocation(line: 3831, column: 9, scope: !98180, inlinedAt: !98155)
!98161 = distinct !DILocation(line: 19, column: 15, scope: !98181, inlinedAt: !98160)
!98162 = distinct !DILexicalBlock(scope: !98120, file: !4764, line: 80, column: 9)
!98163 = distinct !DILexicalBlock(scope: !98162, file: !4764, line: 81, column: 9)
!98164 = distinct !DILocation(line: 185, column: 40, scope: !1339, inlinedAt: !98124)
!98165 = distinct !DILocation(line: 1841, column: 76, scope: !98185, inlinedAt: !98157)
!98166 = distinct !DILocation(line: 1942, column: 18, scope: !98184, inlinedAt: !98165)
!98167 = distinct !DILocation(line: 296, column: 20, scope: !98183, inlinedAt: !98166)
!98168 = distinct !DILocation(line: 609, column: 14, scope: !98182, inlinedAt: !98167)
!98169 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils4syncINtB2_7SyncPtrmE3getCskY9G75ZWc4U_11polars_expr", scope: !5116, file: !5114, line: 25, type: !4124, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98170 = distinct !DILocation(line: 112, column: 43, scope: !98150, inlinedAt: !98070)
!98171 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOm3addCskY9G75ZWc4U_11polars_expr", scope: !4241, file: !4239, line: 927, type: !4124, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98172 = distinct !DILocation(line: 112, column: 49, scope: !98150, inlinedAt: !98070)
!98173 = distinct !DILocation(line: 810, column: 1, scope: !85, inlinedAt: !98126)
!98174 = !{!98066}
!98175 = !{!98066, !98067}
!98176 = !DILexicalBlockFile(scope: !98084, file: !4229, discriminator: 4)
!98177 = !DILexicalBlockFile(scope: !98085, file: !4229, discriminator: 4)
!98178 = !DILexicalBlockFile(scope: !98135, file: !4234, discriminator: 2)
!98179 = !DILexicalBlockFile(scope: !98072, file: !4234, discriminator: 2)
!98180 = !DILexicalBlockFile(scope: !98154, file: !4234, discriminator: 2)
!98181 = !DILexicalBlockFile(scope: !98159, file: !4294, discriminator: 2)
!98182 = !DILexicalBlockFile(scope: !98084, file: !4229, discriminator: 6)
!98183 = !DILexicalBlockFile(scope: !98085, file: !4229, discriminator: 6)
!98184 = !DILexicalBlockFile(scope: !98086, file: !4234, discriminator: 2)
!98185 = !DILexicalBlockFile(scope: !98071, file: !4234, discriminator: 2)
!98186 = !DILocation(line: 274, column: 13, scope: !98064)
!98187 = !DILocation(line: 274, column: 22, scope: !98064)
!98188 = !DILocation(line: 104, column: 21, scope: !98069, inlinedAt: !98070)
!98189 = !DILocation(line: 105, column: 21, scope: !98069, inlinedAt: !98070)
!98190 = !DILocation(line: 105, column: 54, scope: !98069, inlinedAt: !98070)
!98191 = !DILocation(line: 105, column: 50, scope: !98069, inlinedAt: !98070)
!98192 = !DILocation(line: 105, column: 68, scope: !98069, inlinedAt: !98070)
!98193 = !DILocation(line: 1841, column: 86, scope: !98071, inlinedAt: !98076)
!98194 = !DILocation(line: 977, column: 16, scope: !98077, inlinedAt: !98082)
!98195 = !DILocation(line: 443, column: 13, scope: !98078, inlinedAt: !98081)
!98196 = !DILocation(line: 614, column: 9, scope: !98083, inlinedAt: !98090)
!98197 = !DILocation(line: 89, column: 24, scope: !98092, inlinedAt: !98093)
!98198 = !DILocation(line: 434, column: 15, scope: !98094, inlinedAt: !98106)
!98199 = !DILocation(line: 434, column: 9, scope: !98094, inlinedAt: !98106)
!98200 = !DILocation(line: 0, scope: !98094, inlinedAt: !98106)
!98201 = !DILocation(line: 442, column: 17, scope: !98094, inlinedAt: !98106)
!98202 = !DILocation(line: 442, column: 25, scope: !98107, inlinedAt: !98106)
!98203 = !DILocation(line: 435, column: 16, scope: !98094, inlinedAt: !98106)
!98204 = !DILocation(line: 767, column: 9, scope: !98108, inlinedAt: !98110)
!98205 = !DILocation(line: 210, column: 9, scope: !98111, inlinedAt: !98112)
!98206 = !DILocation(line: 443, column: 9, scope: !98094, inlinedAt: !98106)
!98207 = !DILocation(line: 977, column: 9, scope: !98096, inlinedAt: !98104)
!98208 = !DILocation(line: 452, column: 20, scope: !98113, inlinedAt: !98103)
!98209 = !DILocation(line: 552, column: 14, scope: !98114, inlinedAt: !98117)
!98210 = !DILocation(line: 2195, column: 9, scope: !98118, inlinedAt: !98119)
!98211 = !DILocation(line: 452, column: 17, scope: !98113, inlinedAt: !98103)
!98212 = !DILocation(line: 1717, column: 9, scope: !1336, inlinedAt: !98125)
!98213 = !DILocation(line: 180, column: 28, scope: !1339, inlinedAt: !98124)
!98214 = !DILocation(line: 810, column: 1, scope: !85, inlinedAt: !98126)
!98215 = !DILocation(line: 810, column: 1, scope: !86, inlinedAt: !98127)
!98216 = !DILocation(line: 0, scope: !98068, inlinedAt: !98070)
!98217 = !DILocation(line: 117, column: 13, scope: !98069, inlinedAt: !98070)
!98218 = !DILocation(line: 649, column: 17, scope: !1810, inlinedAt: !98129)
!98219 = !DILocation(line: 2587, column: 13, scope: !2958, inlinedAt: !98132)
!98220 = !DILocation(line: 68, column: 5, scope: !98133, inlinedAt: !98134)
!98221 = !DILocation(line: 614, column: 9, scope: !98083, inlinedAt: !98144)
!98222 = !DILocation(line: 266, column: 18, scope: !98145, inlinedAt: !98148)
!98223 = !DILocation(line: 26, column: 9, scope: !98149, inlinedAt: !98151)
!98224 = !DILocation(line: 111, column: 53, scope: !98150, inlinedAt: !98070)
!98225 = !DILocation(line: 961, column: 18, scope: !98152, inlinedAt: !98153)
!98226 = !DILocation(line: 111, column: 25, scope: !98150, inlinedAt: !98070)
!98227 = !DILocation(line: 1841, column: 86, scope: !98071, inlinedAt: !98157)
!98228 = !DILocation(line: 272, column: 10, scope: !98158, inlinedAt: !98161)
!98229 = !DILocation(line: 82, column: 9, scope: !98163, inlinedAt: !98123)
!98230 = !DILocation(line: 659, column: 28, scope: !1346, inlinedAt: !98164)
!98231 = !DILocation(line: 614, column: 9, scope: !98083, inlinedAt: !98168)
!98232 = !DILocation(line: 272, column: 9, scope: !98158, inlinedAt: !98161)
!98233 = !DILocation(line: 113, column: 30, scope: !98150, inlinedAt: !98070)
!98234 = !DILocation(line: 113, column: 29, scope: !98150, inlinedAt: !98070)
!98235 = !DILocation(line: 26, column: 9, scope: !98169, inlinedAt: !98170)
!98236 = !DILocation(line: 112, column: 53, scope: !98150, inlinedAt: !98070)
!98237 = !DILocation(line: 961, column: 18, scope: !98171, inlinedAt: !98172)
!98238 = !DILocation(line: 112, column: 25, scope: !98150, inlinedAt: !98070)
!98239 = !DILocation(line: 114, column: 25, scope: !98150, inlinedAt: !98070)
!98240 = !DILocation(line: 103, column: 23, scope: !98068, inlinedAt: !98070)
!98241 = !DILocation(line: 810, column: 1, scope: !86, inlinedAt: !98173)
!98242 = !DILocation(line: 275, column: 10, scope: !98064)
!98243 = distinct !DISubprogram(name: "__iterator_get_unchecked<core::iter::adapters::map::Map<core::slice::iter::Windows<i64>, polars_arrow::offset::{impl#8}::lengths::{closure_env#0}<i64>>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1Q_13OffsetsBufferxE7lengths0EENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !5121, file: !5119, line: 161, type: !4124, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98244 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !4376, file: !4287, line: 1917, type: !4124, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98245 = distinct !DILexicalBlock(scope: !98243, file: !5119, line: 177, column: 17)
!98246 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4696, file: !4694, line: 865, type: !4124, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98247 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCskY9G75ZWc4U_11polars_expr", scope: !4697, file: !4694, line: 780, type: !4124, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98248 = distinct !{!98248, i1 true, !"_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowsxENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr"}
!98249 = distinct !{!98249, !98248, !"_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowsxENtNtNtNtB9_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr: argument 0"}
!98250 = distinct !DISubprogram(name: "try_get_unchecked<core::iter::adapters::map::Map<core::slice::iter::Windows<i64>, polars_arrow::offset::{impl#8}::lengths::{closure_env#0}<i64>>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip17try_get_uncheckedINtNtB4_3map3MapINtNtNtB8_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1V_13OffsetsBufferxE7lengths0EECskY9G75ZWc4U_11polars_expr", scope: !5123, file: !5122, line: 606, type: !4124, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98251 = distinct !{!98251, i1 true, !"_RNCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB7_13OffsetsBufferxE7lengths0CskY9G75ZWc4U_11polars_expr"}
!98252 = distinct !{!98252, !98251, !"_RNCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB7_13OffsetsBufferxE7lengths0CskY9G75ZWc4U_11polars_expr: argument 0"}
!98253 = distinct !DISubprogram(name: "__iterator_get_unchecked<usize, core::slice::iter::Windows<i64>, polars_arrow::offset::{impl#8}::lengths::{closure_env#0}<i64>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1z_13OffsetsBufferxE7lengths0ENtNtNtB9_6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !4368, file: !4248, line: 132, type: !4139, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98254 = distinct !DISubprogram(name: "try_get_unchecked<core::iter::adapters::map::Map<core::slice::iter::Windows<i64>, polars_arrow::offset::{impl#8}::lengths::{closure_env#0}<i64>>>", linkageName: "_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtB7_3map3MapINtNtNtBb_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB1F_13OffsetsBufferxE7lengths0ENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !5124, file: !5122, line: 629, type: !4139, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98255 = distinct !DILocation(line: 612, column: 17, scope: !98250, inlinedAt: !98278)
!98256 = distinct !DILocation(line: 632, column: 23, scope: !98254, inlinedAt: !98255)
!98257 = distinct !DISubprogram(name: "{closure#0}<i64>", linkageName: "_RNCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB7_13OffsetsBufferxE7lengths0CskY9G75ZWc4U_11polars_expr", scope: !98281, file: !4631, line: 522, type: !4139, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98258 = distinct !DILocation(line: 138, column: 18, scope: !98253, inlinedAt: !98256)
!98259 = distinct !DISubprogram(name: "try_get_unchecked<core::slice::iter::Windows<i64>>", linkageName: "_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtNtBb_5slice4iter7WindowsxENtB5_23SpecTrustedRandomAccess17try_get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !5124, file: !5122, line: 629, type: !4139, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98260 = distinct !DISubprogram(name: "try_get_unchecked<core::slice::iter::Windows<i64>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip17try_get_uncheckedINtNtNtB8_5slice4iter7WindowsxEECskY9G75ZWc4U_11polars_expr", scope: !5123, file: !5122, line: 606, type: !4124, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98261 = distinct !DILocation(line: 138, column: 27, scope: !98253, inlinedAt: !98256)
!98262 = distinct !DILocation(line: 612, column: 17, scope: !98260, inlinedAt: !98261)
!98263 = distinct !DILocation(line: 632, column: 23, scope: !98259, inlinedAt: !98262)
!98264 = distinct !DILocation(line: 1411, column: 49, scope: !2970, inlinedAt: !98263)
!98265 = distinct !DISubprogram(name: "sub", linkageName: "_RNvXs1a_NtNtCscgRAwXFJnXP_4core3ops5arithxNtB6_3Sub3sub", scope: !98282, file: !4338, line: 218, type: !4139, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98266 = distinct !DILocation(line: 522, column: 35, scope: !98257, inlinedAt: !98258)
!98267 = distinct !{!98267, i1 true, !"_RNCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB7_13OffsetsBufferxE7lengths0CskY9G75ZWc4U_11polars_expr"}
!98268 = distinct !{!98268, !98267, !"_RNCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB7_13OffsetsBufferxE7lengths0CskY9G75ZWc4U_11polars_expr: argument 0"}
!98269 = distinct !DILexicalBlock(scope: !98245, file: !5119, line: 177, column: 17)
!98270 = distinct !DILocation(line: 612, column: 17, scope: !98250, inlinedAt: !98284)
!98271 = distinct !DILocation(line: 632, column: 23, scope: !98254, inlinedAt: !98270)
!98272 = distinct !DILocation(line: 138, column: 18, scope: !98253, inlinedAt: !98271)
!98273 = !DILexicalBlockFile(scope: !98245, file: !5119, discriminator: 2)
!98274 = !DILocation(line: 177, column: 36, scope: !98273)
!98275 = !DILocation(line: 866, column: 14, scope: !98246, inlinedAt: !98274)
!98276 = !DILocation(line: 781, column: 12, scope: !98247, inlinedAt: !98275)
!98277 = !{!98249}
!98278 = !DILocation(line: 182, column: 13, scope: !98243)
!98279 = !{!98252}
!98280 = !DINamespace(name: "{impl#8}", scope: !4632)
!98281 = !DINamespace(name: "lengths", scope: !98280)
!98282 = !DINamespace(name: "{impl#74}", scope: !4339)
!98283 = !{!98268}
!98284 = !DILocation(line: 178, column: 26, scope: !98269)
!98285 = !DILocation(line: 176, column: 46, scope: !98243)
!98286 = !DILocation(line: 0, scope: !98243)
!98287 = !DILocation(line: 1917, column: 50, scope: !98244, inlinedAt: !98276)
!98288 = !DILocation(line: 182, column: 53, scope: !98243)
!98289 = !DILocation(line: 612, column: 17, scope: !98250, inlinedAt: !98278)
!98290 = !DILocation(line: 138, column: 18, scope: !98253, inlinedAt: !98256)
!98291 = !DILocation(line: 522, column: 36, scope: !98257, inlinedAt: !98258)
!98292 = !DILocation(line: 863, column: 18, scope: !2971, inlinedAt: !98264)
!98293 = !DILocation(line: 522, column: 43, scope: !98257, inlinedAt: !98258)
!98294 = !DILocation(line: 218, column: 45, scope: !98265, inlinedAt: !98266)
!98295 = !DILocation(line: 184, column: 6, scope: !98243)
!98296 = !DILocation(line: 522, column: 36, scope: !98257, inlinedAt: !98272)
!98297 = distinct !DISubprogram(name: "__iterator_get_unchecked<core::slice::iter::Iter<&polars_expr::expressions::AggregationContext>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB4_4SkipINtNtNtBa_5slice4iter4IterRNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1s_", scope: !5121, file: !5119, line: 161, type: !4124, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98298 = distinct !DISubprogram(name: "try_get_unchecked<core::slice::iter::Iter<&polars_expr::expressions::AggregationContext>>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip17try_get_uncheckedINtNtNtB8_5slice4iter4IterRNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextEEB1x_", scope: !5123, file: !5122, line: 606, type: !4124, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98299 = distinct !DISubprogram(name: "add<&polars_expr::expressions::AggregationContext>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrORNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContext3addBH_", scope: !4241, file: !4239, line: 927, type: !4124, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98300 = distinct !DISubprogram(name: "__iterator_get_unchecked<&polars_expr::expressions::AggregationContext>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterRNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedBU_", scope: !4352, file: !4351, line: 418, type: !4139, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98301 = distinct !DISubprogram(name: "try_get_unchecked<core::slice::iter::Iter<&polars_expr::expressions::AggregationContext>>", linkageName: "_RNvXsh_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtNtNtBb_5slice4iter4IterRNtNtCskY9G75ZWc4U_11polars_expr11expressions18AggregationContextENtB5_23SpecTrustedRandomAccess17try_get_uncheckedB1h_", scope: !5124, file: !5122, line: 629, type: !4139, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98302 = distinct !DILocation(line: 612, column: 17, scope: !98298, inlinedAt: !98305)
!98303 = distinct !DILocation(line: 632, column: 23, scope: !98301, inlinedAt: !98302)
!98304 = distinct !DILocation(line: 429, column: 60, scope: !98300, inlinedAt: !98303)
!98305 = !DILocation(line: 182, column: 13, scope: !98297)
!98306 = !DILocation(line: 182, column: 53, scope: !98297)
!98307 = !DILocation(line: 612, column: 17, scope: !98298, inlinedAt: !98305)
!98308 = !DILocation(line: 961, column: 18, scope: !98299, inlinedAt: !98304)
!98309 = !DILocation(line: 184, column: 6, scope: !98297)
!98310 = distinct !DISubprogram(name: "split_at<(u32, i64)>", linkageName: "_RNvXsb_NtNtCse67t6KqNqGQ_5rayon5slice6chunksINtB5_17ChunksMutProducerTmxEENtNtNtB9_4iter8plumbing8Producer8split_atCskY9G75ZWc4U_11polars_expr", scope: !5125, file: !4617, line: 255, type: !4124, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98311 = distinct !DILocation(line: 256, column: 26, scope: !98310)
!98312 = distinct !DISubprogram(name: "add<(u32, i64)>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOTmxE3addCskY9G75ZWc4U_11polars_expr", scope: !4241, file: !4239, line: 927, type: !4124, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98313 = distinct !DISubprogram(name: "split_at_mut_unchecked<(u32, i64)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE22split_at_mut_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !4244, file: !4242, line: 2092, type: !4139, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98314 = distinct !DILexicalBlock(scope: !98313, file: !4242, line: 2093, column: 9)
!98315 = distinct !DILexicalBlock(scope: !98314, file: !4242, line: 2094, column: 9)
!98316 = distinct !DISubprogram(name: "split_at_mut_checked<(u32, i64)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE20split_at_mut_checkedCskY9G75ZWc4U_11polars_expr", scope: !4244, file: !4242, line: 2192, type: !4124, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98317 = distinct !DISubprogram(name: "split_at_mut<(u32, i64)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE12split_at_mutCskY9G75ZWc4U_11polars_expr", scope: !4244, file: !4242, line: 1986, type: !4139, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98318 = distinct !DILexicalBlock(scope: !98310, file: !4617, line: 256, column: 9)
!98319 = distinct !DILocation(line: 257, column: 40, scope: !98318)
!98320 = distinct !DILocation(line: 1987, column: 20, scope: !98317, inlinedAt: !98319)
!98321 = distinct !DILocation(line: 2196, column: 32, scope: !98316, inlinedAt: !98320)
!98322 = distinct !DILocation(line: 2109, column: 40, scope: !98315, inlinedAt: !98321)
!98323 = distinct !DILexicalBlock(scope: !98318, file: !4617, line: 257, column: 9)
!98324 = !DILocation(line: 256, column: 43, scope: !98310)
!98325 = !DILocation(line: 256, column: 35, scope: !98310)
!98326 = !DILocation(line: 256, column: 60, scope: !98310)
!98327 = !DILocation(line: 1077, column: 12, scope: !805, inlinedAt: !98311)
!98328 = !DILocation(line: 961, column: 18, scope: !98312, inlinedAt: !98322)
!98329 = !DILocation(line: 2109, column: 50, scope: !98315, inlinedAt: !98321)
!98330 = !DILocation(line: 258, column: 9, scope: !98323)
!98331 = !DILocation(line: 268, column: 6, scope: !98310)
!98332 = distinct !DISubprogram(name: "into_iter<(u32, i64)>", linkageName: "_RNvXsb_NtNtCse67t6KqNqGQ_5rayon5slice6chunksINtB5_17ChunksMutProducerTmxEENtNtNtB9_4iter8plumbing8Producer9into_iterCskY9G75ZWc4U_11polars_expr", scope: !5125, file: !4617, line: 251, type: !4124, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98333 = distinct !DISubprogram(name: "chunks_mut<(u32, i64)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSTmxE10chunks_mutCskY9G75ZWc4U_11polars_expr", scope: !4244, file: !4242, line: 1199, type: !4124, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98334 = distinct !DISubprogram(name: "new<(u32, i64)>", linkageName: "_RNvMs1e_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_9ChunksMutTmxEE3newCskY9G75ZWc4U_11polars_expr", scope: !98336, file: !4245, line: 1670, type: !4124, scopeLine: 1670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98335 = !DILocation(line: 252, column: 20, scope: !98332)
!98336 = !DINamespace(name: "ChunksMut", scope: !4246)
!98337 = !DILocation(line: 1201, column: 9, scope: !98333, inlinedAt: !98335)
!98338 = !DILocation(line: 252, column: 31, scope: !98332)
!98339 = !DILocation(line: 1200, column: 17, scope: !98333, inlinedAt: !98335)
!98340 = !DILocation(line: 1200, column: 9, scope: !98333, inlinedAt: !98335)
!98341 = !DILocation(line: 252, column: 9, scope: !98332)
!98342 = !DILocation(line: 1671, column: 9, scope: !98334, inlinedAt: !98337)
!98343 = !DILocation(line: 253, column: 6, scope: !98332)
!98344 = distinct !DISubprogram(name: "select_one<polars_core::datatypes::Categorical8Type>", linkageName: "_RNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB5_14CatMaxSelectorNtNtCs1LHh8CLbVkQ_11polars_core9datatypes16Categorical8TypeENtB5_13SelectReducer10select_oneB9_", scope: !5126, file: !4820, line: 586, type: !4139, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98345 = distinct !DISubprogram(name: "cat_to_str", linkageName: "_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping10cat_to_str", scope: !4802, file: !4798, line: 98, type: !4124, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98346 = distinct !DISubprogram(name: "get<(&str, u64)>", linkageName: "_RNvMs_NtCsaIrsFcbE0XP_6boxcar3vecINtB4_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr", scope: !4812, file: !4811, line: 219, type: !4124, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98347 = distinct !DILocation(line: 220, column: 18, scope: !98346, inlinedAt: !98382)
!98348 = distinct !DILocation(line: 81, column: 38, scope: !2333, inlinedAt: !98347)
!98349 = distinct !DILocation(line: 81, column: 21, scope: !2333, inlinedAt: !98347)
!98350 = distinct !DILocation(line: 83, column: 25, scope: !2337, inlinedAt: !98347)
!98351 = distinct !DILocation(line: 741, column: 37, scope: !2336, inlinedAt: !98350)
!98352 = distinct !DILocation(line: 741, column: 18, scope: !2336, inlinedAt: !98350)
!98353 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping10cat_to_str0CskY9G75ZWc4U_11polars_expr", scope: !5007, file: !4798, line: 99, type: !4124, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98354 = distinct !DISubprogram(name: "map<&(&str, u64), &str, polars_dtype::categorical::mapping::{impl#0}::cat_to_str::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRTReyEE3mapBK_NCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB11_18CategoricalMapping10cat_to_str0ECskY9G75ZWc4U_11polars_expr", scope: !4269, file: !4267, line: 1160, type: !4124, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98355 = distinct !DILexicalBlock(scope: !98354, file: !4267, line: 1165, column: 13)
!98356 = distinct !DILexicalBlock(scope: !98344, file: !4820, line: 591, column: 9)
!98357 = distinct !DILocation(line: 220, column: 18, scope: !98346, inlinedAt: !98387)
!98358 = distinct !DILocation(line: 81, column: 38, scope: !2333, inlinedAt: !98357)
!98359 = distinct !DILocation(line: 81, column: 21, scope: !2333, inlinedAt: !98357)
!98360 = distinct !DILocation(line: 83, column: 25, scope: !2337, inlinedAt: !98357)
!98361 = distinct !DILocation(line: 741, column: 37, scope: !2336, inlinedAt: !98360)
!98362 = distinct !DILocation(line: 741, column: 18, scope: !2336, inlinedAt: !98360)
!98363 = distinct !DILexicalBlock(scope: !98354, file: !4267, line: 1165, column: 13)
!98364 = distinct !DISubprogram(name: "compare<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_8SliceOrd7compareCskY9G75ZWc4U_11polars_expr", scope: !4384, file: !4382, line: 342, type: !4124, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98365 = distinct !DILexicalBlock(scope: !98364, file: !4382, line: 345, column: 9)
!98366 = distinct !DILexicalBlock(scope: !98356, file: !4820, line: 594, column: 9)
!98367 = distinct !DISubprogram(name: "gt<str, str>", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_10PartialOrd2gtCskY9G75ZWc4U_11polars_expr", scope: !4310, file: !4287, line: 2150, type: !4124, scopeLine: 2150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98368 = distinct !DISubprogram(name: "gt<str, str>", linkageName: "_RNvYeNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2gtCskY9G75ZWc4U_11polars_expr", scope: !4309, file: !4287, line: 1447, type: !4124, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98369 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs1_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !4390, file: !4386, line: 48, type: !4124, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98370 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3str6traitseNtNtB6_3cmp3Ord3cmp", scope: !4389, file: !4386, line: 20, type: !4124, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98371 = distinct !DISubprogram(name: "cmp<u8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB9_3cmp3Ord3cmpCskY9G75ZWc4U_11polars_expr", scope: !4385, file: !4382, line: 40, type: !4124, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98372 = distinct !DILexicalBlock(scope: !98365, file: !4382, line: 348, column: 9)
!98373 = distinct !DILexicalBlock(scope: !98372, file: !4382, line: 349, column: 9)
!98374 = distinct !DILexicalBlock(scope: !98373, file: !4382, line: 350, column: 9)
!98375 = distinct !DILexicalBlock(scope: !98374, file: !4382, line: 356, column: 9)
!98376 = distinct !DISubprogram(name: "is_gt", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_gt", scope: !5008, file: !4287, line: 500, type: !4124, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98377 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_gtECskY9G75ZWc4U_11polars_expr", scope: !4269, file: !4267, line: 661, type: !4124, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98378 = distinct !DILexicalBlock(scope: !98377, file: !4267, line: 664, column: 13)
!98379 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_gtINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskY9G75ZWc4U_11polars_expr", scope: !4149, file: !4146, line: 250, type: !4124, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98380 = distinct !DILexicalBlock(scope: !98366, file: !4820, line: 599, column: 9)
!98381 = !DILocation(line: 591, column: 32, scope: !98344)
!98382 = !DILocation(line: 99, column: 34, scope: !98345, inlinedAt: !98381)
!98383 = !DILocation(line: 99, column: 52, scope: !98345, inlinedAt: !98381)
!98384 = !DILocation(line: 1165, column: 29, scope: !98355, inlinedAt: !98383)
!98385 = !DILocation(line: 594, column: 32, scope: !98356)
!98386 = !DILexicalBlockFile(scope: !98345, file: !4798, discriminator: 2)
!98387 = !DILocation(line: 99, column: 34, scope: !98386, inlinedAt: !98385)
!98388 = !DILexicalBlockFile(scope: !98363, file: !4267, discriminator: 2)
!98389 = !DILocation(line: 99, column: 52, scope: !98386, inlinedAt: !98385)
!98390 = !DILocation(line: 1165, column: 29, scope: !98388, inlinedAt: !98389)
!98391 = !DILocation(line: 599, column: 22, scope: !98366)
!98392 = !DILocation(line: 2151, column: 13, scope: !98367, inlinedAt: !98391)
!98393 = !DILocation(line: 1448, column: 14, scope: !98368, inlinedAt: !98392)
!98394 = !DILocation(line: 49, column: 19, scope: !98369, inlinedAt: !98393)
!98395 = !DILocation(line: 21, column: 25, scope: !98370, inlinedAt: !98394)
!98396 = !DILocation(line: 41, column: 9, scope: !98371, inlinedAt: !98395)
!98397 = !DILocation(line: 1448, column: 33, scope: !98368, inlinedAt: !98392)
!98398 = !DILocation(line: 664, column: 24, scope: !98378, inlinedAt: !98397)
!98399 = !DILocation(line: 250, column: 5, scope: !98379, inlinedAt: !98398)
!98400 = !DILocation(line: 99, column: 38, scope: !98345, inlinedAt: !98381)
!98401 = !DILocation(line: 220, column: 9, scope: !98346, inlinedAt: !98382)
!98402 = !DILocation(line: 638, column: 27, scope: !2332, inlinedAt: !98348)
!98403 = !DILocation(line: 81, column: 34, scope: !2333, inlinedAt: !98347)
!98404 = !DILocation(line: 2778, column: 15, scope: !2334, inlinedAt: !98349)
!98405 = !DILocation(line: 2778, column: 9, scope: !2334, inlinedAt: !98349)
!98406 = !DILocation(line: 2447, column: 9, scope: !2335, inlinedAt: !98351)
!98407 = !DILocation(line: 3905, column: 24, scope: !2338, inlinedAt: !98352)
!98408 = !DILocation(line: 83, column: 12, scope: !2337, inlinedAt: !98347)
!98409 = !DILocation(line: 79, scope: !2333, inlinedAt: !98347)
!98410 = !DILocation(line: 99, column: 60, scope: !98353, inlinedAt: !98384)
!98411 = !DILocation(line: 594, column: 45, scope: !98356)
!98412 = !DILocation(line: 99, column: 38, scope: !98345, inlinedAt: !98385)
!98413 = !DILocation(line: 638, column: 27, scope: !2332, inlinedAt: !98358)
!98414 = !DILocation(line: 81, column: 34, scope: !2333, inlinedAt: !98357)
!98415 = !DILocation(line: 2778, column: 15, scope: !2334, inlinedAt: !98359)
!98416 = !DILocation(line: 2778, column: 9, scope: !2334, inlinedAt: !98359)
!98417 = !DILocation(line: 2447, column: 9, scope: !2335, inlinedAt: !98361)
!98418 = !DILocation(line: 3905, column: 24, scope: !2338, inlinedAt: !98362)
!98419 = !DILocation(line: 83, column: 12, scope: !2337, inlinedAt: !98357)
!98420 = !DILocation(line: 79, scope: !2333, inlinedAt: !98357)
!98421 = !DILocation(line: 0, scope: !98356)
!98422 = !DILocation(line: 604, column: 6, scope: !98344)
!98423 = !DILocation(line: 99, column: 60, scope: !98353, inlinedAt: !98390)
!98424 = !DILocation(line: 348, column: 22, scope: !98365, inlinedAt: !98396)
!98425 = !DILocation(line: 356, column: 34, scope: !98374, inlinedAt: !98396)
!98426 = !DILocation(line: 357, column: 12, scope: !98375, inlinedAt: !98396)
!98427 = !DILocation(line: 501, column: 9, scope: !98376, inlinedAt: !98399)
!98428 = !DILocation(line: 600, column: 12, scope: !98380)
!98429 = distinct !DISubprogram(name: "select_one<polars_core::datatypes::Categorical16Type>", linkageName: "_RNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB5_14CatMaxSelectorNtNtCs1LHh8CLbVkQ_11polars_core9datatypes17Categorical16TypeENtB5_13SelectReducer10select_oneB9_", scope: !5126, file: !4820, line: 586, type: !4139, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98430 = distinct !DISubprogram(name: "cat_to_str", linkageName: "_RNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2_18CategoricalMapping10cat_to_str", scope: !4802, file: !4798, line: 98, type: !4124, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98431 = distinct !DISubprogram(name: "get<(&str, u64)>", linkageName: "_RNvMs_NtCsaIrsFcbE0XP_6boxcar3vecINtB4_3VecTReyEE3getCskY9G75ZWc4U_11polars_expr", scope: !4812, file: !4811, line: 219, type: !4124, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98432 = distinct !DILocation(line: 220, column: 18, scope: !98431, inlinedAt: !98467)
!98433 = distinct !DILocation(line: 81, column: 38, scope: !2333, inlinedAt: !98432)
!98434 = distinct !DILocation(line: 81, column: 21, scope: !2333, inlinedAt: !98432)
!98435 = distinct !DILocation(line: 83, column: 25, scope: !2337, inlinedAt: !98432)
!98436 = distinct !DILocation(line: 741, column: 37, scope: !2336, inlinedAt: !98435)
!98437 = distinct !DILocation(line: 741, column: 18, scope: !2336, inlinedAt: !98435)
!98438 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping10cat_to_str0CskY9G75ZWc4U_11polars_expr", scope: !5007, file: !4798, line: 99, type: !4124, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98439 = distinct !DISubprogram(name: "map<&(&str, u64), &str, polars_dtype::categorical::mapping::{impl#0}::cat_to_str::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRTReyEE3mapBK_NCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB11_18CategoricalMapping10cat_to_str0ECskY9G75ZWc4U_11polars_expr", scope: !4269, file: !4267, line: 1160, type: !4124, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98440 = distinct !DILexicalBlock(scope: !98439, file: !4267, line: 1165, column: 13)
!98441 = distinct !DILexicalBlock(scope: !98429, file: !4820, line: 591, column: 9)
!98442 = distinct !DILocation(line: 220, column: 18, scope: !98431, inlinedAt: !98472)
!98443 = distinct !DILocation(line: 81, column: 38, scope: !2333, inlinedAt: !98442)
!98444 = distinct !DILocation(line: 81, column: 21, scope: !2333, inlinedAt: !98442)
!98445 = distinct !DILocation(line: 83, column: 25, scope: !2337, inlinedAt: !98442)
!98446 = distinct !DILocation(line: 741, column: 37, scope: !2336, inlinedAt: !98445)
!98447 = distinct !DILocation(line: 741, column: 18, scope: !2336, inlinedAt: !98445)
!98448 = distinct !DILexicalBlock(scope: !98439, file: !4267, line: 1165, column: 13)
!98449 = distinct !DISubprogram(name: "compare<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core5slice3cmphNtB5_8SliceOrd7compareCskY9G75ZWc4U_11polars_expr", scope: !4384, file: !4382, line: 342, type: !4124, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98450 = distinct !DILexicalBlock(scope: !98449, file: !4382, line: 345, column: 9)
!98451 = distinct !DILexicalBlock(scope: !98441, file: !4820, line: 594, column: 9)
!98452 = distinct !DISubprogram(name: "gt<str, str>", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_10PartialOrd2gtCskY9G75ZWc4U_11polars_expr", scope: !4310, file: !4287, line: 2150, type: !4124, scopeLine: 2150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98453 = distinct !DISubprogram(name: "gt<str, str>", linkageName: "_RNvYeNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd2gtCskY9G75ZWc4U_11polars_expr", scope: !4309, file: !4287, line: 1447, type: !4124, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98454 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXs1_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !4390, file: !4386, line: 48, type: !4124, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98455 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3str6traitseNtNtB6_3cmp3Ord3cmp", scope: !4389, file: !4386, line: 20, type: !4124, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98456 = distinct !DISubprogram(name: "cmp<u8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB9_3cmp3Ord3cmpCskY9G75ZWc4U_11polars_expr", scope: !4385, file: !4382, line: 40, type: !4124, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98457 = distinct !DILexicalBlock(scope: !98450, file: !4382, line: 348, column: 9)
!98458 = distinct !DILexicalBlock(scope: !98457, file: !4382, line: 349, column: 9)
!98459 = distinct !DILexicalBlock(scope: !98458, file: !4382, line: 350, column: 9)
!98460 = distinct !DILexicalBlock(scope: !98459, file: !4382, line: 356, column: 9)
!98461 = distinct !DISubprogram(name: "is_gt", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_gt", scope: !5008, file: !4287, line: 500, type: !4124, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98462 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_gtECskY9G75ZWc4U_11polars_expr", scope: !4269, file: !4267, line: 661, type: !4124, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98463 = distinct !DILexicalBlock(scope: !98462, file: !4267, line: 664, column: 13)
!98464 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_gtINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCskY9G75ZWc4U_11polars_expr", scope: !4149, file: !4146, line: 250, type: !4124, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4123)
!98465 = distinct !DILexicalBlock(scope: !98451, file: !4820, line: 599, column: 9)
!98466 = !DILocation(line: 591, column: 32, scope: !98429)
!98467 = !DILocation(line: 99, column: 34, scope: !98430, inlinedAt: !98466)
!98468 = !DILocation(line: 99, column: 52, scope: !98430, inlinedAt: !98466)
!98469 = !DILocation(line: 1165, column: 29, scope: !98440, inlinedAt: !98468)
!98470 = !DILocation(line: 594, column: 32, scope: !98441)
!98471 = !DILexicalBlockFile(scope: !98430, file: !4798, discriminator: 2)
!98472 = !DILocation(line: 99, column: 34, scope: !98471, inlinedAt: !98470)
!98473 = !DILexicalBlockFile(scope: !98448, file: !4267, discriminator: 2)
!98474 = !DILocation(line: 99, column: 52, scope: !98471, inlinedAt: !98470)
!98475 = !DILocation(line: 1165, column: 29, scope: !98473, inlinedAt: !98474)
!98476 = !DILocation(line: 599, column: 22, scope: !98451)
!98477 = !DILocation(line: 2151, column: 13, scope: !98452, inlinedAt: !98476)
!98478 = !DILocation(line: 1448, column: 14, scope: !98453, inlinedAt: !98477)
!98479 = !DILocation(line: 49, column: 19, scope: !98454, inlinedAt: !98478)
!98480 = !DILocation(line: 21, column: 25, scope: !98455, inlinedAt: !98479)
!98481 = !DILocation(line: 41, column: 9, scope: !98456, inlinedAt: !98480)
!98482 = !DILocation(line: 1448, column: 33, scope: !98453, inlinedAt: !98477)
!98483 = !DILocation(line: 664, column: 24, scope: !98463, inlinedAt: !98482)
!98484 = !DILocation(line: 250, column: 5, scope: !98464, inlinedAt: !98483)
!98485 = !DILocation(line: 99, column: 38, scope: !98430, inlinedAt: !98466)
!98486 = !DILocation(line: 220, column: 9, scope: !98431, inlinedAt: !98467)
!98487 = !DILocation(line: 638, column: 27, scope: !2332, inlinedAt: !98433)
!98488 = !DILocation(line: 81, column: 34, scope: !2333, inlinedAt: !98432)
!98489 = !DILocation(line: 2778, column: 15, scope: !2334, inlinedAt: !98434)
!98490 = !DILocation(line: 2778, column: 9, scope: !2334, inlinedAt: !98434)
!98491 = !DILocation(line: 2447, column: 9, scope: !2335, inlinedAt: !98436)
!98492 = !DILocation(line: 3905, column: 24, scope: !2338, inlinedAt: !98437)
!98493 = !DILocation(line: 83, column: 12, scope: !2337, inlinedAt: !98432)
!98494 = !DILocation(line: 79, scope: !2333, inlinedAt: !98432)
!98495 = !DILocation(line: 99, column: 60, scope: !98438, inlinedAt: !98469)
!98496 = !DILocation(line: 594, column: 45, scope: !98441)
end_hunk_1
