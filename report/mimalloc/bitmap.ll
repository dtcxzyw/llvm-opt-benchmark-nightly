Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/bitmap?download=true
inline.NumInlined: 201
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@mi_bitmap_bsr:bb.a
.critedge.7.i:                                    ; preds = %.critedge.6.i
  %i.ac = load atomic i64, ptr %i.n monotonic, align 8 ; 2 uses
  %.not.i.not.7.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.not.7.i, label %.critedge, label %bb.e

.critedge33:                                      ; preds = %.critedge, %bb.b
  %.not.not = icmp eq i64 %i.f, 0
  br i1 %.not.not, label %.critedge35, label %bb.b

bb.e:                                             ; preds = %.critedge.7.i, %.critedge.6.i, %.critedge.5.i, %.critedge.4.i, %.critedge.3.i, %.critedge.2.i, %.critedge.1.i, %bb.d
  %.lcssa21.i = phi i64 [ 448, %bb.d ], [ 384, %.critedge.1.i ], [ 320, %.critedge.2.i ], [ 256, %.critedge.3.i ], [ 192, %.critedge.4.i ], [ 128, %.critedge.5.i ], [ 64, %.critedge.6.i ], [ 0, %.critedge.7.i ]
  %.lcssa.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.1.i ], [ %i.t, %.critedge.2.i ], [ %i.v, %.critedge.3.i ], [ %i.x, %.critedge.4.i ], [ %i.z, %.critedge.5.i ], [ %i.ab, %.critedge.6.i ], [ %i.ac, %.critedge.7.i ]
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.i, i1 true)
  %i.ae = or disjoint i64 %.lcssa21.i, %i.ad
  %i.af = shl i64 %i.m, 9
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = xor i64 %i.ag, 63
  store i64 %i.ah, ptr %1, align 8, !tbaa !9
  br label %.critedge35

.critedge35:                                      ; preds = %.critedge33, %bb.a, %bb.e
  %.not45 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %.critedge33 ]
  ret i1 %.not45
}

; Function Attrs: nofree nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @mi_bitmap_popcount(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 64
  %i.b = add i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %.023 = phi i64 [ 0, %.lr.ph25 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.01122 = phi i64 [ 0, %.lr.ph25 ], [ %i.al, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01122
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %.not.i.i.i.not19 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.idx = shl i64 %.01122, 12
  %i.h = getelementptr i8, ptr %i.e, i64 %.idx
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.121 = phi i64 [ %.023, %.lr.ph ], [ %op.rdx, %bb.c ]
  %.01620 = phi i64 [ %i.g, %.lr.ph ], [ %i.k, %bb.c ] ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01620, i1 true)
  %i.j = add i64 %.01620, -1
  %i.k = and i64 %i.j, %.01620                    ; 2 uses
  %i.l = getelementptr [64 x i8], ptr %i.h, i64 %i.i ; 8 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load atomic i64, ptr %i.p monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load atomic i64, ptr %i.r monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.w = load atomic i64, ptr %i.v monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = insertelement <8 x i64> poison, i64 %i.m, i64 0
  %i.ac = insertelement <8 x i64> %i.ab, i64 %i.o, i64 1
  %i.ad = insertelement <8 x i64> %i.ac, i64 %i.q, i64 2
  %i.ae = insertelement <8 x i64> %i.ad, i64 %i.s, i64 3
  %i.af = insertelement <8 x i64> %i.ae, i64 %i.u, i64 4
  %i.ag = insertelement <8 x i64> %i.af, i64 %i.w, i64 5
  %i.ah = insertelement <8 x i64> %i.ag, i64 %i.y, i64 6
  %i.ai = insertelement <8 x i64> %i.ah, i64 %i.aa, i64 7
  %i.aj = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ai)
  %i.ak = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.aj)
  %op.rdx = add i64 %i.ak, %.121                  ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.not, label %._crit_edge, label %bb.c, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.1.lcssa = phi i64 [ %.023, %bb.b ], [ %op.rdx, %bb.c ] ; 2 uses
  %i.al = add nuw nsw i64 %.01122, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.c
  br i1 %exitcond.not, label %._crit_edge26, label %bb.b, !llvm.loop !33
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_bitmap_clear_once_set(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %2, 9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.a
  %i.d = lshr i64 %2, 6
  %i.e = and i64 %i.d, 7
  %i.f = and i64 %2, 63
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e ; 4 uses
  %i.h = shl nuw i64 1, %i.f                      ; 4 uses
  %i.i = load atomic i64, ptr %i.g monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.k = xor i64 %i.h, -1
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %bb.a
  %.0.i.i = phi i64 [ %i.i, %bb.a ], [ %i.w, %.loopexit.i.i ] ; 2 uses
  %i.l = and i64 %.0.i.i, %i.h
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %.loopexit.i.i, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.n = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.o = and i64 %i.n, %i.h
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.j, i64 noundef 1) #16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  tail call void @_mi_prim_thread_yield() #16
  %i.q = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.r = and i64 %i.q, %i.h
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !34

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %.2.i.i = phi i64 [ %.0.i.i, %bb.b ], [ %i.n, %bb.c ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  %i.t = and i64 %.2.i.i, %i.k
  %i.u = cmpxchg weak ptr %i.g, i64 %.2.i.i, i64 %i.t acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = extractvalue { i64, i1 } %i.u, 0
  br i1 %i.v, label %mi_bchunk_clear_once_set.exit, label %bb.b, !llvm.loop !35

mi_bchunk_clear_once_set.exit:                    ; preds = %.loopexit.i.i
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_bitmap_forall_set(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 64
  %i.b = add i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %.not66 = icmp eq i64 %i.c, 0
  br i1 %.not66, label %.critedge41, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph69, %.thread
  %.03967 = phi i64 [ 0, %.lr.ph69 ], [ %i.br, %.thread ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.03967
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %.not.i.i.i.not64 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.not64, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = shl nuw i64 %.03967, 6
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.loopexit
  %.05365 = phi i64 [ %i.g, %.lr.ph ], [ %i.k, %.critedge.loopexit ] ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05365, i1 true)
  %i.j = add i64 %.05365, -1
  %i.k = and i64 %i.j, %.05365                    ; 2 uses
  %i.l = or disjoint i64 %i.i, %i.h               ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.l ; 8 uses
  %i.n = shl i64 %i.l, 9                          ; 8 uses
  %i.o = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.050 = phi i64 [ %i.o, %bb.c ], [ %i.r, %bb.e ] ; 4 uses
  %.not.i.i.i42.not = icmp eq i64 %.050, 0
  br i1 %.not.i.i.i42.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050, i1 true)
  %i.q = add i64 %.050, -1
  %i.r = and i64 %i.q, %.050
  %i.s = or disjoint i64 %i.p, %i.n
  %i.t = tail call zeroext i1 %1(i64 noundef %i.s, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.t, label %bb.d, label %.critedge41, !llvm.loop !36

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %invariant.op117 = or disjoint i64 %i.n, 64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.050.1 = phi i64 [ %i.v, %bb.f ], [ %i.y, %bb.h ] ; 4 uses
  %.not.i.i.i42.not.1 = icmp eq i64 %.050.1, 0
  br i1 %.not.i.i.i42.not.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.1, i1 true)
  %i.x = add i64 %.050.1, -1
  %i.y = and i64 %i.x, %.050.1
  %i.z = or disjoint i64 %i.w, %invariant.op117
  %i.aa = tail call zeroext i1 %1(i64 noundef %i.z, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.aa, label %bb.g, label %.critedge41, !llvm.loop !36

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8
  %invariant.op = or disjoint i64 %i.n, 128
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.050.2 = phi i64 [ %i.ac, %bb.i ], [ %i.af, %bb.k ] ; 4 uses
  %.not.i.i.i42.not.2 = icmp eq i64 %.050.2, 0
  br i1 %.not.i.i.i42.not.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.2, i1 true)
  %i.ae = add i64 %.050.2, -1
  %i.af = and i64 %i.ae, %.050.2
  %i.ag = or disjoint i64 %i.ad, %invariant.op
  %i.ah = tail call zeroext i1 %1(i64 noundef %i.ag, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.ah, label %bb.j, label %.critedge41, !llvm.loop !36

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 8
  %invariant.op118 = or disjoint i64 %i.n, 192
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.050.3 = phi i64 [ %i.aj, %bb.l ], [ %i.am, %bb.n ] ; 4 uses
  %.not.i.i.i42.not.3 = icmp eq i64 %.050.3, 0
  br i1 %.not.i.i.i42.not.3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.3, i1 true)
  %i.al = add i64 %.050.3, -1
  %i.am = and i64 %i.al, %.050.3
  %i.an = or disjoint i64 %i.ak, %invariant.op118
  %i.ao = tail call zeroext i1 %1(i64 noundef %i.an, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.ao, label %bb.m, label %.critedge41, !llvm.loop !36

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aq = load atomic i64, ptr %i.ap monotonic, align 8
  %invariant.op119 = or disjoint i64 %i.n, 256
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.050.4 = phi i64 [ %i.aq, %bb.o ], [ %i.at, %bb.q ] ; 4 uses
  %.not.i.i.i42.not.4 = icmp eq i64 %.050.4, 0
  br i1 %.not.i.i.i42.not.4, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.4, i1 true)
  %i.as = add i64 %.050.4, -1
  %i.at = and i64 %i.as, %.050.4
  %i.au = or disjoint i64 %i.ar, %invariant.op119
  %i.av = tail call zeroext i1 %1(i64 noundef %i.au, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.av, label %bb.p, label %.critedge41, !llvm.loop !36

bb.r:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8
  %invariant.op120 = or disjoint i64 %i.n, 320
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.050.5 = phi i64 [ %i.ax, %bb.r ], [ %i.ba, %bb.t ] ; 4 uses
  %.not.i.i.i42.not.5 = icmp eq i64 %.050.5, 0
  br i1 %.not.i.i.i42.not.5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.5, i1 true)
  %i.az = add i64 %.050.5, -1
  %i.ba = and i64 %i.az, %.050.5
  %i.bb = or disjoint i64 %i.ay, %invariant.op120
  %i.bc = tail call zeroext i1 %1(i64 noundef %i.bb, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.bc, label %bb.s, label %.critedge41, !llvm.loop !36

bb.u:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.be = load atomic i64, ptr %i.bd monotonic, align 8
  %invariant.op121 = or disjoint i64 %i.n, 384
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.050.6 = phi i64 [ %i.be, %bb.u ], [ %i.bh, %bb.w ] ; 4 uses
  %.not.i.i.i42.not.6 = icmp eq i64 %.050.6, 0
  br i1 %.not.i.i.i42.not.6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.6, i1 true)
  %i.bg = add i64 %.050.6, -1
  %i.bh = and i64 %i.bg, %.050.6
  %i.bi = or disjoint i64 %i.bf, %invariant.op121
  %i.bj = tail call zeroext i1 %1(i64 noundef %i.bi, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.bj, label %bb.v, label %.critedge41, !llvm.loop !36

bb.x:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bl = load atomic i64, ptr %i.bk monotonic, align 8
  %invariant.op122 = or disjoint i64 %i.n, 448
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.050.7 = phi i64 [ %i.bl, %bb.x ], [ %i.bo, %bb.z ] ; 4 uses
  %.not.i.i.i42.not.7 = icmp eq i64 %.050.7, 0
  br i1 %.not.i.i.i42.not.7, label %.critedge.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.7, i1 true)
  %i.bn = add i64 %.050.7, -1
  %i.bo = and i64 %i.bn, %.050.7
  %i.bp = or disjoint i64 %i.bm, %invariant.op122
  %i.bq = tail call zeroext i1 %1(i64 noundef %i.bp, i64 noundef 1, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.bq, label %bb.y, label %.critedge41, !llvm.loop !36

.critedge.loopexit:                               ; preds = %bb.y
  %.not.i.i.i.not = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.not, label %.thread, label %bb.c

.thread:                                          ; preds = %.critedge.loopexit, %bb.b
  %i.br = add nuw nsw i64 %.03967, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.c
  br i1 %exitcond.not, label %.critedge41, label %bb.b, !llvm.loop !37

.critedge41:                                      ; preds = %.thread, %bb.e, %bb.h, %bb.k, %bb.n, %bb.q, %bb.t, %bb.w, %bb.z, %bb.a
  %.not62 = phi i1 [ false, %bb.w ], [ true, %bb.a ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.z ], [ true, %.thread ]
  ret i1 %.not62
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_bitmap_forall_setc_ranges(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 64
  %i.b = add i64 %i.a, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %.not5379 = icmp eq i64 %i.c, 0
  br i1 %.not5379, label %.critedge57, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.thread
  %.04480 = phi i64 [ 0, %.lr.ph82 ], [ %i.dw, %.thread ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.04480
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %.not.i.i.i.not77 = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.not77, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = shl nuw i64 %.04480, 6
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge55.7
  %.06478 = phi i64 [ %i.g, %.lr.ph ], [ %i.k, %.critedge55.7 ] ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06478, i1 true)
  %i.j = add i64 %.06478, -1
  %i.k = and i64 %i.j, %.06478                    ; 2 uses
  %i.l = or disjoint i64 %i.i, %i.h               ; 2 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.l ; 9 uses
  %i.n = shl i64 %i.l, 9                          ; 8 uses
  %i.o = atomicrmw xchg ptr %i.m, i64 0 monotonic, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  %.050 = phi i64 [ %i.o, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not.i.i.not = icmp eq i64 %.050, 0
  br i1 %.not.i.i.not, label %.critedge55, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050, i1 true) ; 3 uses
  %i.q = lshr exact i64 %.050, %i.p
  %i.r = xor i64 %i.q, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 false) ; 3 uses
  %i.t = or disjoint i64 %i.p, %i.n
  %i.u = icmp samesign ult i64 %i.s, 64
  %notmask.i = shl nsw i64 -1, %i.s
  %i.v = xor i64 %notmask.i, -1
  %i.w = select i1 %i.u, i64 %i.v, i64 -1
  %i.x = shl i64 %i.w, %i.p
  %i.y = xor i64 %i.x, -1
  %i.z = and i64 %.050, %i.y                      ; 2 uses
  %i.aa = tail call zeroext i1 %1(i64 noundef %i.t, i64 noundef %i.s, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.aa, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.lcssa83 = phi ptr [ %i.bs, %bb.i ], [ %i.cg, %bb.j ], [ %i.cu, %bb.k ], [ %i.di, %bb.l ], [ %i.ac, %bb.f ], [ %i.aq, %bb.g ], [ %i.be, %bb.h ], [ %i.m, %bb.d ]
  %.lcssa = phi i64 [ %i.ce, %bb.i ], [ %i.cs, %bb.j ], [ %i.dg, %bb.k ], [ %i.du, %bb.l ], [ %i.ao, %bb.f ], [ %i.bc, %bb.g ], [ %i.bq, %bb.h ], [ %i.z, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %.critedge57, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ab = atomicrmw or ptr %.lcssa83, i64 %.lcssa monotonic, align 8 ; 0 uses
  br label %.critedge57

.critedge55:                                      ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.ad = atomicrmw xchg ptr %i.ac, i64 0 monotonic, align 8
  %invariant.op350 = or disjoint i64 %i.n, 64
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.f, %.critedge55
  %.050.1 = phi i64 [ %i.ad, %.critedge55 ], [ %i.ao, %bb.f ] ; 4 uses
  %.not.i.i.not.1 = icmp eq i64 %.050.1, 0
  br i1 %.not.i.i.not.1, label %.critedge55.1, label %bb.f

bb.f:                                             ; preds = %.critedge.1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.1, i1 true) ; 3 uses
  %i.af = lshr exact i64 %.050.1, %i.ae
  %i.ag = xor i64 %i.af, -1
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ag, i1 false) ; 3 uses
  %i.ai = or disjoint i64 %i.ae, %invariant.op350
  %i.aj = icmp samesign ult i64 %i.ah, 64
  %notmask.i.1 = shl nsw i64 -1, %i.ah
  %i.ak = xor i64 %notmask.i.1, -1
  %i.al = select i1 %i.aj, i64 %i.ak, i64 -1
  %i.am = shl i64 %i.al, %i.ae
  %i.an = xor i64 %i.am, -1
  %i.ao = and i64 %.050.1, %i.an                  ; 2 uses
  %i.ap = tail call zeroext i1 %1(i64 noundef %i.ai, i64 noundef %i.ah, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.ap, label %.critedge.1, label %.loopexit

.critedge55.1:                                    ; preds = %.critedge.1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ar = atomicrmw xchg ptr %i.aq, i64 0 monotonic, align 8
  %invariant.op = or disjoint i64 %i.n, 128
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.g, %.critedge55.1
  %.050.2 = phi i64 [ %i.ar, %.critedge55.1 ], [ %i.bc, %bb.g ] ; 4 uses
  %.not.i.i.not.2 = icmp eq i64 %.050.2, 0
  br i1 %.not.i.i.not.2, label %.critedge55.2, label %bb.g

bb.g:                                             ; preds = %.critedge.2
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.2, i1 true) ; 3 uses
  %i.at = lshr exact i64 %.050.2, %i.as
  %i.au = xor i64 %i.at, -1
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.au, i1 false) ; 3 uses
  %i.aw = or disjoint i64 %i.as, %invariant.op
  %i.ax = icmp samesign ult i64 %i.av, 64
  %notmask.i.2 = shl nsw i64 -1, %i.av
  %i.ay = xor i64 %notmask.i.2, -1
  %i.az = select i1 %i.ax, i64 %i.ay, i64 -1
  %i.ba = shl i64 %i.az, %i.as
  %i.bb = xor i64 %i.ba, -1
  %i.bc = and i64 %.050.2, %i.bb                  ; 2 uses
  %i.bd = tail call zeroext i1 %1(i64 noundef %i.aw, i64 noundef %i.av, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.bd, label %.critedge.2, label %.loopexit

.critedge55.2:                                    ; preds = %.critedge.2
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.bf = atomicrmw xchg ptr %i.be, i64 0 monotonic, align 8
  %invariant.op351 = or disjoint i64 %i.n, 192
  br label %.critedge.3

.critedge.3:                                      ; preds = %bb.h, %.critedge55.2
  %.050.3 = phi i64 [ %i.bf, %.critedge55.2 ], [ %i.bq, %bb.h ] ; 4 uses
  %.not.i.i.not.3 = icmp eq i64 %.050.3, 0
  br i1 %.not.i.i.not.3, label %.critedge55.3, label %bb.h

bb.h:                                             ; preds = %.critedge.3
  %i.bg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.3, i1 true) ; 3 uses
  %i.bh = lshr exact i64 %.050.3, %i.bg
  %i.bi = xor i64 %i.bh, -1
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bi, i1 false) ; 3 uses
  %i.bk = or disjoint i64 %i.bg, %invariant.op351
  %i.bl = icmp samesign ult i64 %i.bj, 64
  %notmask.i.3 = shl nsw i64 -1, %i.bj
  %i.bm = xor i64 %notmask.i.3, -1
  %i.bn = select i1 %i.bl, i64 %i.bm, i64 -1
  %i.bo = shl i64 %i.bn, %i.bg
  %i.bp = xor i64 %i.bo, -1
  %i.bq = and i64 %.050.3, %i.bp                  ; 2 uses
  %i.br = tail call zeroext i1 %1(i64 noundef %i.bk, i64 noundef %i.bj, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.br, label %.critedge.3, label %.loopexit

.critedge55.3:                                    ; preds = %.critedge.3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.bt = atomicrmw xchg ptr %i.bs, i64 0 monotonic, align 8
  %invariant.op352 = or disjoint i64 %i.n, 256
  br label %.critedge.4

.critedge.4:                                      ; preds = %bb.i, %.critedge55.3
  %.050.4 = phi i64 [ %i.bt, %.critedge55.3 ], [ %i.ce, %bb.i ] ; 4 uses
  %.not.i.i.not.4 = icmp eq i64 %.050.4, 0
  br i1 %.not.i.i.not.4, label %.critedge55.4, label %bb.i

bb.i:                                             ; preds = %.critedge.4
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.4, i1 true) ; 3 uses
  %i.bv = lshr exact i64 %.050.4, %i.bu
  %i.bw = xor i64 %i.bv, -1
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bw, i1 false) ; 3 uses
  %i.by = or disjoint i64 %i.bu, %invariant.op352
  %i.bz = icmp samesign ult i64 %i.bx, 64
  %notmask.i.4 = shl nsw i64 -1, %i.bx
  %i.ca = xor i64 %notmask.i.4, -1
  %i.cb = select i1 %i.bz, i64 %i.ca, i64 -1
  %i.cc = shl i64 %i.cb, %i.bu
  %i.cd = xor i64 %i.cc, -1
  %i.ce = and i64 %.050.4, %i.cd                  ; 2 uses
  %i.cf = tail call zeroext i1 %1(i64 noundef %i.by, i64 noundef %i.bx, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.cf, label %.critedge.4, label %.loopexit

.critedge55.4:                                    ; preds = %.critedge.4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.ch = atomicrmw xchg ptr %i.cg, i64 0 monotonic, align 8
  %invariant.op353 = or disjoint i64 %i.n, 320
  br label %.critedge.5

.critedge.5:                                      ; preds = %bb.j, %.critedge55.4
  %.050.5 = phi i64 [ %i.ch, %.critedge55.4 ], [ %i.cs, %bb.j ] ; 4 uses
  %.not.i.i.not.5 = icmp eq i64 %.050.5, 0
  br i1 %.not.i.i.not.5, label %.critedge55.5, label %bb.j

bb.j:                                             ; preds = %.critedge.5
  %i.ci = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.5, i1 true) ; 3 uses
  %i.cj = lshr exact i64 %.050.5, %i.ci
  %i.ck = xor i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ck, i1 false) ; 3 uses
  %i.cm = or disjoint i64 %i.ci, %invariant.op353
  %i.cn = icmp samesign ult i64 %i.cl, 64
  %notmask.i.5 = shl nsw i64 -1, %i.cl
  %i.co = xor i64 %notmask.i.5, -1
  %i.cp = select i1 %i.cn, i64 %i.co, i64 -1
  %i.cq = shl i64 %i.cp, %i.ci
  %i.cr = xor i64 %i.cq, -1
  %i.cs = and i64 %.050.5, %i.cr                  ; 2 uses
  %i.ct = tail call zeroext i1 %1(i64 noundef %i.cm, i64 noundef %i.cl, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.ct, label %.critedge.5, label %.loopexit

.critedge55.5:                                    ; preds = %.critedge.5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.cv = atomicrmw xchg ptr %i.cu, i64 0 monotonic, align 8
  %invariant.op354 = or disjoint i64 %i.n, 384
  br label %.critedge.6

.critedge.6:                                      ; preds = %bb.k, %.critedge55.5
  %.050.6 = phi i64 [ %i.cv, %.critedge55.5 ], [ %i.dg, %bb.k ] ; 4 uses
  %.not.i.i.not.6 = icmp eq i64 %.050.6, 0
  br i1 %.not.i.i.not.6, label %.critedge55.6, label %bb.k

bb.k:                                             ; preds = %.critedge.6
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.6, i1 true) ; 3 uses
  %i.cx = lshr exact i64 %.050.6, %i.cw
  %i.cy = xor i64 %i.cx, -1
  %i.cz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cy, i1 false) ; 3 uses
  %i.da = or disjoint i64 %i.cw, %invariant.op354
  %i.db = icmp samesign ult i64 %i.cz, 64
  %notmask.i.6 = shl nsw i64 -1, %i.cz
  %i.dc = xor i64 %notmask.i.6, -1
  %i.dd = select i1 %i.db, i64 %i.dc, i64 -1
  %i.de = shl i64 %i.dd, %i.cw
  %i.df = xor i64 %i.de, -1
  %i.dg = and i64 %.050.6, %i.df                  ; 2 uses
  %i.dh = tail call zeroext i1 %1(i64 noundef %i.da, i64 noundef %i.cz, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.dh, label %.critedge.6, label %.loopexit

.critedge55.6:                                    ; preds = %.critedge.6
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.dj = atomicrmw xchg ptr %i.di, i64 0 monotonic, align 8
  %invariant.op355 = or disjoint i64 %i.n, 448
  br label %.critedge.7

.critedge.7:                                      ; preds = %bb.l, %.critedge55.6
  %.050.7 = phi i64 [ %i.dj, %.critedge55.6 ], [ %i.du, %bb.l ] ; 4 uses
  %.not.i.i.not.7 = icmp eq i64 %.050.7, 0
  br i1 %.not.i.i.not.7, label %.critedge55.7, label %bb.l

bb.l:                                             ; preds = %.critedge.7
  %i.dk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.050.7, i1 true) ; 3 uses
  %i.dl = lshr exact i64 %.050.7, %i.dk
  %i.dm = xor i64 %i.dl, -1
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dm, i1 false) ; 3 uses
  %i.do = or disjoint i64 %i.dk, %invariant.op355
  %i.dp = icmp samesign ult i64 %i.dn, 64
  %notmask.i.7 = shl nsw i64 -1, %i.dn
  %i.dq = xor i64 %notmask.i.7, -1
  %i.dr = select i1 %i.dp, i64 %i.dq, i64 -1
  %i.ds = shl i64 %i.dr, %i.dk
  %i.dt = xor i64 %i.ds, -1
  %i.du = and i64 %.050.7, %i.dt                  ; 2 uses
  %i.dv = tail call zeroext i1 %1(i64 noundef %i.do, i64 noundef %i.dn, ptr noundef %2, ptr noundef %3) #16
  br i1 %i.dv, label %.critedge.7, label %.loopexit

.critedge55.7:                                    ; preds = %.critedge.7
  %.not.i.i.i.not = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.not, label %.thread, label %bb.c

.thread:                                          ; preds = %.critedge55.7, %bb.b
  %i.dw = add nuw nsw i64 %.04480, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %i.c
  br i1 %exitcond.not, label %.critedge57, label %bb.b, !llvm.loop !38

.critedge57:                                      ; preds = %.thread, %bb.a, %.loopexit, %bb.e
  %.not5375 = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ true, %bb.a ], [ true, %.thread ]
  ret i1 %.not5375
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_bitmap_forall_setc_rangesn(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_mi_bitmap_forall_setc_ranges(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15
  br label %.critedge100

bb.c:                                             ; preds = %bb.a
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %1, i64 64) ; 25 uses
  %i.c = load atomic i64, ptr %0 monotonic, align 64
  %i.d = add i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not98.not122.not = icmp eq i64 %i.e, 0
  br i1 %.not98.not122.not, label %.critedge100, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = icmp ult i64 %1, 64
  %notmask.i = shl nsw i64 -1, %spec.store.select
  %i.i = xor i64 %notmask.i, -1
  %i.j = select i1 %i.h, i64 %i.i, i64 -1         ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph124, %.thread108
  %.078123 = phi i64 [ 0, %.lr.ph124 ], [ %i.fb, %.thread108 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.078123
  %i.l = load atomic i64, ptr %i.k monotonic, align 8 ; 2 uses
  %.not.i.i.i.not120 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.not120, label %.thread108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = shl nuw i64 %.078123, 6
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge112.loopexit
  %.0103121 = phi i64 [ %i.l, %.lr.ph ], [ %i.p, %.critedge112.loopexit ] ; 3 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0103121, i1 true)
  %i.o = add i64 %.0103121, -1
  %i.p = and i64 %i.o, %.0103121                  ; 2 uses
  %i.q = or disjoint i64 %i.n, %i.m               ; 2 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.q ; 10 uses
  %i.s = shl i64 %i.q, 9                          ; 8 uses
  %i.t = atomicrmw xchg ptr %i.r, i64 0 monotonic, align 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %i.u = phi i64 [ %spec.store.select, %bb.e ], [ %i.af, %.critedge ] ; 5 uses
  %.080118 = phi i64 [ 0, %bb.e ], [ %i.u, %.critedge ] ; 2 uses
  %.081117 = phi i64 [ 0, %bb.e ], [ %.283, %.critedge ] ; 3 uses
  %i.v = shl i64 %i.j, %.080118                   ; 2 uses
  %i.w = and i64 %i.v, %i.t                       ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.v
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = add nuw i64 %i.s, %.080118
  %i.z = tail call zeroext i1 %2(i64 noundef %i.y, i64 noundef %spec.store.select, ptr noundef %3, ptr noundef %4) #16
  br i1 %i.z, label %.critedge, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.o, %bb.u, %bb.aa, %bb.ag, %bb.am, %bb.as, %bb.ay
  %.lcssa129 = phi ptr [ %i.cm, %bb.ag ], [ %i.dd, %bb.am ], [ %i.du, %bb.as ], [ %i.el, %bb.ay ], [ %i.an, %bb.o ], [ %i.be, %bb.u ], [ %i.bv, %bb.aa ], [ %i.r, %bb.g ]
  %.lcssa127 = phi i64 [ %i.cn, %bb.ag ], [ %i.de, %bb.am ], [ %i.dv, %bb.as ], [ %i.em, %bb.ay ], [ %i.ao, %bb.o ], [ %i.bf, %bb.u ], [ %i.bw, %bb.aa ], [ %i.t, %bb.g ]
  %.lcssa = phi i64 [ %i.co, %bb.ag ], [ %i.df, %bb.am ], [ %i.dw, %bb.as ], [ %i.en, %bb.ay ], [ %i.ap, %bb.o ], [ %i.bg, %bb.u ], [ %i.bx, %bb.aa ], [ %i.u, %bb.g ] ; 2 uses
  %.081117.lcssa = phi i64 [ %.081117.4, %bb.ag ], [ %.081117.5, %bb.am ], [ %.081117.6, %bb.as ], [ %.081117.7, %bb.ay ], [ %.081117.1, %bb.o ], [ %.081117.2, %bb.u ], [ %.081117.3, %bb.aa ], [ %.081117, %bb.g ]
  %.not96 = icmp eq i64 %.lcssa, 64
  %i.aa = shl nsw i64 -1, %.lcssa
  %i.ab = and i64 %i.aa, %.lcssa127
  %i.ac = select i1 %.not96, i64 0, i64 %i.ab
  %.079 = or i64 %i.ac, %.081117.lcssa            ; 2 uses
  %.not97 = icmp eq i64 %.079, 0
  br i1 %.not97, label %.critedge100, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ad = atomicrmw or ptr %.lcssa129, i64 %.079 monotonic, align 8 ; 0 uses
  br label %.critedge100

bb.i:                                             ; preds = %bb.f
  %i.ae = or i64 %i.w, %.081117
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.g
  %.283 = phi i64 [ %.081117, %bb.g ], [ %i.ae, %bb.i ] ; 2 uses
  %i.af = add nuw nsw i64 %i.u, %spec.store.select ; 2 uses
  %i.ag = icmp samesign ugt i64 %i.af, 64
  br i1 %i.ag, label %bb.j, label %bb.f, !llvm.loop !39

bb.j:                                             ; preds = %.critedge
  %i.ah = icmp samesign ult i64 %i.u, 64
  %i.ai = shl nsw i64 -1, %i.u
  %i.aj = and i64 %i.ai, %i.t
  %i.ak = select i1 %i.ah, i64 %i.aj, i64 0
  %.384 = or i64 %i.ak, %.283                     ; 2 uses
  %.not = icmp eq i64 %.384, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = atomicrmw or ptr %i.r, i64 %.384 monotonic, align 8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.am = or disjoint i64 %i.s, 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ao = atomicrmw xchg ptr %i.an, i64 0 monotonic, align 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge.1, %bb.l
  %i.ap = phi i64 [ %spec.store.select, %bb.l ], [ %i.aw, %.critedge.1 ] ; 5 uses
  %.080118.1 = phi i64 [ 0, %bb.l ], [ %i.ap, %.critedge.1 ] ; 2 uses
  %.081117.1 = phi i64 [ 0, %bb.l ], [ %.283.1, %.critedge.1 ] ; 3 uses
  %i.aq = shl i64 %i.j, %.080118.1                ; 2 uses
  %i.ar = and i64 %i.aq, %i.ao                    ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = or i64 %i.ar, %.081117.1
  br label %.critedge.1

bb.o:                                             ; preds = %bb.m
  %i.au = add nuw i64 %i.am, %.080118.1
  %i.av = tail call zeroext i1 %2(i64 noundef %i.au, i64 noundef %spec.store.select, ptr noundef %3, ptr noundef %4) #16
  br i1 %i.av, label %.critedge.1, label %.loopexit

.critedge.1:                                      ; preds = %bb.o, %bb.n
  %.283.1 = phi i64 [ %.081117.1, %bb.o ], [ %i.at, %bb.n ] ; 2 uses
  %i.aw = add nuw nsw i64 %i.ap, %spec.store.select ; 2 uses
  %i.ax = icmp samesign ugt i64 %i.aw, 64
  br i1 %i.ax, label %bb.p, label %bb.m, !llvm.loop !39

bb.p:                                             ; preds = %.critedge.1
  %i.ay = icmp samesign ult i64 %i.ap, 64
  %i.az = shl nsw i64 -1, %i.ap
  %i.ba = and i64 %i.az, %i.ao
  %i.bb = select i1 %i.ay, i64 %i.ba, i64 0
  %.384.1 = or i64 %i.bb, %.283.1                 ; 2 uses
  %.not.1 = icmp eq i64 %.384.1, 0
  br i1 %.not.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = atomicrmw or ptr %i.an, i64 %.384.1 monotonic, align 8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bd = or disjoint i64 %i.s, 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.bf = atomicrmw xchg ptr %i.be, i64 0 monotonic, align 8 ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %.critedge.2, %bb.r
  %i.bg = phi i64 [ %spec.store.select, %bb.r ], [ %i.bn, %.critedge.2 ] ; 5 uses
  %.080118.2 = phi i64 [ 0, %bb.r ], [ %i.bg, %.critedge.2 ] ; 2 uses
  %.081117.2 = phi i64 [ 0, %bb.r ], [ %.283.2, %.critedge.2 ] ; 3 uses
  %i.bh = shl i64 %i.j, %.080118.2                ; 2 uses
  %i.bi = and i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = or i64 %i.bi, %.081117.2
  br label %.critedge.2

bb.u:                                             ; preds = %bb.s
  %i.bl = add nuw i64 %i.bd, %.080118.2
  %i.bm = tail call zeroext i1 %2(i64 noundef %i.bl, i64 noundef %spec.store.select, ptr noundef %3, ptr noundef %4) #16
  br i1 %i.bm, label %.critedge.2, label %.loopexit

.critedge.2:                                      ; preds = %bb.u, %bb.t
  %.283.2 = phi i64 [ %.081117.2, %bb.u ], [ %i.bk, %bb.t ] ; 2 uses
  %i.bn = add nuw nsw i64 %i.bg, %spec.store.select ; 2 uses
  %i.bo = icmp samesign ugt i64 %i.bn, 64
  br i1 %i.bo, label %bb.v, label %bb.s, !llvm.loop !39

end_hunk_0
