Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@_ZN4core3str7pattern14TwoWaySearcher4next17hfa343850ae084bfdE:bb.a
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !53
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted36 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted36, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !53
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
  %umax50 = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not87.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not87.not, label %.lr.ph90, label %._crit_edge91

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.o
  %.sink = phi i64 [ %i.k, %bb.o ], [ 0, %bb.r ], [ 0, %bb.d ] ; 2 uses
  %.ph72 = phi i64 [ %i.aq, %bb.o ], [ %i.ay, %bb.r ], [ %i.v, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.o, %bb.d
  %i.w = phi i64 [ %i.l, %bb.r ], [ %i.l, %bb.o ], [ %i.l, %bb.d ], [ %.sink, %.sink.split ]
  %i.x = phi i64 [ %i.ay, %bb.r ], [ %i.aq, %bb.o ], [ %i.v, %bb.d ], [ %.ph72, %.sink.split ] ; 2 uses
  %i.y = add i64 %i.b, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.p
  %i.aa = add i64 %.sroa.02.088, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %umax50
  br i1 %exitcond.not, label %._crit_edge91, label %.lr.ph90

._crit_edge91:                                    ; preds = %bb.g, %bb.e
  %.sroa.05.0 = select i1 %6, i64 0, i64 %i.l     ; 2 uses
  %i.ab = icmp ult i64 %.sroa.05.0, %i.g
  br i1 %i.ab, label %.lr.ph94, label %._crit_edge95

.lr.ph90:                                         ; preds = %bb.e, %bb.g
  %.sroa.02.088 = phi i64 [ %i.aa, %bb.g ], [ %.sroa.01.0, %bb.e ] ; 4 uses
  %i.ac = add i64 %.sroa.02.088, %i.n             ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.p, label %bb.q

bb.h:                                             ; preds = %bb.m
  %i.ae = icmp ult i64 %.sroa.05.0, %i.ag
  br i1 %i.ae, label %.lr.ph94, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge91, %bb.h
  %i.af = add i64 %i.n, %5                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  br i1 %6, label %bb.j, label %bb.i

.lr.ph94:                                         ; preds = %._crit_edge91, %bb.h
  %.sroa.57.092 = phi i64 [ %i.ag, %bb.h ], [ %i.g, %._crit_edge91 ]
  %i.ag = add i64 %.sroa.57.092, -1               ; 6 uses
  %i.ah = icmp ult i64 %i.ag, %5
  br i1 %i.ah, label %bb.k, label %bb.l

bb.i:                                             ; preds = %._crit_edge95
  store i64 0, ptr %i.h, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.ai, align 8, !alias.scope !13703
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.aj, align 8, !alias.scope !13703
  br label %bb.c

bb.k:                                             ; preds = %.lr.ph94
  %i.ak = add i64 %i.ag, %i.n                     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph94
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ag, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #70
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.an = load i8, ptr %i.am, align 1, !noundef !53
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !53
  %.not = icmp eq i8 %i.an, %i.ap
  br i1 %.not, label %bb.h, label %bb.o

bb.n:                                             ; preds = %bb.k
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ak, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #70
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = add i64 %i.j, %i.n                      ; 3 uses
  store i64 %i.aq, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.p:                                             ; preds = %.lr.ph90
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.088
  %i.as = load i8, ptr %i.ar, align 1, !noundef !53
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.au = load i8, ptr %i.at, align 1, !noundef !53
  %.not22 = icmp eq i8 %i.as, %i.au
  br i1 %.not22, label %bb.g, label %bb.r

bb.q:                                             ; preds = %.lr.ph90
  %i.av = add i64 %.sroa.01.0, %i.n
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.av)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #70
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.aw = add i64 %i.n, 1
  %i.ax = add i64 %i.aw, %.sroa.02.088
  %i.ay = sub i64 %i.ax, %i.g                     ; 3 uses
  store i64 %i.ay, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core3str7pattern14TwoWaySearcher9next_back17h6a13f05792e2c3d4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = sub i64 %.promoted, %5                   ; 2 uses
  %i.c = icmp ult i64 %i.b, %3
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !53
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.promoted46 = load i64, ptr %i.h, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %5) ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 0, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i64 [ %.promoted46, %.lr.ph ], [ %i.v, %bb.f ] ; 5 uses
  %i.l = phi i64 [ %i.b, %.lr.ph ], [ %i.x, %bb.f ] ; 9 uses
  %i.m = phi i64 [ %.promoted, %.lr.ph ], [ %i.w, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noundef !53
  %i.p = and i8 %i.o, 63
  %i.q = zext nneg i8 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.r, %i.e
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.i, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.g)
  %.sroa.01.0 = select i1 %6, i64 %i.g, i64 %.sroa.0.0.i ; 3 uses
  %i.u = add i64 %.sroa.01.0, -1
  %.first_iter = icmp ult i64 %i.u, %5
  %.not110 = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not110, label %._crit_edge114, label %.lr.ph113

.sink.split:                                      ; preds = %bb.d, %bb.n, %9
  %.sink = phi i64 [ %i.j, %9 ], [ %5, %bb.n ], [ %5, %bb.d ] ; 2 uses
  %.ph93 = phi i64 [ %10, %9 ], [ %i.aj, %bb.n ], [ %i.l, %bb.d ]
  store i64 %.sink, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.n, %9, %bb.d
  %i.v = phi i64 [ %i.k, %bb.n ], [ %i.k, %9 ], [ %i.k, %bb.d ], [ %.sink, %.sink.split ]
  %i.w = phi i64 [ %i.aj, %bb.n ], [ %10, %9 ], [ %i.l, %bb.d ], [ %.ph93, %.sink.split ] ; 2 uses
  %i.x = sub i64 %i.w, %5                         ; 2 uses
  %i.y = icmp ult i64 %i.x, %3
  br i1 %i.y, label %bb.b, label %._crit_edge

7:                                                ; preds = %15
  %.not = icmp eq i64 %8, 0
  br i1 %.not, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %7, %bb.e
  %.sroa.07.0 = select i1 %6, i64 %5, i64 %i.k    ; 2 uses
  %umax69 = tail call i64 @llvm.umax.i64(i64 %.sroa.07.0, i64 %i.g)
  %exitcond.not115.not = icmp ult i64 %i.g, %.sroa.07.0
  br i1 %exitcond.not115.not, label %.lr.ph118, label %._crit_edge119

.lr.ph113:                                        ; preds = %bb.e, %7
  %.sroa.5.0111 = phi i64 [ %8, %7 ], [ %.sroa.01.0, %bb.e ]
  %8 = add i64 %.sroa.5.0111, -1                  ; 6 uses
  br i1 %.first_iter, label %11, label %14

bb.g:                                             ; preds = %bb.l
  %exitcond.not = icmp eq i64 %i.z, %umax69
  br i1 %exitcond.not, label %._crit_edge119, label %.lr.ph118

._crit_edge119:                                   ; preds = %._crit_edge114, %bb.g
  store i64 %i.l, ptr %i.a, align 8
  br i1 %6, label %bb.i, label %bb.h

.lr.ph118:                                        ; preds = %._crit_edge114, %bb.g
  %.sroa.08.0116 = phi i64 [ %i.z, %bb.g ], [ %i.g, %._crit_edge114 ] ; 4 uses
  %i.z = add i64 %.sroa.08.0116, 1                ; 2 uses
  %exitcond70.not = icmp eq i64 %.sroa.08.0116, %umax
  br i1 %exitcond70.not, label %bb.k, label %bb.j

bb.h:                                             ; preds = %._crit_edge119
  store i64 %5, ptr %i.h, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge119
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.aa, align 8, !alias.scope !13706
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.ab, align 8, !alias.scope !13706
  br label %bb.c

bb.j:                                             ; preds = %.lr.ph118
  %i.ac = add i64 %.sroa.08.0116, %i.l            ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %3
  br i1 %i.ad, label %bb.l, label %bb.m

bb.k:                                             ; preds = %.lr.ph118
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #70
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.08.0116
  %i.af = load i8, ptr %i.ae, align 1, !noundef !53
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !53
  %.not22 = icmp eq i8 %i.af, %i.ah
  br i1 %.not22, label %bb.g, label %9

bb.m:                                             ; preds = %bb.j
  %i.ai = add i64 %i.g, %i.l
  %umax68 = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ai)
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax68, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @408) #70
  unreachable

9:                                                ; preds = %bb.l
  %10 = sub i64 %i.m, %i.j                        ; 3 uses
  store i64 %10, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

11:                                               ; preds = %.lr.ph113
  %12 = add i64 %8, %i.l                          ; 3 uses
  %13 = icmp ult i64 %12, %3
  br i1 %13, label %15, label %20

14:                                               ; preds = %.lr.ph113
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %8, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409) #70
  unreachable

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 %8
  %17 = load i8, ptr %16, align 1, !noundef !53
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 %12
  %19 = load i8, ptr %18, align 1, !noundef !53
  %.not23 = icmp eq i8 %17, %19
  br i1 %.not23, label %7, label %bb.n

20:                                               ; preds = %11
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %12, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @410) #70
  unreachable

bb.n:                                             ; preds = %15
  %.neg = add i64 %8, %i.m
  %i.aj = sub i64 %.neg, %i.g                     ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE(i32 noundef range(i32 0, 1114112) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 128
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 2048           ; 2 uses
  %i.c = icmp samesign ult i32 %0, 65536          ; 2 uses
  %. = select i1 %i.c, i64 3, i64 4
  %.sroa.0.0 = select i1 %i.b, i64 2, i64 %.      ; 2 uses
  %i.d = icmp ult i64 %2, %.sroa.0.0
  br i1 %i.d, label %bb.h, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.h, label %.thread7

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %0 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128                ; 3 uses
  %i.i = lshr i32 %0, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %0, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %0, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.b, label %bb.d, label %bb.e

.thread7:                                         ; preds = %.thread
  %i.t = trunc nuw nsw i32 %0 to i8
  store i8 %i.t, ptr %1, align 1
  br label %_ZN4core4char7methods25encode_utf8_raw_unchecked17h72b78a1696a52ff6E.exit

bb.d:                                             ; preds = %bb.c
  %i.u = or disjoint i8 %i.j, -64
  store i8 %i.u, ptr %1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.v, align 1
  br label %_ZN4core4char7methods25encode_utf8_raw_unchecked17h72b78a1696a52ff6E.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.n, -32
  store i8 %i.w, ptr %1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.l, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.h, ptr %i.y, align 1
  br label %_ZN4core4char7methods25encode_utf8_raw_unchecked17h72b78a1696a52ff6E.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.s, ptr %1, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.p, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.h, ptr %i.ab, align 1
  br label %_ZN4core4char7methods25encode_utf8_raw_unchecked17h72b78a1696a52ff6E.exit

_ZN4core4char7methods25encode_utf8_raw_unchecked17h72b78a1696a52ff6E.exit: ; preds = %.thread7, %bb.d, %bb.f, %bb.g
  %.sroa.0.069 = phi i64 [ 1, %.thread7 ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.0.069, 1
  ret { ptr, i64 } %i.ad

bb.h:                                             ; preds = %.thread, %bb.b
  %.sroa.0.05 = phi i64 [ 1, %.thread ], [ %.sroa.0.0, %bb.b ]
  tail call void @_ZN4core4char7methods15encode_utf8_raw8do_panic7runtime17h52dfe5cbae560849E(i32 noundef %0, i64 noundef %.sroa.0.05, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @412) #70
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN4core4iter6traits12double_ended19DoubleEndedIterator15advance_back_by17h79f7a1fb7902042cE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #25 {
bb.a:
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !13719, !nonnull !53, !noundef !53 ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !13720
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9"
  %i.c = phi ptr [ %.promoted, %.lr.ph ], [ %i.al, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9" ] ; 5 uses
  %.sroa.01.013 = phi i64 [ 0, %.lr.ph ], [ %i.am, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13722)
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -1 ; 4 uses
  store ptr %i.d, ptr %i.a, align 8, !alias.scope !13719
  %i.e = load i8, ptr %i.d, align 1, !noalias !13720, !noundef !53 ; 2 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9", label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i": ; preds = %bb.c
  %i.g = icmp ne ptr %i.b, %i.d
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -2 ; 4 uses
  store ptr %i.h, ptr %i.a, align 8, !alias.scope !13723
  %i.i = load i8, ptr %i.h, align 1, !noalias !13720, !noundef !53 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i", label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i"
  %i.m = icmp ne ptr %i.b, %i.h
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -3 ; 4 uses
  store ptr %i.n, ptr %i.a, align 8, !alias.scope !13724
  %i.o = load i8, ptr %i.n, align 1, !noalias !13720, !noundef !53 ; 3 uses
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp slt i8 %i.o, -64
  br i1 %i.r, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i", label %bb.d

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i"
  %i.s = icmp ne ptr %i.b, %i.n
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !alias.scope !13725
  %i.u = load i8, ptr %i.t, align 1, !noalias !13720, !noundef !53
  %i.v = and i8 %i.u, 7
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 6
  %i.y = and i8 %i.o, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z
  br label %bb.d

bb.d:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i"
  %i.ab = phi ptr [ %i.t, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i" ], [ %i.n, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i" ]
  %.sroa.04.1.i.i = phi i32 [ %i.aa, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit21.i.i" ], [ %i.q, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit19.i.i" ]
  %i.ac = shl nuw nsw i32 %.sroa.04.1.i.i, 6
  %i.ad = and i8 %i.i, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit"

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i", %bb.d
  %i.ag = phi ptr [ %i.ab, %bb.d ], [ %i.h, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i" ]
  %.sroa.04.0.i.i = phi i32 [ %i.af, %bb.d ], [ %i.k, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h7148c63522f2fd06E.exit17.i.i" ]
  %i.ah = shl nuw nsw i32 %.sroa.04.0.i.i, 6
  %i.ai = and i8 %i.e, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %.not = icmp eq i32 %i.ak, 1114112
  br i1 %.not, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread", label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9"

.loopexit:                                        ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9", %bb.a, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread"
  %.sroa.0.0 = phi i64 [ %i.an, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread" ], [ 0, %bb.a ], [ 0, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9" ]
  ret i64 %.sroa.0.0

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread9": ; preds = %bb.c, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit"
  %i.al = phi ptr [ %i.d, %bb.c ], [ %i.ag, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit" ]
  %i.am = add nuw i64 %.sroa.01.013, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit.thread": ; preds = %bb.b, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hfd5a4568f156adcaE.exit"
  %i.an = sub nuw i64 %1, %.sroa.01.013           ; 2 uses
  %i.ao = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_ZN4core4iter6traits8iterator8Iterator10advance_by17h026140147d51adb3E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13735)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %"_ZN87_$LT$I$u20$as$u20$core..iter..traits..iterator..Iterator..advance_by..SpecAdvanceBy$GT$15spec_advance_by17h878b83f9d5a2d32eE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13737)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.d, align 8, !alias.scope !13738
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
