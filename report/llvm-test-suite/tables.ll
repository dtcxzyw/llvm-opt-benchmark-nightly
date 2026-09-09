Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tables?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@init_static_tables:bb.a
  %i.j = and i32 %i.i, 1
  %i.k = lshr i64 %indvars.iv.next.i, 1
  %i.l = and i64 %i.k, 2147483647
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = add nsw i32 %i.j, %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %indvars.iv.next.i
  store i32 %i.o, ptr %i.p, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.q = trunc i64 %indvars.iv.i to i32
  %i.r = and i32 %i.q, 1
  %i.s = lshr i64 %indvars.iv.next.i.1, 1
  %i.t = and i64 %i.s, 2147483647
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = add nsw i32 %i.r, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @countbits16, i64 %indvars.iv.next.i.1
  store i32 %i.w, ptr %i.x, align 4, !tbaa !7
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 65536
  br i1 %exitcond.not.i.2, label %init_countbits.exit, label %bb.b, !llvm.loop !9

init_countbits.exit:                              ; preds = %bb.b, %bb.ag
  %indvars.iv.i1 = phi i64 [ %indvars.iv.next.i2, %bb.ag ], [ 1, %bb.b ] ; 17 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.i1 to i32  ; 15 uses
  %i.z = and i32 %i.y, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %init_countbits.exit
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 0, ptr %i.aa, align 4, !tbaa !7
  br label %bb.ag

bb.d:                                             ; preds = %init_countbits.exit
  %i.ab = and i32 %i.y, 2
  %.not34.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 1, ptr %i.ac, align 4, !tbaa !7
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.ad = and i32 %i.y, 4
  %.not35.i = icmp eq i32 %i.ad, 0
  br i1 %.not35.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 2, ptr %i.ae, align 4, !tbaa !7
  br label %bb.ag

bb.h:                                             ; preds = %bb.f
  %i.af = and i32 %i.y, 8
  %.not36.i = icmp eq i32 %i.af, 0
  br i1 %.not36.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 3, ptr %i.ag, align 4, !tbaa !7
  br label %bb.ag

bb.j:                                             ; preds = %bb.h
  %i.ah = and i32 %i.y, 16
  %.not37.i = icmp eq i32 %i.ah, 0
  br i1 %.not37.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 4, ptr %i.ai, align 4, !tbaa !7
  br label %bb.ag

bb.l:                                             ; preds = %bb.j
  %i.aj = and i32 %i.y, 32
  %.not38.i = icmp eq i32 %i.aj, 0
  br i1 %.not38.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 5, ptr %i.ak, align 4, !tbaa !7
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %i.al = and i32 %i.y, 64
  %.not39.i = icmp eq i32 %i.al, 0
  br i1 %.not39.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 6, ptr %i.am, align 4, !tbaa !7
  br label %bb.ag

bb.p:                                             ; preds = %bb.n
  %i.an = and i32 %i.y, 128
  %.not40.i = icmp eq i32 %i.an, 0
  br i1 %.not40.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 7, ptr %i.ao, align 4, !tbaa !7
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.ap = and i32 %i.y, 256
  %.not41.i = icmp eq i32 %i.ap, 0
  br i1 %.not41.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 8, ptr %i.aq, align 4, !tbaa !7
  br label %bb.ag

bb.t:                                             ; preds = %bb.r
  %i.ar = and i32 %i.y, 512
  %.not42.i = icmp eq i32 %i.ar, 0
  br i1 %.not42.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 9, ptr %i.as, align 4, !tbaa !7
  br label %bb.ag

bb.v:                                             ; preds = %bb.t
  %i.at = and i32 %i.y, 1024
  %.not43.i = icmp eq i32 %i.at, 0
  br i1 %.not43.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 10, ptr %i.au, align 4, !tbaa !7
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.av = and i32 %i.y, 2048
  %.not44.i = icmp eq i32 %i.av, 0
  br i1 %.not44.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 11, ptr %i.aw, align 4, !tbaa !7
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.ax = and i32 %i.y, 4096
  %.not45.i = icmp eq i32 %i.ax, 0
  br i1 %.not45.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 12, ptr %i.ay, align 4, !tbaa !7
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.az = and i32 %i.y, 8192
  %.not46.i = icmp eq i32 %i.az, 0
  br i1 %.not46.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1
  store i32 13, ptr %i.ba, align 4, !tbaa !7
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.bb = and i32 %i.y, 16384
  %.not47.i = icmp eq i32 %i.bb, 0
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @lastbit16, i64 %indvars.iv.i1 ; 2 uses
  br i1 %.not47.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 14, ptr %i.bc, align 4, !tbaa !7
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  store i32 15, ptr %i.bc, align 4, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next.i2, 65536
  br i1 %exitcond.not.i3, label %init_lastbit.exit, label %init_countbits.exit, !llvm.loop !10

init_lastbit.exit:                                ; preds = %bb.ag
  store i32 100, ptr @lastbit16, align 16, !tbaa !7
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %init_lastbit.exit
  %indvars.iv.i4 = phi i64 [ 0, %init_lastbit.exit ], [ %indvars.iv.next.i6, %._crit_edge.i ] ; 4 uses
  %.01424.i = phi i32 [ 0, %init_lastbit.exit ], [ %.115.lcssa.i, %._crit_edge.i ]
  %.not19.i = icmp eq i64 %indvars.iv.i4, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bd = trunc nuw nsw i64 %indvars.iv.i4 to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi i32 [ %i.bk, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.01620.i = phi i32 [ %i.bj, %.lr.ph.i ], [ %i.bd, %.lr.ph.preheader.i ] ; 3 uses
  %i.be = sub nsw i32 0, %.01620.i                ; 2 uses
  %i.bf = and i32 %.01620.i, %i.be                ; 2 uses
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %i.bh = or i32 %i.bg, %i.be
  %i.bi = xor i32 %i.bh, -1
  %i.bj = and i32 %.01620.i, %i.bi                ; 2 uses
  %i.bk = add i32 %.021.i, 1                      ; 2 uses
  %.not.i5 = icmp eq i32 %i.bj, 0
  br i1 %.not.i5, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.115.lcssa.i = phi i32 [ %.01424.i, %.preheader.i ], [ %i.bf, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bk, %.lr.ph.i ] ; 2 uses
  %i.bl = and i32 %.115.lcssa.i, 32768
  %.not18.i = icmp eq i32 %i.bl, 0
  %i.bm = or i32 %.0.lcssa.i, -268435456
  %spec.select.i = select i1 %.not18.i, i32 %.0.lcssa.i, i32 %i.bm
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @move_table16, i64 %indvars.iv.i4
  store i32 %spec.select.i, ptr %i.bn, align 4, !tbaa !7
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i4, 1 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, 65536
  br i1 %exitcond.not.i7, label %init_movetable.exit, label %.preheader.i, !llvm.loop !12

init_movetable.exit:                              ; preds = %._crit_edge.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_less_static_tables() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @g_board_size, align 4, !tbaa !7 ; 7 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_board_size, i64 4), align 4, !tbaa !7 ; 49 uses
  br label %.preheader65

.preheader65:                                     ; preds = %bb.a, %.preheader65
  %indvars.iv83 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next84, %.preheader65 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [1536 x i8], ptr @g_keyinfo, i64 %indvars.iv83 ; 192 uses
  %i.c = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep, align 16, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !21
  %gep67.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49152
  %i.e = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49156
  store i32 -1, ptr %i.e, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49160
  store i32 0, ptr %i.f, align 8, !tbaa !21
  %invariant.gep66.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 52
  store i32 -1, ptr %i.g, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.1, align 16, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 56
  store i32 0, ptr %i.h, align 8, !tbaa !21
  %gep67.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49200
  %i.i = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49204
  store i32 -1, ptr %i.i, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.1, align 16, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49208
  store i32 0, ptr %i.j, align 8, !tbaa !21
  %invariant.gep66.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 100
  store i32 -1, ptr %i.k, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.2, align 16, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 104
  store i32 0, ptr %i.l, align 8, !tbaa !21
  %gep67.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49248
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49252
  store i32 -1, ptr %i.m, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.2, align 16, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49256
  store i32 0, ptr %i.n, align 8, !tbaa !21
  %invariant.gep66.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 148
  store i32 -1, ptr %i.o, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.3, align 16, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 152
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %gep67.1.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49296
  %i.q = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49300
  store i32 -1, ptr %i.q, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.3, align 16, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49304
  store i32 0, ptr %i.r, align 8, !tbaa !21
  %invariant.gep66.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 196
  store i32 -1, ptr %i.s, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.4, align 16, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 200
  store i32 0, ptr %i.t, align 8, !tbaa !21
  %gep67.1.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49344
  %i.u = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49348
  store i32 -1, ptr %i.u, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.4, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49352
  store i32 0, ptr %i.v, align 8, !tbaa !21
  %invariant.gep66.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 244
  store i32 -1, ptr %i.w, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.5, align 16, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 248
  store i32 0, ptr %i.x, align 8, !tbaa !21
  %gep67.1.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49392
  %i.y = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49396
  store i32 -1, ptr %i.y, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.5, align 16, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49400
  store i32 0, ptr %i.z, align 8, !tbaa !21
  %invariant.gep66.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 288
  %i.aa = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 292
  store i32 -1, ptr %i.aa, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.6, align 16, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 296
  store i32 0, ptr %i.ab, align 8, !tbaa !21
  %gep67.1.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49440
  %i.ac = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49444
  store i32 -1, ptr %i.ac, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.6, align 16, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49448
  store i32 0, ptr %i.ad, align 8, !tbaa !21
  %invariant.gep66.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 336
  %i.ae = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 340
  store i32 -1, ptr %i.ae, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.7, align 16, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 344
  store i32 0, ptr %i.af, align 8, !tbaa !21
  %gep67.1.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49488
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49492
  store i32 -1, ptr %i.ag, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.7, align 16, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49496
  store i32 0, ptr %i.ah, align 8, !tbaa !21
  %invariant.gep66.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 384
  %i.ai = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 388
  store i32 -1, ptr %i.ai, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.8, align 16, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 392
  store i32 0, ptr %i.aj, align 8, !tbaa !21
  %gep67.1.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49536
  %i.ak = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49540
  store i32 -1, ptr %i.ak, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.8, align 16, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49544
  store i32 0, ptr %i.al, align 8, !tbaa !21
  %invariant.gep66.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 432
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 436
  store i32 -1, ptr %i.am, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.9, align 16, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 440
  store i32 0, ptr %i.an, align 8, !tbaa !21
  %gep67.1.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49584
  %i.ao = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49588
  store i32 -1, ptr %i.ao, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.9, align 16, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49592
  store i32 0, ptr %i.ap, align 8, !tbaa !21
  %invariant.gep66.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.aq = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 484
  store i32 -1, ptr %i.aq, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.10, align 16, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 488
  store i32 0, ptr %i.ar, align 8, !tbaa !21
  %gep67.1.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49632
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49636
  store i32 -1, ptr %i.as, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.10, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49640
  store i32 0, ptr %i.at, align 8, !tbaa !21
  %invariant.gep66.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 528
  %i.au = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 532
  store i32 -1, ptr %i.au, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.11, align 16, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 536
  store i32 0, ptr %i.av, align 8, !tbaa !21
  %gep67.1.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49680
  %i.aw = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49684
  store i32 -1, ptr %i.aw, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.11, align 16, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49688
  store i32 0, ptr %i.ax, align 8, !tbaa !21
  %invariant.gep66.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 576
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 580
  store i32 -1, ptr %i.ay, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.12, align 16, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 584
  store i32 0, ptr %i.az, align 8, !tbaa !21
  %gep67.1.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49728
  %i.ba = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49732
  store i32 -1, ptr %i.ba, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.12, align 16, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49736
  store i32 0, ptr %i.bb, align 8, !tbaa !21
  %invariant.gep66.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 624
  %i.bc = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 628
  store i32 -1, ptr %i.bc, align 4, !tbaa !19
  store i32 -1, ptr %invariant.gep66.13, align 16, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 632
  store i32 0, ptr %i.bd, align 8, !tbaa !21
  %gep67.1.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49776
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49780
  store i32 -1, ptr %i.be, align 4, !tbaa !19
  store i32 -1, ptr %gep67.1.13, align 16, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 49784
end_hunk_0
