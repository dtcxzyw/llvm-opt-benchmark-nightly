Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-7802f6f634288680.proc_macro2.fa47854b249c73b4-cgu.3?download=true
inline.NumInlined: 206
inline.NumDeleted: 103
begin_hunk_0_@_RNvXsC_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp:bb.a

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsE_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !489 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXst_NtCsluekWoTk8SK_11proc_macro23impNtB5_5IdentNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsF_CsluekWoTk8SK_11proc_macro2NtB5_5IdentNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !490 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsu_NtCsluekWoTk8SK_11proc_macro23impNtB5_5IdentNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsH_CsluekWoTk8SK_11proc_macro2NtB5_7LiteralNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !guid !491 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsv_NtCsluekWoTk8SK_11proc_macro23impNtB5_7Literal16from_str_checked(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %i.b, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsI_CsluekWoTk8SK_11proc_macro2NtB5_7LiteralNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !492 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsy_NtCsluekWoTk8SK_11proc_macro23impNtB5_7LiteralNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsJ_CsluekWoTk8SK_11proc_macro2NtB5_7LiteralNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !493 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsx_NtCsluekWoTk8SK_11proc_macro23impNtB5_7LiteralNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !494 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 !guid !499 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !500, !noundef !7 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !10, !alias.scope !501, !noundef !7
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i)
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !500, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1, !noalias !500
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1, !noalias !500
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1, !noalias !500
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !500
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !500
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !500
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !500
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !500
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !500
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !500
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !500
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 !guid !508 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !511, !noundef !7 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !511, !noundef !7
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.thread.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i.i, !prof !19

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !512, !noundef !7 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !512, !nonnull !7, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !512
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsluekWoTk8SK_11proc_macro2.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !512
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_CsluekWoTk8SK_11proc_macro2NtB4_11TokenStreamNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 !guid !513 {
bb.a:
  tail call void @_RNvMs_NtCsluekWoTk8SK_11proc_macro23impNtB4_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !529 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.e = load i64, ptr %i.b, align 8, !noundef !7 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !531
  %i.f = mul nuw nsw i64 %i.e, 20                 ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !531
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8, !noalias !531
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsiwvLk4GMN8X_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsluekWoTk8SK_11proc_macro2.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !532
  %i.j = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, -9223372036854775807) 4) #25, !noalias !532 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.f) #27, !noalias !531
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.b
  store i64 %i.e, ptr %i.a, align 8, !noalias !531
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !531
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.013.048.i = phi ptr [ %i.n, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ %i.d, %.lr.ph.preheader.i ] ; 13 uses
  %.sroa.7.046.i = phi i64 [ %i.o, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.045.i = phi i64 [ %2, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ %i.e, %.lr.ph.preheader.i ]
  %2 = add nsw i64 %.sroa.10.045.i, -1            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 20
  %i.o = add nuw nsw i64 %.sroa.7.046.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 16
  %i.q = load i8, ptr %i.p, align 4, !range !9, !alias.scope !533, !noundef !7 ; 3 uses
  %i.r = icmp samesign ugt i8 %i.q, 3
  %i.s = zext nneg i8 %i.q to i64
  %i.t = add nsw i64 %i.s, -3
  %i.u = select i1 %i.r, i64 %i.t, i64 0
  switch i64 %i.u, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !534, !noundef !7
  %.not.i.i12.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i12.i, label %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v)
          to label %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i unwind label %bb.l, !noalias !535

_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i: ; preds = %bb.g, %bb.f
  %storemerge.i.i.i = phi i32 [ 0, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.y, align 4, !range !21, !alias.scope !536, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.z, align 4, !range !21, !alias.scope !536, !noundef !7 ; 2 uses
  %.sroa.1017.sroa.0.0.extract.trunc18.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1017.sroa.6.0.extract.shift19.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 8
  %i.ab = load i8, ptr %i.aa, align 4, !range !16, !alias.scope !537, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %.val.i.i.i = load i32, ptr %i.ac, align 4, !range !21, !alias.scope !537, !noundef !7
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %i.ae = load i16, ptr %i.ad, align 4, !alias.scope !533
  %.sroa.014.sroa.7.0.extract.trunc.i = zext i16 %i.ae to i32
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !range !22, !alias.scope !538, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 13
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !538
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !538, !noundef !7 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.048.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.al, align 4, !range !21, !alias.scope !538, !noundef !7
  %.sroa.1017.sroa.0.0.extract.trunc.i = trunc i32 %i.ak to i8
  %.sroa.1017.sroa.6.0.extract.shift.i = and i32 %i.ak, -256
  br label %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i
  %.sroa.014.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ %.val.i.i.i, %bb.h ], [ %.sroa.014.sroa.7.0.extract.trunc.i, %bb.i ], [ %.val.i3.i.i, %bb.j ]
  %.sroa.1017.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1017.sroa.6.0.extract.shift19.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.sroa.1017.sroa.6.0.extract.shift.i, %bb.j ]
  %.sroa.1017.sroa.0.0.i = phi i8 [ %.sroa.1017.sroa.0.0.extract.trunc18.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ %i.ab, %bb.h ], [ undef, %bb.i ], [ %.sroa.1017.sroa.0.0.extract.trunc.i, %bb.j ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ai, %bb.j ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.ag, %bb.j ]
  %.sink.i.i = phi i8 [ %i.q, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ]
  %.sroa.014.sroa.0.0.i = load i32, ptr %.sroa.013.048.i, align 4, !range !21, !alias.scope !533, !noundef !7
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %.sroa.7.046.i ; 4 uses
  %.sroa.014.sroa.7.0.insert.ext.i = zext i32 %.sroa.014.sroa.7.0.i to i64
  %.sroa.014.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.014.sroa.7.0.insert.ext.i, 32
  %.sroa.014.sroa.0.0.insert.ext.i = zext i32 %.sroa.014.sroa.0.0.i to i64
  %.sroa.014.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.014.sroa.7.0.insert.shift.i, %.sroa.014.sroa.0.0.insert.ext.i
  %.sroa.1017.sroa.0.0.insert.ext.i = zext i8 %.sroa.1017.sroa.0.0.i to i32
  %.sroa.1017.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1017.sroa.6.sroa.0.0.i, %.sroa.1017.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.014.sroa.0.0.insert.insert.i, ptr %i.am, align 4, !noalias !535
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.1017.sroa.0.0.insert.insert.i, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !535
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.532.0..sroa_idx.i, align 4, !noalias !535
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i8 %.sink.i.i, ptr %.sroa.633.0..sroa_idx.i, align 4, !noalias !535
  %i.an = icmp eq i64 %2, 0
  br i1 %i.an, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsiwvLk4GMN8X_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsluekWoTk8SK_11proc_macro2.exit, label %bb.d

bb.k:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !535
  unreachable

bb.l:                                             ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.046.i, ptr %i.m, align 8, !noalias !531
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsiwvLk4GMN8X_10proc_macro9TokenTreeEECsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %bb.m unwind label %bb.k, !noalias !535

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsiwvLk4GMN8X_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsluekWoTk8SK_11proc_macro2.exit: ; preds = %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i
  %3 = phi ptr [ %i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i ], [ %i.m, %_RNvXs1b_CsiwvLk4GMN8X_10proc_macroNtB6_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ]
  store i64 %i.e, ptr %3, align 8, !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !531
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBH_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !558 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.f = load i64, ptr %i.c, align 8, !noundef !7 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !560
  %i.g = shl nuw nsw i64 %i.f, 5                  ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i, label %bb.b

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !noalias !560
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !560
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsluekWoTk8SK_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !561
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !561 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #27, !noalias !560
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.f, ptr %i.b, align 8, !noalias !560
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !560
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.d

bb.d:                                             ; preds = %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.015.075.i = phi ptr [ %i.e, %.lr.ph.i ], [ %3, %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ] ; 21 uses
  %.sroa.7.072.i = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.071.i = phi i64 [ %i.f, %.lr.ph.i ], [ %2, %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ]
  %2 = add nsw i64 %.sroa.10.071.i, -1            ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 32
  %i.o = add nuw nsw i64 %.sroa.7.072.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %4 = load i32, ptr %.sroa.015.075.i, align 8, !range !11, !alias.scope !563, !noundef !7 ; 2 uses
  switch i32 %4, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.q = load i32, ptr %i.p, align 8, !range !13, !alias.scope !565, !noundef !7
  %i.r = trunc nuw i32 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 24
  %i.u = load i8, ptr %i.t, align 8, !range !566, !alias.scope !565, !noundef !7
  %i.v = load ptr, ptr %i.s, align 8, !alias.scope !565, !nonnull !7, !noundef !7 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noalias !567, !noundef !7 ; 2 uses
  %i.x = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %i.v, align 8, !noalias !567
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.i, label %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i, !prof !19

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 28
  %i.ac = load i8, ptr %i.ab, align 4, !range !566, !alias.scope !568, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !568, !noundef !7
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = invoke noundef i32 @_RNvXsa_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad)
          to label %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i unwind label %bb.t, !noalias !569

_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.aa, align 4, !range !21, !alias.scope !570, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !570
  %i.ah = inttoptr i64 %.val1.i.i.i.i.i to ptr
  %.sroa.846.sroa.0.0.extract.trunc.i.i = trunc i32 %storemerge.i.i.i.i to i8
  %i.ai = and i32 %storemerge.i.i.i.i, -256
  br label %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i, %bb.f
  %.sroa.444.0.i.i = phi i32 [ %.val2.i.i.i.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i ], [ undef, %bb.f ] ; 2 uses
  %.sroa.10.0.i12.i = phi i8 [ %i.ac, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i ], [ undef, %bb.f ]
  %.sroa.846.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.extract.trunc.i.i, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i ], [ %i.u, %bb.f ]
  %.sroa.846.sroa.5.sroa.0.0.i.i = phi i32 [ %i.ai, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i ], [ 0, %bb.f ]
  %.sroa.545.0.i.i = phi ptr [ %i.ah, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i ], [ %i.v, %bb.f ]
  %storemerge.i.i.i = phi i32 [ 0, %_RNvXsz_NtCsiwvLk4GMN8X_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsluekWoTk8SK_11proc_macro2.exit.i.i.i ], [ 1, %bb.f ]
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i = trunc i32 %.sroa.444.0.i.i to i8
  %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i = lshr i32 %.sroa.444.0.i.i, 8
  %i.aj = ptrtoint ptr %.sroa.545.0.i.i to i64    ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i = trunc i64 %i.aj to i32
  %.sroa.11.sroa.6.0.extract.shift.i = lshr i64 %i.aj, 32
  br label %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 24
  %i.am = load i8, ptr %i.al, align 8, !range !14, !alias.scope !563, !noundef !7 ; 2 uses
  %.not25.i.i = icmp eq i8 %i.am, 2
  br i1 %.not25.i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !range !571, !alias.scope !563, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 12
  %i.aq = load i8, ptr %i.ap, align 4, !range !16, !alias.scope !563, !noundef !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !alias.scope !563, !noundef !7
  br label %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !range !12, !alias.scope !563, !noundef !7
  %.not.i.i = icmp eq i64 %i.au, -1
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.av = invoke { ptr, i64 } @_RNvXsf_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %.noexc13.i unwind label %bb.t, !noalias !569 ; 2 uses

.noexc13.i:                                       ; preds = %bb.m
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  %i.ay = ptrtoint ptr %i.aw to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.val1.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !572
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !range !16, !alias.scope !572, !noundef !7
  %.sroa.09.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.ba to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc13.i
  %.sroa.09.sroa.0.0.i.i = phi i64 [ %i.ay, %.noexc13.i ], [ %.val1.i.i.i, %bb.n ] ; 3 uses
  %.sroa.09.sroa.5.0.i.i = phi i64 [ %i.ax, %.noexc13.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i, %bb.n ] ; 2 uses
  %.sroa.518.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.09.sroa.0.0.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift.i = lshr i64 %.sroa.09.sroa.0.0.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.518.sroa.7.0.extract.shift.i to i8
  %sum.shift64.i = lshr i64 %.sroa.09.sroa.0.0.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i = trunc nuw nsw i64 %sum.shift64.i to i32
  %.sroa.11.sroa.0.0.extract.trunc23.i = trunc i64 %.sroa.09.sroa.5.0.i.i to i32
  %.sroa.11.sroa.6.0.extract.shift24.i = lshr i64 %.sroa.09.sroa.5.0.i.i, 32
  br label %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !573
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %.noexc14.i unwind label %bb.t, !noalias !569

.noexc14.i:                                       ; preds = %bb.p
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !573
  %.sroa.48.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !573
  %.sroa.48.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !573
  %.sroa.48.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !573
  %.sroa.48.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !573
  %.sroa.48.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !573
  %.sroa.48.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !573
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 28
  %i.bd = load i8, ptr %i.bc, align 4, !range !22, !alias.scope !574, !noundef !7
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 29
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !574
  %.val2.i.i.i = load i32, ptr %i.bb, align 8, !range !21, !alias.scope !574, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !alias.scope !574, !noundef !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.015.075.i, i64 20
  %.val.i26.i.i = load i32, ptr %i.bi, align 4, !range !21, !alias.scope !574, !noundef !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc14.i
  %.sroa.53.sroa.9.0.i.i = phi i16 [ undef, %bb.q ], [ %.sroa.48.sroa.8.0.copyload.i.i, %.noexc14.i ]
  %.sroa.53.sroa.8.0.i.i = phi i8 [ %i.bf, %bb.q ], [ %.sroa.48.sroa.7.0.copyload.i.i, %.noexc14.i ]
  %.sroa.53.sroa.7.0.i.i = phi i8 [ %i.bd, %bb.q ], [ %.sroa.48.sroa.6.0.copyload.i.i, %.noexc14.i ]
  %.sroa.53.sroa.6.0.i.i = phi i32 [ %i.bh, %bb.q ], [ %.sroa.48.sroa.5.0.copyload.i.i, %.noexc14.i ] ; 2 uses
  %.sroa.53.sroa.5.0.i.i = phi i32 [ %.val.i26.i.i, %bb.q ], [ %.sroa.48.sroa.4.0.copyload.i.i, %.noexc14.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ %.val2.i.i.i, %bb.q ], [ %.sroa.48.sroa.0.0.copyload.i.i, %.noexc14.i ]
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.q ], [ %.sroa.07.0.copyload.i.i, %.noexc14.i ] ; 3 uses
  %.sroa.518.sroa.0.0.extract.trunc26.i = trunc i64 %.sroa.01.0.i.i to i32
  %.sroa.518.sroa.7.0.extract.shift27.i = lshr i64 %.sroa.01.0.i.i, 32
  %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i = trunc i64 %.sroa.518.sroa.7.0.extract.shift27.i to i8
  %sum.shift.i = lshr i64 %.sroa.01.0.i.i, 40
  %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i = trunc nuw nsw i64 %sum.shift.i to i32
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.53.sroa.6.0.i.i to i8
  %.sroa.15.sroa.6.0.extract.shift.i = and i32 %.sroa.53.sroa.6.0.i.i, -256
  %i.bj = zext i32 %.sroa.53.sroa.5.0.i.i to i64
  br label %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %bb.r, %bb.o, %bb.k, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i
  %.sroa.518.sroa.7.sroa.7.sroa.0.0.i = phi i32 [ %.sroa.518.sroa.7.sroa.7.0.extract.shift33.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc.i, %bb.o ], [ 0, %bb.k ], [ %.sroa.518.sroa.7.sroa.7.0.extract.trunc32.i, %bb.r ]
  %.sroa.518.sroa.7.sroa.0.0.i = phi i8 [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc30.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc.i, %bb.o ], [ %i.aq, %bb.k ], [ %.sroa.518.sroa.7.sroa.0.0.extract.trunc29.i, %bb.r ]
  %.sroa.518.sroa.0.0.i = phi i32 [ %storemerge.i.i.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.518.sroa.0.0.extract.trunc.i, %bb.o ], [ %i.as, %bb.k ], [ %.sroa.518.sroa.0.0.extract.trunc26.i, %bb.r ]
  %.sroa.11.sroa.6.0.i = phi i64 [ %.sroa.11.sroa.6.0.extract.shift.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.6.0.extract.shift24.i, %bb.o ], [ 0, %bb.k ], [ %i.bj, %bb.r ]
  %.sroa.11.sroa.0.0.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc23.i, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.0.0.i.i, %bb.r ]
  %.sroa.15.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.k ], [ %.sroa.15.sroa.6.0.extract.shift.i, %bb.r ]
  %.sroa.15.sroa.0.0.i = phi i8 [ %.sroa.846.sroa.0.0.i.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ %i.am, %bb.o ], [ undef, %bb.k ], [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.r ]
  %.sroa.21.0.i = phi i16 [ undef, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.9.0.i.i, %bb.r ]
  %.sroa.20.0.i = phi i8 [ undef, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.8.0.i.i, %bb.r ]
  %.sroa.18.0.i = phi i8 [ %.sroa.10.0.i12.i, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.7.0.i.i, %bb.r ]
  %.sroa.417.0.i = phi i32 [ undef, %_RNvXsF_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ %i.ao, %bb.k ], [ undef, %bb.r ]
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.sroa.7.072.i ; 8 uses
  %.sroa.518.sroa.7.sroa.7.0.insert.ext.i = shl nuw i32 %.sroa.518.sroa.7.sroa.7.sroa.0.0.i, 8
  %.sroa.518.sroa.7.sroa.0.0.insert.ext.i = zext i8 %.sroa.518.sroa.7.sroa.0.0.i to i32
  %.sroa.518.sroa.7.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.518.sroa.7.sroa.7.0.insert.ext.i, %.sroa.518.sroa.7.sroa.0.0.insert.ext.i
  %.sroa.518.sroa.7.0.insert.ext.i = zext i32 %.sroa.518.sroa.7.sroa.0.0.insert.insert.i to i64
  %.sroa.518.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.518.sroa.7.0.insert.ext.i, 32
  %.sroa.518.sroa.0.0.insert.ext.i = zext i32 %.sroa.518.sroa.0.0.i to i64
  %.sroa.518.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.518.sroa.7.0.insert.shift.i, %.sroa.518.sroa.0.0.insert.ext.i
  %.sroa.11.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.11.sroa.6.0.i, 32
  %.sroa.11.sroa.0.0.insert.ext.i = zext i32 %.sroa.11.sroa.0.0.i to i64
  %.sroa.11.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.11.sroa.6.0.insert.shift.i, %.sroa.11.sroa.0.0.insert.ext.i
  %.sroa.15.sroa.0.0.insert.ext.i = zext i8 %.sroa.15.sroa.0.0.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i = or i32 %.sroa.15.sroa.6.sroa.0.0.i, %.sroa.15.sroa.0.0.insert.ext.i
  store i32 %4, ptr %i.bk, align 8, !noalias !569
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.sroa.417.0.i, ptr %.sroa.449.0..sroa_idx.i, align 4, !noalias !569
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %.sroa.518.sroa.0.0.insert.insert.i, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !569
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i, ptr %.sroa.651.0..sroa_idx.i, align 8, !noalias !569
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.752.0..sroa_idx.i, align 8, !noalias !569
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store i8 %.sroa.18.0.i, ptr %.sroa.853.0..sroa_idx.i, align 4, !noalias !569
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 29
  store i8 %.sroa.20.0.i, ptr %.sroa.954.0..sroa_idx.i, align 1, !noalias !569
  %.sroa.1055.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 30
  store i16 %.sroa.21.0.i, ptr %.sroa.1055.0..sroa_idx.i, align 2, !noalias !569
  %i.bl = icmp eq i64 %2, 0
  br i1 %i.bl, label %_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsluekWoTk8SK_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit, label %bb.d

bb.s:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !569
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.072.i, ptr %i.n, align 8, !noalias !560
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCsluekWoTk8SK_11proc_macro29TokenTreeEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.u unwind label %bb.s, !noalias !569

bb.u:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtCsluekWoTk8SK_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBM_.exit: ; preds = %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i
  %5 = phi ptr [ %i.j, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsluekWoTk8SK_11proc_macro2.exit.thread.i ], [ %i.n, %_RNvXsO_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ]
  store i64 %i.f, ptr %5, align 8, !noalias !560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !560
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_CsluekWoTk8SK_11proc_macro2NtB5_11TokenStreamNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !575 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtCsluekWoTk8SK_11proc_macro23impNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_CsluekWoTk8SK_11proc_macro2NtB5_11TokenStreamNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !576 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs9_NtCsluekWoTk8SK_11proc_macro23impNtB5_11TokenStreamNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsf_CsluekWoTk8SK_11proc_macro2NtB5_8LexErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !577 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsd_NtCsluekWoTk8SK_11proc_macro23impNtB5_8LexErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsg_CsluekWoTk8SK_11proc_macro2NtB5_8LexErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !578 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXse_NtCsluekWoTk8SK_11proc_macro23impNtB5_8LexErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsj_CsluekWoTk8SK_11proc_macro2NtB5_4SpanNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !579 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsk_NtCsluekWoTk8SK_11proc_macro23impNtB5_4SpanNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsp_CsluekWoTk8SK_11proc_macro2NtB5_9TokenTreeNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !580 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !11, !noundef !7
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef zeroext i1 @_RNvXsn_NtCsluekWoTk8SK_11proc_macro23impNtB5_5GroupNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noundef zeroext i1 @_RNvXst_NtCsluekWoTk8SK_11proc_macro23impNtB5_5IdentNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = tail call noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef zeroext i1 @_RNvXsx_NtCsluekWoTk8SK_11proc_macro23impNtB5_7LiteralNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBI_6client11TokenStreamNtB1t_4SpanNtNtBI_6symbol6SymbolEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !595 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !9, !alias.scope !596, !noundef !7
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !597, !noundef !7
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i unwind label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !9, !alias.scope !598, !noundef !7
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !599, !noundef !7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCsiwvLk4GMN8X_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsiwvLk4GMN8X_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECsluekWoTk8SK_11proc_macro2.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBK_9TokenTreeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !600 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBH_9TokenTreeEEBH_.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBH_9TokenTreeEEBH_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit.i unwind label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i: ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCsluekWoTk8SK_11proc_macro29TokenTreeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i unwind label %bb.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i._crit_edge: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsluekWoTk8SK_11proc_macro25rcvec13RcVecIntoIterNtBG_9TokenTreeEEBG_.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable
end_hunk_0
