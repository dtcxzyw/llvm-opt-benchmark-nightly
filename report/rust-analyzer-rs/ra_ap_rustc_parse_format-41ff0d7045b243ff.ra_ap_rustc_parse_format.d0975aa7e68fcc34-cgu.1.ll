Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_parse_format-41ff0d7045b243ff.ra_ap_rustc_parse_format.d0975aa7e68fcc34-cgu.1?download=true
inline.NumInlined: 129
inline.NumDeleted: 75
begin_hunk_0_@_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshUkdWg1oz5w_24ra_ap_rustc_parse_format:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.j = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.l, align 8
  br label %bb.f

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality !guid !129 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB19_4iter8adapters3map3MapINtNtB2n_3zip3ZipNtNtNtB19_3str4iter11CharIndicesINtNtB4_9into_iter8IntoIterTB12_cEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB4m_6Parser3news4_0EE9from_iterB4m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !202 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !207, !nonnull !6, !noundef !6 ; 10 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !207, !nonnull !6, !noundef !6 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.f = icmp eq ptr %i.d, %i.c
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !209
  %i.h = load i8, ptr %i.d, align 1, !noalias !210, !noundef !6 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.c
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 4 uses
  store ptr %i.m, ptr %1, align 8, !alias.scope !211
  %i.n = load i8, ptr %i.g, align 1, !noalias !210, !noundef !6
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i
  %i.u = icmp ne ptr %i.m, %i.c
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !212
  %i.w = load i8, ptr %i.m, align 1, !noalias !210, !noundef !6
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i
  %i.ae = icmp ne ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.af, ptr %1, align 8, !alias.scope !213
  %i.ag = load i8, ptr %i.v, align 1, !noalias !210, !noundef !6
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i
  %.val.i.i.i = phi ptr [ %i.v, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !214, !noundef !6 ; 2 uses
  %i.ar = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.as = sub i64 %i.ar, %i.e
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.ap, align 8, !alias.scope !214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !216, !nonnull !6, !noundef !6 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !216, !nonnull !6, !noundef !6 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, %i.av
  br i1 %i.ay, label %bb.e, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 3 uses
  store ptr %i.az, ptr %i.aw, align 8, !alias.scope !216
  %.sroa.5.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.5.0.copyload8.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx7.i.i.i, align 8, !noalias !217
  %.not6.i.i.i = icmp eq i32 %.sroa.5.0.copyload8.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.a, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i, %bb.d
  store i64 0, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val6 = load i64, ptr %i.bc, align 8, !alias.scope !218, !noundef !6 ; 2 uses
  %i.bd = icmp eq i64 %.val6, 0
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bf = mul nuw i64 %.val6, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !219
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipNtNtNtB4_3str4iter11CharIndicesINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtNtB4_3ops5range5RangejEcEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB3n_6Parser3news4_0EEB3n_.exit: ; preds = %bb.f, %bb.e, %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapINtNtB24_3zip3ZipNtNtNtBZ_3str4iter11CharIndicesINtNtB4_9into_iter8IntoIterTBS_cEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB40_6Parser3news4_0EE11spec_extendB40_.exit
  ret void

bb.g:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i
  %i.bg = load <2 x i64>, ptr %i.ax, align 8, !noalias !220
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load ptr, ptr %i.bh, align 8, !alias.scope !203, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.bi = load i64, ptr %.val.i, align 8, !noalias !221, !noundef !6
  %i.bj = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bk = shufflevector <2 x i64> %i.bj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bl = add <2 x i64> %i.bk, %i.bg
  %i.bm = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.bn = sub nuw i64 %i.bm, %i.ar                ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = and i64 %i.bn, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.bp, 0
  %i.bq = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.bo, %i.bq
  %i.br = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.az to i64
  %i.bt = sub nuw i64 %i.br, %i.bs
  %i.bu = udiv exact i64 %i.bt, 24
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %.sroa.0.0.i.i.i.i.i) ; 2 uses
  %i.bv = tail call i64 @llvm.umax.i64(i64 %..i.i.i.i, i64 3) ; 2 uses
  %..i = add nuw nsw i64 %i.bv, 1                 ; 2 uses
  %i.bw = shl i64 %..i, 5                         ; 4 uses
  %i.bx = icmp samesign ugt i64 %..i.i.i.i, 576460752303423486
  %.not.i.i = icmp ugt i64 %i.bw, 9223372036854775800
  %or.cond.i.i = or i1 %i.bx, %.not.i.i
  br i1 %or.cond.i.i, label %bb.k, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !222
  %i.bz = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bw, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !222 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = ptrtoint ptr %i.bz to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bw) #18
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.h
  %.sroa.10.0.i = phi i64 [ %i.cb, %bb.j ], [ 8, %bb.h ]
  %.sroa.4.0.i = phi i64 [ %..i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.cc = inttoptr i64 %.sroa.10.0.i to ptr       ; 5 uses
  %i.cd = icmp samesign ult i64 %i.bv, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.cd)
  store <2 x i64> %i.bl, ptr %i.cc, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.aq, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %.sroa.4.0.i.ph.i.i.i.i, ptr %.sroa.623.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.628.0.copyload = load ptr, ptr %.sroa.628.0..sroa_idx, align 8 ; 4 uses
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.929.0.copyload = load i64, ptr %.sroa.929.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.ce = icmp eq ptr %.val.i.i.i, %i.c
  br i1 %i.ce, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i
  %i.cf = phi ptr [ %i.ej, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i ], [ %i.cc, %bb.l ]
  %i.cg = phi i64 [ %i.el, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i ], [ 1, %bb.l ] ; 5 uses
  %i.ch = phi ptr [ %i.dy, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i ], [ %i.az, %bb.l ] ; 4 uses
  %i.ci = phi i64 [ %i.dw, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i ], [ %i.at, %bb.l ] ; 2 uses
  %.val.i.i.i2425.i.i = phi ptr [ %i.ds, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i ], [ %.val.i.i.i, %bb.l ] ; 6 uses
  %i.cj = ptrtoint ptr %.val.i.i.i2425.i.i to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i2425.i.i, i64 1 ; 3 uses
  %i.cl = load i8, ptr %.val.i.i.i2425.i.i, align 1, !noalias !225, !noundef !6 ; 5 uses
  %i.cm = icmp sgt i8 %i.cl, -1
  br i1 %i.cm, label %bb.m, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.cn = and i8 %i.cl, 31
  %i.co = zext nneg i8 %i.cn to i32               ; 3 uses
  %i.cp = icmp ne ptr %i.ck, %i.c
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i2425.i.i, i64 2 ; 3 uses
  %i.cr = load i8, ptr %i.ck, align 1, !noalias !225, !noundef !6
  %i.cs = shl nuw nsw i32 %i.co, 6
  %i.ct = and i8 %i.cr, 63
  %i.cu = zext nneg i8 %i.ct to i32               ; 2 uses
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = icmp samesign ugt i8 %i.cl, -33
  br i1 %i.cw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cx = zext nneg i8 %i.cl to i32
  br label %bb.n

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i.i.i
  %i.cy = icmp ne ptr %i.cq, %i.c
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.i2425.i.i, i64 3 ; 3 uses
  %i.da = load i8, ptr %i.cq, align 1, !noalias !225, !noundef !6
  %i.db = shl nuw nsw i32 %i.cu, 6
  %i.dc = and i8 %i.da, 63
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = or disjoint i32 %i.db, %i.dd            ; 2 uses
  %i.df = shl nuw nsw i32 %i.co, 12
  %i.dg = or disjoint i32 %i.de, %i.df
  %i.dh = icmp samesign ugt i8 %i.cl, -17
  br i1 %i.dh, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i.i.i, label %bb.n

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i.i.i
  %i.di = icmp ne ptr %i.cz, %i.c
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i2425.i.i, i64 4
  %i.dk = load i8, ptr %i.cz, align 1, !noalias !225, !noundef !6
  %i.dl = shl nuw nsw i32 %i.co, 18
  %i.dm = and i32 %i.dl, 1835008
  %i.dn = shl nuw nsw i32 %i.de, 6
  %i.do = and i8 %i.dk, 63
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dn, %i.dp
  %i.dr = or disjoint i32 %i.dq, %i.dm
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i.i.i, %bb.m, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i.i.i
  %i.ds = phi ptr [ %i.cz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i.i.i ], [ %i.dj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i.i.i ], [ %i.cq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i.i.i ], [ %i.ck, %bb.m ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.dg, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit14.i.i.i.i.i.i.i ], [ %i.dr, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit16.i.i.i.i.i.i.i ], [ %i.cv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit12.i.i.i.i.i.i.i ], [ %i.cx, %bb.m ] ; 2 uses
  %i.dt = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dv = sub i64 %i.ci, %i.cj
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = icmp eq ptr %i.ch, %i.av
  br i1 %i.dx, label %._crit_edge.i.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i.i.i: ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %.sroa.5.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.5.0.copyload8.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx7.i.i.i.i.i, align 8, !noalias !226
  %.not6.i.i.i.i.i = icmp eq i32 %.sroa.5.0.copyload8.i.i.i.i.i, -1
  br i1 %.not6.i.i.i.i.i, label %._crit_edge.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i.i.i
  %i.dz = load <2 x i64>, ptr %i.ch, align 8, !noalias !227
  %i.ea = load i64, ptr %.val.i, align 8, !noalias !228, !noundef !6
  %i.eb = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %i.ec = shufflevector <2 x i64> %i.eb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ed = add <2 x i64> %i.ec, %i.dz
  %i.ee = icmp samesign ult i64 %i.cg, 288230376151711744
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = load i64, ptr %i.a, align 8, !range !5, !alias.scope !229, !noundef !6
  %i.eg = icmp eq i64 %i.cg, %i.ef
  br i1 %i.eg, label %bb.s, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEcEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i.i.i.i, %bb.n, %bb.l
  %i.eh = icmp eq i64 %.sroa.929.0.copyload, 0
  br i1 %i.eh, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapINtNtB24_3zip3ZipNtNtNtBZ_3str4iter11CharIndicesINtNtB4_9into_iter8IntoIterTBS_cEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB40_6Parser3news4_0EE11spec_extendB40_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.628.0.copyload) ]
  %i.ei = mul nuw i64 %.sroa.929.0.copyload, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.628.0.copyload, i64 noundef %i.ei, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !230
  br label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEEINtB2_10SpecExtendBR_INtNtNtNtBZ_4iter8adapters3map3MapINtNtB24_3zip3ZipNtNtNtBZ_3str4iter11CharIndicesINtNtB4_9into_iter8IntoIterTBS_cEEENCNvMs1_CshUkdWg1oz5w_24ra_ap_rustc_parse_formatNtB40_6Parser3news4_0EE11spec_extendB40_.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i: ; preds = %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i_crit_edge, %bb.o
  %i.ej = phi ptr [ %.pre, %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i_crit_edge ], [ %i.cf, %bb.o ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.cg ; 3 uses
  store <2 x i64> %i.ed, ptr %i.ek, align 8, !noalias !231
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %i.ci, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, ptr %.sroa.617.0..sroa_idx.i.i, align 8, !noalias !231
  %i.el = add nuw nsw i64 %i.cg, 1                ; 2 uses
  store i64 %i.el, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !229
  %i.em = icmp eq ptr %i.ds, %i.c
  br i1 %i.em, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.s
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = icmp eq i64 %.sroa.929.0.copyload, 0
  br i1 %i.eo, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.628.0.copyload) ]
  %i.ep = mul nuw i64 %.sroa.929.0.copyload, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.628.0.copyload, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !232
  br label %.body

bb.s:                                             ; preds = %bb.o
  %i.eq = ptrtoint ptr %i.dy to i64
  %i.er = sub nuw i64 %i.br, %i.eq
  %i.es = udiv exact i64 %i.er, 24
  %i.et = sub nuw i64 %i.bm, %i.du                ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = and i64 %i.et, 3
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ev, 0
  %i.ew = zext i1 %.not.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.eu, %i.ew
  %..i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.es, i64 %.sroa.0.0.i.i.i.i.i.i.i)
  %i.ex = add nuw nsw i64 %..i.i.i.i.i.i, 1
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshUkdWg1oz5w_24ra_ap_rustc_parse_format(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.cg, i64 noundef range(i64 1, 0) %i.ex)
          to label %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i_crit_edge unwind label %bb.q

._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !229
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecTINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEjcEE7reserveCshUkdWg1oz5w_24ra_ap_rustc_parse_format.exit.i.i

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
end_hunk_0
