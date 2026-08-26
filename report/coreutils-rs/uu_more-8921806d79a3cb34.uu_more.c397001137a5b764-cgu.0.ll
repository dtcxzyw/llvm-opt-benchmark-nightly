Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_more-8921806d79a3cb34.uu_more.c397001137a5b764-cgu.0?download=true
inline.NumInlined: 797
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgN7rS7e43TA_7uu_more:bb.a
bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !226, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !226
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !226
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_6cursor6MoveToEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !231
  store ptr %0, ptr %i.g, align 8, !noalias !231
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr null, ptr %i.h, align 8, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !236
  store i16 1, ptr %i.d, align 2, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !236
  store i16 1, ptr %i.c, align 2, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !236
  store ptr %i.d, ptr %i.b, align 8, !noalias !236
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs3_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !236
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.i, align 8, !noalias !236
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs3_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !236
  %i.j = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @127, ptr noundef nonnull @35, ptr noundef nonnull %i.b) #26, !inline_history !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !236
  %i.k = load ptr, ptr %i.h, align 8, !noalias !231, !noundef !4 ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null              ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !174

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !231
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 3
  switch i64 %i.m, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i
    i64 1, label %bb.f
  ], !prof !149

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult ptr %i.k, inttoptr (i64 188978561024 to ptr)
  %i.o = and i64 %i.l, 1095216660480
  %i.p = icmp ne i64 %i.o, 1095216660480
  call void @llvm.assume(i1 %i.n)
  call void @llvm.assume(i1 %i.p)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.k, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !240, !noalias !231
  store i8 3, ptr %i.a, align 8, !alias.scope !240, !noalias !231
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !231
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !231
  store ptr @22, ptr %i.f, align 8, !noalias !231, !captures !243
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 25, ptr %i.s, align 8, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !231
  store ptr %i.f, ptr %i.e, align 8, !noalias !231
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgN7rS7e43TA_7uu_more, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !231
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !231
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !231
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #26 ; 2 uses
  %.not = icmp ne ptr %i.u, null                  ; 2 uses
  %. = select i1 %.not, ptr %i.u, ptr %0
  %.10 = zext i1 %.not to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0 = phi ptr [ %i.k, %bb.h ], [ %., %bb.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.h ], [ %.10, %bb.i ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.w
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %.preheader8

.preheader8:                                      ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.g = icmp samesign ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader8.split

.preheader.us.preheader:                          ; preds = %.preheader8
  %exitcond.not.i.us22 = icmp eq i64 %i.e, 0      ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.010.us = phi i16 [ %i.z, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.010.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  br i1 %exitcond.not.i.us22, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 2
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !244, !noalias !247, !noundef !4
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !247, !noalias !244, !noundef !4
  %.not17.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not17.i.us.1, label %bb.c, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

bb.c:                                             ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 3
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !244, !noalias !247, !noundef !4
  %i.u = load i8, ptr %i.k, align 1, !alias.scope !247, !noalias !244, !noundef !4
  %.not17.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not17.i.us.2, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

.lr.ph:                                           ; preds = %.preheader.us
  %i.v = load i8, ptr %i.o, align 1, !alias.scope !244, !noalias !247, !noundef !4
  %i.w = load i8, ptr %i.f, align 1, !alias.scope !247, !noalias !244, !noundef !4
  %.not17.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.0.010.us, %i.y            ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %.preheader.us

.preheader8.split:                                ; preds = %.preheader8, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread
  %.sroa.0.010 = phi i16 [ %i.ao, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread ], [ %2, %.preheader8 ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.010, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader8.split, %bb.d
  %.sroa.04.027.i = phi ptr [ %i.ai, %bb.d ], [ %i.ae, %.preheader8.split ] ; 2 uses
  %.sroa.08.026.i = phi ptr [ %i.aj, %bb.d ], [ %i.f, %.preheader8.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.027.i, align 1, !alias.scope !244, !noalias !247
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.026.i, align 1, !alias.scope !247, !noalias !244
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.d, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.027.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.026.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.d, %.preheader8.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ag, align 1, !alias.scope !244, !noalias !247
  %.sroa.014.0.copyload.i = load i32, ptr %i.i, align 1, !alias.scope !247, !noalias !244
  %i.al = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  br i1 %i.al, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %.preheader.us, %.lr.ph.2, %bb.b, %bb.c, %bb.a
  %.sroa.03.0 = phi i1 [ true, %.lr.ph.2 ], [ false, %bb.a ], [ %exitcond.not.i.us22, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %bb.c ], [ true, %bb.b ], [ %exitcond.not.i.us22, %.preheader.us ], [ false, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread ], [ true, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit ]
  ret i1 %.sroa.03.0

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread: ; preds = %.lr.ph.i, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.0.010, %i.an             ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern14small_slice_eq.exit.thread5, label %.preheader8.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvCsgN7rS7e43TA_7uu_more10reset_term() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #26
  store ptr %i.b, ptr %i.a, align 8
  %i.c = tail call noundef i32 @isatty(i32 noundef 1) #26
  %.not39 = icmp eq i32 %i.c, 0
  br i1 %.not39, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef range(i64 3, 9) 4) #26, !noalias !249 ; 2 uses
  %.not.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.not, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef range(i64 3, 9) 6) #26, !noalias !254 ; 2 uses
  %.not.i33.not = icmp eq ptr %i.e, null
  br i1 %.not.i33.not, label %bb.f, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @49, ptr noundef nonnull inttoptr (i64 3 to ptr)) #26 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.g = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 2 uses
  %.not30 = icmp eq ptr %i.g, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.h = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef range(i64 3, 9) 8) #26, !noalias !259 ; 2 uses
  %.not.i36.not = icmp eq ptr %i.h, null
  br i1 %.not.i36.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.i = call noundef ptr @_RNvNtCsfxi9wTnNW09_9crossterm8terminal16disable_raw_mode() #26 ; 2 uses
  %.not29 = icmp eq ptr %i.i, null
  br i1 %.not29, label %bb.e, label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.i
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %bb.i ], [ undef, %bb.e ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.i ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %.sroa.8.0, 1
  ret { ptr, ptr } %i.k

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c, %bb.d, %bb.b
  %.sink = phi ptr [ %i.f, %bb.d ], [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.d, %bb.b ], [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  %i.l = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sink) #26 ; 2 uses
  %.sroa.0.1 = extractvalue { ptr, ptr } %i.l, 0
  %.sroa.8.1 = extractvalue { ptr, ptr } %i.l, 1
  br label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCsgN7rS7e43TA_7uu_more4more(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly captures(address, read_provenance) %2, i64 %3, ptr noalias nofree noundef readonly captures(address, read_provenance) %4, i64 %5, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 12 uses
  %i.f = alloca [104 x i8], align 8               ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 26 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [20 x i8], align 1                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 12 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 9 uses
  %i.ah = alloca [184 x i8], align 8              ; 37 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !264
  %i.aj = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #26, !noalias !264 ; 2 uses
  store ptr %i.aj, ptr %i.ag, align 8, !noalias !264
  %i.ak = tail call noundef i32 @isatty(i32 noundef 1) #26, !noalias !264
  %.not27.i = icmp eq i32 %i.ak, 0
  br i1 %.not27.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = tail call noundef ptr @_RNvNtCsfxi9wTnNW09_9crossterm8terminal15enable_raw_mode() #26, !noalias !264 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.al) #26, !noalias !264
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.an = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef range(i64 3, 9) 8) #26, !noalias !267 ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.not.i.i, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.i, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.thread.i

_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.i: ; preds = %bb.d
  %i.ao = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #26, !noalias !264 ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.not.i, label %bb.e, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.thread.i

_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.thread.i: ; preds = %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.i, %bb.d
  %.sroa.4.0.i23.i = phi ptr [ %i.ao, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.i ], [ %i.an, %bb.d ]
  %i.ap = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sroa.4.0.i23.i) #26, !noalias !264
  br label %bb.g

bb.e:                                             ; preds = %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.i
  %i.aq = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef range(i64 3, 9) 6) #26, !noalias !272 ; 2 uses
  %.not.i.not.i15.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.not.i15.i, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.i, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.thread.i

_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.i: ; preds = %bb.e
  %i.ar = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #26, !noalias !264 ; 2 uses
  %.not.i18.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i18.not.i, label %bb.f, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.thread.i

_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.thread.i: ; preds = %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.i, %bb.e
  %.sroa.4.0.i1626.i = phi ptr [ %i.ar, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.i ], [ %i.aq, %bb.e ]
  %i.as = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sroa.4.0.i1626.i) #26, !noalias !264
  br label %bb.g

bb.f:                                             ; preds = %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.i
  %i.at = load ptr, ptr %i.ag, align 8, !noalias !264, !nonnull !4, !align !144, !noundef !4
  br label %bb.h

bb.g:                                             ; preds = %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.thread.i, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.thread.i, %bb.c
  %.sink39.i = phi { ptr, ptr } [ %i.ap, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_8terminal20EnterAlternateScreenECsgN7rS7e43TA_7uu_more.exit.thread.i ], [ %i.as, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutNtB6_17ExecutableCommand7executeNtNtB8_6cursor4HideECsgN7rS7e43TA_7uu_more.exit.thread.i ], [ %i.am, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !264
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgN7rS7e43TA_7uu_more13TerminalGuardEBD_.exit

bb.h:                                             ; preds = %bb.f, %bb.a
  %.sroa.5.0.ph = phi i64 [ 1, %bb.a ], [ 0, %bb.f ]
  %.sink40.i.ph = phi ptr [ %i.aj, %bb.a ], [ %i.at, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvNtCsfxi9wTnNW09_9crossterm8terminal4size(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai) #26
  %i.au = load i16, ptr %i.ai, align 8, !range !277, !noundef !4
  %i.av = trunc nuw i16 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ay = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ax) #26 ; 3 uses
  %i.az = call fastcc { ptr, ptr } @_RNvCsgN7rS7e43TA_7uu_more10reset_term() #26 ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.az, 0      ; 3 uses
  %i.bb = extractvalue { ptr, ptr } %i.az, 1      ; 4 uses
  %i.bc = icmp eq ptr %i.ba, null
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgN7rS7e43TA_7uu_more13TerminalGuardEBD_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = load ptr, ptr %i.bb, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void %i.bd(ptr noundef nonnull %i.ba) #28, !inline_history !278
end_hunk_0
begin_hunk_1_@_RNvCsgN7rS7e43TA_7uu_more4more:bb.a
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.hh = load ptr, ptr %i.h, align 8, !noalias !359, !noundef !4 ; 2 uses
  %.not3.i.i88.i = icmp eq ptr %i.hh, null
  %.val7.i.i89.i = load ptr, ptr %i.gw, align 8, !noalias !359 ; 2 uses
  br i1 %.not3.i.i88.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i, label %.split.split.i._crit_edge.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i: ; preds = %.split.split.i.preheader.i
  %i.hi = ptrtoint ptr %.val7.i.i89.i to i64
  %i.hj = trunc i64 %i.hi to i8                   ; 2 uses
  %i.hk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !359, !nonnull !4 ; 2 uses
  br i1 %i.gx, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i
  %i.hl = icmp ult i64 %i.ha, %.sroa.5.0.copyload.fr.i.i
  %invariant.op = sub i64 -15, %.sroa.5.0.copyload.fr.i.i
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i
  %i.hm = phi i8 [ %i.lx, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.hj, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ]
  %i.hn = phi ptr [ %i.lv, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.hk, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ]
  %.sroa.01.0.i90.us.i = phi i64 [ %i.lt, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.gv, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ho = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.hp = trunc nuw i8 %i.hm to i1
  %i.hq = icmp ult i64 %.sroa.01.0.i90.us.i, %i.ho
  %or.cond6.i.i.us.i = select i1 %i.hp, i1 %i.hq, i1 false ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.i.us.i, label %bb.bi, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.bi:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %.sroa.01.0.i90.us.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !noundef !4 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.hw = icmp ult i64 %.sroa.5.0.copyload.fr.i.i, %i.hv
  br i1 %i.hw, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = icmp eq i64 %.sroa.5.0.copyload.fr.i.i, %i.hv
  br i1 %i.hx, label %bb.bk, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i

bb.bk:                                            ; preds = %bb.bj
  %bcmp.i.i.us.i = call i32 @bcmp(ptr nonnull readonly %.sroa.49.0.copyload.i.i, ptr nonnull readonly %i.ht, i64 %.sroa.5.0.copyload.fr.i.i), !alias.scope !368
  %i.hy = icmp eq i32 %bcmp.i.i.us.i, 0
  %i.hz = zext i1 %i.hy to i8
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.ia = load i8, ptr %.sroa.49.0.copyload.i.i, align 1, !alias.scope !374, !noalias !375, !noundef !4 ; 3 uses
  br i1 %i.gz, label %.thread.i.i.i.us.i, label %.preheader.i.us.i.preheader

.preheader.i.us.i.preheader:                      ; preds = %bb.bl
  br i1 %i.hl, label %.lr.ph, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i

.preheader.i.us.i:                                ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i
  %i.ib = icmp ult i64 %i.ha, %i.id
  br i1 %i.ib, label %.lr.ph, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i

.lr.ph:                                           ; preds = %.preheader.i.us.i.preheader, %.preheader.i.us.i
  %i.ic = phi i64 [ %i.id, %.preheader.i.us.i ], [ %.sroa.5.0.copyload.fr.i.i, %.preheader.i.us.i.preheader ]
  %i.id = add nsw i64 %i.ic, -1                   ; 6 uses
  %i.ie = icmp ult i64 %i.id, %.sroa.5.0.copyload.fr.i.i
  br i1 %i.ie, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i, label %.split98.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i: ; preds = %.lr.ph
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i.i, i64 %i.id
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !374, !noalias !376, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i.us.i = icmp eq i8 %i.ig, %i.ia
  br i1 %.not.i.not.i.i.i.i.us.i, label %.preheader.i.us.i, label %bb.bm

bb.bm:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i
  %i.ih = icmp ult i64 %i.hv, %i.hb
  br i1 %i.ih, label %.lr.ph.split.us.i.i.i.i.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ii = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.ij = shufflevector <16 x i8> %i.ii, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bo

.thread.i.i.i.us.i:                               ; preds = %bb.bl
  %i.ik = icmp ult i64 %i.hv, 17
  br i1 %i.ik, label %.lr.ph.split.us.i.i.i.i.us.i, label %.thread92.i.i.i.us.i

.thread92.i.i.i.us.i:                             ; preds = %.thread.i.i.i.us.i
  %i.il = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.im = shufflevector <16 x i8> %i.il, <16 x i8> poison, <16 x i32> zeroinitializer
  %.pre.i.i.i.us.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !374, !noalias !375
  br label %bb.bo

bb.bo:                                            ; preds = %.thread92.i.i.i.us.i, %bb.bn
  %i.in = phi i8 [ %.pre.i.i.i.us.i, %.thread92.i.i.i.us.i ], [ %i.ig, %bb.bn ]
  %i.io = phi <16 x i8> [ %i.im, %.thread92.i.i.i.us.i ], [ %i.ij, %bb.bn ] ; 6 uses
  %storemerge9194.i.i.i.us.i = phi i64 [ 1, %.thread92.i.i.i.us.i ], [ %i.id, %bb.bn ] ; 6 uses
  %i.ip = insertelement <16 x i8> poison, i8 %i.in, i64 0
  %i.iq = shufflevector <16 x i8> %i.ip, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !384
  store ptr %i.ht, ptr %i.e, align 8, !noalias !384
  store i64 %i.hv, ptr %i.hc, align 8, !noalias !384
  store ptr %.phi.trans.insert.i.i.i.i, ptr %i.hd, align 8, !noalias !384
  store i64 %i.gy, ptr %i.he, align 8, !noalias !384
  %.not.i4.i.i.us.i = icmp ult i64 %i.hf, %i.hv
  br i1 %.not.i4.i.i.us.i, label %.lr.ph.i7.i.i.us.i, label %.preheader.i5.i.i.us.i

.lr.ph.i7.i.i.us.i:                               ; preds = %bb.bo, %bb.bt
  %.sroa.06.0102.i.i.i.us.i = phi i64 [ %i.kk, %bb.bt ], [ 0, %bb.bo ] ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.sroa.06.0102.i.i.i.us.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.us.i = load <16 x i8>, ptr %i.ir, align 1, !alias.scope !375, !noalias !385
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.i.i.i.us.i = load <16 x i8>, ptr %i.is, align 1, !alias.scope !375, !noalias !385
  %i.it = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.us.i, %i.io
  %i.iu = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i.us.i, %i.iq
  %i.iv = and <16 x i1> %i.it, %i.iu
  %i.iw = bitcast <16 x i1> %i.iv to i16          ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.us.i = load <16 x i8>, ptr %i.ix, align 1, !alias.scope !375, !noalias !385
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.1.i.i.i.us.i = load <16 x i8>, ptr %i.iy, align 1, !alias.scope !375, !noalias !385
  %i.iz = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.us.i, %i.io
  %i.ja = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i.us.i, %i.iq
  %i.jb = and <16 x i1> %i.iz, %i.ja
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.us.i = load <16 x i8>, ptr %i.jd, align 1, !alias.scope !375, !noalias !385
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.2.i.i.i.us.i = load <16 x i8>, ptr %i.je, align 1, !alias.scope !375, !noalias !385
  %i.jf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.us.i, %i.io
  %i.jg = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i.us.i, %i.iq
  %i.jh = and <16 x i1> %i.jf, %i.jg
  %i.ji = bitcast <16 x i1> %i.jh to i16          ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.us.i = load <16 x i8>, ptr %i.jj, align 1, !alias.scope !375, !noalias !385
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.3.i.i.i.us.i = load <16 x i8>, ptr %i.jk, align 1, !alias.scope !375, !noalias !385
  %i.jl = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.us.i, %i.io
  %i.jm = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i.us.i, %i.iq
  %i.jn = and <16 x i1> %i.jl, %i.jm
  %i.jo = bitcast <16 x i1> %i.jn to i16          ; 2 uses
  %i.jp = icmp eq i16 %i.iw, 0
  br i1 %i.jp, label %.preheader95.1.i.i.i.us.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i7.i.i.us.i
  %i.jq = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.06.0102.i.i.i.us.i, i16 noundef %i.iw, i1 noundef zeroext false) #28
  %i.jr = zext i1 %i.jq to i8
  br label %.preheader95.1.i.i.i.us.i

.preheader95.1.i.i.i.us.i:                        ; preds = %bb.bp, %.lr.ph.i7.i.i.us.i
  %.sroa.014.2.i.i.i.us.i = phi i8 [ 0, %.lr.ph.i7.i.i.us.i ], [ %i.jr, %bb.bp ] ; 3 uses
  %i.js = icmp eq i16 %i.jc, 0
  br i1 %i.js, label %.preheader95.2.i.i.i.us.i, label %bb.bq

bb.bq:                                            ; preds = %.preheader95.1.i.i.i.us.i
  %i.jt = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 16
  %i.ju = trunc nuw i8 %.sroa.014.2.i.i.i.us.i to i1
  %i.jv = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.jt, i16 noundef %i.jc, i1 noundef zeroext %i.ju) #28
  %i.jw = zext i1 %i.jv to i8
  %i.jx = or i8 %.sroa.014.2.i.i.i.us.i, %i.jw
  br label %.preheader95.2.i.i.i.us.i

.preheader95.2.i.i.i.us.i:                        ; preds = %bb.bq, %.preheader95.1.i.i.i.us.i
  %.sroa.014.2.1.i.i.i.us.i = phi i8 [ %.sroa.014.2.i.i.i.us.i, %.preheader95.1.i.i.i.us.i ], [ %i.jx, %bb.bq ] ; 3 uses
  %i.jy = icmp eq i16 %i.ji, 0
  br i1 %i.jy, label %.preheader95.3.i.i.i.us.i, label %bb.br

bb.br:                                            ; preds = %.preheader95.2.i.i.i.us.i
  %i.jz = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 32
  %i.ka = trunc nuw i8 %.sroa.014.2.1.i.i.i.us.i to i1
  %i.kb = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.jz, i16 noundef %i.ji, i1 noundef zeroext %i.ka) #28
  %i.kc = zext i1 %i.kb to i8
  %i.kd = or i8 %.sroa.014.2.1.i.i.i.us.i, %i.kc
  br label %.preheader95.3.i.i.i.us.i

.preheader95.3.i.i.i.us.i:                        ; preds = %bb.br, %.preheader95.2.i.i.i.us.i
  %.sroa.014.2.2.i.i.i.us.i = phi i8 [ %.sroa.014.2.1.i.i.i.us.i, %.preheader95.2.i.i.i.us.i ], [ %i.kd, %bb.br ] ; 3 uses
  %i.ke = icmp eq i16 %i.jo, 0
  br i1 %i.ke, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.preheader95.3.i.i.i.us.i
  %i.kf = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 48
  %i.kg = trunc nuw i8 %.sroa.014.2.2.i.i.i.us.i to i1
  %i.kh = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.kf, i16 noundef %i.jo, i1 noundef zeroext %i.kg) #28
  %i.ki = zext i1 %i.kh to i8
  %i.kj = or i8 %.sroa.014.2.2.i.i.i.us.i, %i.ki
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.preheader95.3.i.i.i.us.i
  %.sroa.014.2.3.i.i.i.us.i = phi i8 [ %.sroa.014.2.2.i.i.i.us.i, %.preheader95.3.i.i.i.us.i ], [ %i.kj, %bb.bs ] ; 2 uses
  %i.kk = add i64 %.sroa.06.0102.i.i.i.us.i, 64   ; 3 uses
  %i.kl = add i64 %i.kk, %i.hf
  %i.km = icmp uge i64 %i.kl, %i.hv
  %i.kn = trunc nuw i8 %.sroa.014.2.3.i.i.i.us.i to i1
  %or.cond.i.i.i.us.i = select i1 %i.km, i1 true, i1 %i.kn
  br i1 %or.cond.i.i.i.us.i, label %.preheader.i5.i.i.us.i, label %.lr.ph.i7.i.i.us.i

.preheader.i5.i.i.us.i:                           ; preds = %bb.bt, %bb.bo
  %.sroa.014.0.lcssa.i.i.i.us.i = phi i8 [ 0, %bb.bo ], [ %.sroa.014.2.3.i.i.i.us.i, %bb.bt ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.us.i = phi i64 [ 0, %bb.bo ], [ %i.kk, %bb.bt ] ; 2 uses
  %i.ko = add i64 %.sroa.06.0.lcssa.i.i.i.us.i, %i.hb
  %i.kp = icmp uge i64 %i.ko, %i.hv
  %i.kq = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.us.i to i1 ; 2 uses
  %or.cond3104.i.i.i.us.i = select i1 %i.kp, i1 true, i1 %i.kq
  br i1 %or.cond3104.i.i.i.us.i, label %._crit_edge.i6.i.i.us.i, label %.lr.ph106.i.i.i.us.i

.lr.ph106.i.i.i.us.i:                             ; preds = %.preheader.i5.i.i.us.i, %bb.bv
  %.sroa.06.1105.i.i.i.us.i = phi i64 [ %i.la, %bb.bv ], [ %.sroa.06.0.lcssa.i.i.i.us.i, %.preheader.i5.i.i.us.i ] ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.sroa.06.1105.i.i.i.us.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i.us.i = load <16 x i8>, ptr %i.kr, align 1, !alias.scope !375, !noalias !388
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i60.i.i.i.us.i = load <16 x i8>, ptr %i.ks, align 1, !alias.scope !375, !noalias !388
  %i.kt = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i.us.i, %i.io
  %i.ku = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i.us.i, %i.iq
  %i.kv = and <16 x i1> %i.kt, %i.ku
  %i.kw = bitcast <16 x i1> %i.kv to i16          ; 2 uses
  %i.kx = icmp eq i16 %i.kw, 0
  br i1 %i.kx, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph106.i.i.i.us.i
  %i.ky = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.06.1105.i.i.i.us.i, i16 noundef %i.kw, i1 noundef zeroext false) #28
  %i.kz = zext i1 %i.ky to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph106.i.i.i.us.i
  %.sroa.014.4.i.i.i.us.i = phi i8 [ 0, %.lr.ph106.i.i.i.us.i ], [ %i.kz, %bb.bu ] ; 2 uses
  %i.la = add i64 %.sroa.06.1105.i.i.i.us.i, 16   ; 2 uses
  %i.lb = add i64 %i.la, %i.hb
  %i.lc = icmp uge i64 %i.lb, %i.hv
  %i.ld = trunc nuw i8 %.sroa.014.4.i.i.i.us.i to i1 ; 2 uses
  %or.cond3.i.i.i.us.i = or i1 %i.lc, %i.ld
  br i1 %or.cond3.i.i.i.us.i, label %._crit_edge.i6.i.i.us.i, label %.lr.ph106.i.i.i.us.i

._crit_edge.i6.i.i.us.i:                          ; preds = %bb.bv, %.preheader.i5.i.i.us.i
  %.sroa.014.3.lcssa.i.i.i.us.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.us.i, %.preheader.i5.i.i.us.i ], [ %.sroa.014.4.i.i.i.us.i, %bb.bv ] ; 2 uses
  %.lcssa.i.i.i.us.i = phi i1 [ %i.kq, %.preheader.i5.i.i.us.i ], [ %i.ld, %bb.bv ]
  %.reass.reass.i.reass.us.reass.i.reass.reass.reass = add i64 %i.hv, %invariant.op ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.reass.reass.i.reass.us.reass.i.reass.reass.reass ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i.us.i = load <16 x i8>, ptr %i.le, align 1, !alias.scope !375, !noalias !391
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i58.i.i.i.us.i = load <16 x i8>, ptr %i.lf, align 1, !alias.scope !375, !noalias !391
  %i.lg = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i.us.i, %i.io
  %i.lh = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i.us.i, %i.iq
  %i.li = and <16 x i1> %i.lg, %i.lh
  %i.lj = bitcast <16 x i1> %i.li to i16          ; 2 uses
  %i.lk = icmp eq i16 %i.lj, 0
  br i1 %i.lk, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i6.i.i.us.i
  %i.ll = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.reass.reass.i.reass.us.reass.i.reass.reass.reass, i16 noundef %i.lj, i1 noundef zeroext %.lcssa.i.i.i.us.i) #28
  %i.lm = zext i1 %i.ll to i8
  %i.ln = or i8 %.sroa.014.3.lcssa.i.i.i.us.i, %i.lm
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge.i6.i.i.us.i
  %.sroa.014.5.i.i.i.us.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.us.i, %._crit_edge.i6.i.i.us.i ], [ %i.ln, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !384
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i, %bb.bx, %bb.bk
  %.sroa.0.0.i7.i.us.i = phi i8 [ %i.hz, %bb.bk ], [ %i.lz, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i ], [ %.sroa.014.5.i.i.i.us.i, %bb.bx ]
  %i.lo = trunc nuw i8 %.sroa.0.0.i7.i.us.i to i1
  br i1 %i.lo, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i

.lr.ph.split.us.i.i.i.i.us.i:                     ; preds = %.thread.i.i.i.us.i, %bb.bm
  %bcmp.i.i.us22.i.i.i.i.us.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ht, ptr noundef nonnull readonly dereferenceable(1) %.sroa.49.0.copyload.i.i, i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i), !alias.scope !394, !noalias !395
  %i.lp = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.us.i, 0
  br i1 %i.lp, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i: ; preds = %.lr.ph.split.us.i.i.i.i.us.i, %.split.us.i.i.i.i.us.i
  %.pn.i.i.i.us.i = phi ptr [ %i.lr, %.split.us.i.i.i.i.us.i ], [ %i.ht, %.lr.ph.split.us.i.i.i.i.us.i ]
  %.in.i.i.i.us.i = phi i64 [ %i.lq, %.split.us.i.i.i.i.us.i ], [ %i.hv, %.lr.ph.split.us.i.i.i.i.us.i ]
  %i.lq = add i64 %.in.i.i.i.us.i, -1             ; 2 uses
  %.not27.i.i.i.i.us.i = icmp ugt i64 %.sroa.5.0.copyload.fr.i.i, %i.lq
  br i1 %.not27.i.i.i.i.us.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i, label %.split.us.i.i.i.i.us.i

.split.us.i.i.i.i.us.i:                           ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.us.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.us.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lr, ptr noundef nonnull readonly dereferenceable(1) %.sroa.49.0.copyload.i.i, i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i), !alias.scope !394, !noalias !395
  %i.ls = icmp eq i32 %bcmp.i.i.us.i.i.i.i.us.i, 0
  br i1 %i.ls, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i, %bb.bj
  %i.lt = add i64 %.sroa.01.0.i90.us.i, 1         ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !401
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.lt) #26
  %i.lu = load ptr, ptr %i.h, align 8, !noalias !401, !noundef !4 ; 2 uses
  %.not3.i.i.us.i = icmp eq ptr %i.lu, null
  %i.lv = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !401, !nonnull !4
  %.val7.i.i.us.i = load ptr, ptr %i.gw, align 8, !noalias !401 ; 2 uses
  %i.lw = ptrtoint ptr %.val7.i.i.us.i to i64
  %i.lx = trunc i64 %i.lw to i8
  br i1 %.not3.i.i.us.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i, label %.split.split.i._crit_edge.i

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i: ; preds = %.preheader.i.us.i, %.preheader.i.us.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !402
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ht, i64 noundef %i.hv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.49.0.copyload.i.i, i64 noundef %.sroa.5.0.copyload.fr.i.i) #26
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #28
  %i.ly = load i64, ptr %i.g, align 8, !range !229, !noalias !402, !noundef !4
  %i.lz = trunc nuw nsw i64 %i.ly to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !402
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

.split.us.i.i:                                    ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !362
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.ma = load ptr, ptr %i.h, align 8, !noalias !362, !noundef !4 ; 3 uses
  %.not3.i.us.i.i = icmp eq ptr %i.ma, null
  %.val7.i.us.i.i = load ptr, ptr %i.gw, align 8, !noalias !362 ; 5 uses
  br i1 %.not3.i.us.i.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i, label %bb.by

bb.by:                                            ; preds = %.split.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.us.i.i) ]
  %i.mb = load ptr, ptr %.val7.i.us.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.us.i.i = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void %i.mb(ptr noundef nonnull %i.ma) #28, !inline_history !403
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.mc = getelementptr inbounds nuw i8, ptr %.val7.i.us.i.i, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i: ; preds = %bb.ca
  %i.mf = getelementptr inbounds nuw i8, ptr %.val7.i.us.i.i, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !range !145, !invariant.load !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef %i.md, i64 noundef range(i64 1, -9223372036854775807) %i.mg) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i: ; preds = %.split.us.i.i
  %i.mh = ptrtoint ptr %.val7.i.us.i.i to i64
  %i.mi = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.mj = trunc i64 %i.mh to i1
  %i.mk = icmp ult i64 %i.gv, %i.mi
  %or.cond6.i.us.i.i = select i1 %i.mj, i1 %i.mk, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.us.i.i, label %bb.cb, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.cb:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

.split.split.us.i._crit_edge.i:                   ; preds = %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i, %.split.split.us.i.preheader.i
  %.sroa.01.0.us26.i.lcssa.i = phi i64 [ %i.gv, %.split.split.us.i.preheader.i ], [ %i.nm, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ]
  %.lcssa78.i = phi ptr [ %i.hg, %.split.split.us.i.preheader.i ], [ %i.nn, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ] ; 2 uses
  %.val7.i.us28.i.lcssa.i = phi ptr [ %.val7.i.us28.i84.i, %.split.split.us.i.preheader.i ], [ %.val7.i.us28.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.us28.i.lcssa.i) ]
  %i.ml = load ptr, ptr %.val7.i.us28.i.lcssa.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.us29.i.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.us29.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.split.split.us.i._crit_edge.i
  call void %i.ml(ptr noundef nonnull %.lcssa78.i) #28, !inline_history !403
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.split.split.us.i._crit_edge.i
  %i.mm = getelementptr inbounds nuw i8, ptr %.val7.i.us28.i.lcssa.i, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i: ; preds = %bb.cd
  %i.mp = getelementptr inbounds nuw i8, ptr %.val7.i.us28.i.lcssa.i, i64 16
  %i.mq = load i64, ptr %i.mp, align 8, !range !145, !invariant.load !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa78.i, i64 noundef %i.mn, i64 noundef range(i64 1, -9223372036854775807) %i.mq) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i: ; preds = %.split.split.us.i.preheader.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i
  %.in.in.i = phi ptr [ %.val7.i.us28.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ], [ %.val7.i.us28.i84.i, %.split.split.us.i.preheader.i ]
  %.sroa.01.0.us26.i85.i = phi i64 [ %i.nm, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ], [ %i.gv, %.split.split.us.i.preheader.i ] ; 7 uses
  %.in.i = ptrtoint ptr %.in.in.i to i64
  %i.mr = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !404, !nonnull !4
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ms = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.mt = trunc i64 %.in.i to i1
  %i.mu = icmp ult i64 %.sroa.01.0.us26.i85.i, %i.ms
  %or.cond6.i.us33.i.i = select i1 %i.mt, i1 %i.mu, i1 false ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.us33.i.i, label %bb.ce, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.ce:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i
  %i.mv = getelementptr inbounds nuw [24 x i8], ptr %i.mr, i64 %.sroa.01.0.us26.i85.i ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14process_events:bb.a
  %i.gf = call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 1) ; 2 uses
  store i64 %i.gf, ptr %i.k, align 8, !alias.scope !793
  %.old2.not.i = icmp ult i64 %i.bh, 2
  br i1 %.old2.not.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit, label %bb.p

bb.am:                                            ; preds = %bb.ba, %bb.az, %bb.az, %bb.an
  %i.gg = load i8, ptr %i.j, align 8, !range !173, !noundef !4
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %.loopexit, label %bb.bb

bb.an:                                            ; preds = %bb.k
  %.sroa.4.4.extract.trunc23 = trunc i64 %i.ag to i32
  switch i32 %.sroa.4.4.extract.trunc23, label %bb.j [
    i32 32, label %bb.am
    i32 106, label %bb.n
    i32 107, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.ba, %bb.an
  store i8 0, ptr %i.j, align 8
  %i.gi = load i64, ptr %i.k, align 8, !noundef !4
  %i.gj = call i64 @llvm.usub.sat.i64(i64 %i.gi, i64 1)
  store i64 %i.gj, ptr %i.k, align 8
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit

bb.ap:                                            ; preds = %bb.m
  %i.gk = extractvalue { ptr, ptr } %i.at, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  br label %.loopexit

bb.aq:                                            ; preds = %bb.m
  call void @_RNvNtCs2vKOLqTMYjT_3std7process4exit(i32 noundef 0) #29
  unreachable

.loopexit:                                        ; preds = %bb.n, %bb.am, %bb.ap, %bb.d
  %.sroa.8.0 = phi ptr [ %i.af, %bb.d ], [ %i.gk, %bb.ap ], [ undef, %bb.am ], [ undef, %bb.n ]
  %.sroa.0.0 = phi ptr [ %i.ae, %bb.d ], [ %i.au, %bb.ap ], [ null, %bb.am ], [ null, %bb.n ]
  %i.gl = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.gm = insertvalue { ptr, ptr } %i.gl, ptr %.sroa.8.0, 1
  br label %.loopexit114

bb.ar:                                            ; preds = %bb.j
  %.sroa.4.4.extract.trunc19 = trunc i64 %i.ag to i32
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit.thread.i, %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit.i, %bb.o, %bb.g, %bb.bd, %bb.bc, %bb.bb, %bb.ar, %bb.ao
  %.sroa.043.0 = phi i32 [ %.sroa.4.4.extract.trunc19, %bb.ar ], [ -1, %bb.bc ], [ -1, %bb.g ], [ -1, %bb.bb ], [ -1, %bb.ao ], [ -1, %bb.bd ], [ -1, %bb.o ], [ -1, %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit.i ], [ -1, %_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit.thread.i ]
  %i.gn = load i64, ptr %i.q, align 8, !range !229, !alias.scope !829, !noundef !4
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.as, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread

bb.as:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit
  br i1 %i.s, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %i.t, label %bb.av, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread

bb.au:                                            ; preds = %bb.as
  %i.gp = call fastcc { i64, ptr } @_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_6cursor6MoveToEBG_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.q) #26 ; 2 uses
  %i.gq = extractvalue { i64, ptr } %i.gp, 0
  %i.gr = extractvalue { i64, ptr } %i.gp, 1      ; 3 uses
  %i.gs = trunc nuw i64 %i.gq to i1
  br i1 %i.gs, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit, label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.gt = call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef range(i64 0, -9223372036854775808) 4) #26, !noalias !832 ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.not.i.i, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit

_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit.i: ; preds = %bb.av
  %i.gu = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #26 ; 2 uses
  %.not.i.not.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.not.i, label %bb.aw, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit

bb.aw:                                            ; preds = %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit.i
  %i.gv = call fastcc { i64, ptr } @_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_6cursor6MoveToEBG_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.q) #26 ; 2 uses
  %i.gw = extractvalue { i64, ptr } %i.gv, 0
  %i.gx = trunc nuw i64 %i.gw to i1
  br i1 %i.gx, label %bb.ax, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.gy = extractvalue { i64, ptr } %i.gv, 1
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit

bb.ay:                                            ; preds = %bb.au
  %i.gz = call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef range(i64 0, -9223372036854775808) 3) #26, !noalias !837 ; 2 uses
  %.not.i.not.i30.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.not.i30.i, label %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit36.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit

_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit36.i: ; preds = %bb.ay
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.hb = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ha) #26 ; 2 uses
  %.not.i33.not.i = icmp eq ptr %i.hb, null
  br i1 %.not.i33.not.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit: ; preds = %bb.au, %bb.av, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit.i, %bb.ax, %bb.ay, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit36.i
  %.sink.sink.i = phi ptr [ %i.gt, %bb.av ], [ %i.gy, %bb.ax ], [ %i.gu, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit.i ], [ %i.gr, %bb.au ], [ %i.hb, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit36.i ], [ %i.gz, %bb.ay ]
  %i.hc = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sink.sink.i) #26 ; 2 uses
  %.sroa.0.1.i = extractvalue { ptr, ptr } %i.hc, 0
  %.not61 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not61, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread, label %.loopexit114

bb.az:                                            ; preds = %bb.i
  %trunc58 = trunc i32 %.sroa.056.0.copyload to i8
  switch i8 %trunc58, label %.backedge [
    i8 1, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.am
    i8 8, label %bb.o
    i8 9, label %bb.am
    i8 15, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %.sroa.4.4.extract.trunc21 = trunc i64 %i.ag to i32
  switch i32 %.sroa.4.4.extract.trunc21, label %.backedge [
    i32 32, label %bb.am
    i32 106, label %bb.n
    i32 107, label %bb.ao
  ]

bb.bb:                                            ; preds = %bb.am
  %i.hd = load i64, ptr %i.k, align 8, !noundef !4
  %i.he = load i64, ptr %i.i, align 8, !noundef !4
  %i.hf = call i64 @llvm.uadd.sat.i64(i64 %i.hd, i64 %i.he)
  store i64 %i.hf, ptr %i.k, align 8
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit

bb.bc:                                            ; preds = %bb.n
  %i.hg = load i64, ptr %i.k, align 8, !noundef !4
  %i.hh = call i64 @llvm.uadd.sat.i64(i64 %i.hg, i64 1)
  store i64 %i.hh, ptr %i.k, align 8
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit

bb.bd:                                            ; preds = %bb.g
  %i.hi = call i16 @llvm.usub.sat.i16(i16 %.sroa.3.0.extract.trunc, i16 1)
  %i.hj = zext i16 %i.hi to i64
  store i64 %i.hj, ptr %i.i, align 8
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread: ; preds = %bb.aw, %_RINvXs0_NtCsfxi9wTnNW09_9crossterm7commandNtCsgN7rS7e43TA_7uu_more10OutputTypeNtB6_17ExecutableCommand7executeNtNtB8_8terminal5ClearEBG_.exit36.i, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager7page_up.exit, %bb.at, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit
  %i.hk = call fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager4draw(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i32 noundef %.sroa.043.0) #26 ; 2 uses
  %i.hl = extractvalue { ptr, ptr } %i.hk, 0
  %.not62 = icmp eq ptr %i.hl, null
  br i1 %.not62, label %.backedge, label %.loopexit114

.loopexit114:                                     ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit, %.loopexit, %._crit_edge
  %.merged = phi { ptr, ptr } [ %i.x, %._crit_edge ], [ %i.gm, %.loopexit ], [ %i.hk, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit.thread ], [ %i.hc, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14update_display.exit ]
  ret { ptr, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %.not58 = icmp ugt i64 %i.e, %2
  br i1 %.not58, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit29

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsgN7rS7e43TA_7uu_more.exit
  %.val.i.pre = load i64, ptr %i.b, align 8, !range !40, !alias.scope !842 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.o = icmp eq i64 %.val.i.pre, 0
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit29, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.val1.i = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !alias.scope !842, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !842
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit29

bb.c:                                             ; preds = %.lr.ph, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsgN7rS7e43TA_7uu_more.exit
  %.val = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.val26 = load ptr, ptr %i.i, align 8, !nonnull !4, !align !144, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.val26, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !noalias !845, !nonnull !4
  %i.r = call { i64, ptr } %i.q(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #28, !inline_history !848 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = trunc nuw i64 %i.s to i1
  br i1 %i.v, label %bb.d, label %bb.e

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit29: ; preds = %bb.b, %._crit_edge, %._crit_edge.thread, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.w = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.t) #26 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.x, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %i.t, null
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ab, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.k, align 8, !noundef !4 ; 5 uses
  %.not24 = icmp eq i64 %i.ac, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %.val.i27 = load i64, ptr %i.b, align 8, !range !40, !alias.scope !849, !noundef !4 ; 2 uses
  %i.ad = icmp eq i64 %.val.i27, 0
  br i1 %i.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i28 = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !alias.scope !849, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i28, i64 noundef %.val.i27, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !849
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit29

bb.j:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.sroa.04.0 = phi i64 [ %i.ah, %bb.j ], [ 0, %bb.g ]
  %i.ai = add i64 %.sroa.04.0, %i.u
  %i.aj = load i64, ptr %i.j, align 8, !range !40, !alias.scope !852, !noundef !4
  %i.ak = icmp eq i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.l, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsioiJd4mgmsb_10num_bigint(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #25
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit: ; preds = %bb.k, %bb.l
  %i.al = load ptr, ptr %i.l, align 8, !alias.scope !852, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ac
  store i64 %i.ai, ptr %i.am, align 8
  %i.an = add i64 %i.ac, 1
  store i64 %i.an, ptr %i.k, align 8, !alias.scope !852
  %i.ao = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.ap = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.aq = icmp samesign eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread47, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.i.i.preheader.i
  %i.as = phi ptr [ %i.cc, %bb.w ], [ %i.ar, %.lr.ph.i.i.preheader.i ] ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !alias.scope !855, !noalias !858, !noundef !4 ; 3 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.m, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aw = icmp ne ptr %i.ao, %i.at
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 -2 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !855, !noalias !858, !noundef !4 ; 3 uses
  %i.az = and i8 %i.ay, 31
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = icmp slt i8 %i.ay, -64
  br i1 %i.bb, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit19.i.i.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = zext nneg i8 %i.au to i32
  br label %bb.p

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit17.i.i.i.i.i.i
  %i.bd = icmp ne ptr %i.ao, %i.ax
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 -3 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !855, !noalias !858, !noundef !4 ; 3 uses
  %i.bg = and i8 %i.bf, 15
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = icmp slt i8 %i.bf, -64
  br i1 %i.bi, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit21.i.i.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %bb.o, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit17.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.bx, %bb.o ], [ %i.ax, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.cb, %bb.o ], [ %i.ba, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit17.i.i.i.i.i.i ]
  %i.bk = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.bl = and i8 %i.au, 63
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm
  br label %bb.p

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit19.i.i.i.i.i.i
  %i.bo = icmp ne ptr %i.ao, %i.be
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !855, !noalias !858, !noundef !4
  %i.br = and i8 %i.bq, 7
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 6
  %i.bu = and i8 %i.bf, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit19.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.bp, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit21.i.i.i.i.i.i ], [ %i.be, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.bw, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit21.i.i.i.i.i.i ], [ %i.bh, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsgN7rS7e43TA_7uu_more.exit19.i.i.i.i.i.i ]
  %i.by = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.bz = and i8 %i.ay, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.cc = phi ptr [ %i.at, %bb.m ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i = phi i32 [ %i.bc, %bb.m ], [ %i.bn, %bb.n ] ; 8 uses
  %i.cd = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.cd)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i, label %bb.q [
    i32 32, label %bb.w
    i32 13, label %bb.w
    i32 12, label %bb.w
    i32 11, label %bb.w
    i32 10, label %bb.w
    i32 9, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p
  %i.ce = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i, 133
  br i1 %i.ce, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i, 8
  switch i32 %i.cf, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit [
    i32 0, label %bb.u
    i32 22, label %bb.s
    i32 32, label %bb.v
    i32 48, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cg = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 5760
  %i.ch = zext i1 %i.cg to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ci = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i, 12288
  %i.cj = zext i1 %i.ci to i8
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.ck = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noalias !872, !noundef !4
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i

bb.v:                                             ; preds = %bb.r
  %i.co = and i32 %.sroa.4.1.i.ph.i.i.i.i.i, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noalias !872, !noundef !4
  %i.cs = lshr i8 %i.cr, 1
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.cj, %bb.t ], [ %i.cn, %bb.u ], [ %i.ch, %bb.s ], [ %i.cs, %bb.v ]
  %i.ct = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i to i1
  br i1 %i.ct, label %bb.w, label %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit

bb.w:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.cu = icmp eq ptr %i.ao, %i.cc
  br i1 %i.cu, label %.thread47, label %.lr.ph.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit: ; preds = %bb.q, %bb.r, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsgN7rS7e43TA_7uu_more.exit.i.i.i.i
  %i.cv = ptrtoint ptr %i.as to i64
  %i.cw = ptrtoint ptr %i.ao to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %.not.i = icmp slt i64 %i.cx, 0
  br i1 %.not.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit, label %bb.x, !prof !873

bb.x:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.thread47, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.x
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !874
  %i.cz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cx, i64 noundef range(i64 1, 9) 1) #26, !noalias !874 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit, label %bb.aa

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsgN7rS7e43TA_7uu_more.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0, i64 %i.cx) #29
  unreachable

.thread47:                                        ; preds = %bb.w, %bb.x, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit, %bb.aa
  %i.db = phi ptr [ %i.cz, %bb.aa ], [ inttoptr (i64 1 to ptr), %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %bb.w ]
  %.sroa.4.0.ph52 = phi i64 [ %i.cx, %bb.aa ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsgN7rS7e43TA_7uu_more.exit ], [ 0, %bb.x ], [ 0, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %.val.i30 = load i64, ptr %i.b, align 8, !range !40, !alias.scope !877, !noundef !4 ; 2 uses
  %i.dc = icmp eq i64 %.val.i30, 0
  br i1 %i.dc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit32, label %bb.y

bb.y:                                             ; preds = %.thread47
  %.val1.i31 = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !alias.scope !877, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i31, i64 noundef %.val.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !877
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit32

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit32: ; preds = %.thread47, %bb.y
  store i64 %.sroa.4.0.ph52, ptr %i.b, align 8
  store ptr %i.db, ptr %.sroa.39.0..sroa_idx, align 8
  store i64 %.sroa.4.0.ph52, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.39.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dd = load i64, ptr %i.d, align 8, !alias.scope !880, !noalias !883, !noundef !4 ; 4 uses
  %i.de = load i64, ptr %i.c, align 8, !range !40, !alias.scope !880, !noalias !883, !noundef !4
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.z, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsgN7rS7e43TA_7uu_more.exit

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit32
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25, !noalias !883
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsgN7rS7e43TA_7uu_more.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringE8push_mutCsgN7rS7e43TA_7uu_more.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit32, %bb.z
  %i.dg = load ptr, ptr %i.m, align 8, !alias.scope !880, !noalias !883, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.di = add nsw i64 %i.dd, 1                    ; 2 uses
  store i64 %i.di, ptr %i.d, align 8, !alias.scope !880, !noalias !883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dj = icmp slt i64 %i.dd, 384307168202282325
  call void @llvm.assume(i1 %i.dj)
  %.not = icmp ugt i64 %i.di, %2
  br i1 %.not, label %._crit_edge, label %bb.c

bb.aa:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.ao, i64 %i.cx, i1 false)
  br label %.thread47
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager18wait_for_enter_key(i64 %.32.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = icmp eq i64 %.32.val, 0
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsfxi9wTnNW09_9crossterm5event4poll(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 100000000) #26
  %i.d = load i8, ptr %i.b, align 8, !range !173, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

.loopexit.sink.split:                             ; preds = %._crit_edge, %bb.d
  %.sink2 = phi ptr [ %i.u, %bb.d ], [ %i.n, %._crit_edge ]
  %i.h = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sink2) #26 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split, %bb.a
  %.sroa.5.0 = phi ptr [ %i.j, %.loopexit.sink.split ], [ undef, %bb.a ], [ undef, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.i, %.loopexit.sink.split ], [ null, %bb.a ], [ null, %bb.e ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.l

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit.sink.split

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.o = load i8, ptr %i.f, align 1, !range !173, !noundef !4
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.p, label %bb.c, label %.backedge

.backedge:                                        ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCsfxi9wTnNW09_9crossterm5event4poll(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 100000000) #26
  %i.q = load i8, ptr %i.b, align 8, !range !173, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCsfxi9wTnNW09_9crossterm5event4read(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a) #26
  %i.s = load i32, ptr %i.a, align 8, !range !792, !noundef !4
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.c
  %.sroa.022.0.copyload = load i32, ptr %i.g, align 4
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = ptrtoint ptr %.sroa.4.0.copyload to i64  ; 3 uses
  %.sroa.218.10.extract.shift = lshr i64 %i.v, 48
  %.sroa.218.10.extract.trunc = trunc i64 %.sroa.218.10.extract.shift to i8 ; 2 uses
  %i.w = icmp ne i8 %.sroa.218.10.extract.trunc, 5
  call void @llvm.assume(i1 %i.w)
  %i.x = icmp ult i8 %.sroa.218.10.extract.trunc, 3
  %i.y = and i64 %i.v, 71776119061217280
  %i.z = icmp eq i64 %i.y, 1407374883553280
  %i.aa = or i1 %i.z, %i.x
  %i.ab = and i32 %.sroa.022.0.copyload, 255
  %i.ac = icmp eq i32 %i.ab, 1
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  %i.ad = and i64 %i.v, 71777214277877760
  %i.ae = icmp eq i64 %i.ad, 0
  %or.cond9 = and i1 %i.ae, %or.cond
  br i1 %or.cond9, label %.loopexit, label %.backedge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager23reset_multi_file_header(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %select.unfold.i.i.i, %.lr.ph.split.preheader.i
  %i.c = phi i64 [ %i.s, %select.unfold.i.i.i ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  %.sroa.0.016.i = phi i64 [ %i.w, %select.unfold.i.i.i ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.split.i
  %i.d = phi i64 [ %i.s, %bb.d ], [ %i.c, %.lr.ph.split.i ] ; 6 uses
  %i.e = sub nuw nsw i64 36, %i.d                 ; 3 uses
  %i.f = getelementptr i8, ptr @108, i64 %i.d     ; 3 uses
  %i.g = icmp ugt i64 %i.d, 20
  br i1 %i.g, label %.preheader.i.i.i.i.i.i.i, label %bb.a

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 36
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.a:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.h = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e) #26, !noalias !885
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.e, %bb.b ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.b ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.b
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !899, !noalias !885, !noundef !4
  %i.m = icmp eq i8 %i.l, 10
  br i1 %i.m, label %._crit_edge.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.n = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.a
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.j, %._crit_edge.i.i.i.i.i.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.o = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.c, label %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit

bb.c:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.q = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.r = add i64 %i.d, 1
  %i.s = add i64 %i.r, %i.q                       ; 3 uses
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.s, 36
  %i.t = add i64 %i.q, %i.d
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.t, 35
  br i1 %or.cond.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  br i1 %.not12.i.i.i.i.i.i, label %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit, label %.lr.ph.split.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.f, i64 %i.q
  %lhsc = load i8, ptr %i.u, align 1
  %i.v = icmp eq i8 %lhsc, 10
  br i1 %i.v, label %select.unfold.i.i.i, label %bb.d

select.unfold.i.i.i:                              ; preds = %bb.e
  %i.w = add i64 %.sroa.0.016.i, 1
  br label %.lr.ph.split.i

_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %bb.d
  %.not.i3.i.i.i.i.i = icmp ne i64 %i.c, 36
  %i.x = zext i1 %.not.i3.i.i.i.i.i to i64
  %spec.select.i = add i64 %.sroa.0.016.i, %i.x
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %i.b, i64 %spec.select.i)
  store i64 %i.y, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager25display_multi_file_header(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !range !229, !alias.scope !902, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit: ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef range(i64 0, -9223372036854775808) 4) #26, !noalias !905 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit
  %i.h = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.g) #26 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread: ; preds = %bb.a, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %.not26 = icmp eq ptr %i.l, null                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load i64, ptr %i.m, align 8
  %.sroa.3.0 = select i1 %.not26, i64 0, i64 %i.n ; 6 uses
  %.sroa.07.0 = select i1 %.not26, ptr inttoptr (i64 1 to ptr), ptr %i.l
  %.not.i = icmp ult i64 %.sroa.3.0, 2            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !910
  br i1 %.not.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !914
  %i.o = tail call noundef dereferenceable_or_null(36) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 36, i64 noundef range(i64 1, 9) 1) #26, !noalias !914 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 36) #29, !noalias !910
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread
  %.pre29.i = phi i64 [ 36, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread ] ; 4 uses
  %.sroa.10.0.i.i = phi ptr [ %i.o, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread ] ; 4 uses
  store i64 %.pre29.i, ptr %i.c, align 8, !noalias !910
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !910
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !910
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 2) #26, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !910
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #28, !noalias !910
  %i.q = load i64, ptr %i.a, align 8, !range !229, !noalias !910, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not.i24.i = icmp eq i64 %.sroa.3.0, 0
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i, %.lr.ph.i
  %.pre3135.i = phi i64 [ %.pre29.i, %.lr.ph.i ], [ %.pre3136.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i ] ; 2 uses
  %i.u = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i ], [ %i.ay, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i ] ; 2 uses
  %i.v = phi i64 [ %.pre29.i, %.lr.ph.i ], [ %i.az, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i ] ; 2 uses
  %i.w = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i ], [ %i.ba, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i ] ; 2 uses
  %i.x = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i ] ; 5 uses
  %.sroa.04.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i ] ; 3 uses
  %i.y = load i64, ptr %i.s, align 8, !noalias !910, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !noalias !910, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !910
  %i.aa = getelementptr inbounds nuw i8, ptr @108, i64 %.sroa.04.028.i
  %gepdiff27.i = sub nuw nsw i64 %i.y, %.sroa.04.028.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.ab = sub i64 %i.v, %i.x
  %i.ac = icmp ugt i64 %gepdiff27.i, %i.ab
  br i1 %i.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i, !prof !174

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i: ; preds = %bb.d
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.x, i64 noundef %gepdiff27.i, i64 noundef 1, i64 noundef 1) #26, !noalias !910
  %i.ad = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !917, !noalias !910, !noundef !4 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %.pre30.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !917, !noalias !910 ; 2 uses
  %.pre31.pre.i = load i64, ptr %i.c, align 8, !alias.scope !920, !noalias !910
  br label %bb.e

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i: ; preds = %bb.d
  %i.af = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.af)
  %.not.i.i = icmp eq i64 %i.y, %.sroa.04.028.i
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i
  %.pre31.i = phi i64 [ %.pre31.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i ], [ %.pre3135.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ] ; 2 uses
  %i.ag = phi ptr [ %.pre30.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i ], [ %i.u, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ]
  %i.ah = phi ptr [ %.pre30.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i ], [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ] ; 2 uses
  %i.ai = phi i64 [ %i.ad, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i.i ], [ %i.x, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 1 %i.aa, i64 %gepdiff27.i, i1 false), !noalias !925
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit.i: ; preds = %bb.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i
  %.pre3137.i = phi i64 [ %.pre31.i, %bb.e ], [ %.pre3135.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ] ; 2 uses
  %i.ak = phi ptr [ %i.ag, %bb.e ], [ %i.u, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ] ; 2 uses
  %i.al = phi i64 [ %.pre31.i, %bb.e ], [ %i.v, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ] ; 3 uses
  %i.am = phi ptr [ %i.ah, %bb.e ], [ %i.w, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ]
  %i.an = phi i64 [ %i.ai, %bb.e ], [ %i.x, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i.i ]
  %i.ao = add i64 %i.an, %gepdiff27.i             ; 6 uses
  store i64 %i.ao, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !917, !noalias !910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.ap = sub i64 %i.al, %i.ao
  %i.aq = icmp ugt i64 %.sroa.3.0, %i.ap
  br i1 %i.aq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i, !prof !174

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ao, i64 noundef %.sroa.3.0, i64 noundef 1, i64 noundef 1) #26, !noalias !910
  %i.ar = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !926, !noalias !910, !noundef !4 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !927, !noalias !910 ; 2 uses
  %.pre32.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !926, !noalias !910
  br label %bb.f

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit.i
  %i.at = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.at)
  br i1 %.not.i24.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i
  %.pre3134.i = phi i64 [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i ], [ %.pre3137.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ]
  %i.au = phi ptr [ %.pre32.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ] ; 3 uses
  %i.av = phi i64 [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i ], [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ]
  %i.aw = phi i64 [ %i.ar, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i25.i ], [ %i.ao, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.07.0, i64 %.sroa.3.0, i1 false), !noalias !930
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i: ; preds = %bb.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i
  %.pre3136.i = phi i64 [ %.pre3134.i, %bb.f ], [ %.pre3137.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ] ; 3 uses
  %i.ay = phi ptr [ %i.au, %bb.f ], [ %i.ak, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ] ; 3 uses
  %i.az = phi i64 [ %i.av, %bb.f ], [ %i.al, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ] ; 2 uses
  %i.ba = phi ptr [ %i.au, %bb.f ], [ %i.am, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ]
  %i.bb = phi i64 [ %i.aw, %bb.f ], [ %i.ao, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i23.i ]
  %i.bc = add i64 %i.bb, %.sroa.3.0               ; 7 uses
  store i64 %i.bc, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !926, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !910
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #28, !noalias !910
  %i.bd = load i64, ptr %i.a, align 8, !range !229, !noalias !910, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  br i1 %i.be, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgN7rS7e43TA_7uu_more.exit26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  %i.bf = getelementptr inbounds nuw i8, ptr @108, i64 %i.z ; 2 uses
  %gepdiff.i = sub nuw nsw i64 36, %i.z           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.bg = sub i64 %i.az, %i.bc
  %i.bh = icmp ugt i64 %gepdiff.i, %i.bg
  br i1 %i.bh, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i, !prof !174

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  br i1 %.not.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i, !prof !174

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i: ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %gepdiff45.i = phi i64 [ 36, %._crit_edge.thread.i ], [ %gepdiff.i, %._crit_edge.i ] ; 2 uses
  %i.bi = phi ptr [ @108, %._crit_edge.thread.i ], [ %i.bf, %._crit_edge.i ]
  %i.bj = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.bc, %._crit_edge.i ]
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bj, i64 noundef %gepdiff45.i, i64 noundef 1, i64 noundef 1) #26, !noalias !910
  %i.bk = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !931, !noalias !910, !noundef !4 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %.pre33.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !931, !noalias !910
  %.sroa.0.0.copyload.pre.pre = load i64, ptr %i.c, align 8, !noalias !934
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i: ; preds = %._crit_edge.i
  %i.bm = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bm)
  %.not.i28.i = icmp eq i64 %i.z, 36
  br i1 %.not.i28.i, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i, %._crit_edge.thread.i
  %.sroa.0.0.copyload.pre = phi i64 [ %.sroa.0.0.copyload.pre.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %.pre3136.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ %.pre29.i, %._crit_edge.thread.i ]
  %gepdiff43.i = phi i64 [ %gepdiff45.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %gepdiff.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ 36, %._crit_edge.thread.i ] ; 2 uses
  %i.bn = phi ptr [ %i.bi, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %i.bf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ @108, %._crit_edge.thread.i ]
  %i.bo = phi ptr [ %.pre33.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %i.ay, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ %.sroa.10.0.i.i, %._crit_edge.thread.i ] ; 2 uses
  %i.bp = phi i64 [ %i.bk, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %i.bc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ 0, %._crit_edge.thread.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %i.bn, i64 %gepdiff43.i, i1 false), !noalias !935
  br label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit

_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i
  %.sroa.6.0.copyload = phi ptr [ %i.bo, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ %i.ay, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ] ; 3 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ %.pre3136.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ] ; 4 uses
  %gepdiff46.i = phi i64 [ %gepdiff43.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ]
  %i.br = phi i64 [ %i.bp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ %i.bc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ]
  %i.bs = add nuw i64 %i.br, %gepdiff46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !910
  %i.bt = tail call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef %i.bs) #26 ; 2 uses
  %.not27 = icmp eq ptr %i.bt, null
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit
  %i.bu = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.bt) #26 ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1      ; 2 uses
  %i.bx = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !936
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit

bb.i:                                             ; preds = %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit
  %i.by = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.by, label %.lr.ph.split.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !939
  br label %.lr.ph.split.preheader.i

end_hunk_2
begin_hunk_3_@_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager25display_multi_file_header:bb.a
.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.n, %.lr.ph.split.i
  %i.cc = phi i64 [ %i.cr, %bb.n ], [ %i.cb, %.lr.ph.split.i ] ; 6 uses
  %i.cd = sub nuw nsw i64 36, %i.cc               ; 3 uses
  %i.ce = getelementptr i8, ptr @108, i64 %i.cc   ; 3 uses
  %i.cf = icmp ugt i64 %i.cc, 20
  br i1 %i.cf, label %.preheader.i.i.i.i.i.i.i, label %bb.k

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cc, 36
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.cg = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.cd) #26, !noalias !942
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.cd, %bb.l ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.l ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ch = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ci = insertvalue { i64, i64 } %i.ch, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.l
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.l ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !956, !noalias !942, !noundef !4
  %i.cl = icmp eq i8 %i.ck, 10
  br i1 %i.cl, label %._crit_edge.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.cd
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.k
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ci, %._crit_edge.i.i.i.i.i.i.i ], [ %i.cg, %bb.k ] ; 2 uses
  %i.cn = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %bb.m, label %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit

bb.m:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.cp = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cq = add i64 %i.cc, 1
  %i.cr = add i64 %i.cq, %i.cp                    ; 3 uses
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.cr, 36
  %i.cs = add i64 %i.cp, %i.cc
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.cs, 35
  br i1 %or.cond.i.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  br i1 %.not12.i.i.i.i.i.i, label %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit, label %.lr.ph.split.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ct = getelementptr i8, ptr %i.ce, i64 %i.cp
  %lhsc = load i8, ptr %i.ct, align 1
  %i.cu = icmp eq i8 %lhsc, 10
  br i1 %i.cu, label %select.unfold.i.i.i, label %bb.n

select.unfold.i.i.i:                              ; preds = %bb.o
  %i.cv = add i64 %.sroa.0.016.i, 1
  br label %.lr.ph.split.i

_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %bb.n
  %.not.i3.i.i.i.i.i = icmp ne i64 %i.cb, 36
  %i.cw = zext i1 %.not.i3.i.i.i.i.i to i64
  %spec.select.i = add i64 %.sroa.0.016.i, %i.cw
  %i.cx = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %spec.select.i)
  store i64 %i.cx, ptr %i.bz, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit: ; preds = %bb.h, %bb.g, %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit, %bb.b
  %.sroa.4.0 = phi ptr [ %i.j, %bb.b ], [ undef, %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit ], [ %i.bw, %bb.g ], [ %i.bw, %bb.h ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ null, %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit ], [ %i.bv, %bb.g ], [ %i.bv, %bb.h ]
  %i.cy = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.cz = insertvalue { ptr, ptr } %i.cy, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.cz
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager4draw(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i32 noundef range(i32 -1, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 14 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [2 x i8], align 2                ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 22 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [104 x i8], align 8              ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  %i.ag = alloca [48 x i8], align 16              ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 12 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !229, !alias.scope !962, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i: ; preds = %bb.a
  %i.aq = tail call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef range(i64 0, -9223372036854775808) 4) #26, !noalias !965 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i
  %i.ar = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.aq) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i64 0, ptr %i.as, align 8, !alias.scope !959
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !959, !noundef !4
  %.not108.i = icmp eq i64 %i.av, 0
  br i1 %.not108.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i
  %i.aw = load i64, ptr %i.at, align 8, !alias.scope !959, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit49.i, %.lr.ph.lr.ph.i
  %.sroa.04.0.ph104.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.go, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit49.i ] ; 4 uses
  %.sroa.08.0.ph103.i = phi i64 [ %i.aw, %.lr.ph.lr.ph.i ], [ %i.gp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit49.i ]
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.08.0101.i = phi i64 [ %.sroa.08.0.ph103.i, %.lr.ph.i ], [ %i.cn, %bb.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !959
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %.sroa.08.0101.i) #26
  %i.bk = load ptr, ptr %i.am, align 8, !noalias !959, !noundef !4 ; 2 uses
  %.not27.i = icmp eq ptr %i.bk, null
  br i1 %.not27.i, label %bb.d, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread39

.loopexit63.i:                                    ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.bl, align 8, !alias.scope !959
  %i.bm = load i64, ptr %i.au, align 8, !alias.scope !959, !noundef !4 ; 3 uses
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %.sroa.08.0101.i, i64 %i.bm)
  store i64 %i.bn, ptr %i.at, align 8, !alias.scope !959
  %i.bo = icmp ult i64 %.sroa.04.0.ph104.i, %i.bm
  br i1 %i.bo, label %.lr.ph107.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread39: ; preds = %bb.c
  %i.bp = load ptr, ptr %i.ax, align 8, !noalias !959, !nonnull !4, !align !144, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !959
  br label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.bq = load i8, ptr %i.ax, align 8, !range !173, !noalias !959, !noundef !4
  %2 = trunc nuw i8 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !959
  br i1 %2, label %bb.e, label %.loopexit63.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.br = load i8, ptr %i.ay, align 2, !range !173, !alias.scope !973, !noundef !4
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp ne i64 %.sroa.08.0101.i, 0
  %or.cond.not.i.i = and i1 %i.bt, %i.bs
  %i.bu = load i64, ptr %i.az, align 8, !alias.scope !973 ; 2 uses
  %i.bv = icmp ult i64 %.sroa.08.0101.i, %i.bu    ; 2 uses
  %or.cond.i.i = select i1 %or.cond.not.i.i, i1 %i.bv, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.bw = load ptr, ptr %i.ba, align 8, !alias.scope !973, !nonnull !4, !noundef !4 ; 2 uses
  %i.bx = getelementptr [24 x i8], ptr %i.bw, i64 %.sroa.08.0101.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noalias !970, !noundef !4 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.thread.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i: ; preds = %bb.f
  %i.cc = getelementptr i8, ptr %i.bx, i64 -8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !970, !noundef !4 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %bb.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.thread.i

bb.g:                                             ; preds = %.lr.ph107.i
  %i.cg = add nuw i64 %.sroa.04.1106.i, 1         ; 2 uses
  %i.ch = load i64, ptr %i.au, align 8, !alias.scope !959, !noundef !4 ; 2 uses
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph107.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread

.lr.ph107.i:                                      ; preds = %.loopexit63.i, %bb.g
  %.sroa.04.1106.i = phi i64 [ %i.cg, %bb.g ], [ %.sroa.04.0.ph104.i, %.loopexit63.i ]
  %i.cj = call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 3) #26 ; 2 uses
  %.not28.i = icmp eq ptr %i.cj, null
  br i1 %.not28.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph107.i
  %i.ck = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.cj) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.thread.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !959
  br label %bb.j

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !959
  br i1 %i.bv, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge, label %bb.k

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i
  %.pre = load ptr, ptr %i.ba, align 8, !alias.scope !959
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i
  %i.cl = load i64, ptr %i.as, align 8, !alias.scope !959, !noundef !4
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.as, align 8, !alias.scope !959
  %i.cn = add nuw i64 %.sroa.08.0101.i, 1
  %i.co = load i64, ptr %i.au, align 8, !alias.scope !959, !noundef !4 ; 2 uses
  %i.cp = icmp ult i64 %.sroa.04.0.ph104.i, %i.co
  br i1 %i.cp, label %bb.c, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread

bb.j:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.thread.i
  %i.cq = phi ptr [ %.pre, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge ], [ %i.bw, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.thread.i ]
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.sroa.08.0101.i
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #26
  %i.cs = load i64, ptr %i.bb, align 8, !range !169, !alias.scope !959, !noundef !4
  %.not29.i = icmp eq i64 %i.cs, -1
  br i1 %.not29.i, label %.split.i, label %bb.l

bb.k:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.0101.i, i64 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !959
  %i.ct = load ptr, ptr %i.bc, align 8, !alias.scope !959, !nonnull !4, !noundef !4 ; 2 uses
  %i.cu = load i64, ptr %i.bd, align 8, !alias.scope !959, !noundef !4 ; 9 uses
  %.val32.i = load i64, ptr %i.an, align 8, !range !229, !alias.scope !959, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !959
  store ptr %i.ct, ptr %i.ah, align 8, !noalias !977
  store i64 %i.cu, ptr %i.be, align 8, !noalias !977
  %i.cv = icmp eq i64 %.val32.i, 0
  br i1 %i.cv, label %.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp slt i64 %i.cu, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n, !prof !299

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !979
  %i.cx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cu, i64 noundef range(i64 1, 9) 1) #26, !noalias !979 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.p

.split.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !977
  store <2 x ptr> <ptr @90, ptr @_RNvXNtNtNtCsfxi9wTnNW09_9crossterm5style5types9attributeNtB2_9AttributeNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt>, ptr %i.ag, align 16, !noalias !977
  store ptr %i.ah, ptr %i.bf, align 16, !noalias !977
  store <2 x ptr> <ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgN7rS7e43TA_7uu_more, ptr @91>, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !977
  store ptr @_RNvXNtNtNtCsfxi9wTnNW09_9crossterm5style5types9attributeNtB2_9AttributeNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !977
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @92, ptr noundef nonnull %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !977
  %.pre.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !959
  %.pre153.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !959
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i

bb.o:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.m
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.m ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cu) #29, !noalias !974
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i: ; preds = %bb.p, %bb.n
  %i.cz = phi ptr [ %i.cx, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.n ] ; 2 uses
  store i64 %i.cu, ptr %i.ak, align 8, !alias.scope !974, !noalias !982
  store ptr %i.cz, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !974, !noalias !982
  store i64 %i.cu, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !974, !noalias !982
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i

bb.p:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull readonly align 1 %i.ct, i64 %i.cu, i1 false), !noalias !974
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i, %.split.i.i
  %i.da = phi i64 [ %.pre153.i, %.split.i.i ], [ %i.cu, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i ] ; 7 uses
  %i.db = phi ptr [ %.pre.i, %.split.i.i ], [ %i.cz, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !959
  %i.dc = load ptr, ptr %i.bg, align 8, !noalias !959, !nonnull !4, !noundef !4 ; 6 uses
  %i.dd = load i64, ptr %i.bh, align 8, !noalias !959, !noundef !4 ; 26 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !959
  %i.de = load i64, ptr %i.bd, align 8, !alias.scope !990, !noalias !991, !noundef !4 ; 2 uses
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i
  %i.dg = load ptr, ptr %i.bc, align 8, !alias.scope !990, !noalias !991, !nonnull !4, !noundef !4
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !995, !noundef !4 ; 3 uses
  %i.di = icmp eq i64 %i.da, 1
  br i1 %i.di, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dj = load i8, ptr %i.db, align 1, !alias.scope !988, !noalias !996, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i = icmp slt i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s, !prof !299

bb.s:                                             ; preds = %bb.r
  %i.dk = icmp samesign eq i64 %i.dd, 0
  br i1 %i.dk, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceRNtNtB8_6string6StringECsgN7rS7e43TA_7uu_more.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.s
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !997
  %i.dl = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dd, i64 noundef range(i64 1, 9) 1) #26, !noalias !997 ; 7 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.t, label %iter.check

iter.check:                                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.dd, 32
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.dd, 24
  %n.vec = and i64 %i.dd, 9223372036854775776     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert274 = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %broadcast.splat275 = shufflevector <16 x i8> %broadcast.splatinsert274, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <16 x i8>, ptr %i.do, align 1, !alias.scope !983, !noalias !1003 ; 2 uses
  %wide.load276 = load <16 x i8>, ptr %i.dp, align 1, !alias.scope !983, !noalias !1003 ; 2 uses
  %i.dq = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.dr = icmp eq <16 x i8> %wide.load276, %broadcast.splat
  %i.ds = select <16 x i1> %i.dq, <16 x i8> %broadcast.splat275, <16 x i8> %wide.load
  %i.dt = select <16 x i1> %i.dr, <16 x i8> %broadcast.splat275, <16 x i8> %wide.load276
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %i.ds, ptr %i.du, align 1, !noalias !1018
  store <16 x i8> %i.dt, ptr %i.dv, align 1, !noalias !1018
end_hunk_3
