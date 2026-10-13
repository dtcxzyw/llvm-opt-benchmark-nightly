Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gist?download=true
inline.NumInlined: 150
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gistdoinsert:bb.a
  br label %BufferGetPage.exit136

BufferGetPage.exit136:                            ; preds = %bb.av, %bb.aw
  %.0.i.i135 = phi ptr [ %i.ju, %bb.av ], [ %i.jz, %bb.aw ] ; 4 uses
  store ptr %.0.i.i135, ptr %i.be, align 8
  %i.ka = load volatile i64, ptr %.0.i.i135, align 8 ; 2 uses
  %i.kb = call i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 32)
  store i64 %i.kb, ptr %i.ai, align 8
  %i.kc = load i32, ptr %.1113.lcssa, align 8
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i135, i64 16
  %i.kf = load i16, ptr %i.ke, align 8
  %i.kg = zext i16 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i135, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i16, ptr %i.ki, align 4            ; 3 uses
  br i1 %i.kd, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %BufferGetPage.exit136
  %i.kk = and i16 %i.kj, 1
  %.not127 = icmp eq i16 %i.kk, 0
  br i1 %.not127, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @UnlockBuffer(i32 noundef %i.jo) #8
  br label %.backedge

bb.az:                                            ; preds = %BufferGetPage.exit136
  %i.kl = and i16 %i.kj, 8
  %.not125 = icmp eq i16 %i.kl, 0
  br i1 %.not125, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.km = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = load volatile i64, ptr %i.kh, align 8   ; 2 uses
  %i.kr = call i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 32)
  %i.ks = icmp uge i64 %i.kp, %i.kr
  %i.kt = and i16 %i.kj, 2
  %.not126 = icmp eq i16 %i.kt, 0
  %or.cond144 = and i1 %.not126, %i.ks
  br i1 %or.cond144, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @UnlockReleaseBuffer(i32 noundef %i.jo) #8
  %i.ku = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  store ptr %i.kv, ptr %i.p, align 8
  br label %.backedge

bb.bc:                                            ; preds = %bb.ba, %bb.ax, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.kw = load i32, ptr %i.aq, align 4
  %i.kx = call i32 @BufferGetBlockNumber(i32 noundef %i.kw) #8, !inline_history !16
  call void @CheckForSerializableConflictIn(ptr noundef %0, ptr noundef null, i32 noundef %i.kx) #8, !inline_history !16
  %i.ky = load i32, ptr %i.aq, align 4
  %i.kz = load i8, ptr %i.k, align 8, !range !6, !noundef !7
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = call zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %2, ptr noundef %3, i32 noundef %i.ky, ptr noundef nonnull %i.d, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c, i1 noundef zeroext true, ptr noundef %4, i1 noundef zeroext %i.la), !inline_history !16 ; 0 uses
  %i.lc = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i137, label %gistinserttuple.exit138, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @gistfinishsplit(ptr noundef nonnull readonly %7, ptr noundef nonnull %.1113.lcssa, ptr noundef %3, ptr noundef nonnull %i.lc, i1 noundef zeroext false) #11, !inline_history !16
  br label %gistinserttuple.exit138

gistinserttuple.exit138:                          ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ld = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.ld) #8
  br label %bb.be

bb.be:                                            ; preds = %gistinserttuple.exit138, %bb.be
  %.4116151 = phi ptr [ %.1113.lcssa, %gistinserttuple.exit138 ], [ %i.lh, %bb.be ] ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.4116151, i64 4
  %i.lf = load i32, ptr %i.le, align 4
  call void @ReleaseBuffer(i32 noundef %i.lf) #8
  %i.lg = getelementptr inbounds nuw i8, ptr %.4116151, i64 32
  %i.lh = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.lh, null
  br i1 %.not128, label %bb.bf, label %bb.be, !llvm.loop !12

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i16 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef captures(none) %9, i1 noundef zeroext %10, ptr noundef %11, i1 noundef zeroext %12) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [408 x i16], align 16             ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %13 = alloca %struct.SplitPageLayout, align 8   ; 11 uses
  %i.c = alloca [1 x i16], align 2                ; 4 uses
  %i.d = tail call i32 @BufferGetBlockNumber(i32 noundef %3) #8 ; 2 uses
  %i.e = icmp slt i32 %3, 0                       ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.g = xor i32 %3, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @BufferBlocks, align 8
  %i.l = add nsw i32 %3, -1
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 13
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i16, ptr %i.t, align 4              ; 3 uses
  %i.v = trunc i16 %i.u to i1
  %.mask = and i16 %i.u, 1                        ; 2 uses
  %i.w = zext nneg i16 %.mask to i32
  %i.x = and i16 %i.u, 8
  %.not = icmp eq i16 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.y = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 257, ptr noundef nonnull @__func__.gistplacetopage) #8
  unreachable

bb.e:                                             ; preds = %BufferGetPage.exit
  store ptr null, ptr %9, align 8
  %i.aa = tail call zeroext i1 @gistnospace(ptr noundef nonnull %.0.i.i, ptr noundef %4, i32 noundef %5, i16 noundef zeroext %6, i64 noundef %1) #8
  br i1 %i.aa, label %bb.f, label %.thread311

bb.f:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.p, align 8
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = and i16 %i.af, 17
  %or.cond.not = icmp eq i16 %i.ag, 17
  br i1 %or.cond.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 12
  %.val.i = load i16, ptr %i.ah, align 4          ; 2 uses
  %i.ai = icmp ult i16 %.val.i, 25
  %i.aj = zext i16 %.val.i to i32
  %i.ak = add nuw nsw i32 %i.aj, 262120
  %i.al = lshr i32 %i.ak, 2
  %i.am = trunc i32 %i.al to i16                  ; 2 uses
  %.not3639.i = icmp eq i16 %i.am, 0
  %.not36.i = select i1 %i.ai, i1 true, i1 %.not3639.i
  br i1 %.not36.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.0.i.i, i64 20   ; 3 uses
  %i.ao = add nsw i16 %i.am, 1                    ; 2 uses
  %umax.i = tail call i16 @llvm.umax.i16(i16 %i.ao, i16 2)
  %wide.trip.count.i = zext i16 %umax.i to i64
  %i.ap = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.aq = icmp ult i16 %i.ao, 3
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ap, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 4 uses
  %.038.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 98304
  %i.au = icmp eq i32 %i.at, 98304
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = add i32 %.038.i, 1
  %i.aw = sext i32 %.038.i to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.aw
  %i.ay = trunc nuw nsw i64 %indvars.iv.i to i16
  store i16 %i.ay, ptr %i.ax, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi i32 [ %i.av, %bb.i ], [ %.038.i, %bb.h ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 98304
  %i.bc = icmp eq i32 %i.bb, 98304
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = add i32 %.1.i, 1
  %i.be = sext i32 %.1.i to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.be
  %i.bg = trunc nuw nsw i64 %indvars.iv.next.i to i16
  store i16 %i.bg, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i.1 = phi i32 [ %i.bd, %bb.k ], [ %.1.i, %bb.j ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.h, !llvm.loop !17

._crit_edge.i.unr-lcssa:                          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.038.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod425 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.bh = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.i.epil.init
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 98304
  %i.bk = icmp eq i32 %i.bj, 98304
  br i1 %i.bk, label %bb.m, label %._crit_edge.i

bb.m:                                             ; preds = %.epil.preheader
  %i.bl = add i32 %.038.i.epil.init, 1
  %i.bm = sext i32 %.038.i.epil.init to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv.i.epil.init to i16
  store i16 %i.bo, ptr %i.bn, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.m, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.bl, %bb.m ], [ %.038.i.epil.init, %.epil.preheader ] ; 4 uses
  %i.bp = icmp sgt i32 %.1.i.lcssa, 0
  br i1 %i.bp, label %bb.n, label %bb.x

bb.n:                                             ; preds = %._crit_edge.i
  %i.bq = load i32, ptr @wal_level, align 4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 118
  %i.bv = load i8, ptr %i.bu, align 2
  %i.bw = icmp eq i8 %i.bv, 112
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = call i32 @index_compute_xid_horizon_for_tuples(ptr noundef nonnull %0, ptr noundef %11, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.1.i.lcssa) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.033.i = phi i32 [ %i.bx, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ]
  %i.by = load volatile i32, ptr @CritSectionCount, align 4
  %i.bz = add i32 %i.by, 1
  store volatile i32 %i.bz, ptr @CritSectionCount, align 4
  call void @PageIndexMultiDelete(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.a, i32 noundef %.1.i.lcssa) #8
  %i.ca = load i16, ptr %i.p, align 8
  %i.cb = zext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 4
  %i.cf = and i16 %i.ce, -17
  store i16 %i.cf, ptr %i.cd, align 4
  call void @MarkBufferDirty(i32 noundef %3) #8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 118
  %i.cj = load i8, ptr %i.ci, align 2
  %i.ck = icmp eq i8 %i.cj, 112
  br i1 %i.ck, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cl = load i32, ptr @wal_level, align 4
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.ct = call i64 @gistXLogDelete(i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.1.i.lcssa, i32 noundef %.033.i, ptr noundef %11) #8 ; 2 uses
  %i.cu = call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32)
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.q
  %i.cv = call i64 @XLogGetFakeLSN(ptr noundef nonnull %0) #8 ; 2 uses
  %i.cw = call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 32)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i64 [ %i.cu, %bb.u ], [ %i.cw, %bb.v ]
  store volatile i64 %.sink.i, ptr %.0.i.i, align 8
  %i.cx = load volatile i32, ptr @CritSectionCount, align 4
  %i.cy = add i32 %i.cx, -1
  store volatile i32 %i.cy, ptr @CritSectionCount, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cz = call zeroext i1 @gistnospace(ptr noundef nonnull %.0.i.i, ptr noundef %4, i32 noundef %5, i16 noundef zeroext %6, i64 noundef %1) #8
  br i1 %i.cz, label %.thread, label %.thread311

.thread:                                          ; preds = %bb.f, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.da = icmp ne i32 %i.d, 0                     ; 6 uses
  %i.db = call ptr @gistextractpage(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.dc = add i16 %6, -1
  %i.dd = icmp ult i16 %i.dc, 2048
  br i1 %i.dd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.thread
  %i.de = zext nneg i16 %6 to i32                 ; 2 uses
  %i.df = load i32, ptr %i.b, align 4             ; 3 uses
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr %i.b, align 4
  %.not278 = icmp eq i32 %i.df, %i.de
  br i1 %.not278, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = zext nneg i16 %6 to i64
  %i.di = getelementptr [8 x i8], ptr %i.db, i64 %i.dh ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = sub i32 %i.df, %i.de
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dj, ptr nonnull align 8 %i.di, i64 %i.dm, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %.thread
  %i.dn = call ptr @gistjoinvector(ptr noundef %i.db, ptr noundef nonnull %i.b, ptr noundef %4, i32 noundef %5) #8
  %i.do = load i32, ptr %i.b, align 4
  %i.dp = call ptr @gistSplit(ptr noundef %0, ptr noundef nonnull %.0.i.i, ptr noundef %i.dn, i32 noundef %i.do, ptr noundef %2) ; 13 uses
  %.not279320 = icmp eq ptr %i.dp, null           ; 3 uses
  br i1 %.not279320, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.0258322 = phi i32 [ %i.dq, %.lr.ph ], [ 0, %bb.aa ]
  %.0261321 = phi ptr [ %i.ds, %.lr.ph ], [ %i.dp, %bb.aa ]
  %i.dq = add i32 %.0258322, 1                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0261321, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not279 = icmp eq ptr %i.ds, null
  br i1 %.not279, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.aa
  %.0258.lcssa = phi i32 [ 0, %bb.aa ], [ %i.dq, %.lr.ph ]
  %not. = xor i1 %i.da, true
  %i.dt = zext i1 %not. to i32
  %spec.select = add i32 %.0258.lcssa, %i.dt      ; 4 uses
  %i.du = icmp sgt i32 %spec.select, 75
  br i1 %i.du, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dw = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i32 noundef %spec.select, i32 noundef 75) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @__func__.gistplacetopage) #8
  unreachable

bb.ac:                                            ; preds = %._crit_edge
  br i1 %i.da, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load i16, ptr %i.p, align 8
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = load volatile i64, ptr %i.dz, align 8   ; 2 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 32)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i32 %3, ptr %i.ee, align 8
  %i.ef = call i32 @BufferGetBlockNumber(i32 noundef %3) #8
  store i32 %i.ef, ptr %i.dp, align 8
  br i1 %i.e, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.eh = xor i32 %3, -1
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8
  br label %BufferGetPage.exit297

bb.af:                                            ; preds = %bb.ad
  %i.el = load ptr, ptr @BufferBlocks, align 8
  %i.em = add nsw i32 %3, -1
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 13
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo
  br label %BufferGetPage.exit297

BufferGetPage.exit297:                            ; preds = %bb.ae, %bb.af
  %.0.i.i296 = phi ptr [ %i.ek, %bb.ae ], [ %i.ep, %bb.af ]
  %i.eq = call ptr @PageGetTempPageCopySpecial(ptr noundef %.0.i.i296) #8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store ptr %i.eq, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = load i16, ptr %i.es, align 8
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i16 %.mask, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %BufferGetPage.exit297, %bb.ac
  %.1262 = phi ptr [ %i.dp, %bb.ac ], [ %i.ey, %BufferGetPage.exit297 ] ; 2 uses
  %.0260 = phi i32 [ -1, %bb.ac ], [ %i.eb, %BufferGetPage.exit297 ] ; 3 uses
  %.0259 = phi i64 [ 0, %bb.ac ], [ %i.ed, %BufferGetPage.exit297 ] ; 3 uses
  %.not280323 = icmp eq ptr %.1262, null
  br i1 %.not280323, label %.preheader319, label %.lr.ph326

.preheader319:                                    ; preds = %BufferGetPage.exit299, %bb.ag
  br i1 %.not279320, label %._crit_edge330, label %.lr.ph329
end_hunk_0
