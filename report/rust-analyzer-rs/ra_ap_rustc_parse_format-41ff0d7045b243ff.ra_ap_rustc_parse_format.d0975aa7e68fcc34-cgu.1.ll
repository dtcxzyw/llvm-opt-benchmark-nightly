Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_parse_format-41ff0d7045b243ff.ra_ap_rustc_parse_format.d0975aa7e68fcc34-cgu.1?download=true
inline.NumInlined: 129
inline.NumDeleted: 75
begin_hunk_0_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB19_4iter8adapters3map3MapINtNtB2n_3zip3ZipNtNtNtB19_3str4iter11CharIndicesINtNtB4_9into_iter8IntoIterTB12_cEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB4m_6Parser3news4_0EE9from_iterB4m_:bb.a
.body:                                            ; preds = %bb.q, %bb.r
  %.val7 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.ey = icmp eq i64 %.val7, 0
  br i1 %i.ey, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit10, label %bb.t

bb.t:                                             ; preds = %.body
  %.val8 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.ez = shl nuw i64 %.val7, 5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit10

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapINtNtB24_3zip3ZipNtNtNtBZ_3str4iter11CharIndicesINtNtB4_9into_iter8IntoIterTBS_cEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB40_6Parser3news4_0EE11spec_extendB40_.exit: ; preds = %bb.p, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit10: ; preds = %bb.v, %bb.u, %.body, %bb.t
  %.pn33 = phi { ptr, i32 } [ %i.en, %.body ], [ %i.en, %bb.t ], [ %i.fa, %bb.u ], [ %i.fa, %bb.v ]
  resume { ptr, i32 } %.pn33

bb.u:                                             ; preds = %bb.k
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4 = load i64, ptr %i.fb, align 8, !alias.scope !218, !noundef !6 ; 2 uses
  %i.fc = icmp eq i64 %.val4, 0
  br i1 %i.fc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit10, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.fd, align 8, !nonnull !6, !noundef !6
  %i.fe = mul nuw i64 %.val4, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !233
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit10
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB19_4iter8adapters3map3MapNtNtNtB19_3str4iter11CharIndicesNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3v_6Parser3news3_0EE9from_iterB3v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !270 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !273, !nonnull !6, !noundef !6 ; 10 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !273, !nonnull !6, !noundef !6 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.f = icmp eq ptr %i.d, %i.c
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !275
  %i.h = load i8, ptr %i.d, align 1, !noalias !276, !noundef !6 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !277
  %i.n = load i8, ptr %i.g, align 1, !noalias !276, !noundef !6
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i
  %i.u = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !278
  %i.w = load i8, ptr %i.m, align 1, !noalias !276, !noundef !6
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i
  %i.ae = icmp ne ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !alias.scope !279
  %i.ag = load i8, ptr %i.v, align 1, !noalias !276, !noundef !6
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i
  %.val6 = phi ptr [ %i.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i ], [ %i.t, %bb.c ] ; 5 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !280, !noundef !6 ; 3 uses
  %i.ar = ptrtoint ptr %.val6 to i64              ; 2 uses
  %i.as = sub i64 %i.ar, %i.e
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.ap, align 8, !alias.scope !280
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.au, align 8, !alias.scope !271, !nonnull !6, !align !9, !noundef !6 ; 3 uses
  %i.av = load i64, ptr %.val.i, align 8, !noalias !281, !noundef !6
  %i.aw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 128
  br i1 %i.aw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 2048
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 65536
  %..i.i = select i1 %i.ay, i64 3, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i3.i = phi i64 [ 2, %bb.e ], [ %..i.i, %bb.f ], [ 1, %bb.d ]
  %i.az = add i64 %i.av, %i.aq                    ; 2 uses
  %i.ba = add i64 %.sroa.0.0.i3.i, %i.az
  %i.bb = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.bc = sub nuw i64 %i.bb, %i.ar                ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = and i64 %i.bc, 3
  %.not.i.i.i = icmp ne i64 %i.be, 0
  %i.bf = zext i1 %.not.i.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.bd, %i.bf ; 2 uses
  %i.bg = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 3) ; 2 uses
  %..i = add nuw nsw i64 %i.bg, 1                 ; 2 uses
  %i.bh = shl i64 %..i, 5                         ; 4 uses
  %i.bi = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 576460752303423486
  %.not.i.i = icmp ugt i64 %i.bh, 9223372036854775800
  %or.cond.i.i = or i1 %i.bi, %.not.i.i
  br i1 %or.cond.i.i, label %bb.k, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !282
  %i.bk = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !282 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %i.bk to i64
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.i ], [ 0, %bb.g ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bh) #18
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit: ; preds = %bb.h, %bb.j
  %.sroa.10.0.i = phi i64 [ %i.bm, %bb.j ], [ 8, %bb.h ]
  %.sroa.4.0.i = phi i64 [ %..i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.bn = inttoptr i64 %.sroa.10.0.i to ptr       ; 6 uses
  %i.bo = icmp samesign ult i64 %i.bg, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.bo)
  store i64 %i.az, ptr %i.bn, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %i.ba, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.aq, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %.sroa.4.0.i.ph.i.i, ptr %.sroa.620.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.bp = icmp eq ptr %.val6, %i.c
  br i1 %i.bp, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapNtNtNtBZ_3str4iter11CharIndicesNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3a_6Parser3news3_0EE11spec_extendB3a_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit, %.noexc
  %i.bq = phi ptr [ %i.eb, %.noexc ], [ %i.bn, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ]
  %i.br = phi i64 [ %i.ed, %.noexc ], [ 1, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ] ; 5 uses
  %i.bs = phi i64 [ %i.dp, %.noexc ], [ %i.at, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ] ; 4 uses
  %i.bt = phi ptr [ %i.dq, %.noexc ], [ %.val6, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit ] ; 6 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bw = load i8, ptr %i.bt, align 1, !noalias !285, !noundef !6 ; 5 uses
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %.thread.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.by = and i8 %i.bw, 31
  %i.bz = zext nneg i8 %i.by to i32               ; 3 uses
  %i.ca = icmp ne ptr %i.bv, %i.c
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 2 ; 3 uses
  %i.cc = load i8, ptr %i.bv, align 1, !noalias !285, !noundef !6
  %i.cd = shl nuw nsw i32 %i.bz, 6
  %i.ce = and i8 %i.cc, 63
  %i.cf = zext nneg i8 %i.ce to i32               ; 2 uses
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = icmp samesign ugt i8 %i.bw, -33
  br i1 %i.ch, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i, label %bb.l

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.ci = zext nneg i8 %i.bw to i32
  %i.cj = add i64 %i.bs, 1
  %i.ck = load i64, ptr %.val.i, align 8, !noalias !286, !noundef !6
  br label %bb.o

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i
  %i.cl = icmp ne ptr %i.cb, %i.c
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 3 ; 3 uses
  %i.cn = load i8, ptr %i.cb, align 1, !noalias !285, !noundef !6
  %i.co = shl nuw nsw i32 %i.cf, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.co, %i.cq            ; 2 uses
  %i.cs = shl nuw nsw i32 %i.bz, 12
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = icmp samesign ugt i8 %i.bw, -17
  br i1 %i.cu, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i, label %bb.l

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i
  %i.cv = icmp ne ptr %i.cm, %i.c
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.cx = load i8, ptr %i.cm, align 1, !noalias !285, !noundef !6
  %i.cy = shl nuw nsw i32 %i.bz, 18
  %i.cz = and i32 %i.cy, 1835008
  %i.da = shl nuw nsw i32 %i.cr, 6
  %i.db = and i8 %i.cx, 63
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = or disjoint i32 %i.da, %i.dc
  %i.de = or disjoint i32 %i.dd, %i.cz
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i
  %i.df = phi ptr [ %i.cm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i ], [ %i.cw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i ], [ %i.cb, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ct, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i ], [ %i.de, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i ], [ %i.cg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i ] ; 7 uses
  %i.dg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.bu
  %i.dj = add i64 %i.di, %i.bs                    ; 3 uses
  %i.dk = load i64, ptr %.val.i, align 8, !noalias !286, !noundef !6 ; 3 uses
  %i.dl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 128
  br i1 %i.dl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 2048
  br i1 %i.dm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 65536
  %..i.i.i.i = select i1 %i.dn, i64 3, i64 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread.i.i
  %i.do = phi i64 [ %i.dk, %bb.m ], [ %i.dk, %bb.n ], [ %i.dk, %bb.l ], [ %i.ck, %.thread.i.i ]
  %i.dp = phi i64 [ %i.dj, %bb.m ], [ %i.dj, %bb.n ], [ %i.dj, %bb.l ], [ %i.cj, %.thread.i.i ]
  %.sroa.4.0.i.ph.i.i25.i.i = phi i32 [ %.sroa.4.0.i.ph.i.i.i.i, %bb.m ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.n ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.l ], [ %i.ci, %.thread.i.i ]
  %i.dq = phi ptr [ %i.df, %bb.m ], [ %i.df, %bb.n ], [ %i.df, %bb.l ], [ %i.bv, %.thread.i.i ] ; 3 uses
  %.sroa.0.0.i3.i.i.i = phi i64 [ 2, %bb.m ], [ %..i.i.i.i, %bb.n ], [ 1, %bb.l ], [ 1, %.thread.i.i ]
  %i.dr = add i64 %i.do, %i.bs                    ; 2 uses
  %i.ds = add i64 %.sroa.0.0.i3.i.i.i, %i.dr
  %i.dt = icmp samesign ult i64 %i.br, 288230376151711744
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = load i64, ptr %i.a, align 8, !range !5, !alias.scope !287, !noundef !6
  %i.dv = icmp eq i64 %i.br, %i.du
  br i1 %i.dv, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i, label %.noexc

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i: ; preds = %bb.o
  %2 = ptrtoint ptr %i.dq to i64
  %i.dw = sub nuw i64 %i.bb, %2                   ; 2 uses
  %i.dx = lshr i64 %i.dw, 2
  %i.dy = and i64 %i.dw, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.dy, 0
  %i.dz = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.dx, 1
  %i.ea = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %i.dz
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.br, i64 noundef range(i64 1, 0) %i.ea)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i..noexc_crit_edge unwind label %bb.r

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i..noexc_crit_edge: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !287
  br label %.noexc

.noexc:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i..noexc_crit_edge, %bb.o
  %i.eb = phi ptr [ %.pre, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i..noexc_crit_edge ], [ %i.bq, %bb.o ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %i.br ; 4 uses
  store i64 %i.dr, ptr %i.ec, align 8, !noalias !288
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ds, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !288
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.bs, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !288
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i32 %.sroa.4.0.i.ph.i.i25.i.i, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !noalias !288
  %i.ed = add nuw nsw i64 %i.br, 1                ; 2 uses
  store i64 %i.ed, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !287
  %i.ee = icmp eq ptr %i.dq, %i.c
  br i1 %i.ee, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapNtNtNtBZ_3str4iter11CharIndicesNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3a_6Parser3news3_0EE11spec_extendB3a_.exit, label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.eg, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapNtNtNtBZ_3str4iter11CharIndicesNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3a_6Parser3news3_0EE11spec_extendB3a_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.r:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ei = icmp eq i64 %.val, 0
  br i1 %i.ei, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEjcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val5 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.ej = shl nuw i64 %.val, 5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ej, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEjcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapNtNtNtBZ_3str4iter11CharIndicesNCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3a_6Parser3news3_0EE11spec_extendB3a_.exit: ; preds = %.noexc, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTINtNtNtB4_3ops5range5RangejEjcEEECshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit: ; preds = %bb.s, %bb.r
  resume { ptr, i32 } %i.eh
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtBS_4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 !guid !289 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 !guid !290 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !291 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtCshzWfHUSfYae_4core6escapeINtB5_15EscapeIterInnerKja_NtB5_12MaybeEscapedENtNtB7_3fmt7Display3fmtCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !292 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1, !noundef !6  ; 2 uses
  %i.c = icmp ugt i8 %i.b, -128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i8, ptr %i.d, align 4, !noundef !6
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = zext i8 %i.b to i64
  %i.h = sub nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 4, !range !293, !noundef !6
  %i.l = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtBL_4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !guid !294 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 !guid !295 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

end_hunk_0
