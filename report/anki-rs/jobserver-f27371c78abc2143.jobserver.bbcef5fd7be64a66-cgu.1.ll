Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/jobserver-f27371c78abc2143.jobserver.bbcef5fd7be64a66-cgu.1?download=true
inline.NumInlined: 158
inline.NumDeleted: 11
begin_hunk_0_@"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hb14ee78b29001135E":bb.a
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.s, %bb.p, %bb.o, %bb.m, %.loopexit, %bb.g, %bb.d
  %.sink = phi i8 [ 1, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.m ], [ 0, %.loopexit ], [ 1, %bb.g ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  switch i8 %i.c, label %bb.i [
    i8 43, label %bb.g
    i8 45, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1
  br label %bb.e

bb.h:                                             ; preds = %bb.i
  %i.e = icmp samesign ult i32 %3, 17
  %i.f = icmp ult i64 %2, 17
  %or.cond58 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond58, label %.lr.ph, label %.preheader59

.preheader:                                       ; preds = %bb.j
  %.not5665 = icmp eq i64 %i.j, 0
  br i1 %.not5665, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.preheader
  %.sroa.0.1.ph79 = phi ptr [ %i.i, %.preheader ], [ %1, %bb.h ]
  %.sroa.16.1.ph78 = phi i64 [ %i.j, %.preheader ], [ %2, %bb.h ]
  %i.g = zext nneg i32 %3 to i64
  br label %bb.q

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i8, ptr %1, align 1
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.f
  %i.h = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.f ]
  %cond = icmp eq i8 %i.h, 43
  br i1 %cond, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.j = add i64 %2, -1                           ; 3 uses
  %i.k = icmp samesign ult i32 %3, 17
  %i.l = icmp ult i64 %2, 18
  %or.cond57 = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond57, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %bb.j, %bb.h
  %.sroa.16.0.ph = phi i64 [ %i.j, %bb.j ], [ %2, %bb.h ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %i.i, %bb.j ], [ %1, %bb.h ]
  %i.m = zext nneg i32 %3 to i64
  %.not5488 = icmp eq i64 %.sroa.16.0.ph, 0
  br i1 %.not5488, label %.loopexit, label %.lr.ph92

bb.k:                                             ; preds = %bb.n
  %.not54 = icmp eq i64 %i.p, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph92

.loopexit:                                        ; preds = %bb.k, %bb.r, %.preheader59, %.preheader
  %.sroa.039.2 = phi i64 [ %i.ao, %bb.r ], [ 0, %.preheader ], [ 0, %.preheader59 ], [ %i.ab, %bb.k ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.039.2, ptr %i.n, align 8
  br label %bb.e

.lr.ph92:                                         ; preds = %.preheader59, %bb.k
  %.sroa.0.091 = phi ptr [ %i.o, %bb.k ], [ %.sroa.0.0.ph, %.preheader59 ] ; 2 uses
  %.sroa.16.090 = phi i64 [ %i.p, %bb.k ], [ %.sroa.16.0.ph, %.preheader59 ]
  %.sroa.039.089 = phi i64 [ %i.ab, %bb.k ], [ 0, %.preheader59 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 1
  %i.p = add i64 %.sroa.16.090, -1                ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.039.089, i64 %i.m) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  %i.s = load i8, ptr %.sroa.0.091, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h673b58bc8a324d4cE"(i32 %i.t, i32 %3) ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph92
  %i.x = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.x, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.lr.ph92
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.y, align 1
  br label %bb.e

bb.n:                                             ; preds = %bb.l
  %i.z = extractvalue { i32, i32 } %i.u, 1
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %i.r, %i.aa                     ; 3 uses
  %.not55 = icmp ult i64 %i.ab, %i.r
  br i1 %.not55, label %bb.p, label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ac, align 1
  br label %bb.e

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ad, align 1
  br label %bb.e

bb.q:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0.168 = phi ptr [ %.sroa.0.1.ph79, %.lr.ph ], [ %i.am, %bb.r ] ; 2 uses
  %.sroa.16.167 = phi i64 [ %.sroa.16.1.ph78, %.lr.ph ], [ %i.al, %bb.r ]
  %.sroa.039.166 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.r ]
  %i.ae = load i8, ptr %.sroa.0.168, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h673b58bc8a324d4cE"(i32 %i.af, i32 %3) ; 2 uses
  %i.ah = extractvalue { i32, i32 } %i.ag, 0
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = extractvalue { i32, i32 } %i.ag, 1
  %i.ak = mul i64 %.sroa.039.166, %i.g
  %i.al = add nsw i64 %.sroa.16.167, -1           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.168, i64 1
  %i.an = zext i32 %i.aj to i64
  %i.ao = add i64 %i.ak, %i.an                    ; 2 uses
  %.not56 = icmp eq i64 %i.al, 0
  br i1 %.not56, label %.loopexit, label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ap, align 1
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h21a5470e2695d934E"(ptr nofree readonly align 1 captures(none) %0, i64 %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"
    i64 1, label %bb.b
  ]

.loopexit104.split.loop.exit122.i:                ; preds = %.lr.ph74
  %.mux100.le.i = select i1 %i.as, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"

.loopexit110.split.loop.exit116.i:                ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.w, i64 769, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = add i64 %1, -1                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = icmp ult i64 %1, 9
  br i1 %i.e, label %.preheader.i, label %.preheader102.i

.preheader102.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %i.c, %bb.d ], [ %1, %bb.i ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.i ]
  %.not95.i70 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not95.i70, label %.loopexit.i, label %.lr.ph74

bb.e:                                             ; preds = %bb.j
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i73, i64 1
  %i.g = add i64 %.sroa.27.0.i72, -1              ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.av, 0        ; 2 uses
  %.not95.i = icmp eq i64 %i.g, 0
  br i1 %.not95.i, label %.loopexit.i, label %.lr.ph74

bb.f:                                             ; preds = %bb.c
  %i.i = add i64 %1, -1                           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.k = icmp ult i64 %1, 9
  %.not94118.i = icmp eq i64 %i.i, 0              ; 2 uses
  br i1 %i.k, label %.preheader105.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %bb.f
  br i1 %.not94118.i, label %.loopexit.i, label %.lr.ph

.preheader105.i:                                  ; preds = %bb.f
  br i1 %.not94118.i, label %.loopexit.i, label %.lr.ph.i

.preheader108.i:                                  ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i69, i64 1
  %i.m = add i64 %.sroa.27.2.i68, -1              ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.z, 0         ; 2 uses
  %.not93.i = icmp eq i64 %i.m, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph

.loopexit.i:                                      ; preds = %.preheader108.i, %bb.h, %bb.e, %bb.k, %.preheader108.i.preheader, %.preheader102.i, %.preheader.i, %.preheader105.i
  %.sroa.072.3.i = phi i32 [ %i.ak, %bb.h ], [ %i.bg, %bb.k ], [ %i.h, %bb.e ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader102.i ], [ 0, %.preheader108.i.preheader ], [ %i.n, %.preheader108.i ]
  %i.o = zext i32 %.sroa.072.3.i to i64
  %i.p = shl nuw i64 %i.o, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"

.lr.ph:                                           ; preds = %.preheader108.i.preheader, %.preheader108.i
  %.sroa.0.2.i69 = phi ptr [ %i.l, %.preheader108.i ], [ %i.j, %.preheader108.i.preheader ] ; 2 uses
  %.sroa.27.2.i68 = phi i64 [ %i.m, %.preheader108.i ], [ %i.i, %.preheader108.i.preheader ]
  %.sroa.072.2.i67 = phi i32 [ %i.n, %.preheader108.i ], [ 0, %.preheader108.i.preheader ]
  %i.q = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.2.i67, i32 10) ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = load i8, ptr %.sroa.0.2.i69, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h673b58bc8a324d4cE"(i32 %i.t, i32 10) ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0
  %i.w = trunc i32 %i.v to i1                     ; 2 uses
  %.not97.i = xor i1 %i.w, true
  %brmerge.i = select i1 %.not97.i, i1 true, i1 %i.r
  br i1 %brmerge.i, label %.loopexit110.split.loop.exit116.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.x = extractvalue { i32, i32 } %i.u, 1
  %i.y = extractvalue { i32, i1 } %i.q, 0
  %i.z = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.y, i32 %i.x) ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit", label %.preheader108.i

.lr.ph.i:                                         ; preds = %.preheader105.i, %bb.h
  %.sroa.0.3121.i = phi ptr [ %i.aj, %bb.h ], [ %i.j, %.preheader105.i ] ; 2 uses
  %.sroa.27.3120.i = phi i64 [ %i.ai, %bb.h ], [ %i.i, %.preheader105.i ]
  %.sroa.072.4119.i = phi i32 [ %i.ak, %bb.h ], [ 0, %.preheader105.i ]
  %i.ab = load i8, ptr %.sroa.0.3121.i, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h673b58bc8a324d4cE"(i32 %i.ac, i32 10) ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"

bb.h:                                             ; preds = %.lr.ph.i
  %i.ag = extractvalue { i32, i32 } %i.ad, 1
  %i.ah = mul i32 %.sroa.072.4119.i, 10
  %i.ai = add nsw i64 %.sroa.27.3120.i, -1        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.3121.i, i64 1
  %i.ak = sub i32 %i.ah, %i.ag                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ai, 0
  br i1 %.not94.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.al = icmp ult i64 %1, 8
  br i1 %i.al, label %.lr.ph129.i.preheader, label %.preheader102.i

.lr.ph129.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.0.1128.i.ph = phi ptr [ %0, %bb.i ], [ %i.d, %.preheader.i ]
  %.sroa.27.1127.i.ph = phi i64 [ %1, %bb.i ], [ %i.c, %.preheader.i ]
  br label %.lr.ph129.i

.preheader.i:                                     ; preds = %bb.d
  %.not96125.i = icmp eq i64 %i.c, 0
  br i1 %.not96125.i, label %.loopexit.i, label %.lr.ph129.i.preheader

.lr.ph74:                                         ; preds = %.preheader102.i, %bb.e
  %.sroa.0.0.i73 = phi ptr [ %i.f, %bb.e ], [ %.sroa.0.0.ph.i, %.preheader102.i ] ; 2 uses
  %.sroa.27.0.i72 = phi i64 [ %i.g, %bb.e ], [ %.sroa.27.0.ph.i, %.preheader102.i ]
  %.sroa.072.0.i71 = phi i32 [ %i.h, %bb.e ], [ 0, %.preheader102.i ]
  %i.am = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.0.i71, i32 10) ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 1
  %i.ao = load i8, ptr %.sroa.0.0.i73, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h673b58bc8a324d4cE"(i32 %i.ap, i32 10) ; 2 uses
  %i.ar = extractvalue { i32, i32 } %i.aq, 0
  %i.as = trunc i32 %i.ar to i1                   ; 2 uses
  %.not98.i = xor i1 %i.as, true
  %brmerge99.i = select i1 %.not98.i, i1 true, i1 %i.an
  br i1 %brmerge99.i, label %.loopexit104.split.loop.exit122.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph74
  %i.at = extractvalue { i32, i32 } %i.aq, 1
  %i.au = extractvalue { i32, i1 } %i.am, 0
  %i.av = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.at) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  br i1 %i.aw, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit", label %bb.e

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.k
  %.sroa.0.1128.i = phi ptr [ %i.bf, %bb.k ], [ %.sroa.0.1128.i.ph, %.lr.ph129.i.preheader ] ; 2 uses
  %.sroa.27.1127.i = phi i64 [ %i.be, %bb.k ], [ %.sroa.27.1127.i.ph, %.lr.ph129.i.preheader ]
  %.sroa.072.1126.i = phi i32 [ %i.bg, %bb.k ], [ 0, %.lr.ph129.i.preheader ]
  %i.ax = load i8, ptr %.sroa.0.1128.i, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = tail call { i32, i32 } @"_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h673b58bc8a324d4cE"(i32 %i.ay, i32 10) ; 2 uses
  %i.ba = extractvalue { i32, i32 } %i.az, 0
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit"

bb.k:                                             ; preds = %.lr.ph129.i
  %i.bc = extractvalue { i32, i32 } %i.az, 1
  %i.bd = mul i32 %.sroa.072.1126.i, 10
  %i.be = add nsw i64 %.sroa.27.1127.i, -1        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1128.i, i64 1
  %i.bg = add i32 %i.bc, %i.bd                    ; 2 uses
  %.not96.i = icmp eq i64 %i.be, 0
  br i1 %.not96.i, label %.loopexit.i, label %.lr.ph129.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h5c2fcdd753e23040E.exit": ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph129.i, %bb.a, %.loopexit104.split.loop.exit122.i, %.loopexit110.split.loop.exit116.i, %bb.b, %bb.b, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ 257, %bb.b ], [ %i.p, %.loopexit.i ], [ 257, %bb.b ], [ 257, %.lr.ph129.i ], [ 513, %bb.j ], [ 257, %.lr.ph.i ], [ 1, %bb.a ], [ %.mux100.le.i, %.loopexit104.split.loop.exit122.i ], [ %.mux.le.i, %.loopexit110.split.loop.exit116.i ], [ 769, %bb.g ]
  ret i64 %.sroa.12.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h04bdd9a23a73be6dE"(ptr nofree readonly captures(none) %0, ptr align 4 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @"_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17he2f779bc021b44b2E"(ptr nonnull align 8 %i.a, ptr align 4 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h6abc333a2acf2be3E"(ptr %0) unnamed_addr #3 {
bb.a:
  tail call void @"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17ha58e6ac9b8186c6dE"(ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17ha01c3a8cc653e6a3E"(ptr nofree readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call fastcc ptr @_ZN9jobserver3imp11set_cloexec17h47966243ad4b5b20E(i32 %i.a)
  %i.e = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %i.d) ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6b196f078a559994E"(ptr nonnull %i.e, ptr nonnull align 8 @36)
  br label %_ZN4core3ops8function6FnOnce9call_once17h335142aab61cfa0eE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @_ZN9jobserver3imp11set_cloexec17h47966243ad4b5b20E(i32 %i.c)
  %i.h = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %i.g) ; 2 uses
  %.not5.i.i = icmp eq ptr %i.h, null
  br i1 %.not5.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h335142aab61cfa0eE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6b196f078a559994E"(ptr nonnull %i.h, ptr nonnull align 8 @35)
  br label %_ZN4core3ops8function6FnOnce9call_once17h335142aab61cfa0eE.exit

_ZN4core3ops8function6FnOnce9call_once17h335142aab61cfa0eE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.d ], [ null, %bb.c ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4core3ops8function6FnOnce9call_once17h66204009ae7354d6E(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @"_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h2e02e295f5d4feafE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_ZN4core3ops8function6FnOnce9call_once17h8e904ddefa60ac8cE(i32 %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @"_ZN3std2os2fd5owned98_$LT$impl$u20$core..convert..From$LT$std..os..fd..owned..OwnedFd$GT$$u20$for$u20$std..fs..File$GT$4from17h2c35c7c7c61f75b9E"(i32 %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4core3ops8function6FnOnce9call_once17hfec8b244faa4b8b8E(ptr sret([24 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #3 {
bb.a:
  tail call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h28b38542b6620d18E"(ptr sret([24 x i8]) align 8 %0, ptr align 1 %1, i64 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17hd023a0a9a78b4e99E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %switch = icmp ult i8 %i.a, 3
  br i1 %switch, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h277e9f6adcc77173E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8
  invoke void %i.f(ptr %i.g)
          to label %"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h277e9f6adcc77173E.exit.i.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9de3744483591cf8E"(ptr nonnull align 8 %i.c) #19
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
