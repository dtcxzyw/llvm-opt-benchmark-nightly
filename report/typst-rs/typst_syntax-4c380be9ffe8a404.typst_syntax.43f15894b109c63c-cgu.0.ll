Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileId6unique:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !alias.scope !2219, !noalias !2220, !noundef !19 ; 3 uses
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 16), align 8, !range !33, !alias.scope !2219, !noalias !2220, !noundef !19
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 16)) #57
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 24), align 8, !alias.scope !2219, !noalias !2220, !nonnull !19, !noundef !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af
  store ptr %i.ab, ptr %i.aj, align 8, !noalias !2221, !captures !34
  %i.ak = add i64 %i.af, 1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 32), align 8, !alias.scope !2219, !noalias !2220
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.am = and i64 %i.al, 9223372036854775807
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc21, !prof !22

.noexc21:                                         ; preds = %bb.u
  %i.ao = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #57
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc21
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i64 8) monotonic, align 8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.v, %.noexc21, %bb.u, %bb.t
  %i.ap = atomicrmw sub ptr @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 1073741823 release, align 4
  %i.aq = add i32 %i.ap, -1073741823              ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.aq, 1073741824
  br i1 %or.cond.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit, label %bb.w, !prof !39

bb.w:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path8INTERNER, i32 noundef %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEEB1H_.exit: ; preds = %bb.w, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.08.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  ret i16 %.sroa.5.0.extract.trunc.i

bb.x:                                             ; preds = %.body, %.body11.thread
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.y:                                             ; preds = %.body11.thread, %bb.c
  %.pn27 = phi { ptr, i32 } [ %eh.lpad-body, %bb.c ], [ %.pn28, %.body11.thread ]
  resume { ptr, i32 } %.pn27

.body11.thread:                                   ; preds = %bb.h, %.body11.thread31, %bb.c
  %.pn28 = phi { ptr, i32 } [ %lpad.thr_comm, %.body11.thread31 ], [ %eh.lpad-body, %bb.c ], [ %i.q, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path10RootedPathEBF_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #59
          to label %bb.y unwind label %bb.x
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer13block_comment(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2227, !nonnull !19, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2227, !noundef !19 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2228, !noundef !19 ; 2 uses
  %.not.i18 = icmp samesign eq i64 %i.f, %i.d
  br i1 %.not.i18, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.g = phi i64 [ %i.aw, %bb.i ], [ %i.f, %bb.a ] ; 5 uses
  %.sroa.0.020 = phi i32 [ %.sroa.07.0, %bb.i ], [ 95, %bb.a ]
  %.sroa.01.019 = phi i32 [ %.sroa.01.1, %bb.i ], [ 1, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %i.i = load i8, ptr %i.h, align 1, !noalias !2229, !noundef !19 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = add nuw nsw i64 %i.g, 1
  %i.o = icmp samesign ne i64 %i.n, %i.d
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load i8, ptr %i.k, align 1, !noalias !2229, !noundef !19
  %i.q = shl nuw nsw i32 %i.m, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.i, -33
  br i1 %i.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.v = zext nneg i8 %i.i to i32
  br label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.x = add nuw nsw i64 %i.g, 2
  %i.y = icmp samesign ne i64 %i.x, %i.d
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i8, ptr %i.w, align 1, !noalias !2229, !noundef !19
  %i.aa = shl nuw nsw i32 %i.s, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac            ; 2 uses
  %i.ae = shl nuw nsw i32 %i.m, 12
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ag, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.b

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ai = add nuw nsw i64 %i.g, 3
  %i.aj = icmp samesign ne i64 %i.ai, %i.d
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !2229, !noundef !19
  %i.al = shl nuw nsw i32 %i.m, 18
  %i.am = and i32 %i.al, 1835008
  %i.an = shl nuw nsw i32 %i.ad, 6
  %i.ao = and i8 %i.ak, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = or disjoint i32 %i.aq, %i.am
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.af, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.ar, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.t, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 7 uses
  %i.as = icmp samesign ult i32 %spec.select.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %spec.select.i.ph, 128
  br i1 %i.at, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = icmp samesign ult i32 %spec.select.i.ph, 2048
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = icmp samesign ult i32 %spec.select.i.ph, 65536
  %. = select i1 %i.av, i64 3, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d, %bb.b
  %spec.select.i.ph17 = phi i32 [ %spec.select.i.ph, %bb.c ], [ %spec.select.i.ph, %bb.d ], [ %spec.select.i.ph, %bb.b ], [ %i.v, %.thread ] ; 5 uses
  %.sroa.010.0 = phi i64 [ 2, %bb.c ], [ %., %bb.d ], [ 1, %bb.b ], [ 1, %.thread ]
  %i.aw = add i64 %i.g, %.sroa.010.0              ; 3 uses
  switch i32 %.sroa.0.020, label %bb.i [
    i32 42, label %bb.f
    i32 47, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp eq i32 %spec.select.i.ph17, 47
  br i1 %i.ax, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ay = icmp eq i32 %spec.select.i.ph17, 42     ; 2 uses
  %spec.select = select i1 %i.ay, i32 95, i32 %spec.select.i.ph17
  %i.az = zext i1 %i.ay to i32
  %spec.select12 = add i32 %.sroa.01.019, %i.az
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = add i32 %.sroa.01.019, -1               ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.sink.split, label %bb.i

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.sink.split: ; preds = %bb.h, %bb.i
  %.lcssa.sink = phi i64 [ %i.d, %bb.i ], [ %i.aw, %bb.h ]
  store i64 %.lcssa.sink, ptr %i.e, align 8
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit: ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.sink.split, %bb.a
  ret void

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.sroa.07.0 = phi i32 [ %spec.select.i.ph17, %bb.e ], [ %spec.select, %bb.g ], [ %spec.select.i.ph17, %bb.f ], [ 95, %bb.h ]
  %.sroa.01.1 = phi i32 [ %.sroa.01.019, %bb.e ], [ %spec.select12, %bb.g ], [ %.sroa.01.019, %bb.f ], [ %i.ba, %bb.h ]
  %.not.i = icmp samesign eq i64 %i.aw, %i.d
  br i1 %.not.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit.sink.split, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) initializes((57, 58)) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 14 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [15 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [200 x i8], align 8               ; 26 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [15 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [15 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [15 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [15 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [15 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [15 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 22 uses
  %i.al = alloca [32 x i8], align 8               ; 19 uses
  %i.am = alloca [32 x i8], align 8               ; 11 uses
  %i.an = alloca [32 x i8], align 8               ; 9 uses
  %i.ao = alloca [24 x i8], align 8               ; 21 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 13 uses
  %i.as = alloca [16 x i8], align 8               ; 4 uses
  %.sroa.4196 = alloca [6 x i8], align 2          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 28 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 62 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !19 ; 16 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  store i8 0, ptr %i.ax, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %i.ay = load ptr, ptr %i.au, align 8, !alias.scope !2744, !nonnull !19, !noundef !19 ; 56 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !2744, !noundef !19 ; 80 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw ; 4 uses
  %.not.i = icmp samesign eq i64 %i.aw, %i.ba
  br i1 %.not.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2745, !noundef !19 ; 5 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = and i8 %i.bc, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = add nuw nsw i64 %i.aw, 1
  %i.bi = icmp samesign ne i64 %i.bh, %i.ba
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i8, ptr %i.be, align 1, !noalias !2745, !noundef !19
  %i.bk = shl nuw nsw i32 %i.bg, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32               ; 2 uses
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = icmp samesign ugt i8 %i.bc, -33
  br i1 %i.bo, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.bp = zext nneg i8 %i.bc to i32
  br label %bb.f

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.br = add nuw nsw i64 %i.aw, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.ba
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %i.bq, align 1, !noalias !2745, !noundef !19
  %i.bu = shl nuw nsw i32 %i.bm, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bg, 12
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp samesign ugt i8 %i.bc, -17
  br i1 %i.ca, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.cc = add nuw nsw i64 %i.aw, 3
  %i.cd = icmp samesign ne i64 %i.cc, %i.ba
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i8, ptr %i.cb, align 1, !noalias !2745, !noundef !19
  %i.cf = shl nuw nsw i32 %i.bg, 18
  %i.cg = and i32 %i.cf, 1835008
  %i.ch = shl nuw nsw i32 %i.bx, 6
  %i.ci = and i8 %i.ce, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.bz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.cl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 7 uses
  %i.cm = icmp samesign ult i32 %spec.select.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ult i32 %spec.select.i.ph, 128
  br i1 %i.cn, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.co = icmp samesign ult i32 %spec.select.i.ph, 2048
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = icmp samesign ult i32 %spec.select.i.ph, 65536
  %. = select i1 %i.cp, i64 3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.c
  %i.cq = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.c ], [ true, %.thread ]
  %spec.select.i.ph218 = phi i32 [ %spec.select.i.ph, %bb.d ], [ %spec.select.i.ph, %bb.e ], [ %spec.select.i.ph, %bb.c ], [ %i.bp, %.thread ] ; 26 uses
  %.sroa.08.0 = phi i64 [ 2, %bb.d ], [ %., %bb.e ], [ 1, %bb.c ], [ 1, %.thread ]
  %i.cr = add i64 %.sroa.08.0, %i.aw              ; 120 uses
  store i64 %i.cr, ptr %i.av, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !range !24, !noundef !19 ; 3 uses
  %i.cu = icmp eq i8 %i.ct, 0                     ; 3 uses
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i32 %spec.select.i.ph218, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread [
    i32 32, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 9, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 10, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 11, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 12, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 13, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 133, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 8232, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 8233, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 35, label %bb.aj
    i32 47, label %bb.ak
    i32 42, label %bb.al
    i32 96, label %.thread565
  ]

bb.h:                                             ; preds = %bb.f
  switch i32 %spec.select.i.ph218, label %bb.i [
    i32 32, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 13, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 12, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 11, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 10, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
    i32 9, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.cv = icmp samesign ult i32 %spec.select.i.ph218, 133
  br i1 %i.cv, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread223, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = lshr i32 %spec.select.i.ph218, 8
  switch i32 %i.cw, label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit.thread223 [
    i32 0, label %bb.m
    i32 22, label %bb.k
    i32 32, label %bb.n
    i32 48, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp eq i32 %spec.select.i.ph218, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit

bb.l:                                             ; preds = %bb.j
  %i.cz = icmp eq i32 %spec.select.i.ph218, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit

bb.m:                                             ; preds = %bb.j
  %i.db = and i32 %spec.select.i.ph218, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !19
  br label %_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer8is_space.exit

bb.n:                                             ; preds = %bb.j
  %i.df = and i32 %spec.select.i.ph218, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next:bb.a
  %i.acz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i94.i = load ptr, ptr %i.x, align 8, !noalias !2838, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i94.i) #59
          to label %.thread210.i unwind label %bb.eo, !noalias !2838

bb.eo:                                            ; preds = %bb.en
  %i.ada = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !2838
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i95.i: ; preds = %.lr.ph.i.i.i93.i
  %i.adb = load ptr, ptr %i.x, align 8, !alias.scope !2839, !noalias !2840, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i96.i = load i64, ptr %i.acy, align 8, !alias.scope !2839, !noalias !2840 ; 2 uses
  %scevgep.i.i.i97.i = getelementptr nuw i8, ptr %i.adb, i64 %.promoted.i.i.i96.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i97.i, ptr nonnull readonly align 1 %i.acv, i64 range(i64 0, -9223372036854775808) %i.acu, i1 false), !noalias !2841
  %i.adc = add i64 %.promoted.i.i.i96.i, %i.acu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2838
  br label %bb.il

bb.ep:                                            ; preds = %.lr.ph.preheader.i.i91.i, %bb.em
  %.8..8..sroa.5188.0.copyload190.i = phi i64 [ %i.acx, %.lr.ph.preheader.i.i91.i ], [ 0, %bb.em ]
  %.0..0..sroa.0186.0.copyload187.i = phi ptr [ %.0..0..0..0..0..sroa.0186.0.copyload187.pre.i, %.lr.ph.preheader.i.i91.i ], [ null, %bb.em ]
  %.sroa.5188.15.insert.ext.i = shl nuw nsw i64 %i.acu, 56
  %.sroa.5188.15.insert.shift.i = or disjoint i64 %.8..8..sroa.5188.0.copyload190.i, %.sroa.5188.15.insert.ext.i
  %.sroa.5188.15.insert.insert.i = or disjoint i64 %.sroa.5188.15.insert.shift.i, -9223372036854775808
  br label %bb.il

.thread236.i:                                     ; preds = %bb.io, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i
  %i.add = phi i64 [ %i.xx, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.pre381.i, %bb.io ], [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %.sroa.0.0.lcssa.i24.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %i.vu, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %.sroa.0.0.lcssa.i24.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ] ; 8 uses
  %i.ade = phi i64 [ %i.vu, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.pre380.i, %bb.io ], [ %i.vu, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %i.vu, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %i.vu, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %i.vu, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ] ; 7 uses
  %i.adf = phi ptr [ %.val.pre.i.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.val.i.i80.i, %bb.io ], [ %.val.pre.i.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %.val.pre.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %.val.pre.i.i.i, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %.val.pre.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0..sroa.10.24.247.i = phi i64 [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %i.aac, %bb.io ], [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ %i.aac, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ %i.zy, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ %i.aac, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  %.sroa.7.0..sroa.7.16.246.i = phi i1 [ false, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %.not.i81.i, %bb.io ], [ false, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ true, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ true, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ true, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  %.sroa.0166.0245.i = phi ptr [ null, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %i.acv, %bb.io ], [ null, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ null, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ null, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ null, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  %.sroa.5.0197244.i = phi i64 [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.i.i ], [ %i.acu, %bb.io ], [ undef, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_untilcNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtBW_5Lexer12raw_lang_tag0EBY_.exit.thread.i.i ], [ undef, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread.i.i.i ], [ undef, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i77.i ], [ undef, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer11is_id_startINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2842)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2843
  %i.adg = sub nuw i64 %i.ade, %i.add
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.add ; 2 uses
  invoke void @_RNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14split_newlines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.adh, i64 noundef %i.adg)
          to label %.noexc126.i unwind label %.thread232.i, !noalias !2772

.thread232.i:                                     ; preds = %.thread236.i
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %.thread210.i

.noexc126.i:                                      ; preds = %.thread236.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !noalias !2843, !nonnull !19, !noundef !19 ; 8 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !noalias !2843, !noundef !19 ; 6 uses
  %.idx192.i.i = shl i64 %i.adm, 4                ; 3 uses
  %i.adn = getelementptr i8, ptr %i.adk, i64 %.idx192.i.i ; 6 uses
  %.not.i104.i = icmp eq i64 %i.adm, 0            ; 2 uses
  %i.ado = getelementptr i8, ptr %i.adn, i64 -16  ; 3 uses
  %.sroa.05.0.i.i64 = select i1 %.not.i104.i, ptr null, ptr %i.ado ; 4 uses
  %.idx.i.i = and i64 %i.adm, 1152921504606846975
  %.not.i.not.i.i.i.i.i.i.i.i.not.i.i = icmp eq i64 %.idx.i.i, 0
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adk, i64 16 ; 3 uses
  %i.adq = icmp eq i64 %.idx192.i.i, 16
  %or.cond.i.i = or i1 %.not.i.not.i.i.i.i.i.i.i.i.not.i.i, %i.adq
  br i1 %or.cond.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc126.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.adr = phi ptr [ %i.ads, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adp, %.noexc126.i ] ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.adt = load ptr, ptr %i.adr, align 8, !alias.scope !2844, !noalias !2845, !nonnull !19, !noundef !19 ; 5 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.adv = load i64, ptr %i.adu, align 8, !alias.scope !2844, !noalias !2845, !noundef !19 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.adv ; 7 uses
  %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.adv, 0
  br i1 %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adx = phi ptr [ %i.afg, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 1 ; 3 uses
  %i.adz = load i8, ptr %i.adx, align 1, !noalias !2846, !noundef !19 ; 5 uses
  %i.aea = icmp sgt i8 %i.adz, -1
  br i1 %i.aea, label %bb.eq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aeb = and i8 %i.adz, 31
  %i.aec = zext nneg i8 %i.aeb to i32             ; 3 uses
  %i.aed = icmp ne ptr %i.ady, %i.adw
  tail call void @llvm.assume(i1 %i.aed)
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 2 ; 3 uses
  %i.aef = load i8, ptr %i.ady, align 1, !noalias !2846, !noundef !19
  %i.aeg = shl nuw nsw i32 %i.aec, 6
  %i.aeh = and i8 %i.aef, 63
  %i.aei = zext nneg i8 %i.aeh to i32             ; 2 uses
  %i.aej = or disjoint i32 %i.aeg, %i.aei
  %i.aek = icmp samesign ugt i8 %i.adz, -33
  br i1 %i.aek, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.er

bb.eq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ael = zext nneg i8 %i.adz to i32
  br label %bb.er

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aem = icmp ne ptr %i.aee, %i.adw
  tail call void @llvm.assume(i1 %i.aem)
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 3 ; 3 uses
  %i.aeo = load i8, ptr %i.aee, align 1, !noalias !2846, !noundef !19
  %i.aep = shl nuw nsw i32 %i.aei, 6
  %i.aeq = and i8 %i.aeo, 63
  %i.aer = zext nneg i8 %i.aeq to i32
  %i.aes = or disjoint i32 %i.aep, %i.aer         ; 2 uses
  %i.aet = shl nuw nsw i32 %i.aec, 12
  %i.aeu = or disjoint i32 %i.aes, %i.aet
  %i.aev = icmp samesign ugt i8 %i.adz, -17
  br i1 %i.aev, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.er

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aew = icmp ne ptr %i.aen, %i.adw
  tail call void @llvm.assume(i1 %i.aew)
  %i.aex = getelementptr inbounds nuw i8, ptr %i.adx, i64 4
  %i.aey = load i8, ptr %i.aen, align 1, !noalias !2846, !noundef !19
  %i.aez = shl nuw nsw i32 %i.aec, 18
  %i.afa = and i32 %i.aez, 1835008
  %i.afb = shl nuw nsw i32 %i.aes, 6
  %i.afc = and i8 %i.aey, 63
  %i.afd = zext nneg i8 %i.afc to i32
  %i.afe = or disjoint i32 %i.afb, %i.afd
  %i.aff = or disjoint i32 %i.afe, %i.afa
  br label %bb.er

bb.er:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afg = phi ptr [ %i.aen, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aex, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aee, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ady, %bb.eq ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aeu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aff, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aej, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ael, %bb.eq ] ; 7 uses
  switch i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.es [
    i32 32, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 13, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 12, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 11, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 10, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i32 9, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.es:                                            ; preds = %bb.er
  %i.afh = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 133
  br i1 %i.afh, label %.lr.ph.i.i.i.i.i.i.preheader.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.afi = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.afi, label %.lr.ph.i.i.i.i.i.i.preheader.i.i [
    i32 0, label %bb.ew
    i32 22, label %bb.eu
    i32 32, label %bb.ex
    i32 48, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  %i.afj = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 5760
  %i.afk = zext i1 %i.afj to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.afl = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 12288
  %i.afm = zext i1 %i.afl to i8
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.et
  %i.afn = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !noalias !2847, !noundef !19
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ex:                                            ; preds = %bb.et
  %i.afr = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 255
  %i.afs = zext nneg i32 %i.afr to i64
  %i.aft = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !noalias !2847, !noundef !19
  %i.afv = lshr i8 %i.afu, 1
  br label %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.afm, %bb.ev ], [ %i.afq, %bb.ew ], [ %i.afk, %bb.eu ], [ %i.afv, %bb.ex ]
  %i.afw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.afw, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.er, %bb.er, %bb.er, %bb.er, %bb.er, %bb.er
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afg, %i.adw
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.afx = icmp eq ptr %i.ads, %i.adn
  br i1 %i.afx, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkRReQNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1o_5Lexer10blocky_raw0E0B1q_.exit.i.i.i.i.i.i.i.i.i.i.i, %.noexc126.i
  %.not.i.i.i105.i = icmp eq ptr %.sroa.05.0.i.i64, null
  br i1 %.not.i.i.i105.i, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1X_5Lexer10blocky_raw0ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvNtB8_3map8map_foldRB1L_jjNCB1R_s_0NvYjNtNtBc_3cmp3Ord3minE0EB1Z_.exit.i.i.i.thread.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.i.i
  %.val.i.i.pre.i.i = load ptr, ptr %i.ado, align 8, !noalias !2848 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.adn, i64 -8
  %.val3.i.i.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !2848 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.val.i.i.pre.i.i, i64 %.val3.i.i.pre.i.i
  %.not.i18.i.i.i.i.i.i266.i.i = icmp samesign eq i64 %.val3.i.i.pre.i.i, 0
  br i1 %.not.i18.i.i.i.i.i.i266.i.i, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1X_5Lexer10blocky_raw0ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvNtB8_3map8map_foldRB1L_jjNCB1R_s_0NvYjNtNtBc_3cmp3Ord3minE0EB1Z_.exit.i.i.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i:                 ; preds = %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.et, %bb.es, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i
  %i.afz = phi ptr [ %i.afy, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %i.adw, %bb.es ], [ %i.adw, %bb.et ], [ %i.adw, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0153273.i.i = phi ptr [ null, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %.sroa.05.0.i.i64, %bb.es ], [ %.sroa.05.0.i.i64, %bb.et ], [ %.sroa.05.0.i.i64, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i154268.i.i = phi ptr [ null, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %i.ads, %bb.es ], [ %i.ads, %bb.et ], [ %i.ads, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val.i.i267.i.i = phi ptr [ %.val.i.i.pre.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtB6_4skip4SkipINtNtNtBa_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2f_5Lexer10blocky_raw0EINtNtBa_6option8IntoIterRB23_EENtNtNtB8_6traits8iterator8Iterator4nextB2h_.exit.i.i.thread.thread.i.i ], [ %i.adt, %bb.es ], [ %i.adt, %bb.et ], [ %i.adt, %_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i
  %.sroa.01.019.i.i.i.i.i.i.i.i = phi i64 [ %i.aia, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.aga = phi ptr [ %i.ahj, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i267.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 1 ; 3 uses
  %i.agc = load i8, ptr %i.aga, align 1, !noalias !2849, !noundef !19 ; 5 uses
  %i.agd = icmp sgt i8 %i.agc, -1
  br i1 %i.agd, label %bb.ey, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.age = and i8 %i.agc, 31
  %i.agf = zext nneg i8 %i.age to i32             ; 3 uses
  %i.agg = icmp ne ptr %i.agb, %i.afz
  tail call void @llvm.assume(i1 %i.agg)
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aga, i64 2 ; 3 uses
  %i.agi = load i8, ptr %i.agb, align 1, !noalias !2849, !noundef !19
  %i.agj = shl nuw nsw i32 %i.agf, 6
  %i.agk = and i8 %i.agi, 63
  %i.agl = zext nneg i8 %i.agk to i32             ; 2 uses
  %i.agm = or disjoint i32 %i.agj, %i.agl
  %i.agn = icmp samesign ugt i8 %i.agc, -33
  br i1 %i.agn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.ez

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ago = zext nneg i8 %i.agc to i32
  br label %bb.ez

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i
  %i.agp = icmp ne ptr %i.agh, %i.afz
  tail call void @llvm.assume(i1 %i.agp)
  %i.agq = getelementptr inbounds nuw i8, ptr %i.aga, i64 3 ; 3 uses
  %i.agr = load i8, ptr %i.agh, align 1, !noalias !2849, !noundef !19
  %i.ags = shl nuw nsw i32 %i.agl, 6
  %i.agt = and i8 %i.agr, 63
  %i.agu = zext nneg i8 %i.agt to i32
  %i.agv = or disjoint i32 %i.ags, %i.agu         ; 2 uses
  %i.agw = shl nuw nsw i32 %i.agf, 12
  %i.agx = or disjoint i32 %i.agv, %i.agw
  %i.agy = icmp samesign ugt i8 %i.agc, -17
  br i1 %i.agy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.ez

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i
  %i.agz = icmp ne ptr %i.agq, %i.afz
  tail call void @llvm.assume(i1 %i.agz)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aga, i64 4
  %i.ahb = load i8, ptr %i.agq, align 1, !noalias !2849, !noundef !19
  %i.ahc = shl nuw nsw i32 %i.agf, 18
  %i.ahd = and i32 %i.ahc, 1835008
  %i.ahe = shl nuw nsw i32 %i.agv, 6
  %i.ahf = and i8 %i.ahb, 63
  %i.ahg = zext nneg i8 %i.ahf to i32
  %i.ahh = or disjoint i32 %i.ahe, %i.ahg
  %i.ahi = or disjoint i32 %i.ahh, %i.ahd
  br label %bb.ez

bb.ez:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i, %bb.ey, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i
  %i.ahj = phi ptr [ %i.agq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.aha, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.agh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i ], [ %i.agb, %bb.ey ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.agx, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.ahi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.agm, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i ], [ %i.ago, %bb.ey ] ; 7 uses
  switch i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, label %bb.fa [
    i32 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 11, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
    i32 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i
  ]

bb.fa:                                            ; preds = %bb.ez
  %i.ahk = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 133
  br i1 %i.ahk, label %.loopexit.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ahl = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ahl, label %.loopexit.i.i.i [
    i32 0, label %bb.fe
    i32 22, label %bb.fc
    i32 32, label %bb.ff
    i32 48, label %bb.fd
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.ahm = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 5760
  %i.ahn = zext i1 %i.ahm to i8
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fb
  %i.aho = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 12288
  %i.ahp = zext i1 %i.aho to i8
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fb
  %i.ahq = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 255
  %i.ahr = zext nneg i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ahr
  %i.aht = load i8, ptr %i.ahs, align 1, !noalias !2850, !noundef !19
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

bb.ff:                                            ; preds = %bb.fb
  %i.ahu = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 255
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !noalias !2850, !noundef !19
  %i.ahy = lshr i8 %i.ahx, 1
  br label %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i

_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ahp, %bb.fd ], [ %i.aht, %bb.fe ], [ %i.ahn, %bb.fc ], [ %i.ahy, %bb.ff ]
  %i.ahz = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ahz, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i, %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez
  %i.aia = add i64 %.sroa.01.019.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahj, %i.afz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i, %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i, %bb.fb, %bb.fa
  %.sroa.3.0.i.ph.i.i106.i = phi i64 [ %.sroa.01.019.i.i.i.i.i.i.i.i, %bb.fa ], [ %i.aia, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB30_5Lexer10blocky_raws_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B32_.exit.i.i.i.i.i.i.i.i ], [ %.sroa.01.019.i.i.i.i.i.i.i.i, %_RNCNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer10blocky_raws_00Bb_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.019.i.i.i.i.i.i.i.i, %bb.fb ] ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.sroa.5.0.copyload.i154268.i.i, null
  %i.aib = icmp eq ptr %.sroa.5.0.copyload.i154268.i.i, %i.adn
  %or.cond.i66 = or i1 %.not.i.i.i.i.i65, %i.aib
  br i1 %or.cond.i66, label %_RINvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB6_6FilterINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterReEENCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1X_5Lexer10blocky_raw0ENtNtNtBa_6traits8iterator8Iterator4foldjQNCINvNtB8_3map8map_foldRB1L_jjNCB1R_s_0NvYjNtNtBc_3cmp3Ord3minE0EB1Z_.exit.i.i.i.i.i, label %bb.fg

bb.fg:                                            ; preds = %.loopexit.i.i.i
  %i.aic = ptrtoint ptr %i.adn to i64
  %i.aid = ptrtoint ptr %.sroa.5.0.copyload.i154268.i.i to i64
  %i.aie = sub nuw i64 %i.aic, %i.aid
  %i.aif = lshr exact i64 %i.aie, 4
  br label %bb.fh

bb.fh:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i, %bb.fg
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fg ], [ %i.amn, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.ph.i.i106.i, %bb.fg ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload.i154268.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.aih = load ptr, ptr %i.aig, align 8, !alias.scope !2851, !noalias !2852, !nonnull !19, !noundef !19 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  %i.aij = load i64, ptr %i.aii, align 8, !alias.scope !2851, !noalias !2852, !noundef !19 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.aij ; 8 uses
  %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.aij, 0
  br i1 %.not.i12.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRRejNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1d_5Lexer10blocky_raw0QNCINvNtB6_3map8map_foldB11_jjNCB17_s_0NvYjNtNtBa_3cmp3Ord3minE0E0B1f_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i6.i.i.i

.lr.ph.i.i.i.i.i.i.i.i6.i.i.i:                    ; preds = %bb.fh, %.backedge.i.i.i.i.i.i.i.i.i.i.i
  %i.ail = phi ptr [ %i.aju, %.backedge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aih, %bb.fh ] ; 5 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 1 ; 3 uses
  %i.ain = load i8, ptr %i.ail, align 1, !noalias !2853, !noundef !19 ; 5 uses
  %i.aio = icmp sgt i8 %i.ain, -1
  br i1 %i.aio, label %bb.fi, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i6.i.i.i
  %i.aip = and i8 %i.ain, 31
  %i.aiq = zext nneg i8 %i.aip to i32             ; 3 uses
  %i.air = icmp ne ptr %i.aim, %i.aik
  tail call void @llvm.assume(i1 %i.air)
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ail, i64 2 ; 3 uses
  %i.ait = load i8, ptr %i.aim, align 1, !noalias !2853, !noundef !19
  %i.aiu = shl nuw nsw i32 %i.aiq, 6
  %i.aiv = and i8 %i.ait, 63
  %i.aiw = zext nneg i8 %i.aiv to i32             ; 2 uses
  %i.aix = or disjoint i32 %i.aiu, %i.aiw
  %i.aiy = icmp samesign ugt i8 %i.ain, -33
  br i1 %i.aiy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fj

bb.fi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i6.i.i.i
  %i.aiz = zext nneg i8 %i.ain to i32
  br label %bb.fj

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aja = icmp ne ptr %i.ais, %i.aik
  tail call void @llvm.assume(i1 %i.aja)
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ail, i64 3 ; 3 uses
  %i.ajc = load i8, ptr %i.ais, align 1, !noalias !2853, !noundef !19
  %i.ajd = shl nuw nsw i32 %i.aiw, 6
  %i.aje = and i8 %i.ajc, 63
  %i.ajf = zext nneg i8 %i.aje to i32
  %i.ajg = or disjoint i32 %i.ajd, %i.ajf         ; 2 uses
  %i.ajh = shl nuw nsw i32 %i.aiq, 12
  %i.aji = or disjoint i32 %i.ajg, %i.ajh
  %i.ajj = icmp samesign ugt i8 %i.ain, -17
  br i1 %i.ajj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fj

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ajk = icmp ne ptr %i.ajb, %i.aik
  tail call void @llvm.assume(i1 %i.ajk)
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ail, i64 4
  %i.ajm = load i8, ptr %i.ajb, align 1, !noalias !2853, !noundef !19
  %i.ajn = shl nuw nsw i32 %i.aiq, 18
  %i.ajo = and i32 %i.ajn, 1835008
  %i.ajp = shl nuw nsw i32 %i.ajg, 6
  %i.ajq = and i8 %i.ajm, 63
  %i.ajr = zext nneg i8 %i.ajq to i32
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next:bb.a
  %i.cil = xor i32 %i.cik, 1701082476
  %i.cim = or i32 %i.cii, %i.cil
  %i.cin = icmp ne i32 %i.cim, 0
  %i.cio = zext i1 %i.cin to i32
  %i.cip = icmp eq i32 %i.cio, 0
  br i1 %i.cip, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.thread.thread.i.i

bb.qw:                                            ; preds = %bb.qp
  %i.ciq = load i16, ptr %i.ccq, align 1
  %i.cir = icmp ne i16 %i.ciq, 29537
  %i.cis = zext i1 %i.cir to i32
  %i.cit = icmp eq i32 %i.cis, 0
  br i1 %i.cit, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.thread.thread.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.thread.thread.i.i: ; preds = %bb.qw, %bb.qv, %bb.qu, %bb.qs, %bb.qr, %bb.qo, %bb.qn
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i: ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.i.i141, %bb.qa
  %i.ciu = phi ptr [ %i.caw, %bb.qa ], [ %i.caw, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.i.i141 ], [ %i.ccq, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i ]
  %i.civ = phi i64 [ %i.cav, %bb.qa ], [ %i.cav, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.i.i141 ], [ %i.ccr, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i ]
  %i.ciw = icmp eq i64 %i.civ, 1
  br i1 %i.ciw, label %bb.qx, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.qx:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i
  %lhsc.i.i = load i8, ptr %i.ciu, align 1, !noalias !3040
  %i.cix = icmp eq i8 %lhsc.i.i, 95
  %spec.select.i.i142 = select i1 %i.cix, i8 56, i8 99
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.qy:                                            ; preds = %_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4math.exit
  %.sroa.4.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx191, ptr noundef nonnull align 1 dereferenceable(31) %i.at, i64 31, i1 false)
  store i8 %i.bur, ptr %0, align 8
  %i.ciy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.7187.8.copyload188, ptr %i.ciy, align 8
  br label %bb.qz

bb.qz:                                            ; preds = %_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer3raw.exit, %bb.qy, %bb.rg
  ret void

bb.ra:                                            ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode5errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringReEB7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ar, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kl, i64 noundef %i.kk)
          to label %bb.rh unwind label %bb.sf

bb.rb:                                            ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ciz = icmp samesign ugt i64 %i.kk, 15
  br i1 %i.ciz, label %.lr.ph.i.i.i.i.i.i170, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false), !noalias !3043
  %.not.i.i.i.i.i166.not = icmp ugt i64 %i.kj, %.sroa.0.0.lcssa.i
  br i1 %.not.i.i.i.i.i166.not, label %.lr.ph.preheader.i.i.i.i.i, label %bb.rf

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.rc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %i.kl, i64 range(i64 0, -9223372036854775808) %i.kk, i1 false), !noalias !3044
  %.0..0..0..0..0..0..0..0..0..sroa.0.0.copyload1.pre.i.i.i = load ptr, ptr %i.e, align 8, !noalias !3045
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.8..8..8..8..8..8..8..8..8..sroa.5.0.copyload3.pre.i.i.i = load i56, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !3045
  %i.cja = zext i56 %.8..8..8..8..8..8..8..8..8..sroa.5.0.copyload3.pre.i.i.i to i64
  br label %bb.rf

.lr.ph.i.i.i.i.i.i170:                            ; preds = %bb.rb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3046
  store ptr inttoptr (i64 16 to ptr), ptr %i.d, align 8, !noalias !3046
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 0, ptr %i.cjb, align 8, !noalias !3046
  call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.kk)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i172 unwind label %bb.rd, !noalias !3046

bb.rd:                                            ; preds = %.lr.ph.i.i.i.i.i.i170
  %i.cjc = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i171 = load ptr, ptr %i.d, align 8, !noalias !3046, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i.i.i171) #59
          to label %common.resume unwind label %bb.re, !noalias !3046

bb.re:                                            ; preds = %bb.rd
  %i.cjd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !3046
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i172: ; preds = %.lr.ph.i.i.i.i.i.i170
  %i.cje = load ptr, ptr %i.d, align 8, !alias.scope !3047, !noalias !3048, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i.i.i.i173 = load i64, ptr %i.cjb, align 8, !alias.scope !3047, !noalias !3048 ; 2 uses
  %scevgep.i.i.i.i.i.i174 = getelementptr nuw i8, ptr %i.cje, i64 %.promoted.i.i.i.i.i.i173
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i.i.i174, ptr nonnull readonly align 1 %i.kl, i64 range(i64 0, -9223372036854775808) %i.kk, i1 false), !noalias !3049
  %i.cjf = add i64 %.promoted.i.i.i.i.i.i173, %i.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3046
  br label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit

bb.rf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.rc
  %.8..8..sroa.5.0.copyload3.i.i.i = phi i64 [ %i.cja, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %bb.rc ]
  %.0..0..sroa.0.0.copyload1.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..sroa.0.0.copyload1.pre.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %bb.rc ]
  %.sroa.5.15.insert.ext.i.i.i = shl nuw nsw i64 %i.kk, 56
  %.sroa.5.15.insert.shift.i.i.i = or disjoint i64 %.8..8..sroa.5.0.copyload3.i.i.i, %.sroa.5.15.insert.ext.i.i.i
  %.sroa.5.15.insert.insert.i.i.i = or disjoint i64 %.sroa.5.15.insert.shift.i.i.i, -9223372036854775808
  br label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit

_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i172, %bb.rf
  %.sroa.5.0.i.i.i = phi i64 [ %i.cjf, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i172 ], [ %.sroa.5.15.insert.insert.i.i.i, %bb.rf ]
  %.sroa.0.0.i.i.i167 = phi ptr [ %i.cje, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i172 ], [ %.0..0..sroa.0.0.copyload1.i.i.i, %bb.rf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.rg

bb.rg:                                            ; preds = %bb.se, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit
  %.sroa.6.0 = phi i64 [ 1, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit ], [ %.sroa.6.0.copyload206, %bb.se ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i.i.i, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit ], [ %.sroa.5.0.copyload202, %bb.se ]
  %.sroa.4198.0 = phi ptr [ %.sroa.0.0.i.i.i167, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit ], [ %.sroa.4198.0.copyload200, %bb.se ]
  %.sroa.3.0 = phi i8 [ %.sroa.03.0, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit ], [ %.sroa.3.0.copyload195, %bb.se ]
  %.sroa.0192.0 = phi i8 [ 0, %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode4leafReEB7_.exit ], [ %.sroa.0192.0.copyload193, %bb.se ]
  store i8 %.sroa.03.0, ptr %0, align 8
  %i.cjg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0192.0, ptr %i.cjg, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4196.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4196, i64 6, i1 false)
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4198.0, ptr %.sroa.4198.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx203, align 8
  br label %bb.qz

bb.rh:                                            ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  %i.cjh = load i8, ptr %i.ar, align 8, !range !30, !alias.scope !3052, !noalias !3050, !noundef !19
  switch i8 %i.cjh, label %default.unreachable564 [
    i8 0, label %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut.exit.i
    i8 1, label %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut.exit.i
    i8 2, label %bb.ri
    i8 3, label %bb.rj
  ]

bb.ri:                                            ; preds = %bb.rh
  %i.cji = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cjj = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.cji) #63
          to label %bb.rk unwind label %bb.sc, !noalias !3050

bb.rj:                                            ; preds = %bb.rh
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cjl = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.cjk) #63
          to label %.noexc5.i unwind label %bb.sc, !noalias !3050

.noexc5.i:                                        ; preds = %bb.rj
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cjl, i64 24
  br label %bb.rk

.body.i:                                          ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB25_10SyntaxNode10with_hintsINtBZ_6EcoVecB1x_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit.i.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.rk:                                            ; preds = %.noexc5.i, %bb.ri
  %.sroa.0.0.i.ph.i = phi ptr [ %i.cjj, %bb.ri ], [ %i.cjm, %.noexc5.i ] ; 8 uses
  %.not.i.i.i.i175 = icmp eq ptr %.sroa.4.0.copyload, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i175, label %bb.rn, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.cjn = getelementptr inbounds i8, ptr %.sroa.4.0.copyload, i64 -16
  %i.cjo = load atomic i64, ptr %i.cjn acquire, align 8, !noalias !3053
  %i.cjp = icmp eq i64 %i.cjo, 1
  %i.cjq = zext i1 %i.cjp to i8
  br label %bb.rn

_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut.exit.i: ; preds = %bb.rh, %bb.rh
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #58
          to label %bb.rm unwind label %bb.sc, !noalias !3054

bb.rm:                                            ; preds = %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut.exit.i
  unreachable

bb.rn:                                            ; preds = %bb.rl, %bb.rk
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.cjq, %bb.rl ], [ 1, %bb.rk ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3056
  store ptr %.sroa.4.0.copyload, ptr %i.c, align 8, !alias.scope !3057, !noalias !3058
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !3057, !noalias !3058
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !3057, !noalias !3058
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !3057, !noalias !3058
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %.sroa.814.0..sroa_idx.i, align 8, !alias.scope !3057, !noalias !3058
  %.not.i.i176 = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i.i176, label %.thread.i184, label %bb.rq

.thread.i184:                                     ; preds = %bb.rn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3056
  store ptr %.sroa.4.0.copyload, ptr %i.b, align 8, !noalias !3058
  %.sroa.55.0..sroa_idx655.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.68.0..sroa_idx956.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.814.0..sroa_idx1558.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx655.i, i8 0, i64 24, i1 false)
  store i8 %.sroa.02.0.i.i.i.i, ptr %.sroa.814.0..sroa_idx1558.i.a, align 8, !noalias !3058
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB25_10SyntaxNode10with_hintsINtBZ_6EcoVecB1x_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit.i.i

.lr.ph.i.i177:                                    ; preds = %bb.rq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3056
  store ptr %.sroa.4.0.copyload, ptr %i.b, align 8, !noalias !3058
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.55.0..sroa_idx6.i, align 8, !noalias !3058
  %.sroa.68.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.sroa.711.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.711.0..sroa_idx12.i, align 8, !noalias !3058
  %.sroa.814.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %.sroa.814.0..sroa_idx15.i, align 8, !noalias !3058
  %i.cjr = trunc nuw i8 %.sroa.02.0.i.i.i.i to i1
  %i.cjs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph.i, i64 8 ; 6 uses
  br i1 %i.cjr, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i178

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i177
  %.pre.i.i182 = load i64, ptr %i.cjs, align 8, !alias.scope !3059, !noalias !3060
  %.val.i.us.pre.i.i = load ptr, ptr %.sroa.0.0.i.ph.i, align 8, !alias.scope !3059, !noalias !3060
  br label %.lr.ph.split.us.i.i183

.lr.ph.split.us.i.i183:                           ; preds = %bb.rp, %.lr.ph.split.us.preheader.i.i
  %.val.i.us.i.i = phi ptr [ %i.cka, %bb.rp ], [ %.val.i.us.pre.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %i.cjt = phi i64 [ %i.ckd, %bb.rp ], [ %.pre.i.i182, %.lr.ph.split.us.preheader.i.i ]
  %i.cju = phi i64 [ %i.cjv, %bb.rp ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %i.cjv = add nuw i64 %i.cju, 1                  ; 3 uses
  %i.cjw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload, i64 %i.cju ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.us.i.i = load ptr, ptr %i.cjw, align 8, !noalias !3061 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %i.cjw, i64 8
  %.sroa.5.0.copyload3.i.i.i.us.i.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.us.i.i, align 8, !noalias !3061 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  %.not.i.i.us.i.i = icmp eq ptr %.val.i.us.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.us.i.i, label %bb.ro

bb.ro:                                            ; preds = %.lr.ph.split.us.i.i183
  %i.cjx = getelementptr i8, ptr %.val.i.us.i.i, i64 -8
  %.val.i.i.us.i.i = load i64, ptr %i.cjx, align 8, !noalias !3063, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.us.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.us.i.i: ; preds = %bb.ro, %.lr.ph.split.us.i.i183
  %.sroa.02.0.i.i.us.i.i = phi i64 [ %.val.i.i.us.i.i, %bb.ro ], [ 0, %.lr.ph.split.us.i.i183 ]
  %i.cjy = icmp eq i64 %i.cjt, %.sroa.02.0.i.i.us.i.i
  %i.cjz = zext i1 %i.cjy to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtB6_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE7reserveB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.ph.i, i64 noundef %i.cjz)
          to label %bb.rp unwind label %.split.us.i.i, !noalias !3060, !inline_history !0

bb.rp:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.us.i.i
  %i.cka = load ptr, ptr %.sroa.0.0.i.ph.i, align 8, !alias.scope !3059, !noalias !3060, !nonnull !19, !noundef !19 ; 2 uses
  %i.ckb = load i64, ptr %i.cjs, align 8, !alias.scope !3059, !noalias !3060, !noundef !19 ; 2 uses
  %i.ckc = getelementptr inbounds nuw [24 x i8], ptr %i.cka, i64 %i.ckb ; 3 uses
  store ptr %.sroa.0.0.copyload1.i.i.i.us.i.i, ptr %i.ckc, align 8, !noalias !3064
  %.sroa.57.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.ckc, i64 8
  store i64 %.sroa.5.0.copyload3.i.i.i.us.i.i, ptr %.sroa.57.0..sroa_idx.us.i.i, align 8, !noalias !3064
  %.sroa.78.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.ckc, i64 16
  store i32 0, ptr %.sroa.78.0..sroa_idx.us.i.i, align 8, !noalias !3064
  %i.ckd = add i64 %i.ckb, 1                      ; 2 uses
  store i64 %i.ckd, ptr %i.cjs, align 8, !alias.scope !3059, !noalias !3060
  %exitcond39.not.i.i = icmp eq i64 %i.cjv, %.sroa.6.0.copyload
  br i1 %exitcond39.not.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB25_10SyntaxNode10with_hintsINtBZ_6EcoVecB1x_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit.i.i, label %.lr.ph.split.us.i.i183

.split.us.i.i:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.us.i.i
  %i.cke = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.rq:                                            ; preds = %bb.rn
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtB6_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE7reserveB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.ph.i, i64 noundef %.sroa.6.0.copyload)
          to label %.lr.ph.i.i177 unwind label %bb.sb, !noalias !3065

.lr.ph.split.i.i178:                              ; preds = %.lr.ph.i.i177, %bb.rz
  %i.ckf = phi i64 [ %i.ckg, %bb.rz ], [ 0, %.lr.ph.i.i177 ] ; 2 uses
  %i.ckg = add nuw i64 %i.ckf, 1                  ; 4 uses
  %i.ckh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload, i64 %i.ckf ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 15
  %i.ckj = load i8, ptr %i.cki, align 1, !alias.scope !3069, !noalias !3070, !noundef !19
  %.not.i.i.i.i.i.i.i.i = icmp sgt i8 %i.ckj, -1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ckh, align 8, !alias.scope !3071, !noalias !3072 ; 5 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckh, i64 8
  %.val10.i.i.i.i.i.i.i.i = load i64, ptr %i.ckk, align 8, !alias.scope !3071, !noalias !3072 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.rr, label %bb.rv

bb.rr:                                            ; preds = %.lr.ph.split.i.i178
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.rv, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.ckl = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 -16
  %i.ckm = atomicrmw add ptr %i.ckl, i64 1 monotonic, align 8, !noalias !3073
  %i.ckn = icmp slt i64 %i.ckm, 0
  br i1 %i.ckn, label %bb.rt, label %bb.rv, !prof !23

bb.rt:                                            ; preds = %bb.rs
  store i64 %i.ckg, ptr %.sroa.68.0..sroa_idx9.i, align 8, !noalias !3056
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #58
          to label %.noexc.i.i181 unwind label %bb.ru

.noexc.i.i181:                                    ; preds = %bb.rt
  unreachable

bb.ru:                                            ; preds = %bb.rt
  %i.cko = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.rw, %bb.ru
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cko, %bb.ru ], [ %.us-phi24.i.i, %bb.rw ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1e_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2i_10SyntaxNode10with_hintsINtB1c_6EcoVecB1K_EE0EEB2k_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #59
          to label %.body.thread.i unwind label %bb.sa, !noalias !3056

bb.rv:                                            ; preds = %bb.rs, %bb.rr, %.lr.ph.split.i.i178
  %.sroa.55.0.ph.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i178 ], [ %.val.i.i.i.i.i.i.i.i, %bb.rs ], [ inttoptr (i64 16 to ptr), %bb.rr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  %i.ckp = load i64, ptr %i.cjs, align 8, !alias.scope !3059, !noalias !3060, !noundef !19
  %.val.i.i.i179 = load ptr, ptr %.sroa.0.0.i.ph.i, align 8, !alias.scope !3059, !noalias !3060, !nonnull !19, !noundef !19 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %.val.i.i.i179, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i6.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.i.i, label %bb.rx

.split.i.i:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.i.i
  %i.ckq = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.rw:                                            ; preds = %.split.i.i, %.split.us.i.i
  %.us-phi.i.i = phi i64 [ %i.ckg, %.split.i.i ], [ %i.cjv, %.split.us.i.i ]
  %.us-phi22.i.i = phi i64 [ %.val10.i.i.i.i.i.i.i.i, %.split.i.i ], [ %.sroa.5.0.copyload3.i.i.i.us.i.i, %.split.us.i.i ]
  %.us-phi23.i.i = phi ptr [ %.sroa.55.0.ph.i.i, %.split.i.i ], [ %.sroa.0.0.copyload1.i.i.i.us.i.i, %.split.us.i.i ]
  %.us-phi24.i.i = phi { ptr, i32 } [ %i.ckq, %.split.i.i ], [ %i.cke, %.split.us.i.i ]
  store i64 %.us-phi.i.i, ptr %.sroa.68.0..sroa_idx9.i, align 8, !noalias !3056
  %.sroa.57.sroa.4.0.extract.shift.le.i.i = lshr i64 %.us-phi22.i.i, 56
  %.sroa.57.sroa.4.0.extract.trunc.le.i.i = trunc nuw i64 %.sroa.57.sroa.4.0.extract.shift.le.i.i to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_(ptr %.us-phi23.i.i, i8 %.sroa.57.sroa.4.0.extract.trunc.le.i.i) #59
          to label %.body.i.i unwind label %bb.ry, !noalias !3063, !inline_history !0

bb.rx:                                            ; preds = %bb.rv
  %i.ckr = getelementptr i8, ptr %.val.i.i.i179, i64 -8
  %.val.i.i.i.i180 = load i64, ptr %i.ckr, align 8, !noalias !3063, !noundef !19
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.i.i: ; preds = %bb.rx, %bb.rv
  %.sroa.02.0.i.i.i7.i = phi i64 [ %.val.i.i.i.i180, %bb.rx ], [ 0, %bb.rv ]
  %i.cks = icmp eq i64 %i.ckp, %.sroa.02.0.i.i.i7.i
  %i.ckt = zext i1 %i.cks to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtB6_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE7reserveB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.ph.i, i64 noundef %i.ckt)
          to label %bb.rz unwind label %.split.i.i, !noalias !3060, !inline_history !0

bb.ry:                                            ; preds = %bb.rw
  %i.cku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !3063, !inline_history !0
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB25_10SyntaxNode10with_hintsINtBZ_6EcoVecB1x_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit.i.i: ; preds = %bb.rz, %bb.rp, %.thread.i184
  %.sroa.68.0..sroa_idx959.i = phi ptr [ %.sroa.68.0..sroa_idx956.i, %.thread.i184 ], [ %.sroa.68.0..sroa_idx9.i, %bb.rp ], [ %.sroa.68.0..sroa_idx9.i, %bb.rz ]
  store i64 %.sroa.6.0.copyload, ptr %.sroa.68.0..sroa_idx959.i, align 8, !noalias !3056
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1e_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2i_10SyntaxNode10with_hintsINtB1c_6EcoVecB1K_EE0EEB2k_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b)
          to label %bb.se unwind label %.body.i, !noalias !3054

bb.rz:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i.i.i
  %i.ckv = load ptr, ptr %.sroa.0.0.i.ph.i, align 8, !alias.scope !3059, !noalias !3060, !nonnull !19, !noundef !19
  %i.ckw = load i64, ptr %i.cjs, align 8, !alias.scope !3059, !noalias !3060, !noundef !19 ; 2 uses
  %i.ckx = getelementptr inbounds nuw [24 x i8], ptr %i.ckv, i64 %i.ckw ; 3 uses
  store ptr %.sroa.55.0.ph.i.i, ptr %i.ckx, align 8, !noalias !3064
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ckx, i64 8
  store i64 %.val10.i.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !3064
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ckx, i64 16
  store i32 0, ptr %.sroa.78.0..sroa_idx.i.i, align 8, !noalias !3064
  %i.cky = add i64 %i.ckw, 1
  store i64 %i.cky, ptr %i.cjs, align 8, !alias.scope !3059, !noalias !3060
  %exitcond.not.i.i = icmp eq i64 %i.ckg, %.sroa.6.0.copyload
  br i1 %exitcond.not.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB25_10SyntaxNode10with_hintsINtBZ_6EcoVecB1x_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit.i.i, label %.lr.ph.split.i.i178

bb.sa:                                            ; preds = %bb.sb, %.body.i.i
  %i.ckz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !3056
  unreachable

bb.sb:                                            ; preds = %bb.rq
  %i.cla = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1e_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2i_10SyntaxNode10with_hintsINtB1c_6EcoVecB1K_EE0EEB2k_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #59
          to label %.body.thread.i unwind label %bb.sa, !noalias !3056

.body.thread.i:                                   ; preds = %bb.sc, %bb.sb, %.body.i.i, %.body.i
  %eh.lpad-body20.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %lpad.thr_comm.i, %bb.sc ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cla, %bb.sb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar) #59
          to label %common.resume unwind label %bb.sd, !noalias !3050

bb.sc:                                            ; preds = %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut.exit.i, %bb.rj, %bb.ri
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload) #59
          to label %.body.thread.i unwind label %bb.sd, !noalias !3054

bb.sd:                                            ; preds = %bb.sc, %.body.thread.i
  %i.clb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
