inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 26
begin_hunk_0_@VP8IteratorInit:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.o, ptr %i.p, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 340
  store i32 %i.r, ptr %i.s, align 4, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 401
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.u, 31
  %i.w = and i64 %i.v, -32
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 23696
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !46
  store i32 0, ptr %1, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 23656
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !58
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 23648
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 23672
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !41
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 47
  store i8 127, ptr %i.at, align 1, !tbaa !43
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  store i8 127, ptr %i.av, align 1, !tbaa !43
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  store i8 127, ptr %i.ax, align 1, !tbaa !43
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i8 -127, i64 16, i1 false)
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !44
  store i64 -9114861777597660799, ptr %i.az, align 1
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !42
  store i64 -9114861777597660799, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i32 0, ptr %i.bb, align 8, !tbaa !3
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %VP8IteratorSetRow.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 0, ptr %i.bd, align 8
  br label %VP8IteratorSetRow.exit.i

VP8IteratorSetRow.exit.i:                         ; preds = %bb.b, %bb.a
  %i.be = load i32, ptr %i.ao, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !59
  %i.bh = mul nsw i32 %i.bg, %i.be                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 332
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !48
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !7 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !39
  %i.bm = shl nsw i32 %i.bl, 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i, i64 23672
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.bq = shl nsw i64 %i.bn, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bp, i8 127, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 23664
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.bt = load i32, ptr %i.bk, align 8, !tbaa !39
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bs, i8 0, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i, i64 23696
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %VP8IteratorReset.exit, label %bb.c

bb.c:                                             ; preds = %VP8IteratorSetRow.exit.i
  %i.by = load i32, ptr %i.bk, align 8, !tbaa !39
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.ca, i1 false)
  br label %VP8IteratorReset.exit

VP8IteratorReset.exit:                            ; preds = %VP8IteratorSetRow.exit.i, %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, i8 0, i64 96, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i32 0, ptr %i.cc, align 8, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @VP8IteratorProgress(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.h = load i32, ptr %i.g, align 8, !tbaa !47   ; 3 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.m = load i32, ptr %i.l, align 4, !tbaa !48
  %i.n = sub nsw i32 %i.h, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56
  %i.q = mul nsw i32 %i.n, %1
  %i.r = sdiv i32 %i.q, %i.h
  %i.s = add nsw i32 %i.r, %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.k, %bb.d ], [ %i.s, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.v = tail call i32 @WebPReportProgress(ptr noundef nonnull %i.d, i32 noundef %i.t, ptr noundef nonnull %i.u) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ %i.v, %bb.f ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorImport(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = load i32, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = mul i32 %i.m, %i.f
  %i.o = add i32 %i.n, %i.d
  %i.p = shl i32 %i.o, 4
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68   ; 2 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 44 ; 9 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !69
  %i.x = mul i32 %i.w, %i.f
  %i.y = add i32 %i.x, %i.d
  %i.z = shl i32 %i.y, 3
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.aa ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !71
  %i.ah = shl nsw i32 %i.d, 4
  %i.ai = sub nsw i32 %i.ag, %i.ah                ; 5 uses
  %i.aj = tail call noundef range(i32 -2147483648, 17) i32 @llvm.smin.i32(i32 %i.ai, i32 16) ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !72
  %i.am = shl nsw i32 %i.f, 4
  %i.an = sub nsw i32 %i.al, %i.am                ; 7 uses
  %i.ao = tail call noundef range(i32 -2147483648, 17) i32 @llvm.smin.i32(i32 %i.an, i32 16) ; 13 uses
  %i.ap = add nsw i32 %i.aj, 1
  %i.aq = ashr i32 %i.ap, 1                       ; 18 uses
  %i.ar = add nsw i32 %i.ao, 1                    ; 3 uses
  %i.as = ashr i32 %i.ar, 1                       ; 32 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 5 uses
  %i.av = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.av, label %.lr.ph.i, label %.lr.ph36.i.preheader

.lr.ph.i:                                         ; preds = %bb.a
  %i.aw = sext i32 %i.aj to i64                   ; 11 uses
  %i.ax = icmp slt i32 %i.ai, 16
  %i.ay = sub nsw i32 16, %i.aj
  %i.az = zext nneg i32 %i.ay to i64              ; 3 uses
  %i.ba = sext i32 %i.m to i64                    ; 7 uses
  br i1 %i.ax, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i32 %i.ao, 3                    ; 3 uses
  %i.bb = icmp slt i32 %i.an, 4
  br i1 %i.bb, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i32 %i.ao, 28
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter317 = and i32 %i.ao, 1
  %i.bc = icmp eq i32 %i.an, 1
  br i1 %i.bc, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter322 = and i32 %i.ao, 30
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.02432.us.i = phi ptr [ %i.r, %.lr.ph.split.us.i.preheader.new ], [ %i.bm, %.lr.ph.split.us.i ] ; 2 uses
  %.02531.us.i = phi ptr [ %i.au, %.lr.ph.split.us.i.preheader.new ], [ %i.bl, %.lr.ph.split.us.i ] ; 4 uses
  %niter323 = phi i32 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter323.next.1, %.lr.ph.split.us.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.us.i, ptr align 1 %.02432.us.i, i64 %i.aw, i1 false)
  %i.bd = getelementptr i8, ptr %.02531.us.i, i64 %i.aw ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 %i.bf, i64 %i.az, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.02531.us.i, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.02432.us.i, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.bh, i64 %i.aw, i1 false)
  %i.bi = getelementptr i8, ptr %i.bg, i64 %i.aw  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bi, i8 %i.bk, i64 %i.az, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.02531.us.i, i64 64 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.ba ; 2 uses
  %niter323.next.1 = add i32 %niter323, 2         ; 2 uses
  %niter323.ncmp.1 = icmp eq i32 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !73

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.split.us.i
  %lcmp.mod319.not = icmp eq i32 %xtraiter317, 0
  br i1 %lcmp.mod319.not, label %.preheader.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.02432.us.i.epil.init = phi ptr [ %i.r, %.lr.ph.split.us.i.preheader ], [ %i.bm, %.preheader.i.loopexit.unr-lcssa ]
  %.02531.us.i.epil.init = phi ptr [ %i.au, %.lr.ph.split.us.i.preheader ], [ %i.bl, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod321 = trunc i32 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod321)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.us.i.epil.init, ptr align 1 %.02432.us.i.epil.init, i64 %i.aw, i1 false)
  %i.bn = getelementptr i8, ptr %.02531.us.i.epil.init, i64 %i.aw ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 %i.bp, i64 %i.az, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.02531.us.i.epil.init, i64 32
  br label %.preheader.i

.preheader.i.loopexit313.unr-lcssa:               ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.preheader.i.loopexit313.unr-lcssa, %.lr.ph.split.i.preheader
  %.02432.i.epil.init = phi ptr [ %i.r, %.lr.ph.split.i.preheader ], [ %i.ch, %.preheader.i.loopexit313.unr-lcssa ]
  %.02531.i.epil.init = phi ptr [ %i.au, %.lr.ph.split.i.preheader ], [ %i.cg, %.preheader.i.loopexit313.unr-lcssa ]
  %lcmp.mod316 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %.02432.i.epil = phi ptr [ %i.bs, %.lr.ph.split.i.epil ], [ %.02432.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.02531.i.epil = phi ptr [ %i.br, %.lr.ph.split.i.epil ], [ %.02531.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.i.epil, ptr align 1 %.02432.i.epil, i64 %i.aw, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.02531.i.epil, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.02432.i.epil, i64 %i.ba
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.split.i.epil, !llvm.loop !75

.preheader.i:                                     ; preds = %.preheader.i.loopexit313.unr-lcssa, %.lr.ph.split.i.epil, %.lr.ph.split.us.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa
  %.025.lcssa.i = phi ptr [ %i.bq, %.lr.ph.split.us.i.epil.preheader ], [ %i.bl, %.preheader.i.loopexit.unr-lcssa ], [ %i.cg, %.preheader.i.loopexit313.unr-lcssa ], [ %i.br, %.lr.ph.split.i.epil ]
  %i.bt = icmp samesign ult i32 %i.an, 16
  br i1 %i.bt, label %.lr.ph36.i.preheader, label %ImportBlock.exit

.lr.ph36.i.preheader:                             ; preds = %bb.a, %.preheader.i
  %.12634.i.ph = phi ptr [ %.025.lcssa.i, %.preheader.i ], [ %i.au, %bb.a ] ; 2 uses
  %i.bu = sub i32 0, %i.ao
  %xtraiter324 = and i32 %i.bu, 3                 ; 2 uses
  %lcmp.mod325.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph36.i.prol.loopexit, label %.lr.ph36.i.prol

.lr.ph36.i.prol:                                  ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i.prol
  %.135.i.prol = phi i32 [ %i.bx, %.lr.ph36.i.prol ], [ %i.ao, %.lr.ph36.i.preheader ]
  %.12634.i.prol = phi ptr [ %i.bw, %.lr.ph36.i.prol ], [ %.12634.i.ph, %.lr.ph36.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph36.i.prol ], [ 0, %.lr.ph36.i.preheader ]
  %i.bv = getelementptr inbounds i8, ptr %.12634.i.prol, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.12634.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %i.bv, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.12634.i.prol, i64 32 ; 2 uses
  %i.bx = add nsw i32 %.135.i.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter324
  br i1 %prol.iter.cmp.not, label %.lr.ph36.i.prol.loopexit, label %.lr.ph36.i.prol, !llvm.loop !77

.lr.ph36.i.prol.loopexit:                         ; preds = %.lr.ph36.i.prol, %.lr.ph36.i.preheader
  %.135.i.unr = phi i32 [ %i.ao, %.lr.ph36.i.preheader ], [ %i.bx, %.lr.ph36.i.prol ]
  %.12634.i.unr = phi ptr [ %.12634.i.ph, %.lr.ph36.i.preheader ], [ %i.bw, %.lr.ph36.i.prol ]
  %i.by = add i32 %i.ao, -13
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %ImportBlock.exit, label %.lr.ph36.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.02432.i = phi ptr [ %i.r, %.lr.ph.split.i.preheader.new ], [ %i.ch, %.lr.ph.split.i ] ; 2 uses
  %.02531.i = phi ptr [ %i.au, %.lr.ph.split.i.preheader.new ], [ %i.cg, %.lr.ph.split.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02531.i, ptr align 1 %.02432.i, i64 %i.aw, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.02531.i, i64 32
  %i.cb = getelementptr inbounds i8, ptr %.02432.i, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr align 1 %i.cb, i64 %i.aw, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.02531.i, i64 64
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.cd, i64 %i.aw, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.02531.i, i64 96
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr align 1 %i.cf, i64 %i.aw, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %.02531.i, i64 128 ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.ba ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit313.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !73

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.prol.loopexit, %.lr.ph36.i
  %.135.i = phi i32 [ %i.cp, %.lr.ph36.i ], [ %.135.i.unr, %.lr.ph36.i.prol.loopexit ]
  %.12634.i = phi ptr [ %i.co, %.lr.ph36.i ], [ %.12634.i.unr, %.lr.ph36.i.prol.loopexit ] ; 9 uses
  %i.ci = getelementptr inbounds i8, ptr %.12634.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.12634.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ci, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.12634.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cj, ptr noundef nonnull align 1 dereferenceable(16) %.12634.i, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.12634.i, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %.12634.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, ptr noundef nonnull align 1 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.12634.i, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %.12634.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cm, ptr noundef nonnull align 1 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.12634.i, i64 128
  %i.cp = add nsw i32 %.135.i, 4                  ; 2 uses
  %exitcond40.not.i.3 = icmp eq i32 %i.cp, 16
  br i1 %exitcond40.not.i.3, label %ImportBlock.exit, label %.lr.ph36.i, !llvm.loop !78

ImportBlock.exit:                                 ; preds = %.lr.ph36.i.prol.loopexit, %.lr.ph36.i, %.preheader.i
  %i.cq = load ptr, ptr %i.at, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.cs = icmp sgt i32 %i.as, 0                   ; 3 uses
  br i1 %i.cs, label %.lr.ph.i88, label %.lr.ph36.i84.preheader

.lr.ph.i88:                                       ; preds = %ImportBlock.exit
  %i.ct = load i32, ptr %i.v, align 4, !tbaa !69
  %i.cu = sext i32 %i.aq to i64                   ; 12 uses
  %i.cv = icmp slt i32 %i.aq, 8
  %i.cw = sub nsw i32 8, %i.aq
  %i.cx = zext nneg i32 %i.cw to i64              ; 4 uses
  %i.cy = sext i32 %i.ct to i64                   ; 7 uses
  br i1 %i.cv, label %.lr.ph.split.us.i94.preheader, label %.lr.ph.split.i89.preheader

.lr.ph.split.i89.preheader:                       ; preds = %.lr.ph.i88
  %i.cz = add nsw i32 %i.as, -1
  %xtraiter326 = and i32 %i.as, 3                 ; 3 uses
  %i.da = icmp ult i32 %i.cz, 3
  br i1 %i.da, label %.lr.ph.split.i89.epil.preheader, label %.lr.ph.split.i89.preheader.new

.lr.ph.split.i89.preheader.new:                   ; preds = %.lr.ph.split.i89.preheader
  %unroll_iter331 = and i32 %i.as, 2147483644
  br label %.lr.ph.split.i89

.lr.ph.split.us.i94.preheader:                    ; preds = %.lr.ph.i88
  %i.db = icmp eq i32 %i.as, 1
  br i1 %i.db, label %.lr.ph.split.us.i94.epil.preheader, label %.lr.ph.split.us.i94.preheader.new

end_hunk_0
begin_hunk_1_@VP8IteratorImport:bb.a
  %i.ke = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 2 uses
  %i.kf = sext i32 %i.kd to i64                   ; 5 uses
  %wide.trip.count.i128 = zext nneg i32 %i.as to i64 ; 2 uses
  %xtraiter367 = and i64 %wide.trip.count.i128, 3 ; 3 uses
  %i.kg = add nsw i32 %i.as, -1
  %i.kh = icmp ult i32 %i.kg, 3
  br i1 %i.kh, label %.epil.preheader366, label %.lr.ph.i127.new

.lr.ph.i127.new:                                  ; preds = %.lr.ph.i127
  %unroll_iter371 = and i64 %wide.trip.count.i128, 2147483644
  br label %bb.l

.preheader.i133.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %.preheader.i133, label %.epil.preheader366

.epil.preheader366:                               ; preds = %.preheader.i133.unr-lcssa, %.lr.ph.i127
  %indvars.iv.i129.epil.init = phi i64 [ 0, %.lr.ph.i127 ], [ %indvars.iv.next.i131.3, %.preheader.i133.unr-lcssa ]
  %.01415.i130.epil.init = phi ptr [ %i.ke, %.lr.ph.i127 ], [ %i.lk, %.preheader.i133.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter367, 0
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader366
  %indvars.iv.i129.epil = phi i64 [ %indvars.iv.i129.epil.init, %.epil.preheader366 ], [ %indvars.iv.next.i131.epil, %bb.k ] ; 2 uses
  %.01415.i130.epil = phi ptr [ %.01415.i130.epil.init, %.epil.preheader366 ], [ %i.kk, %bb.k ] ; 2 uses
  %epil.iter368 = phi i64 [ 0, %.epil.preheader366 ], [ %epil.iter368.next, %bb.k ]
  %i.ki = load i8, ptr %.01415.i130.epil, align 1, !tbaa !43
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i129.epil
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !43
  %indvars.iv.next.i131.epil = add nuw nsw i64 %indvars.iv.i129.epil, 1
  %i.kk = getelementptr inbounds i8, ptr %.01415.i130.epil, i64 %i.kf
  %epil.iter368.next = add i64 %epil.iter368, 1   ; 2 uses
  %epil.iter368.cmp.not = icmp eq i64 %epil.iter368.next, %xtraiter367
  br i1 %epil.iter368.cmp.not, label %.preheader.i133, label %bb.k, !llvm.loop !85

.preheader.i133:                                  ; preds = %bb.k, %.preheader.i133.unr-lcssa
  %i.kl = icmp samesign ult i32 %i.as, 8
  br i1 %i.kl, label %.lr.ph18.i121..lr.ph.i141_crit_edge, label %.lr.ph.i141

.lr.ph18.i121..lr.ph.i141_crit_edge:              ; preds = %.preheader.i133
  %i.km = zext nneg i32 %i.as to i64
  %i.kn = getelementptr i8, ptr %i.kc, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -1
  %i.kp = zext nneg i32 %i.as to i64              ; 2 uses
  %.pre.i123236 = load i8, ptr %i.ko, align 1, !tbaa !43
  %scevgep214237 = getelementptr i8, ptr %i.kc, i64 %i.kp
  %i.kq = sub nuw nsw i64 8, %i.kp
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep214237, i8 %.pre.i123236, i64 %i.kq, i1 false), !tbaa !43
  %.pre226 = zext nneg i32 %i.as to i64
  br label %.lr.ph.i141

.lr.ph18.i121..lr.ph18.i135_crit_edge:            ; preds = %ImportLine.exit
  %i.kr = sext i32 %i.as to i64                   ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kc, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 -1
  %.pre.i123 = load i8, ptr %i.kt, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.kc, i8 %.pre.i123, i64 8, i1 false), !tbaa !43
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !42
  br label %.lr.ph18.i135

bb.l:                                             ; preds = %bb.l, %.lr.ph.i127.new
  %indvars.iv.i129 = phi i64 [ 0, %.lr.ph.i127.new ], [ %indvars.iv.next.i131.3, %bb.l ] ; 5 uses
  %.01415.i130 = phi ptr [ %i.ke, %.lr.ph.i127.new ], [ %i.lk, %bb.l ] ; 2 uses
  %niter372 = phi i64 [ 0, %.lr.ph.i127.new ], [ %niter372.next.3, %bb.l ]
  %i.kw = load i8, ptr %.01415.i130, align 1, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i129
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !43
  %i.ky = getelementptr inbounds i8, ptr %.01415.i130, i64 %i.kf ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !43
  %i.la = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i129
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  store i8 %i.kz, ptr %i.lb, align 1, !tbaa !43
  %i.lc = getelementptr inbounds i8, ptr %i.ky, i64 %i.kf ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !43
  %i.le = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i129
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !43
  %i.lg = getelementptr inbounds i8, ptr %i.lc, i64 %i.kf ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !43
  %i.li = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i129
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 3
  store i8 %i.lh, ptr %i.lj, align 1, !tbaa !43
  %indvars.iv.next.i131.3 = add nuw nsw i64 %indvars.iv.i129, 4 ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lg, i64 %i.kf ; 2 uses
  %niter372.next.3 = add i64 %niter372, 4         ; 2 uses
  %niter372.ncmp.3 = icmp eq i64 %niter372.next.3, %unroll_iter371
  br i1 %niter372.ncmp.3, label %.preheader.i133.unr-lcssa, label %bb.l, !llvm.loop !84

.lr.ph.i141:                                      ; preds = %.preheader.i133, %.lr.ph18.i121..lr.ph.i141_crit_edge
  %wide.trip.count.i142.pre-phi = phi i64 [ %.pre226, %.lr.ph18.i121..lr.ph.i141_crit_edge ], [ 8, %.preheader.i133 ] ; 3 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ll = load ptr, ptr %.in, align 8, !tbaa !42  ; 6 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ae, i64 -1 ; 2 uses
  %i.ln = load i32, ptr %i.v, align 4, !tbaa !69
  %i.lo = sext i32 %i.ln to i64                   ; 5 uses
  %i.lp = add nsw i64 %wide.trip.count.i142.pre-phi, -1
  %xtraiter374 = and i64 %wide.trip.count.i142.pre-phi, 3 ; 3 uses
  %i.lq = icmp ult i64 %i.lp, 3
  br i1 %i.lq, label %.epil.preheader373, label %.lr.ph.i141.new

.lr.ph.i141.new:                                  ; preds = %.lr.ph.i141
  %unroll_iter378 = and i64 %wide.trip.count.i142.pre-phi, 2147483644
  br label %bb.n

.preheader.i147.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod376.not, label %.preheader.i147, label %.epil.preheader373

.epil.preheader373:                               ; preds = %.preheader.i147.unr-lcssa, %.lr.ph.i141
  %indvars.iv.i143.epil.init = phi i64 [ 0, %.lr.ph.i141 ], [ %indvars.iv.next.i145.3, %.preheader.i147.unr-lcssa ]
  %.01415.i144.epil.init = phi ptr [ %i.lm, %.lr.ph.i141 ], [ %i.mo, %.preheader.i147.unr-lcssa ]
  %lcmp.mod377 = icmp ne i64 %xtraiter374, 0
  tail call void @llvm.assume(i1 %lcmp.mod377)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader373
  %indvars.iv.i143.epil = phi i64 [ %indvars.iv.i143.epil.init, %.epil.preheader373 ], [ %indvars.iv.next.i145.epil, %bb.m ] ; 2 uses
  %.01415.i144.epil = phi ptr [ %.01415.i144.epil.init, %.epil.preheader373 ], [ %i.lt, %bb.m ] ; 2 uses
  %epil.iter375 = phi i64 [ 0, %.epil.preheader373 ], [ %epil.iter375.next, %bb.m ]
  %i.lr = load i8, ptr %.01415.i144.epil, align 1, !tbaa !43
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i143.epil
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !43
  %indvars.iv.next.i145.epil = add nuw nsw i64 %indvars.iv.i143.epil, 1
  %i.lt = getelementptr inbounds i8, ptr %.01415.i144.epil, i64 %i.lo
  %epil.iter375.next = add i64 %epil.iter375, 1   ; 2 uses
  %epil.iter375.cmp.not = icmp eq i64 %epil.iter375.next, %xtraiter374
  br i1 %epil.iter375.cmp.not, label %.preheader.i147, label %bb.m, !llvm.loop !86

.preheader.i147:                                  ; preds = %bb.m, %.preheader.i147.unr-lcssa
  %i.lu = icmp samesign ult i32 %i.as, 8
  br i1 %i.lu, label %.preheader.i147..lr.ph18.i135_crit_edge, label %InitLeft.exit

.preheader.i147..lr.ph18.i135_crit_edge:          ; preds = %.preheader.i147
  %.pre227 = zext nneg i32 %i.as to i64
  %i.lv = zext nneg i32 %i.as to i64
  br label %.lr.ph18.i135

.lr.ph18.i135:                                    ; preds = %.preheader.i147..lr.ph18.i135_crit_edge, %.lr.ph18.i121..lr.ph18.i135_crit_edge
  %.pre-phi228 = phi i64 [ %.pre227, %.preheader.i147..lr.ph18.i135_crit_edge ], [ %i.kr, %.lr.ph18.i121..lr.ph18.i135_crit_edge ]
  %i.lw = phi ptr [ %i.ll, %.preheader.i147..lr.ph18.i135_crit_edge ], [ %i.kv, %.lr.ph18.i121..lr.ph18.i135_crit_edge ] ; 2 uses
  %.0.lcssa27.i136 = phi i64 [ %i.lv, %.preheader.i147..lr.ph18.i135_crit_edge ], [ 0, %.lr.ph18.i121..lr.ph18.i135_crit_edge ] ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 %.pre-phi228
  %i.ly = getelementptr i8, ptr %i.lx, i64 -1
  %.pre.i137 = load i8, ptr %i.ly, align 1, !tbaa !43
  %scevgep215 = getelementptr nuw i8, ptr %i.lw, i64 %.0.lcssa27.i136
  %i.lz = sub nuw nsw i64 8, %.0.lcssa27.i136
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep215, i8 %.pre.i137, i64 %i.lz, i1 false), !tbaa !43
  br label %InitLeft.exit

bb.n:                                             ; preds = %bb.n, %.lr.ph.i141.new
  %indvars.iv.i143 = phi i64 [ 0, %.lr.ph.i141.new ], [ %indvars.iv.next.i145.3, %bb.n ] ; 5 uses
  %.01415.i144 = phi ptr [ %i.lm, %.lr.ph.i141.new ], [ %i.mo, %bb.n ] ; 2 uses
  %niter379 = phi i64 [ 0, %.lr.ph.i141.new ], [ %niter379.next.3, %bb.n ]
  %i.ma = load i8, ptr %.01415.i144, align 1, !tbaa !43
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i143
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !43
  %i.mc = getelementptr inbounds i8, ptr %.01415.i144, i64 %i.lo ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !43
  %i.me = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i143
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  store i8 %i.md, ptr %i.mf, align 1, !tbaa !43
  %i.mg = getelementptr inbounds i8, ptr %i.mc, i64 %i.lo ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !43
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i143
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store i8 %i.mh, ptr %i.mj, align 1, !tbaa !43
  %i.mk = getelementptr inbounds i8, ptr %i.mg, i64 %i.lo ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !43
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %indvars.iv.i143
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 3
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !43
  %indvars.iv.next.i145.3 = add nuw nsw i64 %indvars.iv.i143, 4 ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mk, i64 %i.lo ; 2 uses
  %niter379.next.3 = add i64 %niter379, 4         ; 2 uses
  %niter379.ncmp.3 = icmp eq i64 %niter379.next.3, %unroll_iter378
  br i1 %niter379.ncmp.3, label %.preheader.i147.unr-lcssa, label %bb.n, !llvm.loop !84

InitLeft.exit:                                    ; preds = %.lr.ph18.i135, %.preheader.i147, %bb.d, %bb.c
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %1, ptr %i.mp, align 8, !tbaa !87
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.mq, ptr %i.mr, align 8, !tbaa !88
  %i.ms = icmp eq i32 %i.f, 0
  br i1 %i.ms, label %bb.o, label %bb.p

bb.o:                                             ; preds = %InitLeft.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, i8 127, i64 32, i1 false)
  br label %ImportLine.exit190

bb.p:                                             ; preds = %InitLeft.exit
  %i.mt = icmp sgt i32 %i.ai, 0
  br i1 %i.mt, label %iter.check, label %.lr.ph18.i149

iter.check:                                       ; preds = %bb.p
  %i.mu = load i32, ptr %i.l, align 8, !tbaa !67
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.r, i64 %i.mw ; 4 uses
  %wide.trip.count.i156 = zext nneg i32 %i.aj to i64 ; 5 uses
  %min.iters.check = icmp slt i32 %i.ai, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.my = add i64 %i.a, %i.mv
  %i.mz = add i64 %i.k, %i.q
  %i.na = sub i64 %i.mz, %i.my
  %diff.check = icmp ugt i64 %i.na, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec264 = and i64 %wide.trip.count.i156, 28   ; 4 uses
  %i.nb = getelementptr i8, ptr %i.mx, i64 %n.vec264
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next268, %vec.epilog.vector.body ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %i.mx, i64 %index265
  %wide.load267 = load <4 x i8>, ptr %next.gep266, align 1, !tbaa !43
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 %index265
  store <4 x i8> %wide.load267, ptr %i.nc, align 1, !tbaa !43
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next268, %n.vec264
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n269 = icmp eq i64 %n.vec264, %wide.trip.count.i156
  br i1 %cmp.n269, label %.preheader.i161, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv.i157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec264, %vec.epilog.middle.block ] ; 3 uses
  %.01415.i158.ph = phi ptr [ %i.mx, %vector.memcheck ], [ %i.mx, %iter.check ], [ %i.nb, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter380 = and i64 %wide.trip.count.i156, 3 ; 2 uses
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i157.prol = phi i64 [ %indvars.iv.next.i159.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01415.i158.prol = phi ptr [ %i.ng, %vec.epilog.scalar.ph.prol ], [ %.01415.i158.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter382 = phi i64 [ %prol.iter382.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ne = load i8, ptr %.01415.i158.prol, align 1, !tbaa !43
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157.prol
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !43
  %indvars.iv.next.i159.prol = add nuw nsw i64 %indvars.iv.i157.prol, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.01415.i158.prol, i64 1 ; 2 uses
  %prol.iter382.next = add i64 %prol.iter382, 1   ; 2 uses
  %prol.iter382.cmp.not = icmp eq i64 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !92

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i157.unr = phi i64 [ %indvars.iv.i157.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i159.prol, %vec.epilog.scalar.ph.prol ]
  %.01415.i158.unr = phi ptr [ %.01415.i158.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ng, %vec.epilog.scalar.ph.prol ]
  %i.nh = sub nsw i64 %indvars.iv.i157.ph, %wide.trip.count.i156
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %.preheader.i161, label %vec.epilog.scalar.ph

.preheader.i161:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block
  %i.nj = icmp samesign ult i32 %i.ai, 16
  br i1 %i.nj, label %.lr.ph18.i149, label %ImportLine.exit162

.lr.ph18.i149:                                    ; preds = %bb.p, %.preheader.i161
  %.0.lcssa27.i150 = phi i32 [ %i.aj, %.preheader.i161 ], [ 0, %bb.p ]
  %i.nk = sext i32 %i.aj to i64
  %i.nl = getelementptr i8, ptr %1, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.nl, i64 -1
  %i.nn = zext i32 %.0.lcssa27.i150 to i64        ; 2 uses
  %.pre.i151 = load i8, ptr %i.nm, align 1, !tbaa !43
  %scevgep216 = getelementptr nuw i8, ptr %1, i64 %i.nn
  %i.no = sub nsw i64 16, %i.nn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep216, i8 %.pre.i151, i64 %i.no, i1 false), !tbaa !43
  br label %ImportLine.exit162

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i157 = phi i64 [ %indvars.iv.next.i159.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i157.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.01415.i158 = phi ptr [ %i.od, %vec.epilog.scalar.ph ], [ %.01415.i158.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.np = load i8, ptr %.01415.i158, align 1, !tbaa !43
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !43
  %i.nr = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !43
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  store i8 %i.ns, ptr %i.nu, align 1, !tbaa !43
  %i.nv = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !43
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 2
  store i8 %i.nw, ptr %i.ny, align 1, !tbaa !43
  %i.nz = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 3
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !43
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i157
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 3
  store i8 %i.oa, ptr %i.oc, align 1, !tbaa !43
  %indvars.iv.next.i159.3 = add nuw nsw i64 %indvars.iv.i157, 4 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.01415.i158, i64 4
  %exitcond.not.i160.3 = icmp eq i64 %indvars.iv.next.i159.3, %wide.trip.count.i156
  br i1 %exitcond.not.i160.3, label %.preheader.i161, label %vec.epilog.scalar.ph, !llvm.loop !93

ImportLine.exit162:                               ; preds = %.lr.ph18.i149, %.preheader.i161
  %i.oe = icmp sgt i32 %i.aq, 0
  br i1 %i.oe, label %iter.check289, label %.lr.ph18.i163..lr.ph18.i177_crit_edge

iter.check289:                                    ; preds = %ImportLine.exit162
  %i.of = load i32, ptr %i.v, align 4, !tbaa !69
  %i.og = sext i32 %i.of to i64                   ; 2 uses
  %i.oh = sub nsw i64 0, %i.og
  %i.oi = getelementptr inbounds i8, ptr %i.ab, i64 %i.oh ; 6 uses
  %wide.trip.count.i170 = zext nneg i32 %i.aq to i64 ; 8 uses
  %min.iters.check274 = icmp ult i32 %i.aq, 4
  br i1 %min.iters.check274, label %vec.epilog.scalar.ph290.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %iter.check289
  %i.oj = add i64 %i.a, %i.og
  %i.ok = add i64 %i.u, %i.aa
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = add i64 %i.ol, 15
  %diff.check273 = icmp ult i64 %i.om, 31
  br i1 %diff.check273, label %vec.epilog.scalar.ph290.preheader, label %vector.main.loop.iter.check275

vector.main.loop.iter.check275:                   ; preds = %vector.memcheck272
  %min.iters.check276 = icmp ult i32 %i.aq, 32
  br i1 %min.iters.check276, label %vec.epilog.ph293, label %vector.ph277

vector.ph277:                                     ; preds = %vector.main.loop.iter.check275
  %n.mod.vf278 = and i64 %wide.trip.count.i170, 28
  %n.vec279 = and i64 %wide.trip.count.i170, 2147483616 ; 5 uses
  %i.on = getelementptr i8, ptr %i.oi, i64 %n.vec279
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph277
  %index281 = phi i64 [ 0, %vector.ph277 ], [ %index.next285, %vector.body280 ] ; 3 uses
  %next.gep282 = getelementptr i8, ptr %i.oi, i64 %index281 ; 2 uses
  %i.oo = getelementptr i8, ptr %next.gep282, i64 16
  %wide.load283.a = load <16 x i8>, ptr %next.gep282, align 1, !tbaa !43
  %wide.load284 = load <16 x i8>, ptr %i.oo, align 1, !tbaa !43
  %i.op = getelementptr inbounds nuw i8, ptr %i.mq, i64 %index281 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  store <16 x i8> %wide.load283.a, ptr %i.op, align 1, !tbaa !43
  store <16 x i8> %wide.load284, ptr %i.oq, align 1, !tbaa !43
  %index.next285 = add nuw i64 %index281, 32      ; 2 uses
  %i.or = icmp eq i64 %index.next285, %n.vec279
  br i1 %i.or, label %middle.block286, label %vector.body280, !llvm.loop !94

middle.block286:                                  ; preds = %vector.body280
  %cmp.n287 = icmp eq i64 %n.vec279, %wide.trip.count.i170
  br i1 %cmp.n287, label %.preheader.i175, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block286
  %min.epilog.iters.check292 = icmp eq i64 %n.mod.vf278, 0
  br i1 %min.epilog.iters.check292, label %vec.epilog.scalar.ph290.preheader, label %vec.epilog.ph293, !prof !95

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check275, %vec.epilog.iter.check291
  %vec.epilog.resume.val288 = phi i64 [ %n.vec279, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check275 ]
  %n.vec295 = and i64 %wide.trip.count.i170, 2147483644 ; 4 uses
  %i.os = getelementptr i8, ptr %i.oi, i64 %n.vec295
  br label %vec.epilog.vector.body296

vec.epilog.vector.body296:                        ; preds = %vec.epilog.vector.body296, %vec.epilog.ph293
  %index297 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph293 ], [ %index.next300, %vec.epilog.vector.body296 ] ; 3 uses
  %next.gep298 = getelementptr i8, ptr %i.oi, i64 %index297
  %wide.load299 = load <4 x i8>, ptr %next.gep298, align 1, !tbaa !43
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mq, i64 %index297
  store <4 x i8> %wide.load299, ptr %i.ot, align 1, !tbaa !43
  %index.next300 = add nuw i64 %index297, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next300, %n.vec295
  br i1 %i.ou, label %vec.epilog.middle.block301, label %vec.epilog.vector.body296, !llvm.loop !96

vec.epilog.middle.block301:                       ; preds = %vec.epilog.vector.body296
  %cmp.n302 = icmp eq i64 %n.vec295, %wide.trip.count.i170
  br i1 %cmp.n302, label %.preheader.i175, label %vec.epilog.scalar.ph290.preheader

vec.epilog.scalar.ph290.preheader:                ; preds = %vector.memcheck272, %iter.check289, %vec.epilog.iter.check291, %vec.epilog.middle.block301
  %indvars.iv.i171.ph = phi i64 [ 0, %iter.check289 ], [ 0, %vector.memcheck272 ], [ %n.vec279, %vec.epilog.iter.check291 ], [ %n.vec295, %vec.epilog.middle.block301 ] ; 3 uses
  %.01415.i172.ph = phi ptr [ %i.oi, %iter.check289 ], [ %i.oi, %vector.memcheck272 ], [ %i.on, %vec.epilog.iter.check291 ], [ %i.os, %vec.epilog.middle.block301 ] ; 2 uses
  %xtraiter383 = and i64 %wide.trip.count.i170, 3 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol

vec.epilog.scalar.ph290.prol:                     ; preds = %vec.epilog.scalar.ph290.preheader, %vec.epilog.scalar.ph290.prol
  %indvars.iv.i171.prol = phi i64 [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph290.prol ], [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph290.preheader ] ; 2 uses
  %.01415.i172.prol = phi ptr [ %i.ox, %vec.epilog.scalar.ph290.prol ], [ %.01415.i172.ph, %vec.epilog.scalar.ph290.preheader ] ; 2 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %vec.epilog.scalar.ph290.prol ], [ 0, %vec.epilog.scalar.ph290.preheader ]
  %i.ov = load i8, ptr %.01415.i172.prol, align 1, !tbaa !43
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171.prol
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !43
  %indvars.iv.next.i173.prol = add nuw nsw i64 %indvars.iv.i171.prol, 1 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.01415.i172.prol, i64 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %vec.epilog.scalar.ph290.prol.loopexit, label %vec.epilog.scalar.ph290.prol, !llvm.loop !97

vec.epilog.scalar.ph290.prol.loopexit:            ; preds = %vec.epilog.scalar.ph290.prol, %vec.epilog.scalar.ph290.preheader
  %indvars.iv.i171.unr = phi i64 [ %indvars.iv.i171.ph, %vec.epilog.scalar.ph290.preheader ], [ %indvars.iv.next.i173.prol, %vec.epilog.scalar.ph290.prol ]
  %.01415.i172.unr = phi ptr [ %.01415.i172.ph, %vec.epilog.scalar.ph290.preheader ], [ %i.ox, %vec.epilog.scalar.ph290.prol ]
  %i.oy = sub nsw i64 %indvars.iv.i171.ph, %wide.trip.count.i170
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.preheader.i175, label %vec.epilog.scalar.ph290

.preheader.i175:                                  ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290, %vec.epilog.middle.block301, %middle.block286
  %i.pa = icmp samesign ult i32 %i.aq, 8
  br i1 %i.pa, label %.lr.ph18.i163..lr.ph.i183_crit_edge, label %.lr.ph.i183

.lr.ph18.i163..lr.ph.i183_crit_edge:              ; preds = %.preheader.i175
  %i.pb = zext nneg i32 %i.aq to i64
  %i.pc = getelementptr i8, ptr %i.mq, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 -1
  %i.pe = zext nneg i32 %i.aq to i64              ; 2 uses
  %.pre.i165239 = load i8, ptr %i.pd, align 1, !tbaa !43
  %i.pf = getelementptr i8, ptr %1, i64 %i.pe
  %scevgep217240 = getelementptr i8, ptr %i.pf, i64 16
  %i.pg = sub nuw nsw i64 8, %i.pe
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep217240, i8 %.pre.i165239, i64 %i.pg, i1 false), !tbaa !43
  %.pre223 = zext nneg i32 %i.aq to i64
  br label %.lr.ph.i183

.lr.ph18.i163..lr.ph18.i177_crit_edge:            ; preds = %ImportLine.exit162
  %i.ph = sext i32 %i.aq to i64                   ; 2 uses
  %i.pi = getelementptr i8, ptr %i.mq, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -1
  %.pre.i165 = load i8, ptr %i.pj, align 1, !tbaa !43
  %scevgep217 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %scevgep217, i8 %.pre.i165, i64 8, i1 false), !tbaa !43
  br label %.lr.ph18.i177

vec.epilog.scalar.ph290:                          ; preds = %vec.epilog.scalar.ph290.prol.loopexit, %vec.epilog.scalar.ph290
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i173.3, %vec.epilog.scalar.ph290 ], [ %indvars.iv.i171.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 5 uses
  %.01415.i172 = phi ptr [ %i.py, %vec.epilog.scalar.ph290 ], [ %.01415.i172.unr, %vec.epilog.scalar.ph290.prol.loopexit ] ; 5 uses
  %i.pk = load i8, ptr %.01415.i172, align 1, !tbaa !43
  %i.pl = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !43
  %i.pm = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 1
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !43
  %i.po = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1
  store i8 %i.pn, ptr %i.pp, align 1, !tbaa !43
  %i.pq = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 2
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !43
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !43
  %i.pu = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 3
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !43
  %i.pw = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i171
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 3
  store i8 %i.pv, ptr %i.px, align 1, !tbaa !43
  %indvars.iv.next.i173.3 = add nuw nsw i64 %indvars.iv.i171, 4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.01415.i172, i64 4
  %exitcond.not.i174.3 = icmp eq i64 %indvars.iv.next.i173.3, %wide.trip.count.i170
  br i1 %exitcond.not.i174.3, label %.preheader.i175, label %vec.epilog.scalar.ph290, !llvm.loop !98

.lr.ph.i183:                                      ; preds = %.preheader.i175, %.lr.ph18.i163..lr.ph.i183_crit_edge
  %wide.trip.count.i184.pre-phi = phi i64 [ %.pre223, %.lr.ph18.i163..lr.ph.i183_crit_edge ], [ 8, %.preheader.i175 ] ; 3 uses
  %.pn197.in = load i32, ptr %i.v, align 4, !tbaa !69
  %.pn197 = sext i32 %.pn197.in to i64
  %.pn = sub nsw i64 0, %.pn197
  %i.pz = getelementptr inbounds i8, ptr %i.ae, i64 %.pn ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.qb = add nsw i64 %wide.trip.count.i184.pre-phi, -1
  %xtraiter387 = and i64 %wide.trip.count.i184.pre-phi, 3 ; 3 uses
  %i.qc = icmp ult i64 %i.qb, 3
  br i1 %i.qc, label %.epil.preheader386, label %.lr.ph.i183.new

.lr.ph.i183.new:                                  ; preds = %.lr.ph.i183
  %unroll_iter391 = and i64 %wide.trip.count.i184.pre-phi, 2147483644
  br label %bb.r

.preheader.i189.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod389.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod389.not, label %.preheader.i189, label %.epil.preheader386

.epil.preheader386:                               ; preds = %.preheader.i189.unr-lcssa, %.lr.ph.i183
  %indvars.iv.i185.epil.init = phi i64 [ 0, %.lr.ph.i183 ], [ %indvars.iv.next.i187.3, %.preheader.i189.unr-lcssa ]
  %.01415.i186.epil.init = phi ptr [ %i.pz, %.lr.ph.i183 ], [ %i.ra, %.preheader.i189.unr-lcssa ]
  %lcmp.mod390 = icmp ne i64 %xtraiter387, 0
  tail call void @llvm.assume(i1 %lcmp.mod390)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader386
  %indvars.iv.i185.epil = phi i64 [ %indvars.iv.i185.epil.init, %.epil.preheader386 ], [ %indvars.iv.next.i187.epil, %bb.q ] ; 2 uses
  %.01415.i186.epil = phi ptr [ %.01415.i186.epil.init, %.epil.preheader386 ], [ %i.qf, %bb.q ] ; 2 uses
  %epil.iter388 = phi i64 [ 0, %.epil.preheader386 ], [ %epil.iter388.next, %bb.q ]
  %i.qd = load i8, ptr %.01415.i186.epil, align 1, !tbaa !43
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185.epil
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !43
  %indvars.iv.next.i187.epil = add nuw nsw i64 %indvars.iv.i185.epil, 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.01415.i186.epil, i64 1
  %epil.iter388.next = add i64 %epil.iter388, 1   ; 2 uses
  %epil.iter388.cmp.not = icmp eq i64 %epil.iter388.next, %xtraiter387
  br i1 %epil.iter388.cmp.not, label %.preheader.i189, label %bb.q, !llvm.loop !99

.preheader.i189:                                  ; preds = %bb.q, %.preheader.i189.unr-lcssa
  %i.qg = icmp samesign ult i32 %i.aq, 8
  br i1 %i.qg, label %.preheader.i189..lr.ph18.i177_crit_edge, label %ImportLine.exit190

.preheader.i189..lr.ph18.i177_crit_edge:          ; preds = %.preheader.i189
  %.pre224 = zext nneg i32 %i.aq to i64
  %i.qh = zext nneg i32 %i.aq to i64
  br label %.lr.ph18.i177

.lr.ph18.i177:                                    ; preds = %.preheader.i189..lr.ph18.i177_crit_edge, %.lr.ph18.i163..lr.ph18.i177_crit_edge
  %.pre-phi225 = phi i64 [ %.pre224, %.preheader.i189..lr.ph18.i177_crit_edge ], [ %i.ph, %.lr.ph18.i163..lr.ph18.i177_crit_edge ]
  %.0.lcssa27.i178 = phi i64 [ %i.qh, %.preheader.i189..lr.ph18.i177_crit_edge ], [ 0, %.lr.ph18.i163..lr.ph18.i177_crit_edge ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 %.pre-phi225
  %i.qk = getelementptr i8, ptr %i.qj, i64 -1
  %.pre.i179 = load i8, ptr %i.qk, align 1, !tbaa !43
  %scevgep218 = getelementptr nuw i8, ptr %i.qi, i64 %.0.lcssa27.i178
  %i.ql = sub nuw nsw i64 8, %.0.lcssa27.i178
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep218, i8 %.pre.i179, i64 %i.ql, i1 false), !tbaa !43
  br label %ImportLine.exit190

bb.r:                                             ; preds = %bb.r, %.lr.ph.i183.new
  %indvars.iv.i185 = phi i64 [ 0, %.lr.ph.i183.new ], [ %indvars.iv.next.i187.3, %bb.r ] ; 5 uses
  %.01415.i186 = phi ptr [ %i.pz, %.lr.ph.i183.new ], [ %i.ra, %bb.r ] ; 5 uses
  %niter392 = phi i64 [ 0, %.lr.ph.i183.new ], [ %niter392.next.3, %bb.r ]
  %i.qm = load i8, ptr %.01415.i186, align 1, !tbaa !43
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !43
  %i.qo = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !43
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  store i8 %i.qp, ptr %i.qr, align 1, !tbaa !43
  %i.qs = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 2
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !43
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  store i8 %i.qt, ptr %i.qv, align 1, !tbaa !43
  %i.qw = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 3
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !43
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qa, i64 %indvars.iv.i185
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 3
  store i8 %i.qx, ptr %i.qz, align 1, !tbaa !43
  %indvars.iv.next.i187.3 = add nuw nsw i64 %indvars.iv.i185, 4 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.01415.i186, i64 4 ; 2 uses
  %niter392.next.3 = add i64 %niter392, 4         ; 2 uses
  %niter392.ncmp.3 = icmp eq i64 %niter392.next.3, %unroll_iter391
  br i1 %niter392.ncmp.3, label %.preheader.i189.unr-lcssa, label %bb.r, !llvm.loop !84

ImportLine.exit190:                               ; preds = %.lr.ph18.i177, %.preheader.i189, %bb.o, %ImportBlock.exit117
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorExport(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i32, ptr %i.d, align 4, !tbaa !101
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %ExportBlock.exit52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 44 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69
  %i.s = mul nsw i32 %i.r, %i.h
  %i.t = add nsw i32 %i.s, %i.f
  %i.u = shl nsw i32 %i.t, 3
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !71
  %i.ac = shl nsw i32 %i.f, 4
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !72
  %i.ag = shl nsw i32 %i.h, 4
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 16) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 16) ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %ExportBlock.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !67 ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.h
  %i.ao = add nsw i32 %i.an, %i.f
  %i.ap = shl nsw i32 %i.ao, 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq
  %i.as = sext i32 %spec.store.select to i64
  %i.at = sext i32 %i.am to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi i32 [ %spec.store.select1, %.lr.ph.i ], [ %i.au, %bb.c ] ; 2 uses
  %.069.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.aw, %bb.c ] ; 2 uses
  %.078.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.av, %bb.c ] ; 2 uses
  %i.au = add nsw i32 %.010.i, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i, ptr align 1 %.069.i, i64 %i.as, i1 false)
  %i.av = getelementptr inbounds i8, ptr %.078.i, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.069.i, i64 32
  %i.ax = icmp samesign ugt i32 %.010.i, 1
  br i1 %i.ax, label %bb.c, label %ExportBlock.exit, !llvm.loop !104

ExportBlock.exit:                                 ; preds = %bb.c, %bb.b
  %i.ay = add nsw i32 %spec.store.select1, 1
  %i.az = ashr i32 %i.ay, 1                       ; 6 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i43, label %ExportBlock.exit52

.lr.ph.i43:                                       ; preds = %ExportBlock.exit
  %i.bb = add nsw i32 %spec.store.select, 1
  %i.bc = ashr i32 %i.bb, 1
  %i.bd = load i32, ptr %i.q, align 4, !tbaa !69
  %i.be = sext i32 %i.bc to i64                   ; 6 uses
  %i.bf = sext i32 %i.bd to i64                   ; 5 uses
  %xtraiter = and i32 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i43, %.prol.preheader
  %.010.i44.prol = phi i32 [ %i.bg, %.prol.preheader ], [ %i.az, %.lr.ph.i43 ]
  %.069.i45.prol = phi ptr [ %i.bi, %.prol.preheader ], [ %i.k, %.lr.ph.i43 ] ; 2 uses
  %.078.i46.prol = phi ptr [ %i.bh, %.prol.preheader ], [ %i.w, %.lr.ph.i43 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i43 ]
  %i.bg = add nsw i32 %.010.i44.prol, -1          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i46.prol, ptr nonnull align 1 %.069.i45.prol, i64 %i.be, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.078.i46.prol, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.069.i45.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !105

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i43
  %.010.i44.unr = phi i32 [ %i.az, %.lr.ph.i43 ], [ %i.bg, %.prol.preheader ]
  %.069.i45.unr = phi ptr [ %i.k, %.lr.ph.i43 ], [ %i.bi, %.prol.preheader ]
  %.078.i46.unr = phi ptr [ %i.w, %.lr.ph.i43 ], [ %i.bh, %.prol.preheader ]
  %i.bj = icmp ult i32 %i.az, 4
  br i1 %i.bj, label %.lr.ph.i48, label %.lr.ph.i43.new

.lr.ph.i43.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i43.new
  %.010.i44 = phi i32 [ %i.bq, %.lr.ph.i43.new ], [ %.010.i44.unr, %.prol.loopexit ] ; 2 uses
  %.069.i45 = phi ptr [ %i.bs, %.lr.ph.i43.new ], [ %.069.i45.unr, %.prol.loopexit ] ; 5 uses
  %.078.i46 = phi ptr [ %i.br, %.lr.ph.i43.new ], [ %.078.i46.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i46, ptr nonnull align 1 %.069.i45, i64 %i.be, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %.078.i46, i64 %i.bf ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.069.i45, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.bl, i64 %i.be, i1 false)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.069.i45, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.be, i1 false)
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.069.i45, i64 96
  %i.bq = add nsw i32 %.010.i44, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bp, i64 %i.be, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.bf
  %i.bs = getelementptr inbounds nuw i8, ptr %.069.i45, i64 128
  %i.bt = icmp sgt i32 %.010.i44, 4
  br i1 %i.bt, label %.lr.ph.i43.new, label %.lr.ph.i48, !llvm.loop !104

.lr.ph.i48:                                       ; preds = %.lr.ph.i43.new, %.prol.loopexit
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !69
  %i.bv = sext i32 %i.bu to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i48
  %.010.i49 = phi i32 [ %i.az, %.lr.ph.i48 ], [ %i.bw, %bb.d ] ; 2 uses
  %.069.i50 = phi ptr [ %i.l, %.lr.ph.i48 ], [ %i.by, %bb.d ] ; 2 uses
  %.078.i51 = phi ptr [ %i.z, %.lr.ph.i48 ], [ %i.bx, %bb.d ] ; 2 uses
  %i.bw = add nsw i32 %.010.i49, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.i51, ptr nonnull align 1 %.069.i50, i64 %i.be, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %.078.i51, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.069.i50, i64 32
  %i.bz = icmp samesign ugt i32 %.010.i49, 1
  br i1 %i.bz, label %bb.d, label %ExportBlock.exit52, !llvm.loop !104

ExportBlock.exit52:                               ; preds = %bb.d, %ExportBlock.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorNzToBytes(ptr nofree noundef captures(none) initializes((132, 200)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3    ; 9 uses
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = lshr i32 %i.c, 12
  %.lobit = and i32 %i.h, 1
  store i32 %.lobit, ptr %i.f, align 4, !tbaa !3
  %i.i = lshr i32 %i.c, 13
  %.lobit37 = and i32 %i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lobit37, ptr %i.j, align 8, !tbaa !3
  %i.k = lshr i32 %i.c, 14
  %.lobit38 = and i32 %i.k, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.lobit38, ptr %i.l, align 4, !tbaa !3
  %i.m = lshr i32 %i.c, 15
  %.lobit39 = and i32 %i.m, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lobit39, ptr %i.n, align 8, !tbaa !3
  %i.o = lshr i32 %i.c, 18
  %.lobit40 = and i32 %i.o, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.lobit40, ptr %i.p, align 4, !tbaa !3
  %i.q = lshr i32 %i.c, 19
  %.lobit41 = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.lobit41, ptr %i.r, align 8, !tbaa !3
  %i.s = lshr i32 %i.c, 22
  %.lobit42 = and i32 %i.s, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.lobit42, ptr %i.t, align 4, !tbaa !3
  %i.u = lshr i32 %i.c, 23
  %.lobit43 = and i32 %i.u, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.lobit43, ptr %i.v, align 8, !tbaa !3
  %i.w = lshr i32 %i.c, 24
  %.lobit44 = and i32 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.lobit44, ptr %i.x, align 4, !tbaa !3
  %i.y = lshr i32 %i.e, 3
  %.lobit45 = and i32 %i.y, 1
  store i32 %.lobit45, ptr %i.g, align 8, !tbaa !3
  %i.z = lshr i32 %i.e, 7
  %.lobit46 = and i32 %i.z, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.lobit46, ptr %i.aa, align 4, !tbaa !3
  %i.ab = lshr i32 %i.e, 11
  %.lobit47 = and i32 %i.ab, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.lobit47, ptr %i.ac, align 8, !tbaa !3
  %i.ad = lshr i32 %i.e, 15
  %.lobit48 = and i32 %i.ad, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.lobit48, ptr %i.ae, align 4, !tbaa !3
  %i.af = lshr i32 %i.e, 17
  %.lobit49 = and i32 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.lobit49, ptr %i.ag, align 8, !tbaa !3
  %i.ah = lshr i32 %i.e, 19
  %.lobit50 = and i32 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.lobit50, ptr %i.ai, align 4, !tbaa !3
  %i.aj = lshr i32 %i.e, 21
  %.lobit51 = and i32 %i.aj, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.lobit51, ptr %i.ak, align 8, !tbaa !3
  %i.al = lshr i32 %i.e, 23
  %.lobit52 = and i32 %i.al, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.lobit52, ptr %i.am, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorBytesToNz(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load <8 x i32>, ptr %i.a, align 4, !tbaa !3
  %i.c = shl <8 x i32> %i.b, <i32 12, i32 13, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23> ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.e = load <4 x i32>, ptr %i.d, align 4, !tbaa !3
  %i.f = shl <4 x i32> %i.e, <i32 24, i32 3, i32 7, i32 11>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = shl i32 %i.h, 17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = shl i32 %i.k, 21
  %i.m = shufflevector <8 x i32> %i.c, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i32> %i.m, %i.f
  %i.n = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <8 x i32> %i.n, <8 x i32> %i.c, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.p = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.o)
  %op.rdx = or i32 %i.p, %i.i
  %op.rdx25 = or i32 %op.rdx, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  store i32 %op.rdx25, ptr %i.r, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorSaveBoundary(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 34 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp slt i32 %i.c, %i.j
  br i1 %i.k, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !45
  store i8 %i.n, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.q, ptr %i.s, align 1, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 79
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.u, ptr %i.w, align 1, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 111
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 143
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 175
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 207
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 239
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !43
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 271
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %i.as, ptr %i.au, align 1, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 303
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !43
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 335
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !43
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 367
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !43
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 399
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 431
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !43
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 13
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 463
end_hunk_1
begin_hunk_2_@VP8IteratorNext:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 23664
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 23648
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = mul nsw i32 %i.j, %i.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 23672
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !41
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !41
  %i.an = icmp sgt i32 %i.i, -1
  %i.ao = select i1 %i.an, i8 -127, i8 127        ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1
  store i8 %i.ao, ptr %i.ar, align 1, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1
  store i8 %i.ao, ptr %i.ax, align 1, !tbaa !43
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i8 -127, i64 16, i1 false)
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !44
  store i64 -9114861777597660799, ptr %i.az, align 1
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !42
  store i64 -9114861777597660799, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.bb, align 8, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %VP8IteratorSetRow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 0, ptr %i.be, align 8
  br label %VP8IteratorSetRow.exit

bb.d:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !40
  %i.bj = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, <2 x ptr> %i.bj, i64 4
  store <2 x ptr> %i.bk, ptr %i.bf, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, <2 x ptr> %i.bm, i64 16
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !41
  br label %VP8IteratorSetRow.exit

VP8IteratorSetRow.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !48 ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !48
  %i.br = icmp sgt i32 %i.bp, 1
  %i.bs = zext i1 %i.br to i32
  ret i32 %i.bs
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8SetIntra16Mode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = trunc i32 %1 to i8                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.b, i8 %i.c, i64 4, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.i, i8 %i.c, i64 4, i1 false)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.n, i8 %i.c, i64 4, i1 false)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.s, i8 %i.c, i64 4, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, -4
  %i.x = or disjoint i8 %i.w, 1
  store i8 %i.x, ptr %i.u, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8SetIntra4Mode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i32, ptr %1, align 1
  store i32 %i.d, ptr %i.b, align 1
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 1
  store i32 %i.k, ptr %i.i, align 1
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 1
  store i32 %i.r, ptr %i.p, align 1
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !34
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 1
  store i32 %i.y, ptr %i.w, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40  ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = and i8 %i.ab, -4
  store i8 %i.ac, ptr %i.aa, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8SetIntraUVMode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = trunc i32 %1 to i8
  %i.d = load i8, ptr %i.b, align 4
  %i.e = shl i8 %i.c, 2
  %i.f = and i8 %i.e, 12
  %i.g = and i8 %i.d, -13
  %i.h = or disjoint i8 %i.g, %i.f
  store i8 %i.h, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8SetSkip(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = trunc i32 %1 to i8
  %i.d = load i8, ptr %i.b, align 4
  %i.e = shl i8 %i.c, 4
  %i.f = and i8 %i.e, 16
  %i.g = and i8 %i.d, -17
  %i.h = or disjoint i8 %i.g, %i.f
  store i8 %i.h, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8SetSegment(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = trunc i32 %1 to i8
  %i.d = load i8, ptr %i.b, align 4
  %i.e = shl i8 %i.c, 5
  %i.f = and i8 %i.e, 96
  %i.g = and i8 %i.d, -97
  %i.h = or disjoint i8 %i.g, %i.f
  store i8 %i.h, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8IteratorStartI4(ptr noundef initializes((128, 132)) %0) local_unnamed_addr #7 {
.preheader31:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.f, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  store i8 %i.j, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  %i.l = load i8, ptr %i.k, align 1, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %i.l, ptr %i.m, align 1, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 13
  %i.o = load i8, ptr %i.n, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 %i.o, ptr %i.p, align 2, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i8, ptr %i.q, align 1, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 83
  store i8 %i.r, ptr %i.s, align 1, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 %i.u, ptr %i.v, align 4, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.x = load i8, ptr %i.w, align 1, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 85
  store i8 %i.x, ptr %i.y, align 1, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 87
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 %i.am, ptr %i.an, align 2, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 %i.as, ptr %i.at, align 4, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 94
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !43
  %i.ba = load i8, ptr %i.h, align 1, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !43
  %i.bc = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.bd, ptr %i.be, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87 ; 20 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.bq, ptr %i.br, align 4, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.bw, ptr %i.bx, align 2, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.cc, ptr %i.cd, align 8, !tbaa !43
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %i.co, ptr %i.cp, align 4, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 %i.cu, ptr %i.cv, align 2, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !43  ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.da, ptr %i.db, align 8, !tbaa !43
  %i.dc = load i32, ptr %0, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !39
  %i.df = add nsw i32 %i.de, -1
  %i.dg = icmp slt i32 %i.dc, %i.df
  br i1 %i.dg, label %.preheader, label %.preheader29

.preheader29:                                     ; preds = %.preheader31
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.da, ptr %i.dh, align 1, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.da, ptr %i.di, align 2, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.da, ptr %i.dj, align 1, !tbaa !43
  br label %.loopexit

.preheader:                                       ; preds = %.preheader31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 17
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.do, ptr %i.dp, align 2, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bg, i64 18
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29, %.preheader
  %.sink = phi i8 [ %i.da, %.preheader29 ], [ %i.du, %.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 %.sink, ptr %i.dv, align 4, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3  ; 9 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3  ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ed = lshr i32 %i.dy, 12
  %.lobit.i = and i32 %i.ed, 1
  store i32 %.lobit.i, ptr %i.eb, align 4, !tbaa !3
  %i.ee = lshr i32 %i.dy, 13
  %.lobit37.i = and i32 %i.ee, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.lobit37.i, ptr %i.ef, align 8, !tbaa !3
  %i.eg = lshr i32 %i.dy, 14
  %.lobit38.i = and i32 %i.eg, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.lobit38.i, ptr %i.eh, align 4, !tbaa !3
  %i.ei = lshr i32 %i.dy, 15
  %.lobit39.i = and i32 %i.ei, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.lobit39.i, ptr %i.ej, align 8, !tbaa !3
  %i.ek = lshr i32 %i.dy, 18
  %.lobit40.i = and i32 %i.ek, 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %.lobit40.i, ptr %i.el, align 4, !tbaa !3
  %i.em = lshr i32 %i.dy, 19
  %.lobit41.i = and i32 %i.em, 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %.lobit41.i, ptr %i.en, align 8, !tbaa !3
  %i.eo = lshr i32 %i.dy, 22
  %.lobit42.i = and i32 %i.eo, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.lobit42.i, ptr %i.ep, align 4, !tbaa !3
  %i.eq = lshr i32 %i.dy, 23
  %.lobit43.i = and i32 %i.eq, 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.lobit43.i, ptr %i.er, align 8, !tbaa !3
  %i.es = lshr i32 %i.dy, 24
  %.lobit44.i = and i32 %i.es, 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %.lobit44.i, ptr %i.et, align 4, !tbaa !3
  %i.eu = lshr i32 %i.ea, 3
  %.lobit45.i = and i32 %i.eu, 1
  store i32 %.lobit45.i, ptr %i.ec, align 8, !tbaa !3
  %i.ev = lshr i32 %i.ea, 7
  %.lobit46.i = and i32 %i.ev, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %.lobit46.i, ptr %i.ew, align 4, !tbaa !3
  %i.ex = lshr i32 %i.ea, 11
  %.lobit47.i = and i32 %i.ex, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %.lobit47.i, ptr %i.ey, align 8, !tbaa !3
  %i.ez = lshr i32 %i.ea, 15
  %.lobit48.i = and i32 %i.ez, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.lobit48.i, ptr %i.fa, align 4, !tbaa !3
  %i.fb = lshr i32 %i.ea, 17
  %.lobit49.i = and i32 %i.fb, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %.lobit49.i, ptr %i.fc, align 8, !tbaa !3
  %i.fd = lshr i32 %i.ea, 19
  %.lobit50.i = and i32 %i.fd, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %.lobit50.i, ptr %i.fe, align 4, !tbaa !3
  %i.ff = lshr i32 %i.ea, 21
  %.lobit51.i = and i32 %i.ff, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.lobit51.i, ptr %i.fg, align 8, !tbaa !3
  %i.fh = lshr i32 %i.ea, 23
  %.lobit52.i = and i32 %i.fh, 1
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %.lobit52.i, ptr %i.fi, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @VP8IteratorRotateI4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @VP8Scan, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !108
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.k = load i8, ptr %i.j, align 1, !tbaa !43
  %i.l = getelementptr i8, ptr %i.i, i64 -4
  store i8 %i.k, ptr %i.l, align 1, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 97
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  %i.o = getelementptr i8, ptr %i.i, i64 -3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 98
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = getelementptr i8, ptr %i.i, i64 -2
  store i8 %i.q, ptr %i.r, align 1, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 99
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  %i.u = getelementptr i8, ptr %i.i, i64 -1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !43
  %i.v = load i32, ptr %i.a, align 8, !tbaa !106
  %i.w = and i32 %i.v, 3
  %.not = icmp eq i32 %i.w, 3
  br i1 %.not, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.y = getelementptr i8, ptr %i.i, i64 2
  %i.z = getelementptr i8, ptr %i.i, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !43
  store i8 %i.ab, ptr %i.i, align 1, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !43
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !43
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !43
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %i.af = load i32, ptr %scevgep, align 1, !tbaa !43
  store i32 %i.af, ptr %i.i, align 1, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader29.preheader, %.preheader.preheader
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !106
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !106
  %i.ai = icmp eq i32 %i.ah, 16
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr @VP8TopLeftI4, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.027 = phi i32 [ 1, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.027
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v8i32(<8 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !11, i64 40}
!8 = !{!"", !4, i64 0, !4, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !10, i64 48, !12, i64 56, !9, i64 64, !13, i64 72, !5, i64 80, !9, i64 120, !4, i64 128, !5, i64 132, !5, i64 168, !5, i64 208, !14, i64 304, !14, i64 312, !15, i64 320, !4, i64 328, !4, i64 332, !4, i64 336, !4, i64 340, !5, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !5, i64 400, !5, i64 488}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10VP8Encoder", !10, i64 0}
!12 = !{!"p1 _ZTS12VP8BitWriter", !10, i64 0}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!8, !4, i64 0}
!17 = !{!8, !4, i64 4}
!18 = !{!19, !4, i64 60}
!19 = !{!"VP8Encoder", !20, i64 0, !21, i64 8, !22, i64 16, !23, i64 32, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !24, i64 64, !5, i64 112, !25, i64 496, !4, i64 536, !4, i64 540, !9, i64 544, !4, i64 552, !30, i64 560, !5, i64 608, !4, i64 3584, !4, i64 3588, !4, i64 3592, !4, i64 3596, !4, i64 3600, !4, i64 3604, !4, i64 3608, !4, i64 3612, !31, i64 3616, !5, i64 23512, !14, i64 23544, !4, i64 23552, !5, i64 23556, !5, i64 23604, !4, i64 23616, !4, i64 23620, !4, i64 23624, !4, i64 23628, !4, i64 23632, !4, i64 23636, !4, i64 23640, !10, i64 23648, !9, i64 23656, !13, i64 23664, !9, i64 23672, !9, i64 23680, !15, i64 23688, !9, i64 23696}
!20 = !{!"p1 _ZTS10WebPConfig", !10, i64 0}
!21 = !{!"p1 _ZTS11WebPPicture", !10, i64 0}
!22 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!23 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!24 = !{!"VP8BitWriter", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16, !14, i64 24, !14, i64 32, !4, i64 40}
!25 = !{!"", !26, i64 0, !27, i64 8, !29, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!26 = !{!"p1 _ZTS9VP8Tokens", !10, i64 0}
!27 = !{!"p2 _ZTS9VP8Tokens", !28, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"p1 short", !10, i64 0}
!30 = !{!"", !10, i64 0, !4, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40}
!31 = !{!"", !5, i64 0, !5, i64 3, !5, i64 4, !5, i64 1060, !5, i64 5284, !5, i64 18344, !4, i64 19880, !4, i64 19884, !4, i64 19888}
!32 = !{!8, !12, i64 56}
!33 = !{!19, !9, i64 23656}
!34 = !{!19, !4, i64 56}
!35 = !{!8, !9, i64 64}
!36 = !{!19, !13, i64 23664}
!37 = !{!8, !13, i64 72}
!38 = !{!19, !10, i64 23648}
!39 = !{!19, !4, i64 48}
!40 = !{!8, !10, i64 48}
!41 = !{!9, !9, i64 0}
!42 = !{!8, !9, i64 376}
!43 = !{!5, !5, i64 0}
!44 = !{!8, !9, i64 368}
!45 = !{!8, !9, i64 360}
!46 = !{!8, !9, i64 352}
!47 = !{!8, !4, i64 336}
!48 = !{!8, !4, i64 332}
!49 = !{!8, !9, i64 8}
!50 = !{!8, !9, i64 16}
!51 = !{!8, !9, i64 24}
!52 = !{!8, !9, i64 32}
!53 = !{!19, !15, i64 23688}
!54 = !{!8, !15, i64 320}
!55 = !{!19, !4, i64 536}
!56 = !{!8, !4, i64 340}
!57 = !{!19, !9, i64 23696}
!58 = !{!10, !10, i64 0}
!59 = !{!19, !4, i64 52}
!60 = !{!19, !9, i64 23672}
!61 = !{!8, !4, i64 328}
!62 = !{!19, !21, i64 8}
!63 = !{!64, !10, i64 144}
!64 = !{!"WebPPicture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !4, i64 40, !4, i64 44, !9, i64 48, !4, i64 56, !5, i64 60, !13, i64 72, !4, i64 80, !5, i64 84, !10, i64 96, !10, i64 104, !4, i64 112, !9, i64 120, !65, i64 128, !4, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !9, i64 176, !9, i64 184, !5, i64 192, !10, i64 224, !10, i64 232, !5, i64 240}
!65 = !{!"p1 _ZTS12WebPAuxStats", !10, i64 0}
!66 = !{!64, !9, i64 16}
!67 = !{!64, !4, i64 40}
!68 = !{!64, !9, i64 24}
!69 = !{!64, !4, i64 44}
!70 = !{!64, !9, i64 32}
!71 = !{!64, !4, i64 8}
!72 = !{!64, !4, i64 12}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !74}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !76}
!82 = distinct !{!82, !76}
!83 = distinct !{!83, !76}
!84 = distinct !{!84, !74}
!85 = distinct !{!85, !76}
!86 = distinct !{!86, !76}
!87 = !{!8, !9, i64 384}
!88 = !{!8, !9, i64 392}
!89 = distinct !{!89, !74, !90, !91}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = distinct !{!92, !76}
!93 = distinct !{!93, !74, !90}
!94 = distinct !{!94, !74, !90, !91}
!95 = !{!"branch_weights", i32 4, i32 28}
!96 = distinct !{!96, !74, !90, !91}
!97 = distinct !{!97, !76}
!98 = distinct !{!98, !74, !90}
!99 = distinct !{!99, !76}
!100 = !{!19, !20, i64 0}
!101 = !{!102, !4, i64 64}
!102 = !{!"WebPConfig", !4, i64 0, !103, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !103, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!103 = !{!"float", !5, i64 0}
!104 = distinct !{!104, !74}
!105 = distinct !{!105, !76}
!106 = !{!8, !4, i64 128}
!107 = !{!8, !9, i64 120}
!108 = !{!109, !109, i64 0}
!109 = !{!"short", !5, i64 0}
end_hunk_2
