Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_lexer-6c335829b7c909b1.ra_ap_rustc_lexer.a9b99cc5f65ee691-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 119
begin_hunk_0_@_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor11frontmatter:bb.a

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i2.i107: ; preds = %bb.h
  %i.jr = icmp ne ptr %i.jq, %i.s
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %i.ii, i64 2 ; 3 uses
  store ptr %i.js, ptr %0, align 8, !alias.scope !272
  %i.jt = icmp samesign ugt i8 %i.ij, -33
  br i1 %i.jt, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i4.i110, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i108

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i4.i110: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i2.i107
  %i.ju = icmp ne ptr %i.js, %i.s
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ii, i64 3 ; 3 uses
  store ptr %i.jv, ptr %0, align 8, !alias.scope !273
  %i.jw = icmp samesign ugt i8 %i.ij, -17
  br i1 %i.jw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i5.i111, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i108

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i5.i111: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i4.i110
  %i.jx = icmp ne ptr %i.jv, %i.s
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  store ptr %i.jy, ptr %0, align 8, !alias.scope !274
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i108

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i108: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i5.i111, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i4.i110, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i2.i107, %bb.h
  %i.jz = phi ptr [ %i.jq, %bb.h ], [ %i.js, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i2.i107 ], [ %i.jv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i4.i110 ], [ %i.jy, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i5.i111 ] ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.jz, %i.s
  br i1 %.not.i.i109, label %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters1_0EB5_.exit, label %.lr.ph.i103

_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters1_0EB5_.exit: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i105, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i108, %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters0_0EB5_.exit
  %i.ka = phi ptr [ %.promoted.i101, %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters0_0EB5_.exit ], [ %i.ii, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.i105 ], [ %i.jz, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i108 ] ; 23 uses
  %.not.i114 = icmp eq ptr %i.ka, %i.s            ; 2 uses
  br i1 %.not.i114, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119, label %bb.i

bb.i:                                             ; preds = %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters1_0EB5_.exit
  %i.kb = load i8, ptr %i.ka, align 1, !noalias !275, !noundef !4 ; 5 uses
  %i.kc = icmp sgt i8 %i.kb, -1
  br i1 %i.kc, label %bb.j, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i115

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i115: ; preds = %bb.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 1 ; 2 uses
  %i.ke = and i8 %i.kb, 31
  %i.kf = zext nneg i8 %i.ke to i32               ; 3 uses
  %i.kg = icmp ne ptr %i.kd, %i.s
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = load i8, ptr %i.kd, align 1, !noalias !275, !noundef !4
  %i.ki = shl nuw nsw i32 %i.kf, 6
  %i.kj = and i8 %i.kh, 63
  %i.kk = zext nneg i8 %i.kj to i32               ; 2 uses
  %i.kl = or disjoint i32 %i.ki, %i.kk
  %i.km = icmp samesign ugt i8 %i.kb, -33
  br i1 %i.km, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i117, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119

bb.j:                                             ; preds = %bb.i
  %i.kn = zext nneg i8 %i.kb to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i117: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i115
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ka, i64 2 ; 2 uses
  %i.kp = icmp ne ptr %i.ko, %i.s
  tail call void @llvm.assume(i1 %i.kp)
  %i.kq = load i8, ptr %i.ko, align 1, !noalias !275, !noundef !4
  %i.kr = shl nuw nsw i32 %i.kk, 6
  %i.ks = and i8 %i.kq, 63
  %i.kt = zext nneg i8 %i.ks to i32
  %i.ku = or disjoint i32 %i.kr, %i.kt            ; 2 uses
  %i.kv = shl nuw nsw i32 %i.kf, 12
  %i.kw = or disjoint i32 %i.ku, %i.kv
  %i.kx = icmp samesign ugt i8 %i.kb, -17
  br i1 %i.kx, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i118, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i118: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i117
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ka, i64 3 ; 2 uses
  %i.kz = icmp ne ptr %i.ky, %i.s
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = load i8, ptr %i.ky, align 1, !noalias !275, !noundef !4
  %i.lb = shl nuw nsw i32 %i.kf, 18
  %i.lc = and i32 %i.lb, 1835008
  %i.ld = shl nuw nsw i32 %i.ku, 6
  %i.le = and i8 %i.la, 63
  %i.lf = zext nneg i8 %i.le to i32
  %i.lg = or disjoint i32 %i.ld, %i.lf
  %i.lh = or disjoint i32 %i.lg, %i.lc
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119: ; preds = %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters1_0EB5_.exit, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i115, %bb.j, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i117, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i118
  %spec.select.i116 = phi i32 [ %i.kn, %bb.j ], [ %i.kl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i115 ], [ %i.lh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i118 ], [ %i.kw, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i117 ], [ 0, %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters1_0EB5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.li = and i64 %i.bm, 4294901760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %i.li, 0
  br i1 %.not, label %.split, label %bb.k, !prof !276

.split:                                           ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119
  %i.lj = trunc i64 %i.bm to i16
  store ptr @11, ptr %i.n, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsezrqMfYJdg3_17ra_ap_rustc_lexer, ptr %.sroa.439.0..sroa_idx, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %i.lk, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i16 %i.lj, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @12, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ll = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.lm = sub nuw i64 %i.t, %i.ll                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !277
  invoke void @_RNvXso_NtCsbSS6DM8SDEO_5alloc6stringRNtB5_6StringNtNtNtCshzWfHUSfYae_4core3str7pattern7Pattern13into_searcher(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ka, i64 noundef %i.lm)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.split
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 dereferenceable(104) %i.l) #15
          to label %bb.m unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit119
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #16
  unreachable

.loopexit239:                                     ; preds = %bb.ad, %.noexc149, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %.split43.i.i.i.invoke, %.invoke584, %.invoke, %.split, %.noexc, %bb.q, %.noexc124, %bb.r, %bb.x, %.noexc133, %bb.z, %.noexc139, %bb.ab, %.noexc146, %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit239
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit239 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val71 = load i64, ptr %i.p, align 8           ; 2 uses
  %i.ln = icmp eq i64 %.val71, 0
  br i1 %i.ln, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.l
  %i.lo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val72 = load ptr, ptr %i.lo, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef %.val71, i64 noundef range(i64 1, -9223372036854775807) 1) #17
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit

bb.m:                                             ; preds = %.noexc
  %i.lp = load i64, ptr %i.m, align 8, !range !5, !noalias !277, !noundef !4
  %i.lq = trunc nuw i64 %i.lp to i1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !277
  br i1 %i.lq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.lt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !noundef !4 ; 2 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  call void @llvm.assume(i1 %i.lv)
  %i.lw = add i64 %i.lu, %i.ls                    ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i121 = icmp ult i64 %i.lw, %i.lm
  br i1 %.not.i.i121, label %bb.p, label %.split.i.i

.split.i.i:                                       ; preds = %bb.o
  %i.ly = icmp eq i64 %i.lw, %i.lm
  br i1 %i.ly, label %bb.r, label %.invoke584

bb.p:                                             ; preds = %bb.o
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.lw
  %i.ma = load i8, ptr %i.lz, align 1, !alias.scope !279, !noalias !278, !noundef !4
  %i.mb = icmp sgt i8 %i.ma, -65
  br i1 %i.mb, label %bb.r, label %.invoke584

.invoke584:                                       ; preds = %.split.i.i.i.peel.i, %bb.aj, %.split.i.i.i.i, %bb.at, %.split.i.i185, %bb.ca, %.split.i.i171, %bb.bv, %.split.i.i128, %bb.u, %.split.i.i, %bb.p
  %i.mc = phi ptr [ %i.ka, %.split.i.i171 ], [ %i.ka, %.split.i.i ], [ %i.mh, %.split.i.i128 ], [ %i.yj, %.split.i.i185 ], [ %i.ka, %bb.p ], [ %i.mh, %bb.u ], [ %i.ka, %bb.bv ], [ %i.yj, %bb.ca ], [ %i.oq, %bb.at ], [ %i.oq, %.split.i.i.i.i ], [ %i.oq, %bb.aj ], [ %i.oq, %.split.i.i.i.peel.i ]
  %i.md = phi i64 [ %i.xr, %.split.i.i171 ], [ %i.lm, %.split.i.i ], [ %i.mk, %.split.i.i128 ], [ %i.ym, %.split.i.i185 ], [ %i.lm, %bb.p ], [ %i.mk, %bb.u ], [ %i.xr, %bb.bv ], [ %i.ym, %bb.ca ], [ %i.or, %bb.at ], [ %i.or, %.split.i.i.i.i ], [ %i.or, %bb.aj ], [ %i.or, %.split.i.i.i.peel.i ]
  %i.me = phi i64 [ %.sroa.414.0, %.split.i.i171 ], [ %i.lw, %.split.i.i ], [ %i.mr, %.split.i.i128 ], [ %i.yt, %.split.i.i185 ], [ %i.lw, %bb.p ], [ %i.mr, %bb.u ], [ %.sroa.414.0, %bb.bv ], [ %i.yt, %bb.ca ], [ 0, %bb.at ], [ 0, %.split.i.i.i.i ], [ 0, %bb.aj ], [ 0, %.split.i.i.i.peel.i ]
  %i.mf = phi i64 [ %i.xr, %.split.i.i171 ], [ %i.lm, %.split.i.i ], [ %i.mk, %.split.i.i128 ], [ %i.ym, %.split.i.i185 ], [ %i.lm, %bb.p ], [ %i.mk, %bb.u ], [ %i.xr, %bb.bv ], [ %i.ym, %bb.ca ], [ %.promoted60.i.i, %.split.i.i.i.peel.i ], [ %.promoted60.i.i, %bb.aj ], [ %i.qk, %.split.i.i.i.i ], [ %i.qk, %bb.at ]
  %i.mg = phi ptr [ @10, %.split.i.i171 ], [ @10, %.split.i.i ], [ @21, %.split.i.i128 ], [ @21, %.split.i.i185 ], [ @10, %bb.p ], [ @21, %bb.u ], [ @10, %bb.bv ], [ @21, %bb.ca ], [ @23, %bb.at ], [ @23, %.split.i.i.i.i ], [ @23, %bb.aj ], [ @23, %.split.i.i.i.peel.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mc, i64 noundef %i.md, i64 noundef %i.me, i64 noundef %i.mf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mg) #16
          to label %.cont585 unwind label %.loopexit.split-lp

.cont585:                                         ; preds = %.invoke584
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !280
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ka, i64 noundef %i.lm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef range(i64 1, 6) 4)
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.q
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef align 8 dereferenceable(104) %i.j) #15
          to label %bb.w unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %.split.i.i, %bb.n
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.lw ; 9 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.lm
  store ptr %i.mh, ptr %0, align 8, !alias.scope !278
  store ptr %i.mi, ptr %i.r, align 8, !alias.scope !278
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.mj = ptrtoint ptr %i.mh to i64               ; 2 uses
  %i.mk = sub nuw i64 %i.t, %i.mj                 ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mk ; 2 uses
  %i.ml = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !282, !nonnull !4, !noundef !4
  %i.mm = invoke { i64, ptr } %i.ml(i8 noundef 10, ptr noundef nonnull readonly %i.mh, ptr noundef nonnull readonly %2)
          to label %.noexc129 unwind label %.loopexit.split-lp, !inline_history !169 ; 2 uses

.noexc129:                                        ; preds = %bb.r
  %i.mn = extractvalue { i64, ptr } %i.mm, 0
  %i.mo = trunc nuw i64 %i.mn to i1
  br i1 %i.mo, label %bb.s, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit

bb.s:                                             ; preds = %.noexc129
  %i.mp = extractvalue { i64, ptr } %i.mm, 1      ; 3 uses
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = sub i64 %i.mq, %i.mj                    ; 6 uses
  %i.ms = icmp sgt i64 %i.mr, -1
  call void @llvm.assume(i1 %i.ms)
  %i.mt = icmp eq ptr %i.mp, %i.mh
  br i1 %i.mt, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i127 = icmp ult i64 %i.mr, %i.mk
  br i1 %.not.i.i127, label %bb.u, label %.split.i.i128

.split.i.i128:                                    ; preds = %bb.t
  %i.mu = icmp eq ptr %i.mp, %i.s
  br i1 %i.mu, label %bb.v, label %.invoke584

bb.u:                                             ; preds = %bb.t
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mr
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !283, !noalias !281, !noundef !4
  %i.mx = icmp sgt i8 %i.mw, -65
  br i1 %i.mx, label %bb.v, label %.invoke584

bb.v:                                             ; preds = %bb.u, %.split.i.i128, %bb.s
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mr
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit: ; preds = %.noexc129, %bb.v
  %.sroa.5.0.i = phi ptr [ %2, %bb.v ], [ inttoptr (i64 1 to ptr), %.noexc129 ]
  %.sroa.0.0.i126 = phi ptr [ %i.my, %bb.v ], [ inttoptr (i64 1 to ptr), %.noexc129 ]
  store ptr %.sroa.0.0.i126, ptr %0, align 8, !alias.scope !281
  store ptr %.sroa.5.0.i, ptr %i.r, align 8, !alias.scope !281
  br label %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit

_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit.loopexit: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177
  store ptr %.sink.i, ptr %0, align 8, !alias.scope !284
  br label %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit

_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit: ; preds = %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit.loopexit, %bb.bw, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit188, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit
  %.val69 = load i64, ptr %i.p, align 8           ; 2 uses
  %i.mz = icmp eq i64 %.val69, 0
  br i1 %i.mz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit132, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i131

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i131: ; preds = %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit
  %i.na = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val70 = load ptr, ptr %i.na, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70, i64 noundef %.val69, i64 noundef range(i64 1, -9223372036854775807) 1) #17
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit132

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit132: ; preds = %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i131
  %.not67 = icmp eq i32 %spec.select.i116, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.3.0.insert.shift = select i1 %.not67, i64 0, i64 65536
  %.sroa.2.0.insert.insert = select i1 %1, i64 259, i64 3
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.3.0.insert.shift
  ret i64 %.sroa.0.0.insert.insert

bb.w:                                             ; preds = %.noexc124
  %i.nb = load i64, ptr %i.k, align 8, !range !5, !noalias !280, !noundef !4
  %i.nc = trunc nuw i64 %i.nb to i1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !280
  %i.nf = add i64 %i.ne, 1
  br i1 %i.nc, label %.thread207, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !285
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ka, i64 noundef %i.lm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef range(i64 1, 6) 5)
          to label %.noexc133 unwind label %.loopexit.split-lp

.noexc133:                                        ; preds = %bb.x
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef align 8 dereferenceable(104) %i.h) #15
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %.noexc133
  %i.ng = load i64, ptr %i.i, align 8, !range !5, !noalias !285, !noundef !4
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !285
  br i1 %i.nh, label %.thread207, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !286
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ka, i64 noundef %i.lm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef range(i64 1, 6) 4)
          to label %.noexc139 unwind label %.loopexit.split-lp

.noexc139:                                        ; preds = %bb.z
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #15
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %.noexc139
  %i.nk = load i64, ptr %i.g, align 8, !range !5, !noalias !286, !noundef !4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !286
  %i.nn = trunc nuw i64 %i.nk to i1
  br i1 %i.nn, label %.thread207, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !287
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ka, i64 noundef %i.lm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 1, 6) 4)
          to label %.noexc146 unwind label %.loopexit.split-lp

.noexc146:                                        ; preds = %bb.ab
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(104) %i.d) #15
          to label %bb.ac unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %.noexc146
  %i.no = load i64, ptr %i.e, align 8, !range !5, !noalias !287, !noundef !4
  %i.np = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !287
  %cond.not = icmp eq i64 %i.no, 0
  br i1 %cond.not, label %.preheader, label %.thread207

.preheader:                                       ; preds = %bb.ac
  %i.nr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader, %bb.bt
  %.sroa.12.0 = phi i64 [ %i.xn, %bb.bt ], [ %i.lm, %.preheader ] ; 12 uses
  %.sroa.017.0 = phi ptr [ %i.xm, %bb.bt ], [ %i.ka, %.preheader ] ; 10 uses
  %.sroa.08.0 = phi i64 [ %i.xo, %bb.bt ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !288
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.017.0, i64 noundef %.sroa.12.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef range(i64 1, 6) 3)
          to label %.noexc149 unwind label %.loopexit239

.noexc149:                                        ; preds = %bb.ad
  invoke fastcc void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #15
          to label %bb.ae unwind label %.loopexit239

bb.ae:                                            ; preds = %.noexc149
  %i.oe = load i64, ptr %i.c, align 8, !range !5, !noalias !288, !noundef !4
  %i.of = trunc nuw i64 %i.oe to i1               ; 2 uses
  %i.og = load i64, ptr %i.nr, align 8, !noalias !288 ; 8 uses
  %.sroa.3.0.i148 = select i1 %i.of, i64 %i.og, i64 undef ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !288
  br i1 %i.of, label %bb.af, label %bb.bw

bb.af:                                            ; preds = %bb.ae
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i152 = icmp ult i64 %i.og, %.sroa.12.0
  br i1 %.not.i152, label %bb.ah, label %.split.i

.split.i:                                         ; preds = %bb.ag
  %i.oi = icmp eq i64 %i.og, %.sroa.12.0
  br i1 %i.oi, label %bb.ai, label %.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %i.og
  %i.ok = load i8, ptr %i.oj, align 1, !alias.scope !289, !noundef !4
  %i.ol = icmp sgt i8 %i.ok, -65
  br i1 %i.ol, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah, %.split.i, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !290
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.017.0, i64 noundef %i.og, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 1)
          to label %.noexc155 unwind label %.loopexit239

.noexc155:                                        ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.om = load i64, ptr %i.a, align 8, !range !5, !alias.scope !291, !noalias !292, !noundef !4
  %i.on = trunc nuw i64 %i.om to i1
  br i1 %i.on, label %bb.as, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.noexc155
  %i.oo = load i8, ptr %i.ns, align 2, !range !6, !alias.scope !293, !noalias !294, !noundef !4
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %.loopexit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.oq = load ptr, ptr %i.nv, align 8, !alias.scope !293, !noalias !294, !nonnull !4, !noundef !4 ; 8 uses
  %i.or = load i64, ptr %i.nw, align 8, !alias.scope !293, !noalias !294, !noundef !4 ; 8 uses
  %.promoted.i.i = load i8, ptr %i.nt, align 1, !alias.scope !293, !noalias !294
  %.promoted60.i.i = load i64, ptr %i.nu, align 8, !alias.scope !293, !noalias !294 ; 12 uses
  %.promoted.i.i.fr = freeze i8 %.promoted.i.i    ; 2 uses
  %i.os = trunc i8 %.promoted.i.i.fr to i1
  %i.ot = icmp eq i64 %.promoted60.i.i, 0
  br i1 %i.ot, label %.loopexit, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted60.i.i, %i.or
  br i1 %.not.i.i.i.peel.i, label %bb.aj, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %.lr.ph.i154
  %i.ou = icmp eq i64 %.promoted60.i.i, %i.or
  br i1 %i.ou, label %bb.ak, label %.invoke584

bb.aj:                                            ; preds = %.lr.ph.i154
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.promoted60.i.i
  %i.ow = load i8, ptr %i.ov, align 1, !alias.scope !295, !noalias !296, !noundef !4
  %i.ox = icmp sgt i8 %i.ow, -65
  br i1 %i.ox, label %bb.ak, label %.invoke584

bb.ak:                                            ; preds = %bb.aj, %.split.i.i.i.peel.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 %.promoted60.i.i ; 4 uses
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -1
  %i.pa = load i8, ptr %i.oz, align 1, !noalias !297, !noundef !4 ; 3 uses
  %i.pb = icmp sgt i8 %i.pa, -1
  br i1 %i.pb, label %bb.an, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit17.i.i.i.peel.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit17.i.i.i.peel.i: ; preds = %bb.ak
  %i.pc = icmp ne i64 %.promoted60.i.i, 1
end_hunk_0
begin_hunk_1_@_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor11frontmatter:bb.a

.loopexit:                                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  %.mask = and i8 %.promoted.i.i.fr, 1
  %spec.select = zext nneg i8 %.mask to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit, %.loopexit.thread491, %.loopexit.thread
  %i.vh = phi i64 [ 0, %.loopexit.thread ], [ %spec.select, %.loopexit ], [ %i.vg, %.loopexit.thread491 ] ; 9 uses
  %i.vi = icmp ugt i64 %i.vh, %.sroa.3.0.i148
  %i.vj = icmp ugt i64 %.sroa.3.0.i148, %.sroa.12.0
  %or.cond.i = or i1 %i.vj, %i.vi
  br i1 %or.cond.i, label %.invoke, label %bb.bk, !prof !315

bb.bk:                                            ; preds = %bb.bj
  %i.vk = icmp eq i64 %i.vh, %.sroa.12.0
  br i1 %i.vk, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vl = icmp eq i64 %i.vh, 0
  br i1 %i.vl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.vm = icmp eq i64 %.sroa.3.0.i148, %.sroa.12.0
  br i1 %i.vm, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit

bb.bn:                                            ; preds = %bb.bl
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %i.vh
  %i.vo = load i8, ptr %i.vn, align 1, !alias.scope !316, !noundef !4
  %i.vp = icmp sgt i8 %i.vo, -65
  br i1 %i.vp, label %bb.bm, label %.invoke, !prof !317

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit: ; preds = %bb.bm
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %.sroa.3.0.i148
  %i.vr = load i8, ptr %i.vq, align 1, !alias.scope !316, !noundef !4
  %i.vs = icmp sgt i8 %i.vr, -65
  br i1 %i.vs, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, label %.invoke, !prof !318

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread: ; preds = %bb.bm, %bb.bk, %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %.sroa.3.0.i148 ; 4 uses
  %.not.i10.not.i = icmp samesign eq i64 %i.vh, %.sroa.3.0.i148
  br i1 %.not.i10.not.i, label %.loopexit234, label %.lr.ph.i162.preheader

.lr.ph.i162.preheader:                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %i.vh
  br label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %.lr.ph.i162.preheader, %.backedge.i
  %i.vv = phi ptr [ %i.xe, %.backedge.i ], [ %i.vu, %.lr.ph.i162.preheader ] ; 5 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 1 ; 3 uses
  %i.vx = load i8, ptr %i.vv, align 1, !noalias !319, !noundef !4 ; 5 uses
  %i.vy = icmp sgt i8 %i.vx, -1
  br i1 %i.vy, label %bb.bo, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i163

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i163: ; preds = %.lr.ph.i162
  %i.vz = and i8 %i.vx, 31
  %i.wa = zext nneg i8 %i.vz to i32               ; 3 uses
  %i.wb = icmp ne ptr %i.vw, %i.vt
  call void @llvm.assume(i1 %i.wb)
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 2 ; 3 uses
  %i.wd = load i8, ptr %i.vw, align 1, !noalias !319, !noundef !4
  %i.we = shl nuw nsw i32 %i.wa, 6
  %i.wf = and i8 %i.wd, 63
  %i.wg = zext nneg i8 %i.wf to i32               ; 2 uses
  %i.wh = or disjoint i32 %i.we, %i.wg
  %i.wi = icmp samesign ugt i8 %i.vx, -33
  br i1 %i.wi, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i164, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i162
  %i.wj = zext nneg i8 %i.vx to i32
  br label %bb.bp

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i164: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i163
  %i.wk = icmp ne ptr %i.wc, %i.vt
  call void @llvm.assume(i1 %i.wk)
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vv, i64 3 ; 3 uses
  %i.wm = load i8, ptr %i.wc, align 1, !noalias !319, !noundef !4
  %i.wn = shl nuw nsw i32 %i.wg, 6
  %i.wo = and i8 %i.wm, 63
  %i.wp = zext nneg i8 %i.wo to i32
  %i.wq = or disjoint i32 %i.wn, %i.wp            ; 2 uses
  %i.wr = shl nuw nsw i32 %i.wa, 12
  %i.ws = or disjoint i32 %i.wq, %i.wr
  %i.wt = icmp samesign ugt i8 %i.vx, -17
  br i1 %i.wt, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i.i165, label %bb.bp

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i.i165: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i164
  %i.wu = icmp ne ptr %i.wl, %i.vt
  call void @llvm.assume(i1 %i.wu)
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.ww = load i8, ptr %i.wl, align 1, !noalias !319, !noundef !4
  %i.wx = shl nuw nsw i32 %i.wa, 18
  %i.wy = and i32 %i.wx, 1835008
  %i.wz = shl nuw nsw i32 %i.wq, 6
  %i.xa = and i8 %i.ww, 63
  %i.xb = zext nneg i8 %i.xa to i32
  %i.xc = or disjoint i32 %i.wz, %i.xb
  %i.xd = or disjoint i32 %i.xc, %i.wy
  br label %bb.bp

bb.bp:                                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i.i165, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i164, %bb.bo, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i163
  %i.xe = phi ptr [ %i.wl, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i164 ], [ %i.wv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i.i165 ], [ %i.wc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i163 ], [ %i.vw, %bb.bo ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.ws, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i164 ], [ %i.xd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i.i165 ], [ %i.wh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i163 ], [ %i.wj, %bb.bo ]
  switch i32 %spec.select.i.ph.i, label %bb.bq [
    i32 32, label %.backedge.i
    i32 9, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %bb.bp, %bb.bp
  %.not.i.not.i = icmp eq ptr %i.xe, %i.vt
  br i1 %.not.i.not.i, label %.loopexit234, label %.lr.ph.i162

bb.bq:                                            ; preds = %bb.bp
  %i.xf = add i64 %.sroa.3.0.i148, 3              ; 9 uses
  %i.xg = icmp eq i64 %i.xf, 0
  br i1 %i.xg, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not.i166 = icmp ult i64 %i.xf, %.sroa.12.0
  br i1 %.not.i166, label %bb.bs, label %.split.i167

.split.i167:                                      ; preds = %bb.br
  %i.xh = icmp eq i64 %i.xf, %.sroa.12.0
  br i1 %i.xh, label %bb.bt, label %.invoke

bb.bs:                                            ; preds = %bb.br
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %i.xf
  %i.xj = load i8, ptr %i.xi, align 1, !alias.scope !320, !noundef !4
  %i.xk = icmp sgt i8 %i.xj, -65
  br i1 %i.xk, label %bb.bt, label %.invoke

.loopexit234:                                     ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread, %.backedge.i
  %i.xl = add i64 %.sroa.3.0.i148, %.sroa.08.0
  br label %.thread207

bb.bt:                                            ; preds = %bb.bs, %.split.i167, %bb.bq
  %i.xm = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 %i.xf
  %i.xn = sub nuw i64 %.sroa.12.0, %i.xf
  %i.xo = add i64 %i.xf, %.sroa.08.0
  br label %bb.ad

.thread207:                                       ; preds = %bb.w, %bb.y, %bb.aa, %bb.ac, %.loopexit234
  %.sroa.414.0 = phi i64 [ %i.xl, %.loopexit234 ], [ %i.nm, %bb.aa ], [ %i.nq, %bb.ac ], [ %i.nj, %bb.y ], [ %i.nf, %bb.w ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.xp = load ptr, ptr %i.r, align 8, !alias.scope !321, !nonnull !4, !noundef !4 ; 2 uses
  %i.xq = ptrtoint ptr %i.xp to i64               ; 2 uses
  %i.xr = sub nuw i64 %i.xq, %i.ll                ; 7 uses
  %i.xs = icmp eq i64 %.sroa.414.0, 0
  br i1 %i.xs, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %.thread207
  %.not.i.i170 = icmp ult i64 %.sroa.414.0, %i.xr
  br i1 %.not.i.i170, label %bb.bv, label %.split.i.i171

.split.i.i171:                                    ; preds = %bb.bu
  %i.xt = icmp eq i64 %.sroa.414.0, %i.xr
  br i1 %i.xt, label %bb.bx, label %.invoke584

bb.bv:                                            ; preds = %bb.bu
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ka, i64 %.sroa.414.0
  %i.xv = load i8, ptr %i.xu, align 1, !alias.scope !322, !noalias !321, !noundef !4
  %i.xw = icmp sgt i8 %i.xv, -65
  br i1 %i.xw, label %bb.bx, label %.invoke584

bb.bw:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  br i1 %.not.i114, label %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit, label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.bw, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177
  %i.xx = phi ptr [ %.sink.i, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177 ], [ %i.ka, %bb.bw ] ; 5 uses
  %i.xy = load i8, ptr %i.xx, align 1, !noalias !323, !noundef !4 ; 3 uses
  %i.xz = icmp sgt i8 %i.xy, -1
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 1 ; 2 uses
  br i1 %i.xz, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i176

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i176: ; preds = %.lr.ph.i175
  %i.yb = icmp ne ptr %i.ya, %i.s
  call void @llvm.assume(i1 %i.yb)
  %i.yc = icmp samesign ugt i8 %i.xy, -33
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 2 ; 2 uses
  br i1 %i.yc, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i180, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i180: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i176
  %i.ye = icmp ne ptr %i.yd, %i.s
  call void @llvm.assume(i1 %i.ye)
  %i.yf = icmp samesign ugt i8 %i.xy, -17         ; 2 uses
  %spec.select.i181 = select i1 %i.yf, i64 3, i64 2
  %spec.select13.i = select i1 %i.yf, i64 4, i64 3
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xx, i64 %spec.select.i181
  %i.yh = icmp ne ptr %i.yg, %i.s
  call void @llvm.assume(i1 %i.yh)
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xx, i64 %spec.select13.i
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit.i177: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i180, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i176, %.lr.ph.i175
  %.sink.i = phi ptr [ %i.yd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i.i176 ], [ %i.ya, %.lr.ph.i175 ], [ %i.yi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i.i180 ] ; 3 uses
  %.not.i.i178 = icmp eq ptr %.sink.i, %i.s
  br i1 %.not.i.i178, label %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit.loopexit, label %.lr.ph.i175

bb.bx:                                            ; preds = %bb.bv, %.split.i.i171, %.thread207
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ka, i64 %.sroa.414.0 ; 9 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.xr
  store ptr %i.yj, ptr %0, align 8, !alias.scope !321
  store ptr %i.yk, ptr %i.r, align 8, !alias.scope !321
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.yl = ptrtoint ptr %i.yj to i64               ; 2 uses
  %i.ym = sub nuw i64 %i.xq, %i.yl                ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.ym ; 2 uses
  %i.yn = load atomic ptr, ptr @_RNvNvNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !325, !nonnull !4, !noundef !4
  %i.yo = invoke { i64, ptr } %i.yn(i8 noundef 10, ptr noundef nonnull readonly %i.yj, ptr noundef nonnull readonly %3)
          to label %.noexc186 unwind label %.loopexit.split-lp, !inline_history !169 ; 2 uses

.noexc186:                                        ; preds = %bb.bx
  %i.yp = extractvalue { i64, ptr } %i.yo, 0
  %i.yq = trunc nuw i64 %i.yp to i1
  br i1 %i.yq, label %bb.by, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit188

bb.by:                                            ; preds = %.noexc186
  %i.yr = extractvalue { i64, ptr } %i.yo, 1      ; 3 uses
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = sub i64 %i.ys, %i.yl                    ; 6 uses
  %i.yu = icmp sgt i64 %i.yt, -1
  call void @llvm.assume(i1 %i.yu)
  %i.yv = icmp eq ptr %i.yr, %i.yj
  br i1 %i.yv, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not.i.i184 = icmp ult i64 %i.yt, %i.ym
  br i1 %.not.i.i184, label %bb.ca, label %.split.i.i185

.split.i.i185:                                    ; preds = %bb.bz
  %i.yw = icmp eq ptr %i.yr, %i.xp
  br i1 %i.yw, label %bb.cb, label %.invoke584

bb.ca:                                            ; preds = %bb.bz
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.yt
  %i.yy = load i8, ptr %i.yx, align 1, !alias.scope !326, !noalias !324, !noundef !4
  %i.yz = icmp sgt i8 %i.yy, -65
  br i1 %i.yz, label %bb.cb, label %.invoke584

bb.cb:                                            ; preds = %bb.ca, %.split.i.i185, %bb.by
  %i.za = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.yt
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit188

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor9eat_until.exit188: ; preds = %.noexc186, %bb.cb
  %.sroa.5.0.i182 = phi ptr [ %3, %bb.cb ], [ inttoptr (i64 1 to ptr), %.noexc186 ]
  %.sroa.0.0.i183 = phi ptr [ %i.za, %bb.cb ], [ inttoptr (i64 1 to ptr), %.noexc186 ]
  store ptr %.sroa.0.0.i183, ptr %0, align 8, !alias.scope !324
  store ptr %.sroa.5.0.i182, ptr %i.r, align 8, !alias.scope !324
  br label %_RINvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB5_6Cursor9eat_whileNCNvB2_11frontmatters7_0EB5_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc range(i64 0, 513) i64 @_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor12line_comment(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !354, !nonnull !4, !noundef !4 ; 16 uses
  %.not.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !alias.scope !354
  %i.e = load i8, ptr %i.a, align 1, !noalias !355, !noundef !4 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i: ; preds = %bb.b
  %i.g = icmp ne ptr %i.d, %i.c
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !356
  %i.i = icmp samesign ugt i8 %i.e, -33
  br i1 %i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i
  %i.j = icmp ne ptr %i.h, %i.c
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !357
  %i.l = icmp samesign ugt i8 %i.e, -17
  br i1 %i.l, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i
  %i.m = icmp ne ptr %i.k, %i.c
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !358
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit: ; preds = %bb.b, %bb.a, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i
  %i.o = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ], [ %i.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i ], [ %i.k, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i ], [ %i.n, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i ] ; 15 uses
  %.not.i3 = icmp eq ptr %i.o, %i.c
  br i1 %.not.i3, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit
  %i.p = load i8, ptr %i.o, align 1, !noalias !359, !noundef !4 ; 7 uses
  %i.q = icmp sgt i8 %i.p, -1                     ; 2 uses
  br i1 %i.q, label %bb.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.s = and i8 %i.p, 31
  %i.t = zext nneg i8 %i.s to i32                 ; 3 uses
  %i.u = icmp ne ptr %i.r, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i8, ptr %i.r, align 1, !noalias !359, !noundef !4
  %i.w = shl nuw nsw i32 %i.t, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = icmp samesign ugt i8 %i.p, -33
  br i1 %i.aa, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = zext nneg i8 %i.p to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.ad = icmp ne ptr %i.ac, %i.c
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load i8, ptr %i.ac, align 1, !noalias !359, !noundef !4
  %i.af = shl nuw nsw i32 %i.y, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = shl nuw nsw i32 %i.t, 12
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i8 %i.p, -17
  br i1 %i.al, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 3 ; 2 uses
  %i.an = icmp ne ptr %i.am, %i.c
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load i8, ptr %i.am, align 1, !noalias !359, !noundef !4
  %i.ap = shl nuw nsw i32 %i.t, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = shl nuw nsw i32 %i.ai, 6
  %i.as = and i8 %i.ao, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.aq
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4, %bb.d, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7
  %spec.select.i5 = phi i32 [ %i.ab, %bb.d ], [ %i.z, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i4 ], [ %i.av, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i.i7 ], [ %i.ak, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i6 ]
  switch i32 %spec.select.i5, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread [
    i32 33, label %bb.e
    i32 47, label %bb.f
  ]

bb.e:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread

bb.f:                                             ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  br i1 %i.q, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8: ; preds = %bb.f
  %i.ax = icmp ne ptr %i.aw, %i.c
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.az = icmp samesign ugt i8 %i.p, -33
  br i1 %i.az, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11, label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8
  %i.ba = icmp ne ptr %i.ay, %i.c
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ugt i8 %i.p, -17
  %spec.select3.v.i = select i1 %i.bb, i64 4, i64 3
  %spec.select3.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select3.v.i
  br label %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i

_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8, %bb.f
  %.sroa.0.0.i = phi ptr [ %spec.select3.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i.i11 ], [ %i.ay, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i.i8 ], [ %i.aw, %bb.f ] ; 5 uses
  %.not.i9 = icmp eq ptr %.sroa.0.0.i, %i.c
  br i1 %.not.i9, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i
  %i.bc = load i8, ptr %.sroa.0.0.i, align 1, !noalias !360, !noundef !4 ; 5 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i: ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
  %i.bf = and i8 %i.bc, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = icmp ne ptr %i.be, %i.c
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.be, align 1, !noalias !360, !noundef !4
  %i.bj = shl nuw nsw i32 %i.bg, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %i.bn = icmp samesign ugt i8 %i.bc, -33
  br i1 %i.bn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

bb.h:                                             ; preds = %bb.g
  %i.bo = zext nneg i8 %i.bc to i32
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2 ; 2 uses
  %i.bq = icmp ne ptr %i.bp, %i.c
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i8, ptr %i.bp, align 1, !noalias !360, !noundef !4
  %i.bs = shl nuw nsw i32 %i.bl, 6
  %i.bt = and i8 %i.br, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bg, 12
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = icmp samesign ugt i8 %i.bc, -17
  br i1 %i.by, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i, label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3 ; 2 uses
  %i.ca = icmp ne ptr %i.bz, %i.c
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i8, ptr %i.bz, align 1, !noalias !360, !noundef !4
  %i.cc = shl nuw nsw i32 %i.bg, 18
  %i.cd = and i32 %i.cc, 1835008
  %i.ce = shl nuw nsw i32 %i.bv, 6
  %i.cf = and i8 %i.cb, 63
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = or disjoint i32 %i.ch, %i.cd
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i, %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i
  %spec.select.i10 = phi i32 [ %i.bo, %bb.h ], [ %i.bm, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit12.i4.i ], [ %i.ci, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit16.i8.i ], [ %i.bx, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsezrqMfYJdg3_17ra_ap_rustc_lexer.exit14.i7.i ]
  %spec.select.i10.fr = freeze i32 %spec.select.i10
  %i.cj = icmp eq i32 %spec.select.i10.fr, 47
  %spec.select = select i1 %i.cj, i64 512, i64 0
  br label %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread

_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit.thread: ; preds = %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit, %bb.e
  %.sroa.01.0 = phi i64 [ 512, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor5first.exit ], [ 256, %bb.e ], [ 512, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor4bump.exit ], [ 0, %_RINvNtNtCshzWfHUSfYae_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsezrqMfYJdg3_17ra_ap_rustc_lexer.exit.i ], [ %spec.select, %_RNvMs_CsezrqMfYJdg3_17ra_ap_rustc_lexerNtB4_6Cursor6second.exit ]
end_hunk_1
