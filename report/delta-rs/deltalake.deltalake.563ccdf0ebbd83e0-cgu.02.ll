Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.02?download=true
inline.NumInlined: 6368
inline.NumDeleted: 3022
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7p2uQeJxui2_9deltalake:bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !20
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = add i64 %i.n, %5                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 4 uses
  %umax49 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not86.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not86.not, label %.lr.ph89, label %._crit_edge90

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph71 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.d ], [ %i.l, %bb.o ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.v, %bb.d ], [ %i.aq, %bb.o ], [ %.ph71, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.087, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax49
  br i1 %exitcond.not, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph93, label %._crit_edge94

.lr.ph89:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.087 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.087, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.ae = icmp ult i64 %.sroa.05.0, %i.ag
  br i1 %i.ae, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge90, %bb.h
  %i.af = add i64 %i.n, %5                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph93:                                         ; preds = %._crit_edge90, %bb.h
  %.sroa.2.091 = phi i64 [ %i.ag, %bb.h ], [ %i.g, %._crit_edge90 ]
  %i.ag = add i64 %.sroa.2.091, -1                ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge94
  store i64 0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge94
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ai, align 8, !alias.scope !2549
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.aj, align 8, !alias.scope !2549
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph93
  %i.ak = add i64 %i.ag, %i.n                     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph93
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !noundef !20
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !20
  %.not = icmp eq i8 %i.an, %i.ap
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = add i64 %i.j, %i.n                      ; 3 uses
  store i64 %i.aq, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph89
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.087
  %i.as = load i8, ptr %i.ar, align 1, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.au = load i8, ptr %i.at, align 1, !noundef !20
  %.not21 = icmp eq i8 %i.as, %i.au
  br i1 %.not21, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph89
  %i.av = add i64 %.sroa.01.0, %i.n
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.av)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #27
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.n, 1
  %i.ax = add i64 %i.aw, %.sroa.02.087
  %i.ay = sub i64 %i.ax, %i.g                     ; 3 uses
  store i64 %i.ay, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2io16default_read_bufNCNvYNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderNtB2_4Read8read_buf0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2552 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noalias !2553, !nonnull !20, !noundef !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !2553, !noundef !20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !2553, !noundef !20 ; 2 uses
  %i.f = sub nuw i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.f, i1 false), !noalias !2553
  store i64 %i.c, ptr %i.d, align 8, !noalias !2553
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !20 ; 3 uses
  %i.j = sub nuw i64 %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i
  %i.l = tail call { i64, ptr } @_RNvXs4_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_22ArrowColumnChunkReaderNtNtCs2pqxYH9ZEk8_3std2io4Read4read(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.j) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc nuw i64 %i.m to i1
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %i.j, %i.o
  br i1 %.not, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.i, %i.o
  store i64 %i.q, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.n, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2563 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !20 ; 7 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !33, !noundef !20 ; 2 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit, !prof !24

_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %4 = icmp uge i64 %i.m, %i.i
  %cond.fr = freeze i1 %4
  %.sroa.5.1.i = select i1 %cond.fr, i64 %i.m, i64 8192
  %.sroa.050.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.050.0 = phi i64 [ %.sroa.050.1, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit ], [ 8192, %bb.a ] ; 2 uses
  %.sroa.013.0 = xor i1 %i.g, true                ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread

_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit ], [ %i.d, %bb.b ]
  %.sroa.050.2 = phi i64 [ %.sroa.050.0, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread_crit_edge ], [ %.sroa.050.0, %bb.c ], [ %.sroa.050.1, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit ], [ 8192, %bb.b ]
  %.sroa.013.1 = phi i1 [ %.sroa.013.0, %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread_crit_edge ], [ %.sroa.013.0, %bb.c ], [ false, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1       ; 2 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %i.ab, null
  br i1 %i.ad, label %bb.ad, label %._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread_crit_edge

._RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread

bb.f:                                             ; preds = %bb.z, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread
  %i.ae = phi i64 [ %.pre, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread ], [ %i.cf, %bb.z ] ; 3 uses
  %.sroa.048.2 = phi i64 [ 0, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread ], [ %i.cc, %bb.z ]
  %.sroa.050.3 = phi i64 [ %.sroa.050.2, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread ], [ %.sroa.050.4, %bb.z ] ; 3 uses
  %.sroa.019.0 = phi i32 [ 0, %_RNCINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB4_4TakeNtNtB6_2fs4FileEE0Cs7p2uQeJxui2_9deltalake.exit.thread ], [ %.sroa.019.1, %bb.z ]
  %i.af = icmp sgt i64 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i64, ptr %1, align 8, !range !33, !noundef !20 ; 3 uses
  %i.ah = icmp eq i64 %i.ae, %i.ag
  %i.ai = icmp eq i64 %i.ag, %i.f
  %or.cond62 = and i1 %i.ah, %i.ai
  br i1 %or.cond62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aj = phi i64 [ %.pre122, %._crit_edge ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ak = phi i64 [ %.pre121, %._crit_edge ], [ %i.ae, %bb.f ] ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, %i.aj
  br i1 %i.am, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.an = call fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 2 uses
  %i.aq = trunc nuw i64 %i.ao to i1
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.ap to i64
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.as = icmp eq ptr %i.ap, null
  %.pre121 = load i64, ptr %i.c, align 8          ; 3 uses
  br i1 %i.as, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre122 = load i64, ptr %1, align 8, !range !33
  br label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.at = icmp sgt i64 %.pre121, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = sub nsw i64 %.pre121, %i.d
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.av = call { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aj, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %.not = icmp eq i64 %i.aw, -9223372036854775807
  br i1 %.not, label %._crit_edge123, label %.loopexit

._crit_edge123:                                   ; preds = %bb.l
  %.pre124 = load i64, ptr %i.c, align 8
  %.pre125 = load i64, ptr %1, align 8, !range !33
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge123, %bb.g
  %i.ax = phi i64 [ %.pre125, %._crit_edge123 ], [ %i.aj, %bb.g ]
  %i.ay = phi i64 [ %.pre124, %._crit_edge123 ], [ %i.ak, %bb.g ] ; 5 uses
  %i.az = load ptr, ptr %i.q, align 8, !nonnull !20, !noundef !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  %i.bb = sub i64 %i.ax, %i.ay
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.050.3, i64 %i.bb) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ba, ptr %i.b, align 8
  store i64 %.sroa.0.0.i, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  store i64 %.sroa.048.2, ptr %i.t, align 8
  %i.bc = load i64, ptr %i.u, align 8, !alias.scope !2564, !noundef !20 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.m
  %i.be = icmp sgt i64 %i.ay, -1
  call void @llvm.assume(i1 %i.be)
  store i64 %i.ay, ptr %i.c, align 8
  br label %.loopexit145

.lr.ph:                                           ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit
  %i.bf = phi i64 [ %i.dd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit ], [ %i.bc, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !2566, !noundef !20
  %i.bh = load i64, ptr %i.s, align 8, !alias.scope !2566, !noundef !20 ; 6 uses
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.bl = load i64, ptr %i.s, align 8, !alias.scope !2566, !noundef !20 ; 2 uses
  %.neg.i = sub i64 %i.bh, %i.bl
  %i.bm = load i64, ptr %i.u, align 8, !alias.scope !2565, !noundef !20
  %i.bn = add i64 %.neg.i, %i.bm
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !2566, !noundef !20 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bh
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bf)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !2566, !nonnull !20, !noundef !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2567
  store ptr %i.br, ptr %i.a, align 8, !noalias !2567
  store i64 %i.bf, ptr %i.w, align 8, !noalias !2567
  store i64 0, ptr %i.x, align 8, !noalias !2567
  store i64 %.sroa.0.0.i.i, ptr %i.y, align 8, !noalias !2567
  %i.bs = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !2566
  %i.bt = load i64, ptr %i.x, align 8, !noalias !2567, !noundef !20 ; 2 uses
  %i.bu = load i64, ptr %i.y, align 8, !noalias !2567, !noundef !20
  %i.bv = add i64 %i.bt, %i.bh                    ; 3 uses
  store i64 %i.bv, ptr %i.s, align 8, !alias.scope !2566
  %.sroa.0.0.i4.i = call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bo)
  %i.bw = add i64 %i.bu, %i.bh
  %.sroa.0.0.i5.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.0.0.i4.i)
  store i64 %.sroa.0.0.i5.i, ptr %i.t, align 8, !alias.scope !2566
  %i.bx = load i64, ptr %i.u, align 8, !alias.scope !2565, !noundef !20
  %i.by = sub i64 %i.bx, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2567
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n, %bb.o
  %.pre127132 = phi i64 [ %i.bv, %bb.o ], [ %i.bl, %bb.n ]
  %.sink = phi i64 [ %i.by, %bb.o ], [ %i.bn, %bb.n ] ; 4 uses
  %.sroa.0.0.i64 = phi ptr [ %i.bs, %bb.o ], [ %i.bk, %bb.n ] ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !2565
  %.not60 = icmp eq ptr %.sroa.0.0.i64, null      ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit, label %bb.p

bb.p:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit
  %i.bz = ptrtoint ptr %.sroa.0.0.i64 to i64      ; 3 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.q
    i64 0, label %.split95
    i64 1, label %.split94
  ], !prof !35

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit, %bb.q, %.split, %.split94, %.split95
  %i.cb = ptrtoint ptr %.sroa.0.0.i64 to i64
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit
  %.pre127 = phi i64 [ %.pre127.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ %.pre127132, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ] ; 5 uses
  %.not6076.ph = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6475.ph = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ]
  %.pre128 = load i64, ptr %i.t, align 8          ; 2 uses
  %.pre129 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.cc = sub nuw i64 %.pre128, %.pre127
  %i.cd = icmp ne i64 %.pre128, %.sroa.0.0.i
  %i.ce = icmp sgt i64 %.pre129, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add i64 %.pre129, %.pre127              ; 3 uses
end_hunk_0
