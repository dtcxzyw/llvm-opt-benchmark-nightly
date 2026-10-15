Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress?download=true
inline.NumInlined: 848
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_convertBlockSequences:bb.a
  %i.bf = icmp ne i32 %i.bd, %i.av
  %or.cond77.not = select i1 %i.bb, i1 true, i1 %i.bf
  br i1 %or.cond77.not, label %bb.l, label %ZSTD_finalizeOffBase.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i32 %i.bd, %i.au
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = select i1 %i.bb, i32 1, i32 2
  br label %ZSTD_finalizeOffBase.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = icmp eq i32 %i.bd, %i.at
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = xor i32 %i.bc, 3
  br label %ZSTD_finalizeOffBase.exit

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %ZSTD_finalizeOffBase.exit.thread, label %ZSTD_finalizeOffBase.exit

ZSTD_finalizeOffBase.exit.thread:                 ; preds = %bb.p
  %i.bk = add i32 %i.av, -1
  %i.bl = icmp eq i32 %i.bd, %i.bk
  %spec.select.i = select i1 %i.bl, i32 3, i32 %i.be
  br label %bb.r

ZSTD_finalizeOffBase.exit:                        ; preds = %bb.k, %bb.m, %bb.o, %bb.p
  %.0.i = phi i32 [ %i.bh, %bb.m ], [ %i.bj, %bb.o ], [ 1, %bb.k ], [ %i.be, %bb.p ] ; 2 uses
  %i.bm = icmp ugt i32 %i.ay, 65535
  br i1 %i.bm, label %bb.q, label %bb.r, !prof !414

bb.q:                                             ; preds = %ZSTD_finalizeOffBase.exit
  store i32 1, ptr %i.j, align 8, !tbaa !182
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.bo = ptrtoint ptr %i.as to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 3
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.l, align 4, !tbaa !183
  br label %bb.r

bb.r:                                             ; preds = %ZSTD_finalizeOffBase.exit.thread, %bb.q, %ZSTD_finalizeOffBase.exit
  %.0.i92 = phi i32 [ %spec.select.i, %ZSTD_finalizeOffBase.exit.thread ], [ %.0.i, %bb.q ], [ %.0.i, %ZSTD_finalizeOffBase.exit ] ; 4 uses
  %i.bt = zext i32 %i.ba to i64
  %i.bu = trunc i32 %i.ay to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i16 %i.bu, ptr %i.bv, align 4, !tbaa !178
  store i32 %.0.i92, ptr %i.as, align 4, !tbaa !179
  %i.bw = add nsw i64 %i.bt, -3                   ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 65535
  br i1 %i.bx, label %bb.s, label %ZSTD_storeSeqOnly.exit, !prof !266

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.j, align 8, !tbaa !182
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.bz = ptrtoint ptr %i.as to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.l, align 4, !tbaa !183
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %bb.r, %bb.s
  %i.ce = trunc i64 %i.bw to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !180
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ch = icmp ugt i32 %.0.i92, 3
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %ZSTD_storeSeqOnly.exit
  store i32 %i.au, ptr %i.i, align 8, !tbaa !64
  store i32 %i.av, ptr %i.h, align 4, !tbaa !64
  %i.ci = add i32 %.0.i92, -3
  br label %.sink.split.i

bb.u:                                             ; preds = %ZSTD_storeSeqOnly.exit
  %not. = xor i1 %i.bb, true
  %i.cj = sext i1 %not. to i32
  %i.ck = add nsw i32 %.0.i92, %i.cj              ; 3 uses
  switch i32 %i.ck, label %bb.w [
    i32 0, label %ZSTD_updateRep.exit
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.cl = add i32 %i.av, -1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cp = phi i32 [ %i.cl, %bb.v ], [ %i.co, %bb.w ]
  %.not22.i = icmp eq i32 %i.ck, 1
  %i.cq = select i1 %.not22.i, i32 %i.at, i32 %i.au ; 2 uses
  store i32 %i.cq, ptr %i.i, align 8, !tbaa !64
  store i32 %i.av, ptr %i.h, align 4, !tbaa !64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.t
  %i.cr = phi i32 [ %i.cq, %bb.x ], [ %i.au, %bb.t ]
  %.sink.i = phi i32 [ %i.cp, %bb.x ], [ %i.ci, %bb.t ] ; 2 uses
  store i32 %.sink.i, ptr %4, align 8, !tbaa !64
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %bb.u, %.sink.split.i
  %i.cs = phi i32 [ %i.at, %bb.u ], [ %i.cr, %.sink.split.i ]
  %i.ct = phi i32 [ %i.au, %bb.u ], [ %i.av, %.sink.split.i ]
  %i.cu = phi i32 [ %i.av, %bb.u ], [ %.sink.i, %.sink.split.i ]
  %i.cv = add nuw i64 %.06580, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.g
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.k, !llvm.loop !411

..loopexit_crit_edge:                             ; preds = %ZSTD_updateRep.exit
  store ptr %i.cg, ptr %i.k, align 8, !tbaa !175
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %convertSequences_noRepcodes.exit, %bb.j, %bb.i
  %i.cw = icmp ugt i64 %2, 1
  %or.cond = and i1 %i.cw, %.not69
  br i1 %or.cond, label %bb.y, label %.loopexit.thread

bb.y:                                             ; preds = %.loopexit
  %i.cx = icmp ugt i64 %2, 3
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = add i64 %2, 4294967294
  %i.cz = add i64 %2, 4294967292
  %i.da = and i64 %i.cz, 4294967295
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !196
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !64
  %i.de = add i64 %2, 4294967293
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !196
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !64
  %i.dj = and i64 %i.cy, 4294967295
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !196
  store i32 %i.dl, ptr %4, align 8, !tbaa !64
  br label %.loopexit.thread

bb.aa:                                            ; preds = %bb.y
  %i.dm = icmp eq i64 %2, 3
  br i1 %i.dm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load i32, ptr %4, align 8, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !64
  %i.dp = load i32, ptr %1, align 4, !tbaa !196
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !196
  store i32 %i.ds, ptr %4, align 8, !tbaa !64
  br label %.loopexit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.du = load <2 x i32>, ptr %4, align 8, !tbaa !64
  store <2 x i32> %i.du, ptr %i.dt, align 4, !tbaa !64
  %i.dv = load i32, ptr %1, align 4, !tbaa !196
  store i32 %i.dv, ptr %4, align 8, !tbaa !64
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %.thread, %bb.z, %bb.ac, %bb.ab, %.loopexit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !71
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dy, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %.loopexit.thread
  %.0 = phi i64 [ 0, %.loopexit.thread ], [ -107, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTD_get1BlockSummary(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.BlockSummary) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ugt i64 %2, 3
  br i1 %i.a, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.b = add i64 %2, -3
  %3 = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.059 = phi i64 [ %i.e, %bb.f ], [ 0, %.preheader ]
  %.055 = phi i64 [ %i.j, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %.051 = phi i64 [ %i.o, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.047 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader ] ; 4 uses
  %.045 = phi i64 [ %i.v, %bb.f ], [ 0, %.preheader ] ; 6 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.045
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.val71 = load i64, ptr %i.d, align 1, !tbaa !132 ; 2 uses
  %i.e = add i64 %.val71, %.059                   ; 6 uses
  %i.f = icmp ugt i64 %.val71, 4294967295
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i64 %.045, 1                 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.val70 = load i64, ptr %i.i, align 1, !tbaa !132 ; 2 uses
  %i.j = add i64 %.val70, %.055                   ; 5 uses
  %i.k = icmp ugt i64 %.val70, 4294967295
  br i1 %i.k, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = or disjoint i64 %.045, 2                 ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.val69 = load i64, ptr %i.n, align 1, !tbaa !132 ; 2 uses
  %i.o = add i64 %.val69, %.051                   ; 4 uses
  %i.p = icmp ugt i64 %.val69, 4294967295
  br i1 %i.p, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = or disjoint i64 %.045, 3                 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.val68 = load i64, ptr %i.s, align 1, !tbaa !132 ; 2 uses
  %i.t = add i64 %.val68, %.047                   ; 3 uses
  %i.u = icmp ugt i64 %.val68, 4294967295
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw i64 %.045, 4                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.b
  br i1 %i.w, label %bb.b, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.f, %bb.a
  %.160 = phi i64 [ 0, %bb.a ], [ %i.e, %bb.f ]
  %.257 = phi i64 [ 0, %bb.a ], [ %i.j, %bb.f ]
  %.253 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.f ]
  %.249 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.f ]
  %.2 = phi i64 [ 0, %bb.a ], [ %3, %bb.f ]       ; 2 uses
  %i.x = icmp ult i64 %.2, %2
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit, %bb.g
  %.386 = phi i64 [ %i.ac, %bb.g ], [ %.2, %.loopexit ] ; 3 uses
  %.26185 = phi i64 [ %i.aa, %bb.g ], [ %.160, %.loopexit ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.386
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.val = load i64, ptr %i.z, align 1, !tbaa !132 ; 2 uses
  %i.aa = add i64 %.val, %.26185                  ; 2 uses
  %i.ab = icmp ugt i64 %.val, 4294967295
  br i1 %i.ab, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.386, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.g, %.loopexit
  store i64 -107, ptr %0, align 8, !tbaa !416
  br label %bb.h

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %.lr.ph
  %.362 = phi i64 [ %i.aa, %.lr.ph ], [ %i.e, %bb.e ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  %.358 = phi i64 [ %.257, %.lr.ph ], [ %i.j, %bb.c ], [ %.055, %bb.b ], [ %i.j, %bb.e ], [ %i.j, %bb.d ]
  %.354 = phi i64 [ %.253, %.lr.ph ], [ %.051, %bb.c ], [ %.051, %bb.b ], [ %i.o, %bb.e ], [ %i.o, %bb.d ]
  %.350 = phi i64 [ %.249, %.lr.ph ], [ %.047, %bb.c ], [ %.047, %bb.b ], [ %i.t, %bb.e ], [ %.047, %bb.d ]
  %.4 = phi i64 [ %.386, %.lr.ph ], [ %i.g, %bb.c ], [ %.045, %bb.b ], [ %i.q, %bb.e ], [ %i.l, %bb.d ]
  %i.ad = add i64 %.4, 1
  store i64 %i.ad, ptr %0, align 8, !tbaa !416
  %i.ae = add i64 %.358, %.362
  %i.af = add i64 %i.ae, %.354
  %i.ag = add i64 %i.af, %.350                    ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !417
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = add nuw nsw i64 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !418
  br label %bb.h

bb.h:                                             ; preds = %.thread, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressSequencesAndLiterals(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %7, %6
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @ZSTD_CCtx_init_compressStream2(ptr noundef %0, i32 noundef 2, i64 noundef %8) ; 2 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.f = load i32, ptr %i.e, align 4, !tbaa !262
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load i32, ptr %i.h, align 8, !tbaa !268
  %.not46 = icmp eq i32 %i.i, 0
  br i1 %.not46, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.k = load i32, ptr %i.j, align 4, !tbaa !215
  %.not47 = icmp eq i32 %i.k, 0
  br i1 %.not47, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.m = load i32, ptr %i.l, align 8, !tbaa !169
  %i.n = tail call fastcc i64 @ZSTD_writeFrameHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.d, i64 noundef %8, i32 noundef %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = sub i64 %2, %i.n
  %i.q = tail call fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr noundef nonnull %0, ptr noundef %i.o, i64 noundef %i.p, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %8) ; 2 uses
  %i.r = icmp ult i64 %i.q, -119
  %.045 = select i1 %i.r, i64 %i.n, i64 0
  %spec.select = add i64 %.045, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.2 = phi i64 [ %i.b, %bb.b ], [ -66, %bb.a ], [ -14, %bb.c ], [ -40, %bb.d ], [ -14, %bb.e ], [ %spec.select, %bb.f ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressSequencesAndLiterals_internal(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = load i32, ptr %i.b, align 8, !tbaa !263
  %i.d = icmp eq i32 %i.c, 1
  %i.e = zext i1 %i.d to i32
  switch i64 %4, label %bb.e [
    i64 0, label %.critedge
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !198
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %2, 2
  br i1 %i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i16 1, ptr %1, align 1, !tbaa !203
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %i.j, align 1, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = add i64 %2, -3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.1101 = phi i64 [ %i.l, %bb.d ], [ %2, %bb.b ], [ %2, %bb.a ]
  %.179 = phi i64 [ 3, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.175 = phi ptr [ %i.k, %bb.d ], [ %1, %bb.b ], [ %1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3224 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %bb.e
  %.2102 = phi i64 [ %.1101, %bb.e ], [ %i.cv, %bb.t ] ; 3 uses
  %.098 = phi ptr [ %3, %bb.e ], [ %i.bo, %bb.t ] ; 7 uses
  %.096 = phi i64 [ %4, %bb.e ], [ %i.bp, %bb.t ] ; 7 uses
  %.094 = phi ptr [ %5, %bb.e ], [ %i.ce, %bb.t ] ; 2 uses
  %.091 = phi i64 [ %6, %bb.e ], [ %i.cd, %bb.t ] ; 2 uses
  %.083 = phi i64 [ %7, %bb.e ], [ %i.br, %bb.t ]
  %.280 = phi i64 [ %.179, %bb.e ], [ %i.ct, %bb.t ]
  %.276 = phi ptr [ %.175, %bb.e ], [ %i.cu, %bb.t ] ; 4 uses
  %i.y = icmp ugt i64 %.096, 3
  br i1 %i.y, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.f
  %i.z = add i64 %.096, -3
  %8 = and i64 %.096, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader.i
  %.059.i = phi i64 [ %i.ac, %bb.k ], [ 0, %.preheader.i ]
  %.055.i = phi i64 [ %i.ah, %bb.k ], [ 0, %.preheader.i ] ; 2 uses
  %.051.i = phi i64 [ %i.am, %bb.k ], [ 0, %.preheader.i ] ; 3 uses
  %.047.i = phi i64 [ %i.ar, %bb.k ], [ 0, %.preheader.i ] ; 4 uses
  %.045.i = phi i64 [ %i.at, %bb.k ], [ 0, %.preheader.i ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.098, i64 %.045.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.val71.i = load i64, ptr %i.ab, align 1, !tbaa !132, !noalias !421 ; 2 uses
  %i.ac = add i64 %.val71.i, %.059.i              ; 6 uses
  %i.ad = icmp ugt i64 %.val71.i, 4294967295
  br i1 %i.ad, label %bb.h, label %ZSTD_get1BlockSummary.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = or disjoint i64 %.045.i, 1              ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.098, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.val70.i = load i64, ptr %i.ag, align 1, !tbaa !132, !noalias !421 ; 2 uses
  %i.ah = add i64 %.val70.i, %.055.i              ; 5 uses
  %i.ai = icmp ugt i64 %.val70.i, 4294967295
  br i1 %i.ai, label %bb.i, label %ZSTD_get1BlockSummary.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = or disjoint i64 %.045.i, 2              ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.098, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.val69.i = load i64, ptr %i.al, align 1, !tbaa !132, !noalias !421 ; 2 uses
  %i.am = add i64 %.val69.i, %.051.i              ; 4 uses
  %i.an = icmp ugt i64 %.val69.i, 4294967295
  br i1 %i.an, label %bb.j, label %ZSTD_get1BlockSummary.exit

bb.j:                                             ; preds = %bb.i
  %i.ao = or disjoint i64 %.045.i, 3              ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.098, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.val68.i = load i64, ptr %i.aq, align 1, !tbaa !132, !noalias !421 ; 2 uses
  %i.ar = add i64 %.val68.i, %.047.i              ; 3 uses
  %i.as = icmp ugt i64 %.val68.i, 4294967295
  br i1 %i.as, label %bb.k, label %ZSTD_get1BlockSummary.exit

bb.k:                                             ; preds = %bb.j
  %i.at = add nuw i64 %.045.i, 4                  ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.z
  br i1 %i.au, label %bb.g, label %.loopexit.i, !llvm.loop !10

.loopexit.i:                                      ; preds = %bb.k, %bb.f
  %.160.i = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.k ]
  %.257.i = phi i64 [ 0, %bb.f ], [ %i.ah, %bb.k ]
  %.253.i = phi i64 [ 0, %bb.f ], [ %i.am, %bb.k ]
  %.249.i = phi i64 [ 0, %bb.f ], [ %i.ar, %bb.k ]
  %.2.i = phi i64 [ 0, %bb.f ], [ %8, %bb.k ]     ; 2 uses
  %i.av = icmp ult i64 %.2.i, %.096
  br i1 %i.av, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %.loopexit.i, %bb.l
  %.386.i = phi i64 [ %i.ba, %bb.l ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %.26185.i = phi i64 [ %i.ay, %bb.l ], [ %.160.i, %.loopexit.i ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.098, i64 %.386.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.val.i = load i64, ptr %i.ax, align 1, !tbaa !132, !noalias !421 ; 2 uses
  %i.ay = add i64 %.val.i, %.26185.i              ; 2 uses
  %i.az = icmp ugt i64 %.val.i, 4294967295
  br i1 %i.az, label %bb.l, label %ZSTD_get1BlockSummary.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.ba = add i64 %.386.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %.096
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !11

ZSTD_get1BlockSummary.exit:                       ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %.lr.ph.i
  %.362.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ]
  %.358.i = phi i64 [ %.257.i, %.lr.ph.i ], [ %i.ah, %bb.h ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %.055.i, %bb.g ]
  %.354.i = phi i64 [ %.253.i, %.lr.ph.i ], [ %.051.i, %bb.h ], [ %i.am, %bb.i ], [ %i.am, %bb.j ], [ %.051.i, %bb.g ]
  %.350.i = phi i64 [ %.249.i, %.lr.ph.i ], [ %.047.i, %bb.h ], [ %.047.i, %bb.i ], [ %i.ar, %bb.j ], [ %.047.i, %bb.g ]
  %.4.i = phi i64 [ %.386.i, %.lr.ph.i ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ], [ %i.ao, %bb.j ], [ %.045.i, %bb.g ]
  %i.bb = add i64 %.4.i, 1                        ; 6 uses
  %i.bc = add i64 %.358.i, %.362.i
  %i.bd = add i64 %i.bc, %.354.i
  %i.be = add i64 %i.bd, %.350.i                  ; 2 uses
  %i.bf = and i64 %i.be, 4294967295               ; 5 uses
  %i.bg = lshr i64 %i.be, 32
  %i.bh = icmp eq i64 %i.bb, %.096                ; 2 uses
  %i.bi = icmp ult i64 %i.bb, -119
  br i1 %i.bi, label %bb.m, label %.critedge

bb.m:                                             ; preds = %ZSTD_get1BlockSummary.exit
  %i.bj = icmp ugt i64 %i.bf, %.091
  br i1 %i.bj, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !184
  store ptr %i.bk, ptr %i.o, align 8, !tbaa !185
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !171
  store ptr %i.bl, ptr %i.p, align 8, !tbaa !175
  store i32 0, ptr %i.q, align 8, !tbaa !182
  %i.bm = tail call i64 @ZSTD_convertBlockSequences(ptr noundef %0, ptr noundef nonnull %.098, i64 noundef %i.bb, i32 noundef %i.e) ; 2 uses
  %i.bn = icmp ult i64 %i.bm, -119
  br i1 %i.bn, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.098, i64 %i.bb
  %i.bp = sub i64 %.096, %i.bb
  %i.bq = add nuw nsw i64 %i.bg, %i.bf
  %i.br = sub i64 %.083, %i.bq                    ; 2 uses
  %i.bs = icmp ult i64 %.2102, 3
  br i1 %i.bs, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.276, i64 3
  %i.bu = add i64 %.2102, -3
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.bx = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.by = load i64, ptr %i.u, align 8, !tbaa !73
  %i.bz = load i32, ptr %i.v, align 8, !tbaa !58
  %i.ca = tail call fastcc i64 @ZSTD_entropyCompressSeqStore_internal(ptr noundef nonnull %i.bt, i64 noundef %i.bu, ptr noundef %.094, i64 noundef %i.bf, ptr noundef nonnull %i.m, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef %i.bx, i64 noundef %i.by, i32 noundef %i.bz) ; 5 uses
  %i.cb = icmp ult i64 %i.ca, -119
  br i1 %i.cb, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cc = load i64, ptr %i.w, align 8, !tbaa !213
  %i.cd = sub nuw i64 %.091, %i.bf                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.094, i64 %i.bf
  %i.cf = add i64 %i.ca, -1
  %.not110 = icmp ult i64 %i.cf, %i.cc
  br i1 %.not110, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !264
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !265 ; 2 uses
  store ptr %i.ch, ptr %i.r, align 8, !tbaa !264
  store ptr %i.cg, ptr %i.s, align 8, !tbaa !265
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 5604 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !155
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.ci, align 4, !tbaa !155
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cl = select i1 %i.bh, i32 5, i32 4
  %.tr = trunc i64 %i.ca to i32
  %i.cm = shl i32 %.tr, 3                         ; 2 uses
  %i.cn = or disjoint i32 %i.cm, %i.cl
  %i.co = trunc i32 %i.cn to i16
  store i16 %i.co, ptr %.276, align 1, !tbaa !203
  %i.cp = lshr i32 %i.cm, 16
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.276, i64 2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !181
  %i.cs = add nuw i64 %i.ca, 3                    ; 3 uses
  %i.ct = add i64 %i.cs, %.280                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.276, i64 %i.cs
  %i.cv = sub i64 %.2102, %i.cs
  store i32 0, ptr %i.x, align 8, !tbaa !216
  br i1 %i.bh, label %.thread132, label %bb.f

.thread132:                                       ; preds = %bb.t
  %.not111 = icmp eq i64 %i.cd, 0
  br i1 %.not111, label %bb.u, label %.critedge

bb.u:                                             ; preds = %.thread132
  %.not112 = icmp eq i64 %i.br, 0
  %.482. = select i1 %.not112, i64 %i.ct, i64 -107
  br label %.critedge

.critedge:                                        ; preds = %.loopexit.i, %bb.n, %bb.p, %bb.q, %bb.o, %bb.m, %ZSTD_get1BlockSummary.exit, %bb.l, %bb.c, %bb.u, %.thread132, %bb.a
  %.7 = phi i64 [ -70, %bb.c ], [ -107, %.thread132 ], [ -107, %bb.a ], [ %.482., %bb.u ], [ -107, %bb.l ], [ -107, %.loopexit.i ], [ -107, %bb.m ], [ -70, %bb.o ], [ -49, %bb.q ], [ %i.ca, %bb.p ], [ %i.bm, %bb.n ], [ %i.bb, %ZSTD_get1BlockSummary.exit ]
  ret i64 %.7
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_flushStream(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.ZSTD_inBuffer_s, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.b = load i32, ptr %i.a, align 4, !tbaa !253, !noalias !424
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !256
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !192
  br label %inBuffer_forEndFlush.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !424
  br label %inBuffer_forEndFlush.exit

inBuffer_forEndFlush.exit:                        ; preds = %bb.b, %bb.c
  %i.e = phi i64 [ %.pre, %bb.b ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !191
  %i.g = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_endStream(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.ZSTD_inBuffer_s, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.b = load i32, ptr %i.a, align 4, !tbaa !253, !noalias !427
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !256
  br label %inBuffer_forEndFlush.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !alias.scope !427
  br label %inBuffer_forEndFlush.exit

inBuffer_forEndFlush.exit:                        ; preds = %bb.b, %bb.c
  %i.e = call i64 @ZSTD_compressStream2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 2) ; 4 uses
  %i.f = icmp ult i64 %i.e, -119
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %inBuffer_forEndFlush.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.h = load i32, ptr %i.g, align 4, !tbaa !148
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3644
  %i.k = load i32, ptr %i.j, align 4, !tbaa !260
  %.not17 = icmp eq i32 %i.k, 0                   ; 2 uses
  %i.l = select i1 %.not17, i64 3, i64 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.n = load i32, ptr %i.m, align 4, !tbaa !215
  %i.o = shl nsw i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
end_hunk_0
