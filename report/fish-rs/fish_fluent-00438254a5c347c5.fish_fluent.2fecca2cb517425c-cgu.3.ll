Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_fluent-00438254a5c347c5.fish_fluent.2fecca2cb517425c-cgu.3?download=true
inline.NumInlined: 223
inline.NumDeleted: 128
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs2_NtCs3zOvCg6Ax1K_13fluent_bundle5typesNtB6_11FluentValue5writeNtNtCs1xwejQucwHj_5alloc6string6StringNtNtB8_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerECs476pBYQK2Ku_11fish_fluent:bb.a
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !113, !noundef !4 ; 5 uses
  %i.ap = load i64, ptr %1, align 8, !range !8, !alias.scope !113, !noundef !4
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = icmp ugt i64 %i.am, %i.aq
  br i1 %i.ar, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i16, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i13, !prof !10

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i16: ; preds = %bb.l
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ao, i64 noundef %i.am, i64 noundef 1, i64 noundef 1)
          to label %.noexc17 unwind label %bb.r

.noexc17:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i16
  %i.as = load i64, ptr %i.an, align 8, !alias.scope !114, !noundef !4 ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  br label %bb.m

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i13: ; preds = %bb.l
  %i.au = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.au)
  %.not.i.i.i14 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i14, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i13, %.noexc17
  %i.av = phi i64 [ %i.as, %.noexc17 ], [ %i.ao, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i13 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !114, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %i.ak, i64 %i.am, i1 false)
  %.pre.i.i.i15 = load i64, ptr %i.an, align 8, !alias.scope !114
  br label %bb.t

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !align !5, !noundef !4
  call void @_RNvXs_NtCs3zOvCg6Ax1K_13fluent_bundle10concurrentNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerNtNtB6_8memoizer12MemoizerKind15stringify_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.az, ptr noundef nonnull %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = load i64, ptr %i.bg, align 8            ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !115, !noundef !4 ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !range !8, !alias.scope !115, !noundef !4
  %i.bl = sub i64 %i.bk, %i.bj
  %i.bm = icmp ugt i64 %i.bh, %i.bl
  br i1 %i.bm, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i22, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i19, !prof !10

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i22: ; preds = %bb.n
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bj, i64 noundef %i.bh, i64 noundef 1, i64 noundef 1)
          to label %.noexc23 unwind label %bb.v

.noexc23:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i22
  %i.bn = load i64, ptr %i.bi, align 8, !alias.scope !116, !noundef !4 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  br label %bb.o

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i19: ; preds = %bb.n
  %i.bp = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bp)
  %.not.i.i.i20 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i20, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i19, %.noexc23
  %i.bq = phi i64 [ %i.bn, %.noexc23 ], [ %i.bj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i19 ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !116, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.bf, i64 %i.bh, i1 false)
  %.pre.i.i.i21 = load i64, ptr %i.bi, align 8, !alias.scope !116
  br label %bb.x

bb.p:                                             ; preds = %bb.c
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !4, !noundef !4
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !4 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !117, !noundef !4 ; 5 uses
  %i.bw = load i64, ptr %1, align 8, !range !8, !alias.scope !117, !noundef !4
  %i.bx = sub i64 %i.bw, %i.bv
  %i.by = icmp ugt i64 %.sroa.3.0, %i.bx
  br i1 %i.by, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i28, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i25, !prof !10

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i28: ; preds = %bb.p
  call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bv, i64 noundef %.sroa.3.0, i64 noundef 1, i64 noundef 1), !noalias !118
  %i.bz = load i64, ptr %i.bu, align 8, !alias.scope !119, !noundef !4 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  br label %bb.q

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i25: ; preds = %bb.p
  %i.cb = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.cb)
  %.not.i.i.i26 = icmp eq i64 %.sroa.3.0, 0
  br i1 %.not.i.i.i26, label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit29, label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i25, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i28
  %i.cc = phi i64 [ %i.bz, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i28 ], [ %i.bv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i25 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !119, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %.sroa.01.0, i64 %.sroa.3.0, i1 false)
  %.pre.i.i.i27 = load i64, ptr %i.bu, align 8, !alias.scope !119
  br label %_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit29

_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit29: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i25, %bb.q
  %i.cg = phi i64 [ %.pre.i.i.i27, %bb.q ], [ %i.bv, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i25 ]
  %i.ch = add i64 %i.cg, %.sroa.3.0
  store i64 %i.ch, ptr %i.bu, align 8, !alias.scope !119
  br label %bb.i

bb.r:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i16
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load i64, ptr %i.b, align 8, !range !7, !alias.scope !120, !noundef !4
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.j

bb.t:                                             ; preds = %bb.m, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i13
  %i.cl = phi i64 [ %.pre.i.i.i15, %bb.m ], [ %i.ao, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i13 ]
  %i.cm = add i64 %i.cl, %i.am
  store i64 %i.cm, ptr %i.an, align 8, !alias.scope !114
  %i.cn = load i64, ptr %i.b, align 8, !range !7, !alias.scope !121, !noundef !4
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit31, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit31

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit31: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.v:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.thread.i.i.i22
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load i64, ptr %i.a, align 8, !range !7, !alias.scope !122, !noundef !4
  %i.cr = icmp eq i64 %i.cq, -1
  br i1 %i.cr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.j

bb.x:                                             ; preds = %bb.o, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i19
  %i.cs = phi i64 [ %.pre.i.i.i21, %bb.o ], [ %i.bj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent.exit.i.i.i19 ]
  %i.ct = add i64 %i.cs, %i.bh
  store i64 %i.ct, ptr %i.bi, align 8, !alias.scope !116
  %i.cu = load i64, ptr %i.a, align 8, !range !7, !alias.scope !123, !noundef !4
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit34, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit34

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit34: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtCs3zOvCg6Ax1K_13fluent_bundle5typesNtB6_11FluentValue7matchesNtNtB8_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 4 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !range !6, !noundef !4 ; 3 uses
  %i.j = icmp ne i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i64 %i.i, -2
  %i.l = icmp samesign ugt i64 %i.i, 1
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8, !range !6, !noundef !4 ; 3 uses
  %i.o = icmp ne i64 %i.n, 3
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %bb.m, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !135, !noundef !4 ; 2 uses
  %.sroa.32.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.32.0.i = load i64, ptr %.sroa.32.0.in.i, align 8, !alias.scope !136, !noundef !4
  %i.q = icmp eq i64 %.sroa.3.0.i, %.sroa.32.0.i
  br i1 %i.q, label %bb.e, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !135, !nonnull !4, !noundef !4
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !136, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.0.i, ptr nonnull readonly %.sroa.01.0.i, i64 %.sroa.3.0.i), !alias.scope !137, !noalias !138
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.02.0 = load ptr, ptr %.sroa.02.0.in, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0 = load i64, ptr %.sroa.8.0.in, align 8, !noundef !4
  switch i64 %.sroa.8.0, label %.thread23 [
    i64 4, label %bb.g
    i64 3, label %bb.h
    i64 5, label %bb.j
  ]

_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %.split10.i, %bb.ag, %bb.af, %.split9.i, %bb.ad, %bb.ac, %.split8.i, %bb.aa, %bb.z, %.split7.i, %bb.x, %bb.w, %bb.u, %.split.i, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.e, %bb.d, %bb.m, %bb.a, %bb.b, %bb.c, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbReE6unwrapCs476pBYQK2Ku_11fish_fluent.exit, %.thread23
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.m ], [ %i.bz, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbReE6unwrapCs476pBYQK2Ku_11fish_fluent.exit ], [ false, %.thread23 ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.r, %bb.e ], [ %i.fh, %bb.ak ], [ false, %bb.o ], [ %9, %bb.aj ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.w ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.ai ], [ false, %.split.i ], [ false, %.split7.i ], [ false, %.split8.i ], [ false, %.split9.i ], [ false, %.split10.i ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %.sroa.02.0, align 1
  %i.t = icmp ne i32 %i.s, 1869768058
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %.critedge19

bb.h:                                             ; preds = %bb.f
  %i.w = load i16, ptr %.sroa.02.0, align 1
  %i.x = xor i16 %i.w, 28271
  %i.y = getelementptr i8, ptr %.sroa.02.0, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 101
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i16, ptr %.sroa.02.0, align 1
  %i.ah = xor i16 %i.ag, 30580
  %i.ai = getelementptr i8, ptr %.sroa.02.0, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i16
  %i.al = xor i16 %i.ak, 111
  %i.am = or i16 %i.ah, %i.al
  %i.an = icmp ne i16 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.aq = load i16, ptr %.sroa.02.0, align 1
  %i.ar = xor i16 %i.aq, 25958
  %i.as = getelementptr i8, ptr %.sroa.02.0, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = xor i16 %i.au, 119
  %i.aw = or i16 %i.ar, %i.av
  %i.ax = icmp ne i16 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.k, label %.thread23

.critedge19:                                      ; preds = %bb.g
  %i.ba = load i32, ptr %.sroa.02.0, align 1
  %i.bb = icmp ne i32 %i.ba, 2037277037
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %.thread23

bb.j:                                             ; preds = %bb.f
  %i.be = load i32, ptr %.sroa.02.0, align 1
  %i.bf = xor i32 %i.be, 1701344367
  %i.bg = getelementptr i8, ptr %.sroa.02.0, i64 4
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = xor i32 %i.bi, 114
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %.thread23

.thread23:                                        ; preds = %bb.f, %.critedge19, %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.k:                                             ; preds = %bb.j, %.critedge19, %.critedge, %bb.i, %bb.h, %bb.g
  %.sroa.01.0 = phi i8 [ 4, %.critedge19 ], [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %.critedge ], [ 5, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bp = load i8, ptr %i.bo, align 8, !range !11, !noundef !4
  %3 = trunc nuw i8 %i.bp to i1
  %.sroa.013.0 = xor i1 %3, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @_RINvXs_NtCs3zOvCg6Ax1K_13fluent_bundle10concurrentNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerNtNtB7_8memoizer12MemoizerKind23with_try_get_threadsafeNtNtNtB7_5types6plural11PluralRulesbNCINvMs2_B2K_NtB2K_11FluentValue7matchesNtNtB7_8resource14FluentResourceBM_E0ECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.bs, i1 noundef zeroext %.sroa.013.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i8 noundef %.sroa.01.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.bt = load ptr, ptr %i.b, align 8, !alias.scope !139, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbReE6unwrapCs476pBYQK2Ku_11fish_fluent.exit, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !139, !noundef !4
  store ptr %i.bt, ptr %i.a, align 8, !noalias !139, !captures !140
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !noalias !139
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !139
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultbReE6unwrapCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !range !11, !alias.scope !139, !noundef !4
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.m:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cb = load double, ptr %i.ca, align 8, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cd = load double, ptr %i.cc, align 8, !noundef !4
  %i.ce = fcmp oeq double %i.cb, %i.cd
  br i1 %i.ce, label %bb.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.cg = load i8, ptr %i.cf, align 1, !range !11, !alias.scope !141, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.ci = load i8, ptr %i.ch, align 1, !range !11, !alias.scope !142, !noundef !4
  %i.cj = icmp eq i8 %i.cg, %i.ci
  br i1 %i.cj, label %bb.o, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cl = load i8, ptr %i.ck, align 8, !range !11, !alias.scope !141, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cn = load i8, ptr %i.cm, align 8, !range !11, !alias.scope !142, !noundef !4
  %i.co = icmp eq i8 %i.cl, %i.cn
  br i1 %i.co, label %bb.p, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.cq = load i8, ptr %i.cp, align 2, !range !143, !alias.scope !141, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.cs = load i8, ptr %i.cr, align 2, !range !143, !alias.scope !142, !noundef !4
  %i.ct = icmp eq i8 %i.cq, %i.cs
  br i1 %i.ct, label %bb.q, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cv = load i64, ptr %i.cu, align 8, !range !7, !alias.scope !141, !noundef !4
  %.not.i21 = icmp eq i64 %i.cv, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cx = load i64, ptr %i.cw, align 8, !range !7, !alias.scope !142, !noundef !4
  %i.cy = icmp eq i64 %i.cx, -1                   ; 2 uses
  br i1 %.not.i21, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.cy, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.cy, label %bb.u, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !141, !noundef !4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !142, !noundef !4
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %.split.i, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

.split.i:                                         ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !142, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !141, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.dh, ptr nonnull %i.df, i64 %i.da), !noalias !144
  %i.di = icmp eq i32 %bcmp.i, 0
  br i1 %i.di, label %bb.u, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.u:                                             ; preds = %.split.i, %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.dk = load i8, ptr %i.dj, align 1, !range !143, !alias.scope !141, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.dm = load i8, ptr %i.dl, align 1, !range !143, !alias.scope !142, !noundef !4
  %i.dn = icmp eq i8 %i.dk, %i.dm
  br i1 %i.dn, label %bb.v, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = trunc nuw i64 %i.d to i1
  %4 = trunc nuw i64 %i.n to i1                   ; 2 uses
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %4, label %.split7.i, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.x:                                             ; preds = %bb.v
  br i1 %4, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit, label %bb.y

.split7.i:                                        ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dr = load i64, ptr %i.do, align 8, !alias.scope !141, !noundef !4
  %i.ds = load i64, ptr %i.dq, align 8, !alias.scope !142, !noundef !4
  %i.dt = icmp eq i64 %i.dr, %i.ds
  br i1 %i.dt, label %bb.y, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.y:                                             ; preds = %.split7.i, %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !13, !alias.scope !141, !noundef !4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dx = trunc nuw i64 %i.dv to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !range !13, !alias.scope !142, !noundef !4
  %5 = trunc nuw i64 %i.dz to i1                  ; 2 uses
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %5, label %.split8.i, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.aa:                                            ; preds = %bb.y
  br i1 %5, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit, label %bb.ab

.split8.i:                                        ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load i64, ptr %i.dw, align 8, !alias.scope !141, !noundef !4
  %i.ec = load i64, ptr %i.ea, align 8, !alias.scope !142, !noundef !4
  %i.ed = icmp eq i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ab, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.ab:                                            ; preds = %.split8.i, %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !range !13, !alias.scope !141, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eh = trunc nuw i64 %i.ef to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !range !13, !alias.scope !142, !noundef !4
  %6 = trunc nuw i64 %i.ej to i1                  ; 2 uses
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %6, label %.split9.i, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.ad:                                            ; preds = %bb.ab
  br i1 %6, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit, label %bb.ae

.split9.i:                                        ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.el = load i64, ptr %i.eg, align 8, !alias.scope !141, !noundef !4
  %i.em = load i64, ptr %i.ek, align 8, !alias.scope !142, !noundef !4
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.ae, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.ae:                                            ; preds = %.split9.i, %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load i64, ptr %i.eo, align 8, !range !13, !alias.scope !141, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = trunc nuw i64 %i.ep to i1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.et = load i64, ptr %i.es, align 8, !range !13, !alias.scope !142, !noundef !4
  %7 = trunc nuw i64 %i.et to i1                  ; 2 uses
  br i1 %i.er, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %7, label %.split10.i, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.ag:                                            ; preds = %bb.ae
  br i1 %7, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit, label %bb.ah

.split10.i:                                       ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ev = load i64, ptr %i.eq, align 8, !alias.scope !141, !noundef !4
  %i.ew = load i64, ptr %i.eu, align 8, !alias.scope !142, !noundef !4
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ah, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.ah:                                            ; preds = %.split10.i, %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !range !13, !alias.scope !141, !noundef !4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fb = trunc nuw i64 %i.ez to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fd = load i64, ptr %i.fc, align 8, !range !13, !alias.scope !142, !noundef !4
  %8 = trunc nuw i64 %i.fd to i1                  ; 2 uses
  br i1 %i.fb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %8, label %bb.ak, label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.aj:                                            ; preds = %bb.ah
  %9 = xor i1 %8, true
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ff = load i64, ptr %i.fa, align 8, !alias.scope !141, !noundef !4
  %i.fg = load i64, ptr %i.fe, align 8, !alias.scope !142, !noundef !4
  %i.fh = icmp eq i64 %i.ff, %i.fg
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweENtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqCs476pBYQK2Ku_11fish_fluent.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !147, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !147, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(120) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !147

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(120) %i.m) #23
          to label %bb.c unwind label %bb.e, !noalias !147

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !147
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.f

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtB4_6marker4SendEL_EECs476pBYQK2Ku_11fish_fluent(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !9, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #24
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3zOvCg6Ax1K_13fluent_bundle5types10FluentTypeNtNtCs3oUPovFnLWP_4core6marker4SendEL_ENtNtNtB1B_3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle4args10FluentArgsECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtBG_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEEECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTINtNtBG_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEEECs476pBYQK2Ku_11fish_fluent.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTINtNtBG_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTINtNtBG_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !7, !alias.scope !156, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !7, !alias.scope !157, !noundef !4
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.m, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.n = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

end_hunk_0
