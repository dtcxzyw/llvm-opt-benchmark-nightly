Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.0?download=true
inline.NumInlined: 119
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsj1ugBVjDER0_8xml5ever:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bf to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %i.ab
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread
  %i.bj = phi i64 [ %i.ab, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit ] ; 2 uses
  br i1 %i.f, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.bk = and i64 %i.d, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr i8, ptr %i.c, i64 %i.bl
  %i.bn = trunc i64 %i.d to i1
  br i1 %i.bn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !104, !noundef !4
  %i.bq = zext i32 %i.bp to i64
  br label %bb.p

bb.o:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.i = phi i64 [ %i.bq, %bb.n ], [ 0, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %.thread, %bb.p, %bb.o
  %i.bu = phi i64 [ %i.aa, %bb.p ], [ %i.aa, %bb.o ], [ 0, %.thread ]
  %i.bv = phi i64 [ %i.bj, %bb.p ], [ %i.bj, %bb.o ], [ 0, %.thread ] ; 2 uses
  %.sroa.0.0.i3.i = phi ptr [ %i.bt, %bb.p ], [ %i.br, %bb.o ], [ inttoptr (i64 1 to ptr), %.thread ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.bx = icmp eq i32 %3, 0
  %i.by = inttoptr i64 %i.bv to ptr
  %i.bz = select i1 %i.bx, ptr inttoptr (i64 15 to ptr), ptr %i.by
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 1 %i.bw, i64 range(i64 0, 9) %i.bv, i1 false), !noalias !111
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i
  %.sroa.5.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %.sroa.0.07 = phi ptr [ %i.bz, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.bi, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.07, ptr %i.ca, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16, %bb.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit
  %.sink = phi i8 [ 1, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16 ], [ 1, %bb.r ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %.thread23, %.thread, %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.cb, align 1
  br label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 5) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 7 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr)
  br i1 %i.i, label %.thread40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = trunc nuw i64 %i.h to i32                ; 2 uses
  %.sroa.01.0 = select i1 %i.j, i32 %i.m, i32 %i.l ; 2 uses
  %i.n = trunc nuw nsw i64 %2 to i32
  %i.o = add i32 %.sroa.01.0, %i.n                ; 7 uses
  %i.p = icmp ult i32 %i.o, %.sroa.01.0
  br i1 %i.p, label %bb.d, label %bb.c, !prof !112

.thread40:                                        ; preds = %bb.a
  %i.q = trunc nuw nsw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i32 %i.o, 9
  br i1 %i.r, label %bb.v, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !nonnull !4, !noundef !4
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.u = icmp ult ptr %i.g, inttoptr (i64 16 to ptr)
  %i.v = trunc i64 %i.h to i1                     ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.e
  %i.w = and i64 %i.h, 1
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %.sroa.01.0.i.i.i.i = select i1 %i.v, i64 %i.ab, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = zext i32 %i.l to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i
  %.pre-phi = select i1 %i.j, i32 %i.m, i32 %i.l
  %.sroa.4.0.i.i.i = select i1 %i.j, i64 %i.h, i64 %i.ad ; 3 uses
  %.sroa.0.0.i.i.i = select i1 %i.j, ptr %i.k, ptr %i.ae
  %spec.store.select.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %.pre-phi, i32 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !119
  %i.af = zext i32 %spec.store.select.i.i.i.i to i64
  %i.ag = add nuw nsw i64 %i.af, 15
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !119
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !119
  %i.aj = load i64, ptr %i.d, align 8, !range !5, !noalias !119, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !126, !noalias !119, !noundef !4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ao = load i64, ptr %i.an, align 8, !noalias !119
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #22, !noalias !119
  unreachable

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !119, !nonnull !4, !noundef !4 ; 7 uses
  %i.aq = icmp samesign ult i64 %i.ah, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !119
  store i64 %i.am, ptr %i.e, align 8, !noalias !119
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !noalias !119
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.as, align 8, !noalias !119
  %i.at = shl i64 %i.am, 4
  %i.au = add i64 %i.at, -16                      ; 2 uses
  %i.av = icmp ugt i64 %i.au, 4294967295
  br i1 %i.av, label %bb.h, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i, !prof !11

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.c, align 8, !noalias !119
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !119
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.j unwind label %bb.i, !noalias !119

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.k, !noalias !119

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !119
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.l, %bb.o, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.dc, %bb.y ], [ %i.aw, %bb.i ], [ %i.az, %bb.l ], [ %i.bj, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.g
  store i64 1, ptr %i.ap, align 8, !noalias !127
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 0, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !119
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i, i1 false), !noalias !128
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i64 %i.au, 32
  %.sroa.04.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.4.0.i.i.i ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ap, ptr %0, align 8, !alias.scope !129
  store i64 %.sroa.04.0.insert.insert.i.i.i, ptr %i.k, align 8, !alias.scope !129
  br label %common.resume

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i
  store ptr %i.ap, ptr %0, align 8, !alias.scope !129
  store i64 %.sroa.04.0.insert.insert.i.i.i, ptr %i.k, align 8, !alias.scope !129
  %i.ba = trunc i64 %.sroa.4.0.i.i.i to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i: ; preds = %bb.e, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i
  %i.bb = phi i32 [ %i.ba, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.l, %bb.e ]
  %i.bc = phi ptr [ %i.ap, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.0.0.i.i = load i32, ptr %i.bd, align 4, !noalias !130, !noundef !4 ; 3 uses
  %.not.i.i = icmp ugt i32 %i.o, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.m, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i
  %i.be = add i32 %i.o, -1
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 true) ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.p, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !133, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !133
  unreachable

bb.o:                                             ; preds = %bb.s, %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.u, !noalias !133

bb.p:                                             ; preds = %bb.m
  %i.bk = lshr i32 -1, %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133
  %i.bl = zext i32 %.sroa.0.0.i.i to i64
  %i.bm = add nuw nsw i64 %i.bl, 15
  %i.bn = lshr i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.b, align 8, !noalias !133
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bp, align 8, !noalias !133
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bq, align 8, !noalias !133
  %narrow.i.i = add nuw i32 %i.bk, 16
  %i.br = lshr i32 %narrow.i.i, 4
  %narrow14.i.i = add nuw nsw i32 %i.br, 1
  %i.bs = zext nneg i32 %narrow14.i.i to i64
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0, i64 noundef %i.bs, i64 noundef 8, i64 noundef 16)
          to label %bb.q unwind label %bb.o, !noalias !133

bb.q:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %i.b, align 8, !range !63, !noalias !133, !noundef !4
  %i.bu = shl i64 %i.bt, 4
  %i.bv = add i64 %i.bu, -16                      ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 4294967295
  br i1 %i.bw, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %i.bp, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.by = trunc nuw i64 %i.bv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.a, align 8, !noalias !133
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !133
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.t unwind label %bb.o, !noalias !133

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !133
  unreachable

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i, %bb.r
  %.sroa.63.0.i = phi i32 [ %i.by, %bb.r ], [ %.sroa.0.0.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i ] ; 2 uses
  %.sroa.0.0.i19 = phi ptr [ %i.bx, %bb.r ], [ %i.bc, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i ] ; 5 uses
  store ptr %.sroa.0.0.i19, ptr %0, align 8, !alias.scope !113
  store i32 %.sroa.63.0.i, ptr %i.bd, align 4, !alias.scope !113
  %i.ca = ptrtoint ptr %.sroa.0.0.i19 to i64      ; 3 uses
  %i.cb = and i64 %i.ca, 1
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr i8, ptr %.sroa.0.0.i19, i64 %i.cc
  %i.ce = trunc i64 %i.ca to i1
  %.sroa.01.0.i = select i1 %i.ce, i32 %.sroa.63.0.i, i32 0
  %i.cf = icmp eq ptr %.sroa.0.0.i19, inttoptr (i64 15 to ptr)
  %i.cg = icmp ult ptr %.sroa.0.0.i19, inttoptr (i64 9 to ptr)
  %i.ch = trunc nuw nsw i64 %i.ca to i32
  %spec.select = select i1 %i.cg, i32 %i.ch, i32 %i.bb
  %.sroa.04.0.i = select i1 %i.cf, i32 0, i32 %spec.select
  %i.ci = add i32 %.sroa.04.0.i, %.sroa.01.0.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  store i32 %i.o, ptr %i.k, align 8
  br label %bb.x

bb.v:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  br i1 %i.j, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = and i64 %i.h, 1
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr i8, ptr %i.g, i64 %i.cn
  %i.cp = trunc i64 %i.h to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = zext i32 %i.cr to i64
  %.sroa.01.0.i.i21 = select i1 %i.cp, i64 %i.cs, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = zext i32 %i.l to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.01.0.i.i21
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24: ; preds = %bb.v, %.thread40, %bb.w
  %i.cw = phi i32 [ %i.o, %bb.w ], [ %i.q, %.thread40 ], [ %i.o, %bb.v ] ; 2 uses
  %.sroa.4.0.i22 = phi i64 [ %i.cu, %bb.w ], [ 0, %.thread40 ], [ %i.h, %bb.v ] ; 2 uses
  %.sroa.0.0.i23 = phi ptr [ %i.cv, %bb.w ], [ inttoptr (i64 1 to ptr), %.thread40 ], [ %i.k, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 1 %.sroa.0.0.i23, i64 %.sroa.4.0.i22, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.4.0.i22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.cy = zext nneg i32 %i.cw to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.cz = icmp eq i32 %i.cw, 0
  %i.da = inttoptr i64 %i.cy to ptr
  %i.db = select i1 %i.cz, ptr inttoptr (i64 15 to ptr), ptr %i.da ; 2 uses
  store i64 0, ptr %.sroa.4.i, align 8, !noalias !136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i, ptr nonnull readonly align 8 %i.f, i64 range(i64 0, 9) %i.cy, i1 false), !noalias !140
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !136 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.z, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit
  ret void

bb.y:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24
  %i.dc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.db, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %common.resume

bb.z:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24
  store ptr %i.db, ptr %0, align 8
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx29, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE10dying_nextCsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !147, !noalias !148
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !147, !noalias !148 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !147, !noalias !148 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !147, !noalias !148 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !147, !noalias !148
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !noalias !150, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !151

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !150, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !141
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !141
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !141
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1T_IB2v_NtB3d_18NamespaceStaticSetEENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ag = load i64, ptr %1, align 8, !range !5, !alias.scope !159, !noalias !160, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !159, !noalias !160, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !159, !noalias !160, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 192
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !162, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !163

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !159, !noalias !160
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !159, !noalias !160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !159, !noalias !160
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 192
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !162, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1T_IB2v_NtB3d_18NamespaceStaticSetEENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !171

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !164, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit, !prof !11

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %.noexc1.i.i unwind label %bb.i, !noalias !172

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !173
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsj1ugBVjDER0_8xml5ever9tokenizer11option_push(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 14 uses
  %i.d = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.g = icmp samesign ult i32 %1, 128
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %1, 2048
  %i.i = trunc i32 %1 to i8
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 3 uses
  %i.l = lshr i32 %1, 6
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 2 uses
  %i.p = lshr i32 %1, 12
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = lshr i32 %1, 18
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = or disjoint i8 %i.u, -16
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.w = trunc nuw nsw i32 %1 to i8
  store i8 %i.w, ptr %i.c, align 4, !alias.scope !174
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.c
  %i.x = or disjoint i8 %i.m, -64
  store i8 %i.x, ptr %i.c, align 4, !alias.scope !174
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.k, ptr %i.y, align 1, !alias.scope !174
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.f:                                             ; preds = %bb.c
  %i.z = icmp samesign ult i32 %1, 65536
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = or disjoint i8 %i.q, -32
  store i8 %i.aa, ptr %i.c, align 4, !alias.scope !174
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.o, ptr %i.ab, align 1, !alias.scope !174
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.k, ptr %i.ac, align 2, !alias.scope !174
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

bb.h:                                             ; preds = %bb.f
  store i8 %i.v, ptr %i.c, align 4, !alias.scope !174
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.s, ptr %i.ad, align 1, !alias.scope !174
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.o, ptr %i.ae, align 2, !alias.scope !174
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.k, ptr %i.af, align 1, !alias.scope !174
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sroa.0.05.i = phi i64 [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.h ]
  call fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.05.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  store ptr inttoptr (i64 15 to ptr), ptr %i.b, align 8, !alias.scope !180, !noalias !183
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !180, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !177
  store i32 0, ptr %i.a, align 4, !noalias !177
  %i.ag = icmp samesign ult i32 %1, 128
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp samesign ult i32 %1, 2048
  %i.ai = trunc i32 %1 to i8
  %i.aj = and i8 %i.ai, 63
  %i.ak = or disjoint i8 %i.aj, -128              ; 3 uses
  %i.al = lshr i32 %1, 6
  %i.am = trunc i32 %i.al to i8                   ; 2 uses
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128              ; 2 uses
  %i.ap = lshr i32 %1, 12
  %i.aq = trunc i32 %i.ap to i8                   ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = or disjoint i8 %i.ar, -128
  %i.at = lshr i32 %1, 18
  %i.au = trunc nuw nsw i32 %i.at to i8
  %i.av = or disjoint i8 %i.au, -16
  br i1 %i.ah, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aw = trunc nuw nsw i32 %1 to i8
  store i8 %i.aw, ptr %i.a, align 4, !alias.scope !185, !noalias !177
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ax = or disjoint i8 %i.am, -64
  store i8 %i.ax, ptr %i.a, align 4, !alias.scope !185, !noalias !177
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ak, ptr %i.ay, align 1, !alias.scope !185, !noalias !177
  br label %bb.q

bb.m:                                             ; preds = %bb.j
  %i.az = icmp samesign ult i32 %1, 65536
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ba = or disjoint i8 %i.aq, -32
  store i8 %i.ba, ptr %i.a, align 4, !alias.scope !185, !noalias !177
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ao, ptr %i.bb, align 1, !alias.scope !185, !noalias !177
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ak, ptr %i.bc, align 2, !alias.scope !185, !noalias !177
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store i8 %i.av, ptr %i.a, align 4, !alias.scope !185, !noalias !177
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.as, ptr %i.bd, align 1, !alias.scope !185, !noalias !177
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ao, ptr %i.be, align 2, !alias.scope !185, !noalias !177
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ak, ptr %i.bf, align 1, !alias.scope !185, !noalias !177
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #19
          to label %bb.s unwind label %bb.r, !noalias !177

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.sroa.0.05.i.i = phi i64 [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.n ], [ 4, %bb.o ]
  invoke fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i.i)
          to label %bb.t unwind label %bb.p, !noalias !177

bb.r:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !177
  unreachable

bb.s:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.bg

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !177
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  store i64 1, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsj1ugBVjDER0_8xml5ever9tokenizer13process_qname(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 5 uses
  %i.o = icmp eq ptr %i.m, inttoptr (i64 15 to ptr)
  br i1 %i.o, label %.thread38, label %bb.b

.thread38:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  br label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ult ptr %i.m, inttoptr (i64 9 to ptr) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.sroa.4.0.i = select i1 %i.p, i64 %i.n, i64 %i.s
  %i.t = icmp ult i64 %.sroa.4.0.i, 3
  br i1 %i.t, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  br label %bb.l

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit35, %bb.r, %bb.d
  %.pn7 = phi { ptr, i32 } [ %i.dq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit35 ], [ %i.u, %bb.d ], [ %.pn5, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %1) #19
          to label %bb.an unwind label %bb.aj

bb.d:                                             ; preds = %bb.p, %bb.ag, %bb.n, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.v = and i64 %i.n, 1
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w
  %i.y = trunc i64 %i.n to i1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %.sroa.01.0.i.i11 = select i1 %i.y, i64 %i.ab, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i11
  %.sroa.4.0.i12 = select i1 %i.p, i64 %i.n, i64 %i.s
  %.sroa.0.0.i13 = select i1 %i.p, ptr %i.q, ptr %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.0.0.i13, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.4.0.i12, ptr %i.ag, align 8
  store i32 0, ptr %i.l, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %i.ah, align 8
  %i.ai = invoke { i32, i32 } @_RNvMNtNtCsj1ugBVjDER0_8xml5ever9tokenizer5qnameNtB2_17QualNameTokenizer3run(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = extractvalue { i32, i32 } %i.ai, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.al = trunc i32 %i.aj to i1
  %.pr.pre = load ptr, ptr %1, align 8            ; 5 uses
  %i.am = ptrtoint ptr %.pr.pre to i64            ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq ptr %.pr.pre, inttoptr (i64 15 to ptr)
  br i1 %i.an, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp ult ptr %.pr.pre, inttoptr (i64 9 to ptr)
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.q, align 8, !noundef !4
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aq = trunc nuw i64 %i.am to i32
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %i.ar = icmp eq ptr %.pr.pre, inttoptr (i64 15 to ptr)
  br i1 %i.ar, label %bb.al, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.pr53 = phi ptr [ %i.m, %.thread ], [ %.pr.pre, %bb.k ] ; 2 uses
  %.pre-phi52 = phi i64 [ %i.n, %.thread ], [ %i.am, %bb.k ] ; 3 uses
  %i.as = icmp ult ptr %.pr53, inttoptr (i64 9 to ptr)
  br i1 %i.as, label %bb.al, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = and i64 %.pre-phi52, 1
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr i8, ptr %.pr53, i64 %i.au
  %i.aw = trunc i64 %.pre-phi52 to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = zext i32 %i.ay to i64
  %.sroa.01.0.i.i19 = select i1 %i.aw, i64 %i.az, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bb = load i32, ptr %i.q, align 8, !noundef !4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.0.i.i19
  br label %bb.al

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sroa.4.0.i16 = phi i32 [ %i.ap, %bb.i ], [ %i.aq, %bb.j ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, i32 noundef 0, i32 noundef %i.ak)
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.be = load i8, ptr %i.f, align 8, !range !193, !alias.scope !191, !noalias !188, !noundef !4
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !range !193, !alias.scope !191, !noalias !188, !noundef !4
  store i8 %i.bh, ptr %i.a, align 1, !noalias !194
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
          to label %.noexc9 unwind label %bb.d

.noexc9:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bj = add i32 %i.ak, 1
  %i.bk = xor i32 %i.ak, -1
  %i.bl = add i32 %.sroa.4.0.i16, %i.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %1, i32 noundef %i.bj, i32 noundef %i.bl)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit33, %bb.s
  %.pn5 = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %.pn42, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit33 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j) #19
          to label %bb.c unwind label %bb.aj

bb.s:                                             ; preds = %bb.u, %bb.af, %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.bn = load i8, ptr %i.e, align 8, !range !193, !alias.scope !198, !noalias !195, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !range !193, !alias.scope !198, !noalias !195, !noundef !4
  store i8 %i.bq, ptr %i.b, align 1, !noalias !200
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_0
begin_hunk_1_@_RNvNtCsj1ugBVjDER0_8xml5ever9tokenizer13process_qname:bb.a
  %i.bz = trunc i64 %i.bt to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = zext i32 %i.cb to i64
  %.sroa.01.0.i.i23 = select i1 %i.bz, i64 %i.cc, i64 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !4
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.01.0.i.i23
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.v
  %.sroa.4.0.i24 = phi i64 [ %i.cg, %bb.x ], [ %i.bt, %bb.y ], [ 0, %bb.v ]
  %.sroa.0.0.i25 = phi ptr [ %i.ch, %bb.x ], [ %i.ci, %bb.y ], [ inttoptr (i64 1 to ptr), %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.0.0.i25, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.4.0.i24, ptr %i.ck, align 8
  store i64 -1, ptr %i.d, align 8
  %i.cl = invoke noundef i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.aa unwind label %bb.ak     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.cl, ptr %i.h, align 8
  %i.cm = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.co = icmp eq ptr %i.cm, inttoptr (i64 15 to ptr)
  br i1 %i.co, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = icmp ult ptr %i.cm, inttoptr (i64 9 to ptr)
  br i1 %i.cp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = and i64 %i.cn, 1
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr i8, ptr %i.cm, i64 %i.cr
  %i.ct = trunc i64 %i.cn to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = zext i32 %i.cv to i64
  %.sroa.01.0.i.i27 = select i1 %i.ct, i64 %i.cw, i64 0
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !noundef !4
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.01.0.i.i27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.sroa.4.0.i28 = phi i64 [ %i.da, %bb.ac ], [ %i.cn, %bb.ad ], [ 0, %bb.aa ]
  %.sroa.0.0.i29 = phi ptr [ %i.db, %bb.ac ], [ %i.dc, %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0.i29, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.4.0.i28, ptr %i.de, align 8
  store i64 -1, ptr %i.c, align 8
  %i.df = invoke noundef i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.af unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cl, ptr %i.dg, align 8
  store i64 1, ptr %0, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i)
          to label %bb.ag unwind label %bb.s

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j)
          to label %bb.ah unwind label %bb.d

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %bb.ah
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  ret void

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit33, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit, %bb.r, %bb.c
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.ae
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.h) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit33 unwind label %bb.aj

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit33: ; preds = %bb.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit
  %.pn42 = phi { ptr, i32 } [ %i.dj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit ], [ %i.dk, %bb.ak ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #19
          to label %bb.r unwind label %bb.aj

bb.ak:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit33

bb.al:                                            ; preds = %bb.l, %bb.m, %bb.k, %.thread38
  %.sroa.4.0.i20 = phi i64 [ %i.bc, %bb.m ], [ 0, %.thread38 ], [ 0, %bb.k ], [ %.pre-phi52, %bb.l ]
  %.sroa.0.0.i21 = phi ptr [ %i.bd, %bb.m ], [ inttoptr (i64 1 to ptr), %.thread38 ], [ inttoptr (i64 1 to ptr), %bb.k ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.0.0.i21, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.4.0.i20, ptr %i.dm, align 8
  store i64 -1, ptr %i.g, align 8
  %i.dn = invoke noundef i64 @_RNvXs2_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetEINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE4fromCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.am unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit35

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.do, align 8
  store i64 1, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dn, ptr %i.dp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ai

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECsj1ugBVjDER0_8xml5ever.exit35: ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #19
          to label %bb.c unwind label %bb.aj

bb.an:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn7
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvNtCsldpiDtalS19_7tendril4futf8classify(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 4294967296) %2, i64 noundef range(i64 0, 4294967295) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp samesign ult i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 11 uses
  %i.b = load i8, ptr %i.a, align 1, !noundef !4  ; 8 uses
  %i.c = and i8 %i.b, -64
  switch i8 %i.c, label %bb.d [
    i8 -64, label %bb.e
    i8 -128, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.b
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.y, label %bb.z

bb.c:                                             ; preds = %bb.a
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.e = zext i8 %i.b to i32
  store i16 0, ptr %0, align 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %.sroa.011.sroa.5.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ax

bb.e:                                             ; preds = %bb.b
  %i.f = and i8 %i.b, -8
  %i.g = icmp eq i8 %i.f, -16
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = and i8 %i.b, -16
  %i.i = icmp eq i8 %i.h, -32
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.j = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.h ]
  %i.k = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.h ]
  %.sroa.13.0 = phi i64 [ 3, %bb.f ], [ 4, %bb.e ], [ 2, %bb.h ] ; 5 uses
  %i.l = sub nuw nsw i64 %2, %3                   ; 3 uses
  %.not88 = icmp samesign ult i64 %i.l, %.sroa.13.0
  br i1 %.not88, label %bb.j, label %.lr.ph172

bb.h:                                             ; preds = %bb.f
  %i.m = and i8 %i.b, -32
  %i.n = icmp eq i8 %i.m, -64
  br i1 %i.n, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.j:                                             ; preds = %bb.g
  %i.o = sub nuw nsw i64 %.sroa.13.0, %i.l
  store i16 3, ptr %0, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.623.0..sroa_idx, align 8
  br label %bb.ax

.lr.ph172:                                        ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 %.sroa.13.0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.val.i = load i8, ptr %i.p, align 1, !noalias !201, !noundef !4
  %cond.i.i = icmp slt i8 %.val.i, -64
  br i1 %cond.i.i, label %bb.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit

bb.k:                                             ; preds = %.lr.ph172
  br i1 %i.j, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.val.i.1 = load i8, ptr %i.r, align 1, !noalias !201, !noundef !4
  %cond.i.i.1 = icmp slt i8 %.val.i.1, -64
  br i1 %cond.i.i.1, label %bb.m, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit

bb.m:                                             ; preds = %bb.l
  br i1 %i.k, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.val.i.2 = load i8, ptr %i.s, align 1, !noalias !201, !noundef !4
  %cond.i.i.2 = icmp slt i8 %.val.i.2, -64
  br i1 %cond.i.i.2, label %._crit_edge, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.n, %bb.l, %.lr.ph172
  store i16 -1, ptr %0, align 8
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.n, %bb.m, %bb.k
  %i.t = load i8, ptr %i.p, align 1, !alias.scope !204, !noalias !207, !noundef !4
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 3 uses
  switch i64 %.sroa.13.0, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 4, label %bb.q
  ]

default.unreachable:                              ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread, %._crit_edge
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.w = and i8 %i.b, 31                          ; 2 uses
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 6
  %i.z = or disjoint i32 %i.y, %i.v
  %i.aa = icmp samesign ult i8 %i.w, 2
  br i1 %i.aa, label %bb.x, label %bb.r

bb.p:                                             ; preds = %._crit_edge
  %i.ab = and i8 %i.b, 15                         ; 2 uses
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 12
  %i.ae = shl nuw nsw i32 %i.v, 6
  %i.af = or disjoint i32 %i.ae, %i.ad            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !204, !noalias !207, !noundef !4
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj            ; 3 uses
  %i.al = icmp samesign ult i32 %i.af, 2048
  br i1 %i.al, label %bb.x, label %bb.s

bb.q:                                             ; preds = %._crit_edge
  %i.am = and i8 %i.b, 7
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 18
  %i.ap = shl nuw nsw i32 %i.v, 12
  %i.aq = or disjoint i32 %i.ap, %i.ao            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !204, !noalias !207, !noundef !4
  %i.at = and i8 %i.as, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !204, !noalias !207, !noundef !4
  %i.ay = and i8 %i.ax, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.av, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aq
  %i.bc = icmp samesign ult i32 %i.aq, 65536
  br i1 %i.bc, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q, %bb.o
  %.sroa.0.0.i90 = phi i32 [ %i.z, %bb.o ], [ %i.ak, %bb.t ], [ %i.bb, %bb.q ] ; 3 uses
  %i.bd = xor i32 %.sroa.0.0.i90, 55296
  %i.be = add nsw i32 %i.bd, -1114112
  %i.bf = icmp ult i32 %i.be, -1112064
  br i1 %i.bf, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bg = and i32 %i.af, 64512
  %or.cond3.i92 = icmp eq i32 %i.bg, 55296
  br i1 %or.cond3.i92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp samesign ugt i32 %i.af, 56319
  %i.bi = icmp samesign ult i8 %i.ab, 14
  %or.cond5.i93 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond5.i93, label %bb.v, label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.bj = trunc nuw i32 %i.ak to i16
  %i.bk = add nsw i16 %i.bj, 10240
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97

bb.v:                                             ; preds = %bb.t
  %i.bl = trunc nuw i32 %i.ak to i16
  %i.bm = add nsw i16 %i.bl, 9216
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97

bb.w:                                             ; preds = %bb.r
  %i.bn = icmp samesign ult i32 %.sroa.0.0.i90, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97

_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97:  ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.14.0 = phi i32 [ undef, %bb.v ], [ undef, %bb.u ], [ %.sroa.0.0.i90, %bb.w ]
  %.sroa.12.0 = phi i16 [ %i.bm, %bb.v ], [ %i.bk, %bb.u ], [ undef, %bb.w ]
  %.sroa.0.0 = phi i16 [ 2, %bb.v ], [ 1, %bb.u ], [ 0, %bb.w ]
  store i16 %.sroa.0.0, ptr %0, align 8
  %.sroa.016.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.12.0, ptr %.sroa.016.sroa.4.0..sroa_idx, align 2
  %.sroa.016.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.14.0, ptr %.sroa.016.sroa.5.0..sroa_idx, align 4
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.13.0, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.619.0..sroa_idx, align 8
  br label %bb.ax

bb.x:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.r
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.y:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.bo = add nuw nsw i64 %3, 1
  store i16 4, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bo, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %.sroa.643.0..sroa_idx, align 8
  br label %bb.ax

bb.z:                                             ; preds = %.preheader.preheader
  %i.bp = add nsw i64 %3, -1                      ; 5 uses
  %i.bq = icmp samesign ult i64 %i.bp, %2
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1, !noundef !4 ; 2 uses
  %i.bt = and i8 %i.bs, -64
  switch i8 %i.bt, label %bb.aa [
    i8 -64, label %bb.ab
    i8 -128, label %.preheader.1
  ]

bb.aa:                                            ; preds = %bb.ad, %bb.ac, %bb.z
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.ab:                                            ; preds = %bb.ad, %bb.ac, %bb.z
  %.lcssa161 = phi i64 [ %i.bp, %bb.z ], [ %i.by, %bb.ac ], [ %i.ce, %bb.ad ] ; 4 uses
  %.lcssa158 = phi i64 [ 1, %bb.z ], [ 2, %bb.ac ], [ 3, %bb.ad ] ; 2 uses
  %.lcssa155 = phi i8 [ %i.bs, %bb.z ], [ %i.cb, %bb.ac ], [ %i.ch, %bb.ad ] ; 6 uses
  %.sroa.027.0.lcssa153 = phi i64 [ %3, %bb.z ], [ %i.bp, %bb.ac ], [ %i.by, %bb.ad ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa161 ; 7 uses
  %i.bv = and i8 %.lcssa155, -8
  %i.bw = icmp eq i8 %i.bv, -16
  br i1 %i.bw, label %bb.ag, label %bb.af

.preheader.1:                                     ; preds = %bb.z
  %i.bx = icmp eq i64 %i.bp, 0
  br i1 %i.bx, label %bb.y, label %bb.ac

bb.ac:                                            ; preds = %.preheader.1
  %i.by = add nsw i64 %3, -2                      ; 5 uses
  %i.bz = icmp samesign ult i64 %i.by, %2
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !4 ; 2 uses
  %i.cc = and i8 %i.cb, -64
  switch i8 %i.cc, label %bb.aa [
    i8 -64, label %bb.ab
    i8 -128, label %.preheader.2
  ]

.preheader.2:                                     ; preds = %bb.ac
  %i.cd = icmp eq i64 %i.by, 0
  br i1 %i.cd, label %bb.y, label %bb.ad

bb.ad:                                            ; preds = %.preheader.2
  %i.ce = add nsw i64 %3, -3                      ; 3 uses
  %i.cf = icmp samesign ult i64 %i.ce, %2
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !4 ; 2 uses
  %i.ci = and i8 %i.ch, -64
  switch i8 %i.ci, label %bb.aa [
    i8 -64, label %bb.ab
    i8 -128, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.af:                                            ; preds = %bb.ab
  %i.cj = and i8 %.lcssa155, -16
  %i.ck = icmp eq i8 %i.cj, -32
  br i1 %i.ck, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af, %bb.ab
  %.sroa.1355.0 = phi i64 [ 3, %bb.af ], [ 4, %bb.ab ], [ 2, %bb.ah ] ; 6 uses
  %i.cl = sub nuw nsw i64 %2, %.lcssa161          ; 3 uses
  %.not86 = icmp samesign ult i64 %i.cl, %.sroa.1355.0
  br i1 %.not86, label %bb.aj, label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.cm = and i8 %.lcssa155, -32
  %i.cn = icmp eq i8 %i.cm, -64
  br i1 %i.cn, label %bb.ag, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.aj:                                            ; preds = %bb.ag
  %i.co = sub nuw nsw i64 %3, %.lcssa161
  %i.cp = sub nuw nsw i64 %.sroa.1355.0, %i.cl
  store i16 3, ptr %0, align 8
  %.sroa.064.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %.sroa.064.sroa.5.0..sroa_idx, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bu, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cl, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.co, ptr %.sroa.667.0..sroa_idx, align 8
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ag
  %i.cq = icmp samesign ult i64 %.lcssa158, %.sroa.1355.0
  br i1 %i.cq, label %.lr.ph, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread

.lr.ph:                                           ; preds = %bb.ak
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.1355.0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.lcssa158
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cu, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread, label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.al
  %i.cv = phi ptr [ %i.cs, %.lr.ph ], [ %i.ct, %bb.al ] ; 2 uses
  %.val.i99 = load i8, ptr %i.cv, align 1, !noalias !209, !noundef !4
  %cond.i.i100 = icmp slt i8 %.val.i99, -64
  br i1 %cond.i.i100, label %bb.al, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread: ; preds = %bb.al, %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.027.0.lcssa153
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !212, !noalias !215, !noundef !4
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i32               ; 3 uses
  switch i64 %.sroa.1355.0, label %default.unreachable [
    i64 2, label %bb.an
    i64 3, label %bb.ao
    i64 4, label %bb.ap
  ]

bb.an:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread
  %i.da = and i8 %.lcssa155, 31                   ; 2 uses
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 6
  %i.dd = or disjoint i32 %i.dc, %i.cz
  %i.de = icmp samesign ult i8 %i.da, 2
  br i1 %i.de, label %bb.aw, label %bb.aq

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread
  %i.df = and i8 %.lcssa155, 15                   ; 2 uses
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 12
  %i.di = shl nuw nsw i32 %i.cz, 6
  %i.dj = or disjoint i32 %i.di, %i.dh            ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !212, !noalias !215, !noundef !4
  %i.dm = and i8 %i.dl, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dj, %i.dn            ; 3 uses
  %i.dp = icmp samesign ult i32 %i.dj, 2048
  br i1 %i.dp, label %bb.aw, label %bb.ar

bb.ap:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101.thread
  %i.dq = and i8 %.lcssa155, 7
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 18
  %i.dt = shl nuw nsw i32 %i.cz, 12
  %i.du = or disjoint i32 %i.dt, %i.ds            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !212, !noalias !215, !noundef !4
  %i.dx = and i8 %i.dw, 63
  %i.dy = zext nneg i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 6
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !212, !noalias !215, !noundef !4
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = or disjoint i32 %i.dz, %i.ed
  %i.ef = or disjoint i32 %i.ee, %i.du
  %i.eg = icmp samesign ult i32 %i.du, 65536
  br i1 %i.eg, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap, %bb.an
  %.sroa.0.0.i = phi i32 [ %i.dd, %bb.an ], [ %i.do, %bb.as ], [ %i.ef, %bb.ap ] ; 3 uses
  %i.eh = xor i32 %.sroa.0.0.i, 55296
  %i.ei = add nsw i32 %i.eh, -1114112
  %i.ej = icmp ult i32 %i.ei, -1112064
  br i1 %i.ej, label %bb.aw, label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.ek = and i32 %i.dj, 64512
  %or.cond3.i = icmp eq i32 %i.ek, 55296
  br i1 %or.cond3.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.el = icmp samesign ugt i32 %i.dj, 56319
  %i.em = icmp samesign ult i8 %i.df, 14
  %or.cond5.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond5.i, label %bb.au, label %bb.aq

bb.at:                                            ; preds = %bb.ar
  %i.en = trunc nuw i32 %i.do to i16
  %i.eo = add nsw i16 %i.en, 10240
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit

bb.au:                                            ; preds = %bb.as
  %i.ep = trunc nuw i32 %i.do to i16
  %i.eq = add nsw i16 %i.ep, 9216
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit

bb.av:                                            ; preds = %bb.aq
  %i.er = icmp samesign ult i32 %.sroa.0.0.i, 1114112
  tail call void @llvm.assume(i1 %i.er)
  br label %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101: ; preds = %bb.am
  store i16 -1, ptr %0, align 8
  br label %bb.ax

_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit:    ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.14104.0 = phi i32 [ undef, %bb.au ], [ undef, %bb.at ], [ %.sroa.0.0.i, %bb.av ]
  %.sroa.12103.0 = phi i16 [ %i.eq, %bb.au ], [ %i.eo, %bb.at ], [ undef, %bb.av ]
  %.sroa.0102.0 = phi i16 [ 2, %bb.au ], [ 1, %bb.at ], [ 0, %bb.av ]
  %i.es = sub nuw nsw i64 %3, %.lcssa161
  store i16 %.sroa.0102.0, ptr %0, align 8
  %.sroa.060.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.12103.0, ptr %.sroa.060.sroa.4.0..sroa_idx, align 2
  %.sroa.060.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.14104.0, ptr %.sroa.060.sroa.5.0..sroa_idx, align 4
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bu, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1355.0, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.es, ptr %.sroa.663.0..sroa_idx, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ao, %bb.ap, %bb.an, %bb.aq
  store i16 -1, ptr %0, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aa, %bb.ai, %bb.aj, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit101, %bb.aw, %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit, %bb.d, %_RNvNtCsldpiDtalS19_7tendril4futf6decode.exit97, %bb.j, %bb.i, %bb.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsldpiDtalS19_7tendril4futf8all_cont0ECsj1ugBVjDER0_8xml5ever.exit, %bb.ae, %bb.y, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink35 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink35, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink35, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !217
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE10dying_nextCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !217, !noundef !4 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.e, null
  br i1 %.not6.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1B_IB1X_NtB2F_18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i, %.lr.ph.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.ad, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i ] ; 2 uses
  %.sroa.43.0.copyload.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !217 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.43.0.copyload.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.43.0.copyload.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.k = load i64, ptr %i.h, align 8, !alias.scope !222, !noalias !217, !noundef !4 ; 3 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i64 %i.k, 3
  %i.n = icmp eq i64 %i.m, 0
  %or.cond.i.i.i.i = and i1 %i.l, %i.n
  br i1 %or.cond.i.i.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = inttoptr i64 %i.k to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = atomicrmw sub ptr %i.p, i64 1 seq_cst, align 8, !noalias !225
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever.exit.i.i.i, !prof !11

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever.exit.i.i.i unwind label %bb.g, !noalias !217

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever(ptr nonnull %i.j) #19
          to label %.body.i.i unwind label %bb.j, !noalias !217

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.t = load i64, ptr %i.j, align 8, !alias.scope !230, !noalias !217, !noundef !4 ; 3 uses
  %i.u = icmp ne i64 %i.t, 0
  %i.v = and i64 %i.t, 3
  %i.w = icmp eq i64 %i.v, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.u, %i.w
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.x = inttoptr i64 %i.t to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = atomicrmw sub ptr %i.y, i64 1 seq_cst, align 8, !noalias !233
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i, !prof !11

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i unwind label %bb.k, !noalias !217

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !217
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.s, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB2t_IB2P_NtB3x_18NamespaceStaticSetEENtNtBQ_5alloc6GlobalEECsj1ugBVjDER0_8xml5ever(ptr nonnull align 8 dereferenceable(72) %i.b) #19
          to label %bb.m unwind label %bb.l

_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !217
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE10dying_nextCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.ad = load ptr, ptr %i.a, align 8, !noalias !217, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1B_IB1X_NtB2F_18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit, label %bb.d

bb.l:                                             ; preds = %.body.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !217
  unreachable

bb.m:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1B_IB1X_NtB2F_18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsj1ugBVjDER0_8xml5ever.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsldpiDtalS19_7tendril7tendrilNtB5_15SubtendrilErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !193, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 16, i64 11
  %.1 = select i1 %i.b, ptr @17, ptr @16
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB14_IB1G_NtB2o_18NamespaceStaticSetEEENtNtNtNtB18_4iter6traits8iterator8Iterator4nextCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.h = load i64, ptr %0, align 8, !range !5, !alias.scope !238, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !238, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !238, !noundef !4 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !238, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 192
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !238, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !241

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store i64 1, ptr %0, align 8, !alias.scope !238
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !238
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 192
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 192
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 192
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 192
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 192
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 192
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 192
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !238, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 192
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !238, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !245
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_4LeafENtB1y_4EdgeE7next_kvCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_4LeafENtB1y_4EdgeETRB1R_RB3T_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj1ugBVjDER0_8xml5ever.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_4LeafENtB1y_4EdgeETRB1R_RB3T_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj1ugBVjDER0_8xml5ever.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_4LeafENtB1y_4EdgeETRB1R_RB3T_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj1ugBVjDER0_8xml5ever.exit ], [ null, %bb.a ]
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ad

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !245, !noundef !4 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !245
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21
          to label %.noexc1.i unwind label %bb.h, !noalias !242

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !245
  store ptr %i.ae, ptr %i.a, align 8, !noalias !245
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !242

.noexc2.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1F_IB2h_NtB2Z_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_4LeafENtB1y_4EdgeETRB1R_RB3T_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj1ugBVjDER0_8xml5ever.exit unwind label %bb.h, !noalias !242 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1S_IB2u_NtB3c_18NamespaceStaticSetEENtB1y_4LeafENtB1y_4EdgeETRB1R_RB3T_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0ECsj1ugBVjDER0_8xml5ever.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBY_3ops8function5FnMutTRB5_B24_EE8call_mutCsj1ugBVjDER0_8xml5ever(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !249, !noalias !252, !noundef !4 ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !252, !noalias !249, !noundef !4 ; 6 uses
  %.not4.i.i.i.i = icmp eq i64 %i.d, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit, label %bb.q

bb.c:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %_RNvYNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltCsj1ugBVjDER0_8xml5ever.exit

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i: ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i, %bb.q, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.e = load i64, ptr %0, align 8, !range !259, !alias.scope !260, !noalias !261, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %1, align 8, !range !259, !alias.scope !261, !noalias !260, !noundef !4 ; 5 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i
  %i.h = trunc i64 %i.e to i8
  %i.i = and i8 %i.h, 3
  switch i8 %i.i, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !262, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !262, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = lshr i64 %i.e, 4
  %i.o = and i64 %i.n, 15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i64 %i.e, 32                        ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !262, !noundef !4 ; 2 uses
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !262, !nonnull !4, !align !265, !noundef !4
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !262, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !262, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !262
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i: ; preds = %bb.i, %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ %i.x, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.p, %bb.g ], [ %i.v, %bb.i ]
  %i.y = trunc i64 %i.f to i8
  %i.z = and i8 %i.y, 3
  switch i8 %i.z, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  unreachable

bb.l:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.aa = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !266, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !266, !noundef !4
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.m:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.ae = lshr i64 %i.f, 4
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.n:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.ah = lshr i64 %i.f, 32                       ; 3 uses
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !266, !noundef !4 ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !266, !nonnull !4, !align !265, !noundef !4
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !266, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !266, !noundef !4
  br label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !266
  unreachable

_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i: ; preds = %bb.o, %bb.m, %bb.l
  %.sroa.4.0.i6.i.i.i.i.i = phi i64 [ %i.ad, %bb.l ], [ %i.af, %bb.m ], [ %i.ao, %bb.o ] ; 2 uses
  %.sroa.0.0.i7.i.i.i.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.ag, %bb.m ], [ %i.am, %bb.o ]
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i.i, i64 %.sroa.4.0.i6.i.i.i.i.i)
  %i.ap = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %.sroa.4.0.i.i.i.i.i.i, %.sroa.4.0.i6.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.ar, i64 %i.as, i64 %i.aq ; 2 uses
  %i.at = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  %i.au = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %_RNvXsi_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i.i.i

bb.q:                                             ; preds = %bb.b
  %i.av = icmp eq i64 %i.b, %i.d
  br i1 %i.av, label %_RNvXs8_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtCskKLDkoKarTP_4core3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = trunc i64 %i.b to i8
  %i.ax = and i8 %i.aw, 3
  switch i8 %i.ax, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ay = inttoptr i64 %i.b to ptr                ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !269, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !269, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.bc = lshr i64 %i.b, 4
  %i.bd = and i64 %i.bc, 15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.bf = lshr i64 %i.b, 32                       ; 3 uses
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !269, !noundef !4 ; 2 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !269, !nonnull !4, !align !265, !noundef !4
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !269, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !269, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21, !noalias !269
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i: ; preds = %bb.w, %bb.u, %bb.t
  %.sroa.4.0.i.i6.i.i.i.i = phi i64 [ %i.bb, %bb.t ], [ %i.bd, %bb.u ], [ %i.bm, %bb.w ] ; 2 uses
  %.sroa.0.0.i.i7.i.i.i.i = phi ptr [ %i.az, %bb.t ], [ %i.be, %bb.u ], [ %i.bk, %bb.w ]
  %i.bn = trunc i64 %i.d to i8
  %i.bo = and i8 %i.bn, 3
  switch i8 %i.bo, label %bb.y [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  unreachable

bb.z:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i.i.i
  %i.bp = inttoptr i64 %i.d to ptr                ; 2 uses
end_hunk_1
