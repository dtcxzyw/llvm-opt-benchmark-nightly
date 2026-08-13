inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ReadHuffmanCode:.peel.begin
  %i.lb = add nsw i64 %i.kg, -14                  ; 2 uses
  %i.lc = add nuw nsw i64 %i.lb, %i.kc            ; 3 uses
  %.not65.i = icmp ult i64 %i.jw, %i.lc
  br i1 %.not65.i, label %select.unfold.i, label %bb.ak, !llvm.loop !136

bb.ak:                                            ; preds = %BitMask.exit.i116
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.lb
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !30
  %i.lf = lshr i64 %.055.i, %i.kc
  %i.lg = and i64 %i.le, %i.lf                    ; 3 uses
  %i.lh = sub nuw i64 %i.jw, %i.lc
  store i64 %i.lh, ptr %i.d, align 8, !tbaa !52
  %i.li = load i64, ptr %i.a, align 8, !tbaa !53
  %i.lj = lshr i64 %i.li, %i.lc
  store i64 %i.lj, ptr %i.a, align 8, !tbaa !53
  %i.lk = load ptr, ptr %i.fn, align 8, !tbaa !63 ; 5 uses
  %i.ll = icmp eq i16 %i.kf, 16
  br i1 %i.ll, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lm = load i64, ptr %i.fl, align 8, !tbaa !30
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.046.i.i = phi i64 [ 2, %bb.al ], [ 3, %bb.ak ]
  %.045.i.i = phi i64 [ %i.lm, %bb.al ], [ 0, %bb.ak ] ; 6 uses
  %i.ln = load i64, ptr %i.fm, align 8, !tbaa !30
  %.not.i68.i = icmp eq i64 %i.ln, %.045.i.i
  br i1 %.not.i68.i, label %bb.an, label %.thread.i118

.thread.i118:                                     ; preds = %bb.am
  store i64 %.045.i.i, ptr %i.fm, align 8, !tbaa !30
  br label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.pr.i = load i64, ptr %i.h, align 8, !tbaa !30 ; 3 uses
  %.not51.i.i121 = icmp eq i64 %.pr.i, 0
  br i1 %.not51.i.i121, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lo = add i64 %.pr.i, -2
  %i.lp = shl i64 %i.lo, %.046.i.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.thread.i118
  %i.lq = phi i64 [ 0, %.thread.i118 ], [ %i.lp, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.lr = phi i64 [ 0, %.thread.i118 ], [ %.pr.i, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.ls = add nuw nsw i64 %i.lg, 3
  %i.lt = add i64 %i.ls, %i.lq                    ; 2 uses
  store i64 %i.lt, ptr %i.h, align 8, !tbaa !30
  %i.lu = sub i64 %i.lt, %i.lr                    ; 3 uses
  %i.lv = add i64 %i.lu, %.lcssa788182.i          ; 6 uses
  %i.lw = icmp ugt i64 %i.lv, %1
  br i1 %i.lw, label %.thread154, label %bb.aq

.thread154:                                       ; preds = %bb.ap
  store i64 %1, ptr %i.fk, align 8, !tbaa !30
  store i64 1048575, ptr %i.g, align 8, !tbaa !30
  br label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %.not52.i.i119 = icmp eq i64 %.045.i.i, 0
  br i1 %.not52.i.i119, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.045.i.i ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !40 ; 2 uses
  %i.lz = add i64 %i.lq, 3
  %i.ma = add i64 %i.lz, %i.lg
  %i.mb = sub i64 %i.ma, %i.lr
  %i.mc = add i64 %i.lq, 2
  %i.md = add i64 %i.mc, %i.lg
  %i.me = sub i64 %i.md, %i.lr
  %xtraiter365 = and i64 %i.mb, 3                 ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.prol.loopexit363, label %.prol.preheader362

.prol.preheader362:                               ; preds = %bb.ar, %.prol.preheader362
  %i.mf = phi i64 [ %i.mk, %.prol.preheader362 ], [ %.lcssa788182.i, %bb.ar ] ; 3 uses
  %.0.i69.i.prol = phi i32 [ %i.mj, %.prol.preheader362 ], [ %i.ly, %bb.ar ]
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.prol.preheader362 ], [ 0, %bb.ar ]
  %i.mg = trunc i64 %i.mf to i16
  %i.mh = sext i32 %.0.i69.i.prol to i64
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.mh
  store i16 %i.mg, ptr %i.mi, align 2, !tbaa !125
  %i.mj = trunc i64 %i.mf to i32                  ; 3 uses
  %i.mk = add i64 %i.mf, 1                        ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.prol.loopexit363, label %.prol.preheader362, !llvm.loop !137

.prol.loopexit363:                                ; preds = %.prol.preheader362, %bb.ar
  %.lcssa351.unr = phi i32 [ poison, %bb.ar ], [ %i.mj, %.prol.preheader362 ]
  %.unr = phi i64 [ %.lcssa788182.i, %bb.ar ], [ %i.mk, %.prol.preheader362 ]
  %.0.i69.i.unr = phi i32 [ %i.ly, %bb.ar ], [ %i.mj, %.prol.preheader362 ]
  %i.ml = icmp ult i64 %i.me, 3
  br i1 %i.ml, label %.unr-lcssa368, label %.new364

.new364:                                          ; preds = %.prol.loopexit363, %.new364
  %i.mm = phi i64 [ %i.nd, %.new364 ], [ %.unr, %.prol.loopexit363 ] ; 6 uses
  %.0.i69.i = phi i32 [ %i.nc, %.new364 ], [ %.0.i69.i.unr, %.prol.loopexit363 ]
  %i.mn = trunc i64 %i.mm to i16
  %i.mo = sext i32 %.0.i69.i to i64
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.mo
  store i16 %i.mn, ptr %i.mp, align 2, !tbaa !125
  %i.mq = add i64 %i.mm, 1                        ; 2 uses
  %i.mr = trunc i64 %i.mq to i16
  %sext371 = shl i64 %i.mm, 32
  %i.ms = ashr exact i64 %sext371, 31
  %i.mt = getelementptr inbounds i8, ptr %i.lk, i64 %i.ms
  store i16 %i.mr, ptr %i.mt, align 2, !tbaa !125
  %i.mu = add i64 %i.mm, 2                        ; 2 uses
  %i.mv = trunc i64 %i.mu to i16
  %sext372 = shl i64 %i.mq, 32
  %i.mw = ashr exact i64 %sext372, 31
  %i.mx = getelementptr inbounds i8, ptr %i.lk, i64 %i.mw
  store i16 %i.mv, ptr %i.mx, align 2, !tbaa !125
  %i.my = add i64 %i.mm, 3                        ; 2 uses
  %i.mz = trunc i64 %i.my to i16
  %sext373 = shl i64 %i.mu, 32
  %i.na = ashr exact i64 %sext373, 31
  %i.nb = getelementptr inbounds i8, ptr %i.lk, i64 %i.na
  store i16 %i.mz, ptr %i.nb, align 2, !tbaa !125
  %i.nc = trunc i64 %i.my to i32                  ; 2 uses
  %i.nd = add i64 %i.mm, 4                        ; 2 uses
  %.not53.i.i120.3 = icmp eq i64 %i.nd, %i.lv
  br i1 %.not53.i.i120.3, label %.unr-lcssa368, label %.new364, !llvm.loop !134

.unr-lcssa368:                                    ; preds = %.new364, %.prol.loopexit363
  %.lcssa351 = phi i32 [ %.lcssa351.unr, %.prol.loopexit363 ], [ %i.nc, %.new364 ]
  store i64 %i.lv, ptr %i.fk, align 8, !tbaa !30
  store i32 %.lcssa351, ptr %i.lx, align 4, !tbaa !40
  %i.ne = sub i64 15, %.045.i.i
  %i.nf = shl i64 %i.lu, %i.ne
  %i.ng = sub i64 %i.jk, %i.nf                    ; 2 uses
  store i64 %i.ng, ptr %i.g, align 8, !tbaa !30
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.045.i.i ; 2 uses
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !125
  %i.nj = trunc i64 %i.lu to i16
  %i.nk = add i16 %i.ni, %i.nj
  store i16 %i.nk, ptr %i.nh, align 2, !tbaa !125
  br label %select.unfold.i

bb.as:                                            ; preds = %bb.aq
  store i64 %i.lv, ptr %i.fk, align 8, !tbaa !30
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.as, %.unr-lcssa368, %BitMask.exit.i116, %ProcessSingleCodeLength.exit.i123, %bb.ag
  %i.nl = phi i64 [ %i.kz, %ProcessSingleCodeLength.exit.i123 ], [ %i.jk, %bb.ag ], [ %i.jk, %BitMask.exit.i116 ], [ %i.jk, %bb.as ], [ %i.ng, %.unr-lcssa368 ] ; 2 uses
  %.lcssa7880.i = phi i64 [ %i.la, %ProcessSingleCodeLength.exit.i123 ], [ %.lcssa788182.i, %bb.ag ], [ %.lcssa788182.i, %BitMask.exit.i116 ], [ %i.lv, %bb.as ], [ %i.lv, %.unr-lcssa368 ] ; 2 uses
  %.3.i = phi i32 [ 0, %ProcessSingleCodeLength.exit.i123 ], [ 1, %bb.ag ], [ 1, %BitMask.exit.i116 ], [ 0, %bb.as ], [ 0, %.unr-lcssa368 ]
  %i.nm = icmp ult i64 %.lcssa7880.i, %1
  br i1 %i.nm, label %bb.ab, label %thread-pre-split

thread-pre-split:                                 ; preds = %select.unfold.i, %ReadSymbolCodeLengths.exit.thread, %ReadSymbolCodeLengths.exit.thread149
  %i.nn = phi i64 [ %.075106.lcssa.sink.i.ph, %ReadSymbolCodeLengths.exit.thread149 ], [ %.pr.pre, %ReadSymbolCodeLengths.exit.thread ], [ %i.nl, %select.unfold.i ]
  %.not81 = icmp eq i64 %i.nn, 0
  br i1 %.not81, label %thread-pre-split.thread, label %.critedge

thread-pre-split.thread:                          ; preds = %bb.ab, %thread-pre-split
  %i.no = load ptr, ptr %i.fn, align 8, !tbaa !63
  %i.np = tail call i32 @BrotliBuildHuffmanTable(ptr noundef %2, i32 noundef 8, ptr noundef %i.no, ptr noundef nonnull %i.i) #21
  %.not82 = icmp eq ptr %3, null
  br i1 %.not82, label %bb.au, label %bb.at

bb.at:                                            ; preds = %thread-pre-split.thread
  %i.nq = zext i32 %i.np to i64
  store i64 %i.nq, ptr %3, align 8, !tbaa !30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %thread-pre-split.thread
  store i32 0, ptr %i.b, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %._crit_edge.i, %bb.h, %.peel.begin, %.lr.ph.peel, %._crit_edge.i101, %.thread62.i, %.lr.ph69.i._crit_edge, %.thread154, %.thread, %bb.au, %thread-pre-split, %bb.k, %bb.d
  %.6 = phi i32 [ -7, %thread-pre-split ], [ -7, %.thread154 ], [ -5, %bb.h ], [ 2, %bb.d ], [ 2, %.lr.ph69.i._crit_edge ], [ 2, %.lr.ph.peel ], [ 1, %bb.k ], [ 2, %.thread ], [ 1, %bb.au ], [ -6, %._crit_edge.i101 ], [ -4, %._crit_edge.i ], [ 2, %.thread62.i ], [ -31, %.peel.begin ], [ 2, %bb.ad ]
  ret i32 %.6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -26, 4) i32 @CopyUncompressedBlockToOutput(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc i32 @BrotliEnsureRingBuffer(ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread47, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 756 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 132 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 772 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre = load i32, ptr %i.b, align 4, !tbaa !138
  switch i32 %.pre, label %bb.b [
    i32 0, label %.loopexit
    i32 1, label %.loopexit67
  ]

bb.b:                                             ; preds = %.preheader, %bb.b
  br label %bb.b

bb.c:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.b, align 4, !tbaa !138
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1073741824
  %.pre64 = load i64, ptr %i.f, align 8, !tbaa !52 ; 3 uses
  %i.t = lshr i64 %.pre64, 3
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = trunc i64 %i.u to i32
  %.0.i = select i1 %i.s, i32 1073741824, i32 %i.v
  %i.w = load i32, ptr %i.g, align 4, !tbaa !60
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.0.i) ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !110  ; 3 uses
  %i.y = add nsw i32 %i.x, %spec.select
  %i.z = load i32, ptr %i.i, align 4, !tbaa !108  ; 2 uses
  %i.aa = icmp sgt i32 %i.y, %i.z
  %i.ab = sub nsw i32 %i.z, %i.x
  %.139 = select i1 %i.aa, i32 %i.ab, i32 %spec.select ; 5 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ad = sext i32 %i.x to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = sext i32 %.139 to i64                   ; 2 uses
  %i.ag = icmp ugt i64 %.pre64, 7
  %i.ah = icmp ne i32 %.139, 0                    ; 2 uses
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit
  %.pre65 = load i64, ptr %i.c, align 8, !tbaa !53
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.aj = phi i64 [ %i.ao, %.lr.ph ], [ %.pre65, %.lr.ph.preheader ]
  %.0.i4554 = phi i64 [ %i.aq, %.lr.ph ], [ %i.af, %.lr.ph.preheader ]
  %.013.i53 = phi ptr [ %i.ap, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %i.ak = trunc i64 %i.aj to i8
  store i8 %i.ak, ptr %.013.i53, align 1, !tbaa !50
  %i.al = load i64, ptr %i.f, align 8, !tbaa !52
  %i.am = add i64 %i.al, -8                       ; 3 uses
  store i64 %i.am, ptr %i.f, align 8, !tbaa !52
  %i.an = load i64, ptr %i.c, align 8, !tbaa !53
  %i.ao = lshr i64 %i.an, 8                       ; 2 uses
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i53, i64 1 ; 2 uses
  %i.aq = add i64 %.0.i4554, -1                   ; 3 uses
  %i.ar = icmp ugt i64 %i.am, 7
  %i.as = icmp ne i64 %i.aq, 0                    ; 2 uses
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.013.i.lcssa = phi ptr [ %i.ae, %.loopexit ], [ %i.ap, %.lr.ph ]
  %.0.i45.lcssa = phi i64 [ %i.af, %.loopexit ], [ %i.aq, %.lr.ph ] ; 2 uses
  %.lcssa50 = phi i64 [ %.pre64, %.loopexit ], [ %i.am, %.lr.ph ] ; 2 uses
  %.lcssa = phi i1 [ %i.ah, %.loopexit ], [ %i.as, %.lr.ph ]
  %i.au = icmp ult i64 %.lcssa50, 64
  br i1 %i.au, label %bb.d, label %BrotliBitReaderNormalize.exit.i

bb.d:                                             ; preds = %._crit_edge
  %notmask.i.i = shl nsw i64 -1, %.lcssa50
  %i.av = xor i64 %notmask.i.i, -1
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !53
  %i.ax = and i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !53
  br label %BrotliBitReaderNormalize.exit.i

BrotliBitReaderNormalize.exit.i:                  ; preds = %bb.d, %._crit_edge
  br i1 %.lcssa, label %bb.e, label %BrotliCopyBytes.exit

bb.e:                                             ; preds = %BrotliBitReaderNormalize.exit.i
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.013.i.lcssa, ptr align 1 %i.ay, i64 %.0.i45.lcssa, i1 false)
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.i45.lcssa
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !46
  br label %BrotliCopyBytes.exit

BrotliCopyBytes.exit:                             ; preds = %BrotliBitReaderNormalize.exit.i, %bb.e
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !110
  %i.bc = add nsw i32 %i.bb, %.139                ; 2 uses
  store i32 %i.bc, ptr %i.h, align 8, !tbaa !110
  %i.bd = load i32, ptr %i.g, align 4, !tbaa !60  ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.139
  store i32 %i.be, ptr %i.g, align 4, !tbaa !60
  %i.bf = load i32, ptr %i.k, align 4
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = and i32 %i.bg, 63
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = icmp slt i32 %i.bc, %i.bi
  br i1 %i.bj, label %bb.f, label %.thread

.thread:                                          ; preds = %BrotliCopyBytes.exit
  store i32 1, ptr %i.b, align 4, !tbaa !138
  br label %.loopexit67

bb.f:                                             ; preds = %BrotliCopyBytes.exit
  %i.bk = icmp eq i32 %i.bd, %.139
  %. = select i1 %i.bk, i32 1, i32 2
  br label %.thread47

.loopexit67:                                      ; preds = %.preheader, %.thread
  %i.bl = tail call fastcc i32 @WriteRingBuffer(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) ; 2 uses
  %.not44 = icmp eq i32 %i.bl, 1
  br i1 %.not44, label %bb.g, label %.thread47

bb.g:                                             ; preds = %.loopexit67
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !108
  %i.bn = load i32, ptr %i.k, align 4
  %i.bo = lshr i32 %i.bn, 6
  %i.bp = and i32 %i.bo, 63
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = icmp eq i32 %i.bm, %i.bq
  br i1 %i.br, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.l, align 4, !tbaa !55
  store i32 %i.bs, ptr %i.m, align 8, !tbaa !109
  br label %bb.c

.thread47:                                        ; preds = %.loopexit67, %bb.f, %bb.a
  %.5 = phi i32 [ -26, %bb.a ], [ %., %bb.f ], [ %i.bl, %.loopexit67 ]
  ret i32 %.5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 1, 3) i32 @SkipMetadataBlock(ptr nofree noundef captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52   ; 4 uses
  %i.h = icmp ugt i64 %i.g, 7
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.i = trunc i64 %i.g to i32
  %i.j = ashr i32 %i.i, 3
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.d) ; 4 uses
  %i.k = sext i32 %spec.select to i64             ; 2 uses
  %.not66 = icmp eq i32 %spec.select, 0
  br i1 %.not66, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi i64 [ %.promoted, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %.0.i4447 = phi i64 [ %i.k, %.lr.ph ], [ %i.r, %bb.d ]
  %.013.i46 = phi ptr [ %i.a, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %i.m = phi i64 [ %i.g, %.lr.ph ], [ %i.o, %bb.d ]
  %i.n = trunc i64 %i.l to i8
  store i8 %i.n, ptr %.013.i46, align 1, !tbaa !50
  %i.o = add i64 %i.m, -8                         ; 4 uses
  %i.p = lshr i64 %i.l, 8                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i46, i64 1 ; 2 uses
  %i.r = add nsw i64 %.0.i4447, -1                ; 3 uses
  %i.s = icmp ugt i64 %i.o, 7
  %i.t = icmp ne i64 %i.r, 0                      ; 2 uses
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.d
  store i64 %i.p, ptr %i.b, align 8, !tbaa !53
  store i64 %i.o, ptr %i.f, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.lcssa45 = phi i64 [ %i.o, %._crit_edge ], [ %i.g, %bb.c ] ; 2 uses
  %.013.i.lcssa = phi ptr [ %i.q, %._crit_edge ], [ %i.a, %bb.c ]
  %.0.i44.lcssa = phi i64 [ %i.r, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.lcssa = phi i1 [ %i.t, %._crit_edge ], [ false, %bb.c ]
  %i.v = icmp ult i64 %.lcssa45, 64
  br i1 %i.v, label %bb.f, label %BrotliBitReaderNormalize.exit.i

bb.f:                                             ; preds = %bb.e
  %notmask.i.i = shl nsw i64 -1, %.lcssa45
  %i.w = xor i64 %notmask.i.i, -1
  %i.x = load i64, ptr %i.b, align 8, !tbaa !53
  %i.y = and i64 %i.x, %i.w
  store i64 %i.y, ptr %i.b, align 8, !tbaa !53
  br label %BrotliBitReaderNormalize.exit.i

BrotliBitReaderNormalize.exit.i:                  ; preds = %bb.f, %bb.e
  br i1 %.lcssa, label %bb.g, label %BrotliCopyBytes.exit

bb.g:                                             ; preds = %BrotliBitReaderNormalize.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.013.i.lcssa, ptr align 1 %i.aa, i64 %.0.i44.lcssa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i44.lcssa
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !46
  br label %BrotliCopyBytes.exit

BrotliCopyBytes.exit:                             ; preds = %BrotliBitReaderNormalize.exit.i, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %BrotliCopyBytes.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !59
  call void %i.ad(ptr noundef %i.af, ptr noundef nonnull %i.a, i64 noundef %i.k) #21
  %.pre = load i32, ptr %i.c, align 4, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %BrotliCopyBytes.exit
  %i.ag = phi i32 [ %.pre, %bb.h ], [ %i.d, %BrotliCopyBytes.exit ] ; 2 uses
  %i.ah = sub nsw i32 %i.ag, %spec.select         ; 2 uses
  store i32 %i.ah, ptr %i.c, align 4, !tbaa !60
  %.not41 = icmp eq i32 %i.ag, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not41, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %i.ai = phi i32 [ %i.ah, %bb.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 3 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1073741824
  br i1 %i.aq, label %BrotliGetRemainingBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !52
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, %i.ap
  %i.au = trunc i64 %i.at to i32
  br label %BrotliGetRemainingBytes.exit

BrotliGetRemainingBytes.exit:                     ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.au, %bb.k ], [ 1073741824, %bb.j ]
  %spec.select43 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %.0.i) ; 5 uses
  %i.av = icmp sgt i32 %spec.select43, 0
  br i1 %i.av, label %bb.l, label %bb.o

bb.l:                                             ; preds = %BrotliGetRemainingBytes.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !140 ; 2 uses
  %.not42 = icmp eq ptr %i.ax, null
  br i1 %.not42, label %._crit_edge60, label %bb.m

._crit_edge60:                                    ; preds = %bb.l
  %.pre61 = zext nneg i32 %spec.select43 to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59
  %i.ba = zext nneg i32 %spec.select43 to i64     ; 2 uses
  call void %i.ax(ptr noundef %i.az, ptr noundef %i.am, i64 noundef %i.ba) #21
  %.pre58 = load ptr, ptr %i.al, align 8, !tbaa !46
  %.pre59 = load i32, ptr %i.c, align 4, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge60, %bb.m
  %.pre-phi = phi i64 [ %.pre61, %._crit_edge60 ], [ %i.ba, %bb.m ]
  %i.bb = phi i32 [ %i.ai, %._crit_edge60 ], [ %.pre59, %bb.m ] ; 2 uses
  %i.bc = phi ptr [ %i.am, %._crit_edge60 ], [ %.pre58, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.pre-phi
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !46
  %i.be = sub nsw i32 %i.bb, %spec.select43
  store i32 %i.be, ptr %i.c, align 4, !tbaa !60
  %i.bf = icmp eq i32 %i.bb, %spec.select43
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %BrotliGetRemainingBytes.exit
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.a, %bb.i, %bb.o
  %.134 = phi i32 [ 1, %bb.i ], [ 1, %bb.a ], [ 2, %bb.o ], [ 1, %bb.n ]
  ret i32 %.134
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -31, 3) i32 @DecodeContextMap(i64 noundef range(i64 0, -3) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 852 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  switch i32 %i.d, label %.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %._crit_edge211
    i32 3, label %._crit_edge213
    i32 4, label %bb.s
  ]

._crit_edge213:                                   ; preds = %bb.a
end_hunk_0
