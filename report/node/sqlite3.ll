inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@renameUnmapSelectCb:bb.a

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.010.i = phi ptr [ %.0.i, %bb.h ], [ %.08.i, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.010.i, align 8, !tbaa !3500
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %.010.i, align 8, !tbaa !3500
  br label %sqlite3RenameTokenRemap.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.0.i = load ptr, ptr %i.v, align 8, !tbaa !3499 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i, !llvm.loop !3502

sqlite3RenameTokenRemap.exit:                     ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit51, label %bb.d, !llvm.loop !4201

.loopexit51:                                      ; preds = %sqlite3RenameTokenRemap.exit, %.preheader50, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3036 ; 4 uses
  %.not39 = icmp eq ptr %i.x, null
  br i1 %.not39, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit51
  %i.y = load i32, ptr %i.x, align 8, !tbaa !5    ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph57, %sqlite3WalkExpr.exit
  %i.ac = phi i32 [ %i.y, %.lr.ph57 ], [ %i.bj, %sqlite3WalkExpr.exit ] ; 6 uses
  %indvars.iv62 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next63, %sqlite3WalkExpr.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %indvars.iv62 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !384
  %.08.i41 = load ptr, ptr %i.ab, align 8, !tbaa !3499 ; 5 uses
  %.not9.i42 = icmp eq ptr %.08.i41, null         ; 2 uses
  br i1 %.not9.i42, label %sqlite3RenameTokenRemap.exit47, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.i, %bb.k
  %.010.i44 = phi ptr [ %.0.i45, %bb.k ], [ %.08.i41, %bb.i ] ; 3 uses
  %i.af = load ptr, ptr %.010.i44, align 8, !tbaa !3500
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i43
  store ptr null, ptr %.010.i44, align 8, !tbaa !3500
  br label %sqlite3RenameTokenRemap.exit47

bb.k:                                             ; preds = %.lr.ph.i43
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i44, i64 24
  %.0.i45 = load ptr, ptr %i.ah, align 8, !tbaa !3499 ; 2 uses
  %.not.i46 = icmp eq ptr %.0.i45, null
  br i1 %.not.i46, label %sqlite3RenameTokenRemap.exit47, label %.lr.ph.i43, !llvm.loop !3502

sqlite3RenameTokenRemap.exit47:                   ; preds = %bb.k, %bb.i, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = and i16 %i.aj, 2048
  %i.al = icmp eq i16 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !227 ; 4 uses
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %sqlite3RenameTokenRemap.exit47
  %.not.i48 = icmp eq ptr %i.an, null
  br i1 %.not.i48, label %sqlite3WalkExpr.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %0, ptr noundef nonnull %i.an) #62, !inline_history !3509 ; 0 uses
  %.pre = load i32, ptr %i.x, align 8, !tbaa !5
  br label %sqlite3WalkExpr.exit

bb.n:                                             ; preds = %sqlite3RenameTokenRemap.exit47
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !5  ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i49, label %sqlite3WalkExpr.exit

.lr.ph.i49:                                       ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  br i1 %.not9.i42, label %sqlite3WalkExpr.exit, label %.lr.ph.i.preheader.preheader.i

.lr.ph.i.preheader.preheader.i:                   ; preds = %.lr.ph.i49
  %wide.trip.count.i = zext nneg i32 %i.ap to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.as = icmp eq i32 %i.ap, 1
  br i1 %i.as, label %.lr.ph.i.preheader.i.epil.preheader, label %.lr.ph.i.preheader.preheader.i.new

.lr.ph.i.preheader.preheader.i.new:               ; preds = %.lr.ph.i.preheader.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %sqlite3RenameTokenRemap.exit.i.1, %.lr.ph.i.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.preheader.i.new ], [ %indvars.iv.next.i.1, %sqlite3RenameTokenRemap.exit.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.preheader.i.new ], [ %niter.next.1, %sqlite3RenameTokenRemap.exit.i.1 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3018
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.preheader.i
  %.010.i.i = phi ptr [ %.0.i.i, %bb.p ], [ %.08.i41, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.av = load ptr, ptr %.010.i.i, align 8, !tbaa !3500
  %i.aw = icmp eq ptr %i.av, %i.au
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  store ptr null, ptr %.010.i.i, align 8, !tbaa !3500
  br label %sqlite3RenameTokenRemap.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %.0.i.i = load ptr, ptr %i.ax, align 8, !tbaa !3499 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %sqlite3RenameTokenRemap.exit.i, label %.lr.ph.i.i, !llvm.loop !3502

sqlite3RenameTokenRemap.exit.i:                   ; preds = %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3018
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.q, %sqlite3RenameTokenRemap.exit.i
  %.010.i.i.1 = phi ptr [ %.0.i.i.1, %bb.q ], [ %.08.i41, %sqlite3RenameTokenRemap.exit.i ] ; 3 uses
  %i.bb = load ptr, ptr %.010.i.i.1, align 8, !tbaa !3500
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i.i.1, i64 24
  %.0.i.i.1 = load ptr, ptr %i.bd, align 8, !tbaa !3499 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %.0.i.i.1, null
  br i1 %.not.i.i.1, label %sqlite3RenameTokenRemap.exit.i.1, label %.lr.ph.i.i.1, !llvm.loop !3502

bb.r:                                             ; preds = %.lr.ph.i.i.1
  store ptr null, ptr %.010.i.i.1, align 8, !tbaa !3500
  br label %sqlite3RenameTokenRemap.exit.i.1

sqlite3RenameTokenRemap.exit.i.1:                 ; preds = %bb.q, %bb.r
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sqlite3WalkExpr.exit.loopexit.unr-lcssa, label %.lr.ph.i.preheader.i, !llvm.loop !4202

sqlite3WalkExpr.exit.loopexit.unr-lcssa:          ; preds = %sqlite3RenameTokenRemap.exit.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sqlite3WalkExpr.exit, label %.lr.ph.i.preheader.i.epil.preheader

.lr.ph.i.preheader.i.epil.preheader:              ; preds = %sqlite3WalkExpr.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.preheader.i ], [ %indvars.iv.next.i.1, %sqlite3WalkExpr.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.epil.init
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3018
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.s, %.lr.ph.i.preheader.i.epil.preheader
  %.010.i.i.epil = phi ptr [ %.0.i.i.epil, %bb.s ], [ %.08.i41, %.lr.ph.i.preheader.i.epil.preheader ] ; 3 uses
  %i.bg = load ptr, ptr %.010.i.i.epil, align 8, !tbaa !3500
  %i.bh = icmp eq ptr %i.bg, %i.bf
  br i1 %i.bh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.epil
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.epil, i64 24
  %.0.i.i.epil = load ptr, ptr %i.bi, align 8, !tbaa !3499 ; 2 uses
  %.not.i.i.epil = icmp eq ptr %.0.i.i.epil, null
  br i1 %.not.i.i.epil, label %sqlite3WalkExpr.exit, label %.lr.ph.i.i.epil, !llvm.loop !3502

bb.t:                                             ; preds = %.lr.ph.i.i.epil
  store ptr null, ptr %.010.i.i.epil, align 8, !tbaa !3500
  br label %sqlite3WalkExpr.exit

sqlite3WalkExpr.exit:                             ; preds = %sqlite3WalkExpr.exit.loopexit.unr-lcssa, %bb.s, %bb.t, %.lr.ph.i49, %bb.n, %bb.m, %bb.l
  %i.bj = phi i32 [ %i.ac, %bb.l ], [ %i.ac, %.lr.ph.i49 ], [ %i.ac, %bb.n ], [ %.pre, %bb.m ], [ %i.ac, %bb.t ], [ %i.ac, %bb.s ], [ %i.ac, %sqlite3WalkExpr.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next63, %i.bk
  br i1 %i.bl, label %bb.i, label %.loopexit, !llvm.loop !4203

.loopexit:                                        ; preds = %sqlite3WalkExpr.exit, %.preheader, %.loopexit51
  %i.bm = getelementptr i8, ptr %1, i64 96
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !3042
  tail call fastcc void @renameWalkWith(ptr noundef nonnull %0, ptr %.val)
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ 2, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @renameWalkWith(ptr noundef %0, ptr nofree readonly captures(address_is_null) %.96.val) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Walker, align 16            ; 5 uses
  %2 = alloca %struct.NameContext, align 8        ; 7 uses
  %.not = icmp eq ptr %.96.val, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !3506   ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.96.val, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.96.val, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3047
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !388
  %i.g = and i32 %i.f, 64
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %sqlite3WithPush.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !651  ; 5 uses
  %i.j = load i32, ptr %.96.val, align 8, !tbaa !5
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 48
  %i.m = add nsw i64 %i.l, 16                     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null            ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.i, i64 noundef %i.m), !inline_history !4204
  br label %sqlite3DbMallocRaw.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.m), !inline_history !4204
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 5 uses
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %sqlite3WithPush.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i.i, i8 0, i64 %i.m, i1 false)
  %i.p = load i32, ptr %.96.val, align 8, !tbaa !5 ; 2 uses
  store i32 %i.p, ptr %.0.i.i.i, align 8, !tbaa !5
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %sqlite3DbStrDup.exit.us.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %sqlite3DbStrDup.exit.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv40.i ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3047
  %i.v = tail call fastcc ptr @sqlite3SelectDup(ptr noundef null, ptr noundef %i.u, i32 noundef 0), !inline_history !4049
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv40.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.v, ptr %i.x, align 8, !tbaa !3047
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3043
  %i.aa = tail call fastcc ptr @sqlite3ExprListDup(ptr noundef null, ptr noundef %i.z, i32 noundef 0), !inline_history !4049
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !3043
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !3049 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %sqlite3DbStrDup.exit.us.i, label %sqlite3DbMallocRaw.exit.i34.us.i

sqlite3DbMallocRaw.exit.i34.us.i:                 ; preds = %.lr.ph.split.us.i
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ac) #60, !inline_history !4049
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  %i.ag = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.af), !inline_history !4204 ; 3 uses
  %.not.i36.us.i = icmp eq ptr %i.ag, null
  br i1 %.not.i36.us.i, label %sqlite3DbStrDup.exit.us.i, label %bb.g

bb.g:                                             ; preds = %sqlite3DbMallocRaw.exit.i34.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ac, i64 %i.af, i1 false)
  br label %sqlite3DbStrDup.exit.us.i

sqlite3DbStrDup.exit.us.i:                        ; preds = %bb.g, %sqlite3DbMallocRaw.exit.i34.us.i, %.lr.ph.split.us.i
  %.0.i.us.i = phi ptr [ null, %.lr.ph.split.us.i ], [ %i.ag, %bb.g ], [ null, %sqlite3DbMallocRaw.exit.i34.us.i ]
  store ptr %.0.i.us.i, ptr %i.w, align 8, !tbaa !3049
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !3954
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !3954
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.ak = load i32, ptr %.96.val, align 8, !tbaa !5
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next41.i, %i.al
  br i1 %i.am, label %.lr.ph.split.us.i, label %.loopexit, !llvm.loop !4050

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %sqlite3DbStrDup.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3DbStrDup.exit.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv.i ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !3047
  %i.aq = tail call fastcc ptr @sqlite3SelectDup(ptr noundef nonnull %i.i, ptr noundef %i.ap, i32 noundef 0), !inline_history !4049
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv.i ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !3047
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3043
  %i.av = tail call fastcc ptr @sqlite3ExprListDup(ptr noundef nonnull %i.i, ptr noundef %i.au, i32 noundef 0), !inline_history !4049
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !3043
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !3049 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %sqlite3DbStrDup.exit.i, label %sqlite3DbMallocRaw.exit.i34.i

sqlite3DbMallocRaw.exit.i34.i:                    ; preds = %.lr.ph.split.i
  %i.az = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ax) #60, !inline_history !4049
  %i.ba = add i64 %i.az, 1                        ; 2 uses
  %i.bb = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.i, i64 noundef %i.ba), !inline_history !4204 ; 3 uses
  %.not.i36.i = icmp eq ptr %i.bb, null
  br i1 %.not.i36.i, label %sqlite3DbStrDup.exit.i, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i34.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.ax, i64 %i.ba, i1 false)
  br label %sqlite3DbStrDup.exit.i

sqlite3DbStrDup.exit.i:                           ; preds = %bb.h, %sqlite3DbMallocRaw.exit.i34.i, %.lr.ph.split.i
  %.0.i.i = phi ptr [ null, %.lr.ph.split.i ], [ %i.bb, %bb.h ], [ null, %sqlite3DbMallocRaw.exit.i34.i ]
  store ptr %.0.i.i, ptr %i.ar, align 8, !tbaa !3049
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !3954
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i8 %i.bd, ptr %i.be, align 8, !tbaa !3954
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = load i32, ptr %.96.val, align 8, !tbaa !5
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next.i, %i.bg
  br i1 %i.bh, label %.lr.ph.split.i, label %.loopexit, !llvm.loop !4050

.loopexit:                                        ; preds = %sqlite3DbStrDup.exit.i, %sqlite3DbStrDup.exit.us.i, %bb.f
  %i.bi = tail call fastcc ptr @sqlite3ParserAddCleanup(ptr noundef nonnull %i.a, ptr noundef nonnull @sqlite3WithDeleteGeneric, ptr noundef nonnull %.0.i.i.i) ; 5 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %sqlite3WithPush.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !313
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %sqlite3WithPush.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !972
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !3953
  store ptr %i.bi, ptr %i.bn, align 8, !tbaa !972
  br label %sqlite3WithPush.exit

sqlite3WithPush.exit:                             ; preds = %bb.j, %bb.i, %.loopexit, %sqlite3DbMallocRaw.exit.i.i, %bb.b
  %.029 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ %i.bi, %bb.j ], [ %i.bi, %bb.i ], [ null, %sqlite3DbMallocRaw.exit.i.i ] ; 4 uses
  %i.bq = load i32, ptr %.96.val, align 8, !tbaa !5
  %.not346 = icmp sgt i32 %i.bq, 0
  br i1 %.not346, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3WithPush.exit
  %.not32 = icmp eq ptr %.029, null
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = insertelement <2 x ptr> <ptr poison, ptr @renameUnmapExprCb>, ptr %i.a, i64 0
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %sqlite3RenameExprlistUnmap.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3RenameExprlistUnmap.exit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !3047 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i8 0, i64 48, i1 false)
  store ptr %i.a, ptr %2, align 8, !tbaa !3555
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @sqlite3SelectPrep(ptr noundef %i.a, ptr noundef %i.bw, ptr noundef nonnull %2)
  %.pre = load ptr, ptr %2, align 8, !tbaa !3555
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi ptr [ %.pre, %bb.l ], [ %i.a, %bb.k ]
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !651
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 103
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !550
  %.not33 = icmp eq i8 %i.ca, 0
  br i1 %.not33, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cb = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %0, ptr noundef %i.bw) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !3043 ; 4 uses
  %.not.i36 = icmp eq ptr %i.cd, null
  br i1 %.not.i36, label %sqlite3RenameExprlistUnmap.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  store <2 x ptr> %3, ptr %1, align 16, !tbaa !450
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !5  ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader.i.i, label %._crit_edge.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.backedge.i, %.lr.ph.preheader.i.i
  %.014.i.i = phi ptr [ %i.cg, %.lr.ph.preheader.i.i ], [ %.014.i.be.i, %.lr.ph.i.backedge.i ] ; 2 uses
  %.0813.i.i = phi i32 [ %i.ce, %.lr.ph.preheader.i.i ], [ %.0813.i.be.i, %.lr.ph.i.backedge.i ] ; 3 uses
  %i.ch = load ptr, ptr %.014.i.i, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i37, label %sqlite3WalkExpr.exit.thread.i.i, label %sqlite3WalkExpr.exit.i.i

sqlite3WalkExpr.exit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ci = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %1, ptr noundef nonnull %i.ch) #62, !inline_history !3622
  %.not11.i.i = icmp eq i32 %i.ci, 0
  %i.cj = icmp sgt i32 %.0813.i.i, 1
  %or.cond.i = select i1 %.not11.i.i, i1 %i.cj, i1 false
  br i1 %or.cond.i, label %.lr.ph.i.backedge.i, label %sqlite3WalkExprList.exit.i

sqlite3WalkExpr.exit.thread.i.i:                  ; preds = %.lr.ph.i.i
  %.old14.i = icmp sgt i32 %.0813.i.i, 1
  br i1 %.old14.i, label %.lr.ph.i.backedge.i, label %sqlite3WalkExprList.exit.i

.lr.ph.i.backedge.i:                              ; preds = %sqlite3WalkExpr.exit.thread.i.i, %sqlite3WalkExpr.exit.i.i
  %.0813.i.be.i = add nsw i32 %.0813.i.i, -1
  %.014.i.be.i = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  br label %.lr.ph.i.i, !llvm.loop !3623

sqlite3WalkExprList.exit.i:                       ; preds = %sqlite3WalkExpr.exit.thread.i.i, %sqlite3WalkExpr.exit.i.i
  %.pre.i = load i32, ptr %i.cd, align 8, !tbaa !5 ; 2 uses
  %i.ck = icmp sgt i32 %.pre.i, 0
  br i1 %i.ck, label %.lr.ph.i38, label %._crit_edge.i

.lr.ph.i38:                                       ; preds = %sqlite3WalkExprList.exit.i
  %wide.trip.count.i = zext nneg i32 %.pre.i to i64
  br label %bb.p

bb.p:                                             ; preds = %sqlite3RenameTokenRemap.exit.i, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i38 ], [ %indvars.iv.next.i40, %sqlite3RenameTokenRemap.exit.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %indvars.iv.i39 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 17
  %i.cn = load i16, ptr %i.cm, align 1
  %i.co = and i16 %i.cn, 3
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.q, label %sqlite3RenameTokenRemap.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !3485
  %.08.i.i = load ptr, ptr %i.bs, align 8, !tbaa !3499 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %sqlite3RenameTokenRemap.exit.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %bb.q, %bb.s
  %.010.i.i = phi ptr [ %.0.i.i41, %bb.s ], [ %.08.i.i, %bb.q ] ; 3 uses
  %i.cs = load ptr, ptr %.010.i.i, align 8, !tbaa !3500
  %i.ct = icmp eq ptr %i.cs, %i.cr
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i11.i
  store ptr null, ptr %.010.i.i, align 8, !tbaa !3500
  br label %sqlite3RenameTokenRemap.exit.i

bb.s:                                             ; preds = %.lr.ph.i11.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %.0.i.i41 = load ptr, ptr %i.cu, align 8, !tbaa !3499 ; 2 uses
  %.not.i12.i = icmp eq ptr %.0.i.i41, null
  br i1 %.not.i12.i, label %sqlite3RenameTokenRemap.exit.i, label %.lr.ph.i11.i, !llvm.loop !3502

sqlite3RenameTokenRemap.exit.i:                   ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i40, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.p, !llvm.loop !3624

._crit_edge.i:                                    ; preds = %sqlite3RenameTokenRemap.exit.i, %sqlite3WalkExprList.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  br label %sqlite3RenameExprlistUnmap.exit

sqlite3RenameExprlistUnmap.exit:                  ; preds = %bb.n, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %.96.val, align 8, !tbaa !5
  %i.cw = sext i32 %i.cv to i64
  %.not34 = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %.not34, label %bb.k, label %._crit_edge, !llvm.loop !4205

._crit_edge:                                      ; preds = %sqlite3RenameExprlistUnmap.exit, %sqlite3WithPush.exit
  %.not31 = icmp eq ptr %.029, null
  br i1 %.not31, label %bb.v, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !972
  %i.cz = icmp eq ptr %i.cy, %.029
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !3953
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !972
  br label %bb.v

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.u, %bb.t, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3HasExplicitNulls(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !5      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !3587

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 32
  %.not15 = icmp eq i16 %i.f, 0
  br i1 %.not15, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !3498  ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  %i.j = icmp eq i8 %i.h, 3
  %i.k = or i1 %i.i, %i.j
  %i.l = select i1 %i.k, ptr @.str.815, ptr @.str.816
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.814, ptr noundef nonnull %i.l)
  br label %.thread

.thread:                                          ; preds = %bb.b, %.preheader, %bb.a, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SrcListLookup(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 1
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !651
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227  ; 2 uses
  %.not.i23 = icmp eq ptr %i.g, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 2 uses
  br i1 %.not.i23, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = icmp eq ptr %i.j, %i.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.k, label %sqlite3SchemaToIndex.exit, label %.preheader.i

sqlite3SchemaToIndex.exit:                        ; preds = %.preheader.i, %bb.b
  %.1.i = phi i64 [ -32768, %bb.b ], [ %indvars.iv.i, %.preheader.i ]
  %i.l = getelementptr inbounds [32 x i8], ptr %.pre, i64 %.1.i
  br label %sqlite3LocateTableItem.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %sqlite3LocateTableItem.exit

sqlite3LocateTableItem.exit:                      ; preds = %sqlite3SchemaToIndex.exit, %bb.c
  %.0.in.i = phi ptr [ %i.l, %sqlite3SchemaToIndex.exit ], [ %i.m, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !227
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !384
  %i.o = tail call fastcc ptr @sqlite3LocateTable(ptr noundef %0, i32 noundef 0, ptr noundef %i.n, ptr noundef %.0.i), !inline_history !3619 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3016 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %sqlite3DeleteTable.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3LocateTableItem.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !651    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 792
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 44 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !118
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !118
  %.not5.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i, label %bb.f, label %sqlite3DeleteTable.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @deleteTable(ptr noundef nonnull %i.r, ptr noundef nonnull %i.q), !inline_history !124
  br label %sqlite3DeleteTable.exit

sqlite3DeleteTable.exit:                          ; preds = %bb.f, %bb.e, %sqlite3LocateTableItem.exit
  store ptr %i.o, ptr %i.p, align 8, !tbaa !3016
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 3 uses
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = or i16 %i.z, 1024
  store i16 %i.aa, ptr %i.y, align 1
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %bb.n, label %bb.g

bb.g:                                             ; preds = %sqlite3DeleteTable.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !118
  %i.ae = load i16, ptr %i.y, align 1
  %i.af = and i16 %i.ae, 2
  %.not18 = icmp eq i16 %i.af, 0
  br i1 %.not18, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !227 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.019.i = load ptr, ptr %i.ai, align 8, !tbaa !935 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, null
  br i1 %.not20.i, label %sqlite3IndexedByLookup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %sqlite3StrICmp.exit.i
  %.021.i = phi ptr [ %.0.i21, %sqlite3StrICmp.exit.i ], [ %.019.i, %bb.h ] ; 3 uses
  %i.aj = load ptr, ptr %.021.i, align 8, !tbaa !3457
end_hunk_0
begin_hunk_1_@sqlite3WindowCodeInit:bb.a
bb.ag:                                            ; preds = %bb.af, %bb.ae, %sqlite3KeyInfoFromExprList.exit
  %i.hp = phi i32 [ %.pre, %bb.af ], [ %i.ha, %bb.ae ], [ %i.ha, %sqlite3KeyInfoFromExprList.exit ] ; 2 uses
  %i.hq = load i32, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  %i.hr = load i32, ptr %i.s, align 4, !tbaa !943
  %.not.i.i116 = icmp sgt i32 %i.hr, %i.hq
  br i1 %.not.i.i116, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hs = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 119, i32 noundef %i.hp, i32 noundef 2, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit118

bb.ai:                                            ; preds = %bb.ag
  %i.ht = add nsw i32 %i.hq, 1
  store i32 %i.ht, ptr %i.q, align 8, !tbaa !185
  %i.hu = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.hv = sext i32 %i.hq to i64
  %i.hw = getelementptr inbounds [24 x i8], ptr %i.hu, i64 %i.hv ; 7 uses
  store i8 119, ptr %i.hw, align 8, !tbaa !563
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  store i16 0, ptr %i.hx, align 2, !tbaa !587
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %i.hp, ptr %i.hy, align 4, !tbaa !584
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 2, ptr %i.hz, align 8, !tbaa !585
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ia, align 4, !tbaa !586
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store ptr null, ptr %i.ib, align 8, !tbaa !227
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store i8 0, ptr %i.ic, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit118

sqlite3VdbeAddOp2.exit118:                        ; preds = %bb.ah, %bb.ai
  %i.id = load ptr, ptr %.0.i, align 8, !tbaa !146 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 103
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !550
  %.not.i119 = icmp eq i8 %i.if, 0
  br i1 %.not.i119, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %sqlite3VdbeAddOp2.exit118
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 792
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !98
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.ak, label %sqlite3VdbeAppendP4.exit

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef %i.gj)
  br label %sqlite3VdbeAppendP4.exit

bb.al:                                            ; preds = %sqlite3VdbeAddOp2.exit118
  %i.ij = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.ik = load i32, ptr %i.q, align 8, !tbaa !185
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [24 x i8], ptr %i.ij, i64 %i.il ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -23
  store i8 -8, ptr %i.in, align 1, !tbaa !566
  %i.io = getelementptr i8, ptr %i.im, i64 -8
  store ptr %i.gj, ptr %i.io, align 8, !tbaa !227
  br label %sqlite3VdbeAppendP4.exit

sqlite3VdbeAppendP4.exit:                         ; preds = %bb.ak, %bb.aj, %bb.al
  %i.ip = load i32, ptr %i.hf, align 8, !tbaa !4258
  %i.iq = add nsw i32 %i.ip, 1                    ; 2 uses
  %i.ir = load i32, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  %i.is = load i32, ptr %i.s, align 4, !tbaa !943
  %.not.i.i120 = icmp sgt i32 %i.is, %i.ir
  br i1 %.not.i.i120, label %bb.an, label %bb.am

bb.am:                                            ; preds = %sqlite3VdbeAppendP4.exit
  %i.it = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 72, i32 noundef 0, i32 noundef %i.iq, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit122

bb.an:                                            ; preds = %sqlite3VdbeAppendP4.exit
  %i.iu = add nsw i32 %i.ir, 1
  store i32 %i.iu, ptr %i.q, align 8, !tbaa !185
  %i.iv = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.iw = sext i32 %i.ir to i64
  %i.ix = getelementptr inbounds [24 x i8], ptr %i.iv, i64 %i.iw ; 7 uses
  store i8 72, ptr %i.ix, align 8, !tbaa !563
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  store i16 0, ptr %i.iy, align 2, !tbaa !587
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 0, ptr %i.iz, align 4, !tbaa !584
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i32 %i.iq, ptr %i.ja, align 8, !tbaa !585
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !586
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr null, ptr %i.jc, align 8, !tbaa !227
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  store i8 0, ptr %i.jd, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit122

bb.ao:                                            ; preds = %bb.aa, %bb.z
  %i.je = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !223 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, @nth_valueName
  %i.jh = icmp eq ptr %i.jf, @first_valueName
  %or.cond = or i1 %i.jg, %i.jh
  br i1 %or.cond, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ji = load i32, ptr %i.cy, align 4, !tbaa !950 ; 2 uses
  %i.jj = add nsw i32 %i.ji, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.02, i64 104
  store i32 %i.jj, ptr %i.jk, align 8, !tbaa !4258
  %i.jl = load i32, ptr %i.ds, align 8, !tbaa !951 ; 4 uses
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.ds, align 8, !tbaa !951
  %i.jn = getelementptr inbounds nuw i8, ptr %.02, i64 100
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !4257
  %i.jo = add nsw i32 %i.ji, 2
  store i32 %i.jo, ptr %i.cy, align 4, !tbaa !950
  %i.jp = load i32, ptr %i.o, align 8, !tbaa !3630 ; 2 uses
  %i.jq = load i32, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  %i.jr = load i32, ptr %i.s, align 4, !tbaa !943
  %.not.i.i123 = icmp sgt i32 %i.jr, %i.jq
  br i1 %.not.i.i123, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.js = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 116, i32 noundef %i.jl, i32 noundef %i.jp, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit122

bb.ar:                                            ; preds = %bb.ap
  %i.jt = add nsw i32 %i.jq, 1
  store i32 %i.jt, ptr %i.q, align 8, !tbaa !185
  %i.ju = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.jv = sext i32 %i.jq to i64
  %i.jw = getelementptr inbounds [24 x i8], ptr %i.ju, i64 %i.jv ; 7 uses
  store i8 116, ptr %i.jw, align 8, !tbaa !563
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store i16 0, ptr %i.jx, align 2, !tbaa !587
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 %i.jl, ptr %i.jy, align 4, !tbaa !584
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 %i.jp, ptr %i.jz, align 8, !tbaa !585
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store i32 0, ptr %i.ka, align 4, !tbaa !586
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store ptr null, ptr %i.kb, align 8, !tbaa !227
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 0, ptr %i.kc, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit122

bb.as:                                            ; preds = %bb.ao
  %i.kd = icmp eq ptr %i.jf, @leadName
  %i.ke = icmp eq ptr %i.jf, @lagName
  %or.cond90 = or i1 %i.kd, %i.ke
  br i1 %or.cond90, label %bb.at, label %sqlite3VdbeAddOp2.exit122

bb.at:                                            ; preds = %bb.as
  %i.kf = load i32, ptr %i.ds, align 8, !tbaa !951 ; 4 uses
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ds, align 8, !tbaa !951
  %i.kh = getelementptr inbounds nuw i8, ptr %.02, i64 100
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !4257
  %i.ki = load i32, ptr %i.o, align 8, !tbaa !3630 ; 2 uses
  %i.kj = load i32, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  %i.kk = load i32, ptr %i.s, align 4, !tbaa !943
  %.not.i.i126 = icmp sgt i32 %i.kk, %i.kj
  br i1 %.not.i.i126, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kl = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 116, i32 noundef %i.kf, i32 noundef %i.ki, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit122

bb.av:                                            ; preds = %bb.at
  %i.km = add nsw i32 %i.kj, 1
  store i32 %i.km, ptr %i.q, align 8, !tbaa !185
  %i.kn = load ptr, ptr %i.dt, align 8, !tbaa !184
  %i.ko = sext i32 %i.kj to i64
  %i.kp = getelementptr inbounds [24 x i8], ptr %i.kn, i64 %i.ko ; 7 uses
  store i8 116, ptr %i.kp, align 8, !tbaa !563
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  store i16 0, ptr %i.kq, align 2, !tbaa !587
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store i32 %i.kf, ptr %i.kr, align 4, !tbaa !584
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 %i.ki, ptr %i.ks, align 8, !tbaa !585
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store i32 0, ptr %i.kt, align 4, !tbaa !586
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store ptr null, ptr %i.ku, align 8, !tbaa !227
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  store i8 0, ptr %i.kv, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit122

sqlite3VdbeAddOp2.exit122:                        ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.as
  %i.kw = getelementptr inbounds nuw i8, ptr %.02, i64 64
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !3025 ; 2 uses
  %.not86 = icmp eq ptr %i.kx, null
  br i1 %.not86, label %sqlite3VdbeAddOp2.exit113, label %bb.z, !llvm.loop !4259

sqlite3VdbeAddOp2.exit113:                        ; preds = %sqlite3VdbeAddOp2.exit122, %bb.y, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3WhereBegin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i16 noundef zeroext range(i16 0, 16896) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.WhereScan, align 16         ; 20 uses
  %9 = alloca %struct.Walker, align 8             ; 7 uses
  %10 = alloca %struct.WhereLoopBuilder, align 8  ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #59
  %i.c = load ptr, ptr %0, align 8, !tbaa !651    ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 8, !tbaa !5
  %i.f = icmp sgt i32 %i.e, 63
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = and i16 %6, 24319
  %i.h = or disjoint i16 %i.g, 8192
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0364 = phi i16 [ %i.h, %bb.c ], [ %6, %bb.b ], [ %6, %bb.a ] ; 7 uses
  %.0363 = phi ptr [ null, %bb.c ], [ %3, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !5      ; 2 uses
  %i.j = icmp sgt i32 %i.i, 64
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.875, i32 noundef 64)
  br label %sqlite3DbFree.exit.thread554

bb.f:                                             ; preds = %bb.d
  %i.k = zext nneg i16 %.0364 to i32              ; 3 uses
  %i.l = and i32 %i.k, 32
  %.not396 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not396, i32 %i.i, i32 1 ; 6 uses
  %i.m = sext i32 %spec.select to i64             ; 2 uses
  %i.n = mul i64 %i.m, 515396075520
  %sext = add i64 %i.n, 3676492005376
  %i.o = ashr exact i64 %sext, 32                 ; 2 uses
  %i.p = add nsw i64 %i.o, 104
  %i.q = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.p) ; 67 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 103 ; 6 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !550
  %.not397 = icmp eq i8 %i.s, 0
  br i1 %.not397, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %sqlite3DbFree.exit.thread554, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.v = icmp ult ptr %i.q, %i.u
  br i1 %i.v, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !174
  %.not22.i = icmp ult ptr %i.q, %i.x
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 488 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  store ptr %i.z, ptr %i.q, align 8, !tbaa !49
  store ptr %i.q, ptr %i.y, align 8, !tbaa !55
  br label %sqlite3DbFree.exit.thread554

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !99
  %.not23.i705 = icmp ult ptr %i.q, %i.ab
  br i1 %.not23.i705, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 472 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !49
  store ptr %i.q, ptr %i.ac, align 8, !tbaa !53
  br label %sqlite3DbFree.exit.thread554

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 792
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.af, null
  br i1 %.not24.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %i.c, ptr noundef nonnull %i.q)
  br label %sqlite3DbFree.exit.thread554

bb.o:                                             ; preds = %bb.m
  %i.ag = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i703 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i703, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i704 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i704, label %sqlite3_mutex_enter.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ai(ptr noundef nonnull %i.ah) #59, !inline_history !546
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.q, %bb.p
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ak = tail call i32 %i.aj(ptr noundef nonnull %i.q) #59, !inline_history !547
  %i.al = sext i32 %i.ak to i64
  %i.am = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.an = sub nsw i64 %i.am, %i.al
  store i64 %i.an, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ap = add nsw i64 %i.ao, -1
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.aq(ptr noundef nonnull %i.q) #59, !inline_history !548
  %i.ar = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i4.i.i, label %sqlite3DbFree.exit.thread554, label %bb.r

bb.r:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.as(ptr noundef nonnull %i.ar) #59, !inline_history !549
  br label %sqlite3DbFree.exit.thread554

bb.s:                                             ; preds = %bb.o
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.at(ptr noundef nonnull %i.q) #59, !inline_history !548
  br label %sqlite3DbFree.exit.thread554

bb.t:                                             ; preds = %bb.f
  %i.au = mul nsw i64 %i.m, 120
  store ptr %0, ptr %i.q, align 8, !tbaa !820
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %1, ptr %i.av, align 8, !tbaa !4154
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  store ptr %.0363, ptr %i.aw, align 8, !tbaa !3625
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %4, ptr %i.ax, align 8, !tbaa !3625
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 44 ; 2 uses
  store i32 -1, ptr %i.az, align 4, !tbaa !5
  store i32 -1, ptr %i.ay, align 8, !tbaa !5
  %i.ba = trunc i32 %spec.select to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !227
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3295
  %i.be = add nsw i32 %i.bd, -1                   ; 3 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !3295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 3 uses
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 60 ; 7 uses
  store i16 %.0364, ptr %i.bh, align 4, !tbaa !330
  %i.bi = trunc i32 %7 to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 62
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !330
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !1092
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %5, ptr %i.bo, align 8, !tbaa !3957
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 65 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.bp, i8 0, i64 39, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 856 ; 4 uses
  %i.br = add nsw i64 %i.au, 104
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bq, i8 0, i64 %i.br, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 596 ; 3 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !4260
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 600 ; 2 uses
  store i32 -99, ptr %i.bt, align 8, !tbaa !5
  store ptr %i.q, ptr %10, align 8, !tbaa !4262
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !4265
  %i.bw = getelementptr inbounds i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !4266
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !4267
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  store i16 0, ptr %i.ca, align 4, !tbaa !4270
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i16 3, ptr %i.cb, align 8, !tbaa !4271
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 0, ptr %i.cc, align 8, !tbaa !4272
  store ptr %i.q, ptr %i.bu, align 8, !tbaa !4273
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 121
  store i8 0, ptr %i.cd, align 1, !tbaa !4274
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 112
end_hunk_1
begin_hunk_2_@sqlite3WhereBegin:bb.a
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next67.i, %i.gq
  br i1 %i.gr, label %.preheader.i, label %sqlite3WhereTabFuncArgs.exit, !llvm.loop !4279

sqlite3WhereTabFuncArgs.exit:                     ; preds = %bb.ag, %sqlite3PExpr.exit.i, %bb.ac, %bb.ad, %.preheader51.i, %.critedge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gs = load i32, ptr %1, align 8, !tbaa !5
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next, %i.gt
  br i1 %i.gu, label %bb.ac, label %.loopexit, !llvm.loop !4280

.loopexit:                                        ; preds = %sqlite3WhereTabFuncArgs.exit, %bb.z, %bb.aa, %bb.ab
  %i.gv = load i32, ptr %i.cf, align 4, !tbaa !1150 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph, label %sqlite3WhereExprAnalyze.exit

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.0.in.i571 = phi i32 [ %.0.i, %.lr.ph ], [ %i.gv, %.loopexit ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i571, -1             ; 2 uses
  tail call fastcc void @exprAnalyze(ptr noundef nonnull %1, ptr noundef nonnull %i.bu, i32 noundef %.0.i), !inline_history !4281
  %i.gx = icmp samesign ugt i32 %.0.in.i571, 1
  br i1 %i.gx, label %.lr.ph, label %sqlite3WhereExprAnalyze.exit, !llvm.loop !4282

sqlite3WhereExprAnalyze.exit:                     ; preds = %.lr.ph, %.loopexit
  %.not401 = icmp eq ptr %5, null
  br i1 %.not401, label %bb.au, label %bb.as

bb.as:                                            ; preds = %sqlite3WhereExprAnalyze.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !3041
  %.not402 = icmp eq ptr %i.gz, null
  br i1 %.not402, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @sqlite3WhereAddLimit(ptr noundef nonnull %i.bu, ptr noundef %5)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %sqlite3WhereExprAnalyze.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !313
  %.not403 = icmp eq i32 %i.hb, 0
  br i1 %.not403, label %.preheader557, label %sqlite3DbFree.exit.thread

.preheader557:                                    ; preds = %bb.au
  %i.hc = load i32, ptr %i.cg, align 4, !tbaa !4276
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph573, label %._crit_edge

.lr.ph573:                                        ; preds = %.preheader557
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph573, %bb.bc
  %indvars.iv611 = phi i64 [ 0, %.lr.ph573 ], [ %indvars.iv.next612, %bb.bc ] ; 2 uses
  %i.hh = phi ptr [ %i.bu, %.lr.ph573 ], [ %i.ib, %bb.bc ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !1154
  %i.hk = getelementptr inbounds nuw [56 x i8], ptr %i.hj, i64 %indvars.iv611 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 18 ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !4283
  %i.hn = and i16 %i.hm, 2
  %.not448 = icmp eq i16 %i.hn, 0
  br i1 %.not448, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !1155 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !4284
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ck, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  store i16 1, ptr %i.he, align 4, !tbaa !3504
  store <2 x ptr> <ptr @exprNodeIsDeterministic, ptr @sqlite3SelectWalkFail>, ptr %i.hf, align 8, !tbaa !450
  %.not.i.i474 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i474, label %exprIsDeterministic.exit.thread, label %exprIsDeterministic.exit

exprIsDeterministic.exit.thread:                  ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #59
  br label %bb.az

exprIsDeterministic.exit:                         ; preds = %bb.ay
  %i.hs = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %9, ptr noundef nonnull %i.ho) #62, !inline_history !3509 ; 0 uses
  %.pre.i = load i16, ptr %i.he, align 4, !tbaa !3504
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #59
  %.not449 = icmp eq i16 %.pre.i, 0
  br i1 %.not449, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %exprIsDeterministic.exit.thread, %exprIsDeterministic.exit, %bb.ax
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !367
  %i.hv = and i32 %i.hu, 2
  %.not450 = icmp eq i32 %i.hv, 0
  br i1 %.not450, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hw = load i8, ptr %i.hg, align 8, !tbaa !3497
  %i.hx = and i8 %i.hw, 64
  %.not451 = icmp eq i8 %i.hx, 0
  br i1 %.not451, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hy = load i32, ptr %i.bg, align 4, !tbaa !5
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef nonnull %i.ho, i32 noundef %i.hy, i32 noundef 16)
  %i.hz = load i16, ptr %i.hl, align 2, !tbaa !4283
  %i.ia = or i16 %i.hz, 4
  store i16 %i.ia, ptr %i.hl, align 2, !tbaa !4283
  br label %bb.bc

bb.bc:                                            ; preds = %bb.aw, %exprIsDeterministic.exit, %bb.ba, %bb.bb, %bb.av
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %i.ib = load ptr, ptr %i.bv, align 8, !tbaa !4265 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4276
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next612, %i.ie
  br i1 %i.if, label %bb.av, label %._crit_edge, !llvm.loop !4285

._crit_edge:                                      ; preds = %bb.bc, %.preheader557
  %i.ig = and i32 %i.k, 256
  %.not404 = icmp eq i32 %i.ig, 0
  br i1 %.not404, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !1328
  %i.ij = and i32 %i.ii, 16
  %.not405 = icmp eq i32 %i.ij, 0
  br i1 %.not405, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = and i16 %.0364, 32511
  %i.il = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.im = and i16 %i.il, -257
  store i16 %i.im, ptr %i.bh, align 4, !tbaa !330
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.in = call fastcc i32 @isDistinctRedundant(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bu, ptr noundef %4)
  %.not406 = icmp eq i32 %i.in, 0
  br i1 %.not406, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  store i8 1, ptr %i.io, align 1, !tbaa !227
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.ip = icmp eq ptr %.0363, null
  br i1 %i.ip, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.iq = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.ir = or i16 %i.iq, 128
  store i16 %i.ir, ptr %i.bh, align 4, !tbaa !330
  store ptr %4, ptr %i.aw, align 8, !tbaa !3625
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bh, %bb.bi, %bb.bg, %._crit_edge
  %.1 = phi i16 [ %i.ik, %bb.be ], [ %.0364, %bb.bg ], [ %.0364, %bb.bi ], [ %.0364, %bb.bh ], [ %.0364, %._crit_edge ] ; 4 uses
  %.not407 = icmp eq i32 %spec.select, 1
  %.pre622 = load ptr, ptr %10, align 8, !tbaa !4262 ; 13 uses
  %.pre624 = load ptr, ptr %i.bx, align 8         ; 17 uses
  br i1 %.not407, label %bb.bk, label %bb.ck

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  %i.is = getelementptr inbounds nuw i8, ptr %.pre622, i64 60 ; 2 uses
  %i.it = load i16, ptr %i.is, align 4, !tbaa !330
  %i.iu = and i16 %i.it, 32
  %.not.i475 = icmp eq i16 %i.iu, 0
  br i1 %.not.i475, label %bb.bl, label %whereShortCut.exit.thread

bb.bl:                                            ; preds = %bb.bk
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre622, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !4154 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !3016 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 63
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !922
  %i.jb = icmp eq i8 %i.ja, 1
  br i1 %i.jb, label %whereShortCut.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 33
  %i.jd = load i16, ptr %i.jc, align 1
  %i.je = and i16 %i.jd, 3
  %or.cond.i = icmp eq i16 %i.je, 0
  br i1 %or.cond.i, label %bb.bn, label %whereShortCut.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3554 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.pre622, i64 104 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre624, i64 48 ; 7 uses
  store i32 0, ptr %i.ji, align 8, !tbaa !4272
  %i.jj = getelementptr inbounds nuw i8, ptr %.pre624, i64 54
  store i16 0, ptr %i.jj, align 2, !tbaa !4286
  store ptr %i.jh, ptr %8, align 16, !tbaa !4287
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !4289
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 0, ptr %i.jl, align 8, !tbaa !4290
  %i.jm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 130, ptr %i.jn, align 4, !tbaa !4291
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 0, ptr %i.jo, align 16, !tbaa !4292
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !5
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 42 ; 2 uses
  store i8 1, ptr %i.jq, align 2, !tbaa !4293
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 41 ; 3 uses
  store i8 1, ptr %i.jr, align 1, !tbaa !4294
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  store i16 -1, ptr %i.js, align 8, !tbaa !330
  %i.jt = call fastcc ptr @whereScanNext(ptr noundef nonnull %8) ; 2 uses
  %.not8210.i = icmp eq ptr %i.jt, null
  br i1 %.not8210.i, label %.critedge95.i, label %.lr.ph.i477

.lr.ph.i477:                                      ; preds = %bb.bn, %bb.bo
  %.07711.i = phi ptr [ %i.jw, %bb.bo ], [ %i.jt, %bb.bn ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.07711.i, i64 40
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !4295
  %.not83.i = icmp eq i64 %i.jv, 0
  br i1 %.not83.i, label %.critedge.i480, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i477
  %i.jw = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %.not82.i = icmp eq ptr %i.jw, null
  br i1 %.not82.i, label %.critedge95.i, label %.lr.ph.i477, !llvm.loop !4296

.critedge.i480:                                   ; preds = %.lr.ph.i477
  store i32 4353, ptr %i.ji, align 8, !tbaa !4272
  %i.jx = getelementptr inbounds nuw i8, ptr %.pre624, i64 64
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !4267
  store ptr %.07711.i, ptr %i.jy, align 8, !tbaa !4297
  %i.jz = getelementptr inbounds nuw i8, ptr %.pre624, i64 52
  store i16 1, ptr %i.jz, align 4, !tbaa !4270
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre624, i64 24
  store i16 1, ptr %i.ka, align 8, !tbaa !227
  br label %.loopexit3.sink.split.i

.critedge95.i:                                    ; preds = %bb.bo, %bb.bn
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %.07619.i = load ptr, ptr %i.kb, align 8, !tbaa !935 ; 2 uses
  %.not8420.i = icmp eq ptr %.07619.i, null
  br i1 %.not8420.i, label %.loopexit3.i, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.critedge95.i
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %.pre624, i64 64
  %11 = insertelement <2 x ptr> poison, ptr %i.jh, i64 0
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.bp

bb.bp:                                            ; preds = %bb.cd, %.lr.ph22.i
  %.07621.i = phi ptr [ %.07619.i, %.lr.ph22.i ], [ %.076.i, %bb.cd ] ; 12 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.07621.i, i64 98
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !2990
  %.not85.i = icmp eq i8 %i.kf, 0
  br i1 %.not85.i, label %bb.cd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kg = getelementptr inbounds nuw i8, ptr %.07621.i, i64 72
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !2797
  %.not86.i = icmp eq ptr %i.kh, null
  br i1 %.not86.i, label %bb.br, label %bb.cd

bb.br:                                            ; preds = %bb.bq
  %i.ki = getelementptr inbounds nuw i8, ptr %.07621.i, i64 94 ; 3 uses
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !936 ; 2 uses
  %i.kk = icmp ugt i16 %i.kj, 3
  br i1 %i.kk, label %bb.cd, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kl = getelementptr inbounds nuw i8, ptr %.07621.i, i64 99
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = and i16 %i.km, 8
  %.not87.i = icmp eq i16 %i.kn, 0
  %i.ko = select i1 %.not87.i, i32 2, i32 130
  %.not23.i = icmp eq i16 %i.kj, 0
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.bs
  %i.kp = getelementptr inbounds nuw i8, ptr %.07621.i, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.07621.i, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %.07621.i, i64 80
  %i.ks = getelementptr inbounds nuw i8, ptr %.07621.i, i64 64 ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge2.i, %.lr.ph17.i
  %indvars.iv.i478 = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i479, %.critedge2.i ] ; 8 uses
  store <2 x ptr> %12, ptr %8, align 16, !tbaa !1148
  store i8 0, ptr %i.jl, align 8, !tbaa !4290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store i32 %i.ko, ptr %i.jn, align 4, !tbaa !4291
  store i32 0, ptr %i.jo, align 16, !tbaa !4292
  store i32 %i.jg, ptr %i.jp, align 4, !tbaa !5
  store i8 1, ptr %i.jq, align 2, !tbaa !4293
  store i8 1, ptr %i.jr, align 1, !tbaa !4294
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !878
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %indvars.iv.i478
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !330 ; 6 uses
  %i.kw = sext i16 %i.kv to i64
  %i.kx = load ptr, ptr %i.kq, align 8, !tbaa !1098 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 52
  %i.kz = load i16, ptr %i.ky, align 4, !tbaa !891
  %i.la = icmp eq i16 %i.kv, %i.kz
  br i1 %i.la, label %.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lb = icmp sgt i16 %i.kv, -1
  br i1 %i.lb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !882
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.ld, i64 %i.kw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 9
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !905
  store i8 %i.lg, ptr %i.jl, align 8, !tbaa !4290
  %i.lh = load ptr, ptr %i.ks, align 8, !tbaa !2803
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i478
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !251
  store ptr %i.lj, ptr %i.jm, align 16, !tbaa !4298
  br label %.thread.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.lk = icmp eq i16 %i.kv, -2
  br i1 %i.lk, label %bb.bx, label %.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load ptr, ptr %i.kr, align 8, !tbaa !2799
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %indvars.iv.i478
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !902
  store ptr %i.lo, ptr %i.kc, align 8, !tbaa !4299
  %i.lp = load ptr, ptr %i.ks, align 8, !tbaa !2803
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i478
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !251
  store ptr %i.lr, ptr %i.jm, align 16, !tbaa !4298
  store i16 -2, ptr %i.js, align 8, !tbaa !330
  %i.ls = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %8)
  br label %whereScanInit.exit.i

.thread.i.i:                                      ; preds = %bb.bw, %bb.bv, %bb.bt
  %.2.i.i = phi i16 [ %i.kv, %bb.bw ], [ -1, %bb.bt ], [ %i.kv, %bb.bv ]
  store i16 %.2.i.i, ptr %i.js, align 8, !tbaa !330
  %i.lt = call fastcc ptr @whereScanNext(ptr noundef nonnull %8)
  br label %whereScanInit.exit.i

whereScanInit.exit.i:                             ; preds = %.thread.i.i, %bb.bx
  %.1.i.i = phi ptr [ %i.lt, %.thread.i.i ], [ %i.ls, %bb.bx ] ; 2 uses
  %cond12.i = icmp eq ptr %.1.i.i, null
  br i1 %cond12.i, label %.loopexit.loopexit36.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %whereScanInit.exit.i, %bb.by
  %.113.i = phi ptr [ %i.lw, %bb.by ], [ %.1.i.i, %whereScanInit.exit.i ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.113.i, i64 40
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !4295
  %.not89.i = icmp eq i64 %i.lv, 0
  br i1 %.not89.i, label %.critedge2.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph14.i
  %i.lw = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %cond.i = icmp eq ptr %i.lw, null
  br i1 %cond.i, label %.loopexit.loopexit.i, label %.lr.ph14.i, !llvm.loop !4300

.critedge2.i:                                     ; preds = %.lr.ph14.i
  %i.lx = load ptr, ptr %i.kd, align 8, !tbaa !4267
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.i478
  store ptr %.113.i, ptr %i.ly, align 8, !tbaa !4297
  %indvars.iv.next.i479 = add nuw nsw i64 %indvars.iv.i478, 1 ; 3 uses
  %i.lz = load i16, ptr %i.ki, align 2, !tbaa !936
  %i.ma = zext i16 %i.lz to i64
  %i.mb = icmp samesign ult i64 %indvars.iv.next.i479, %i.ma
  br i1 %i.mb, label %bb.bt, label %.loopexit.loopexit36.i, !llvm.loop !4301

.loopexit.loopexit.i:                             ; preds = %bb.by
  %i.mc = trunc nuw nsw i64 %indvars.iv.i478 to i32
  br label %.loopexit.i

.loopexit.loopexit36.i:                           ; preds = %.critedge2.i, %whereScanInit.exit.i
  %indvars.iv.next.lcssa.sink.i = phi i64 [ %indvars.iv.i478, %whereScanInit.exit.i ], [ %indvars.iv.next.i479, %.critedge2.i ]
  %indvars.le.i = trunc i64 %indvars.iv.next.lcssa.sink.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit36.i, %.loopexit.loopexit.i, %bb.bs
  %.0786.i = phi i32 [ 0, %bb.bs ], [ %i.mc, %.loopexit.loopexit.i ], [ %indvars.le.i, %.loopexit.loopexit36.i ] ; 2 uses
  %i.md = load i16, ptr %i.ki, align 2, !tbaa !936
  %i.me = zext i16 %i.md to i32
  %.not90.i = icmp eq i32 %.0786.i, %i.me
  br i1 %.not90.i, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %.loopexit.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.07621.i, i64 99
  store i32 4609, ptr %i.ji, align 8, !tbaa !4272
  %i.mg = load i16, ptr %i.mf, align 1
  %i.mh = and i16 %i.mg, 32
  %.not91.i = icmp eq i16 %i.mh, 0
  br i1 %.not91.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !3702
  %i.mk = getelementptr inbounds nuw i8, ptr %.07621.i, i64 104
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !4072
  %i.mm = and i64 %i.ml, %i.mj
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store i32 4673, ptr %i.ji, align 8, !tbaa !4272
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.mo = trunc nuw i32 %.0786.i to i16           ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.pre624, i64 52
  store i16 %i.mo, ptr %i.mp, align 4, !tbaa !4270
  %i.mq = getelementptr inbounds nuw i8, ptr %.pre624, i64 24
  store i16 %i.mo, ptr %i.mq, align 8, !tbaa !227
  %i.mr = getelementptr inbounds nuw i8, ptr %.pre624, i64 32
  store ptr %.07621.i, ptr %i.mr, align 8, !tbaa !227
  br label %.loopexit3.sink.split.i

bb.cd:                                            ; preds = %.loopexit.i, %bb.br, %bb.bq, %bb.bp
  %i.ms = getelementptr inbounds nuw i8, ptr %.07621.i, i64 40
  %.076.i = load ptr, ptr %i.ms, align 8, !tbaa !935 ; 2 uses
  %.not84.i = icmp eq ptr %.076.i, null
  br i1 %.not84.i, label %.loopexit3.i, label %bb.bp, !llvm.loop !4302

.loopexit3.sink.split.i:                          ; preds = %bb.cc, %.critedge.i480
  %.sink.i = phi i16 [ 39, %bb.cc ], [ 33, %.critedge.i480 ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.pre624, i64 20
  store i16 %.sink.i, ptr %i.mt, align 4, !tbaa !4303
  br label %.loopexit3.i

.loopexit3.i:                                     ; preds = %bb.cd, %.loopexit3.sink.split.i, %.critedge95.i
  %i.mu = load i32, ptr %i.ji, align 8, !tbaa !4272
  %.not92.i = icmp eq i32 %i.mu, 0
  br i1 %.not92.i, label %.loopexit3.i.whereShortCut.exit.thread_crit_edge, label %bb.ce

.loopexit3.i.whereShortCut.exit.thread_crit_edge: ; preds = %.loopexit3.i
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !4262
  %.pre623.pre = load ptr, ptr %i.bx, align 8, !tbaa !4266
  br label %whereShortCut.exit.thread

bb.ce:                                            ; preds = %.loopexit3.i
  %i.mv = getelementptr inbounds nuw i8, ptr %.pre624, i64 22
  store i16 1, ptr %i.mv, align 2, !tbaa !4304
  %i.mw = getelementptr inbounds nuw i8, ptr %.pre622, i64 960
  store ptr %.pre624, ptr %i.mw, align 8, !tbaa !4305
  %i.mx = getelementptr inbounds nuw i8, ptr %.pre624, i64 8
  store i64 1, ptr %i.mx, align 8, !tbaa !4306
  %i.my = getelementptr inbounds nuw i8, ptr %.pre622, i64 860
  store i32 %i.jg, ptr %i.my, align 4, !tbaa !4307
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre622, i64 70
  store i16 1, ptr %i.mz, align 2, !tbaa !330
  %i.na = getelementptr inbounds nuw i8, ptr %.pre622, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !3625 ; 2 uses
  %.not93.i = icmp eq ptr %i.nb, null
  br i1 %.not93.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !5
  %i.nd = trunc i32 %i.nc to i8
  %i.ne = getelementptr inbounds nuw i8, ptr %.pre622, i64 65
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !227
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.nf = load i16, ptr %i.is, align 4, !tbaa !330
  %i.ng = and i16 %i.nf, 256
  %.not94.i = icmp eq i16 %i.ng, 0
  br i1 %.not94.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nh = getelementptr inbounds nuw i8, ptr %.pre622, i64 67
  store i8 1, ptr %i.nh, align 1, !tbaa !227
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ni = load i8, ptr %i.jr, align 1, !tbaa !4294
  %i.nj = icmp ugt i8 %i.ni, 1
  br i1 %i.nj, label %bb.cj, label %whereShortCut.exit

bb.cj:                                            ; preds = %bb.ci
  %i.nk = load i32, ptr %i.ji, align 8, !tbaa !4272
  %i.nl = or i32 %i.nk, 2097152
  store i32 %i.nl, ptr %i.ji, align 8, !tbaa !4272
  br label %whereShortCut.exit

whereShortCut.exit.thread:                        ; preds = %.loopexit3.i.whereShortCut.exit.thread_crit_edge, %bb.bk, %bb.bl, %bb.bm
  %.pre623 = phi ptr [ %.pre623.pre, %.loopexit3.i.whereShortCut.exit.thread_crit_edge ], [ %.pre624, %bb.bk ], [ %.pre624, %bb.bl ], [ %.pre624, %bb.bm ]
  %.pre = phi ptr [ %.pre.pre, %.loopexit3.i.whereShortCut.exit.thread_crit_edge ], [ %.pre622, %bb.bk ], [ %.pre622, %bb.bl ], [ %.pre622, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.ck

whereShortCut.exit:                               ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.dk

bb.ck:                                            ; preds = %whereShortCut.exit.thread, %bb.bj
  %i.nm = phi ptr [ %.pre623, %whereShortCut.exit.thread ], [ %.pre624, %bb.bj ] ; 8 uses
  %i.nn = phi ptr [ %.pre, %whereShortCut.exit.thread ], [ %.pre622, %bb.bj ] ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !4154
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !227 ; 2 uses
  %i.nt = zext i8 %i.ns to i64
  %.idx.i = mul nuw nsw i64 %i.nt, 72
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.idx.i ; 3 uses
  %i.nv = load ptr, ptr %i.nn, align 8, !tbaa !820
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !651 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 3 uses
  store i32 20000, ptr %i.nx, align 4, !tbaa !4308
  %.not138.i = icmp eq i8 %i.ns, 0
  br i1 %.not138.i, label %._crit_edge132.i, label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.ck
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 600 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nn, i64 596 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nn, i64 132
  %i.od = getelementptr inbounds nuw i8, ptr %i.nn, i64 136
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 103
  br label %bb.cl

bb.cl:                                            ; preds = %bb.dd, %.lr.ph131.i
  %.068129.i = phi i64 [ 0, %.lr.ph131.i ], [ %.3.i, %bb.dd ] ; 5 uses
  %.072128.i = phi i64 [ 0, %.lr.ph131.i ], [ %.ph.i, %bb.dd ] ; 3 uses
  %.073127.i = phi i32 [ 0, %.lr.ph131.i ], [ %.275.i, %bb.dd ] ; 5 uses
  %.076126.i = phi i32 [ 0, %.lr.ph131.i ], [ %.177.i, %bb.dd ]
  %.082125.i = phi i8 [ 0, %.lr.ph131.i ], [ %i.rh, %bb.dd ] ; 2 uses
  %.083123.i = phi ptr [ %i.nq, %.lr.ph131.i ], [ %i.ri, %bb.dd ] ; 7 uses
  store i8 %.082125.i, ptr %i.ny, align 8, !tbaa !4309
  %i.of = load i32, ptr %i.nx, align 4, !tbaa !4308
  %i.og = add i32 %i.of, 1000
  store i32 %i.og, ptr %i.nx, align 4, !tbaa !4308
end_hunk_2
begin_hunk_3_@exprNodePatternLengthEst:bb.a
bb.f:                                             ; preds = %.lr.ph
  %i.o = zext i8 %.in to i32                      ; 2 uses
  %.not27 = icmp ne i32 %., %i.o
  %.not28 = icmp ne i32 %.32, %i.o
  %or.cond.not = and i1 %.not27, %.not28
  %i.p = zext i1 %or.cond.not to i32
  %spec.select34 = add nsw i32 %.02137, %i.p
  %.pre = load i8, ptr %i.h, align 1, !tbaa !227
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.d, %bb.f
  %i.q = phi i8 [ %.pre, %bb.f ], [ %i.m, %bb.d ], [ %i.m, %bb.d ] ; 2 uses
  %.3 = phi ptr [ %i.h, %bb.f ], [ %.2, %bb.d ], [ %.2, %bb.d ]
  %.1 = phi i32 [ %spec.select34, %bb.f ], [ %.02137, %bb.d ], [ %.02137, %bb.d ] ; 2 uses
  %.not26 = icmp eq i8 %i.q, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !4669

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %.021.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %.critedge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !227
  %i.t = icmp sgt i32 %.021.lcssa, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  store i32 %.021.lcssa, ptr %i.r, align 8, !tbaa !227
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @whereIsCoveringIndexWalkCallback(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4658 ; 6 uses
  %i.d = load i8, ptr %1, align 8, !tbaa !3021
  switch i8 %i.d, label %bb.f [
    i8 -88, label %bb.b
    i8 -86, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3581
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4660
  %.not24 = icmp eq i32 %i.f, %i.h
  br i1 %.not24, label %bb.c, label %exprIsCoveredByIndex.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !878
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.l = load i16, ptr %i.k, align 8, !tbaa !875  ; 2 uses
  %.not29 = icmp eq i16 %i.l, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i16, ptr %i.m, align 8, !tbaa !3487
  %wide.trip.count = zext i16 %i.l to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !4670

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !330
  %i.q = icmp eq i16 %i.p, %i.n
  br i1 %i.q, label %exprIsCoveredByIndex.exit.thread, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 1, ptr %i.r, align 1, !tbaa !4662
  br label %exprIsCoveredByIndex.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 99
  %i.t = load i16, ptr %i.s, align 1
  %i.u = and i16 %i.t, 2048
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %exprIsCoveredByIndex.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !4660
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !875  ; 2 uses
  %.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i, label %exprIsCoveredByIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ab = phi i16 [ %i.z, %.lr.ph.i ], [ %i.am, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !878
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !330
  %i.af = icmp eq i16 %i.ae, -2
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !2799
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !902
  %i.ak = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef nonnull readonly %1, ptr noundef %i.aj, i32 noundef %i.w)
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %exprIsCoveredByIndex.exit, label %._crit_edge14.i

._crit_edge14.i:                                  ; preds = %bb.i
  %.pre.i = load i16, ptr %i.y, align 8, !tbaa !875
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge14.i, %bb.h
  %i.am = phi i16 [ %.pre.i, %._crit_edge14.i ], [ %i.ab, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = zext i16 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next.i, %i.an
  br i1 %i.ao, label %bb.h, label %exprIsCoveredByIndex.exit.thread, !llvm.loop !4671

exprIsCoveredByIndex.exit:                        ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.ap, align 4, !tbaa !4661
  br label %exprIsCoveredByIndex.exit.thread

exprIsCoveredByIndex.exit.thread:                 ; preds = %bb.e, %bb.j, %bb.g, %bb.f, %bb.b, %exprIsCoveredByIndex.exit, %._crit_edge
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.b ], [ 2, %._crit_edge ], [ 1, %exprIsCoveredByIndex.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @exprIdxCover(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #34 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !3021
  %i.b = icmp eq i8 %i.a, -88
  br i1 %i.b, label %bb.b, label %sqlite3TableColumnToIndex.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3581
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4526
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %sqlite3TableColumnToIndex.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !4528 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i16, ptr %i.k, align 8, !tbaa !3487
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load i16, ptr %i.m, align 8, !tbaa !875  ; 2 uses
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %sqlite3TableColumnToIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !878
  %wide.trip.count.i = zext i16 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !330
  %i.s = icmp eq i16 %i.l, %i.r
  br i1 %i.s, label %sqlite3TableColumnToIndex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3TableColumnToIndex.exit.thread, label %bb.d, !llvm.loop !879

sqlite3TableColumnToIndex.exit.thread:            ; preds = %bb.e, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 1, ptr %i.t, align 4, !tbaa !3504
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.d, %bb.a, %bb.b, %sqlite3TableColumnToIndex.exit.thread
  %.0 = phi i32 [ 2, %sqlite3TableColumnToIndex.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc signext i8 @wherePathSatisfiesOrderBy(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readonly captures(none) %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr nofree noundef captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.Walker, align 16            ; 6 uses
  %8 = alloca %struct.WhereScan, align 16         ; 15 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !820
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !651  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1328
  %i.f = and i32 %i.e, 64
  %.not272 = icmp eq i32 %i.f, 0
  br i1 %.not272, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i32, ptr %1, align 8, !tbaa !5      ; 2 uses
  %i.h = and i32 %i.g, 65535                      ; 5 uses
  %i.i = icmp samesign ugt i32 %i.h, 63
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 5 uses
  %notmask = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask, -1                     ; 2 uses
  %i.l = zext i16 %3 to i32                       ; 5 uses
  %i.m = and i32 %i.l, 2051
  %.not273 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not273, i32 386, i32 387 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = and i32 %i.l, 2048
  %.not277 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not527 = icmp eq i32 %i.h, 0                  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 42
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 41
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ab = and i32 %i.l, 192
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = and i32 %i.l, 128
  %.not299 = icmp eq i32 %i.ad, 0
  %i.ae = and i32 %i.l, 64
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.al = zext i16 %4 to i64                      ; 2 uses
  %.not747 = icmp eq i32 %i.h, 0
  br i1 %.not747, label %.critedge, label %.lr.ph740.preheader

.lr.ph740.preheader:                              ; preds = %bb.d
  %9 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph740

.lr.ph740:                                        ; preds = %.lr.ph740.preheader, %bb.cs
  %.0257518737 = phi ptr [ %.2259, %bb.cs ], [ null, %.lr.ph740.preheader ]
  %.0244521736 = phi i64 [ %.1245, %bb.cs ], [ 0, %.lr.ph740.preheader ] ; 2 uses
  %.0242522735 = phi i64 [ %.1243, %bb.cs ], [ 0, %.lr.ph740.preheader ] ; 2 uses
  %indvars.iv579732 = phi i64 [ %indvars.iv.next580, %bb.cs ], [ 0, %.lr.ph740.preheader ] ; 7 uses
  %.promoted731 = phi i64 [ %i.mx, %bb.cs ], [ 0, %.lr.ph740.preheader ] ; 5 uses
  %.not276 = icmp eq i64 %indvars.iv579732, 0
  br i1 %.not276, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph740
  %i.am = getelementptr inbounds nuw i8, ptr %.0257518737, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !4306
  %i.ao = or i64 %i.an, %.0242522735
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph740
  %.1243 = phi i64 [ %i.ao, %bb.e ], [ %.0242522735, %.lr.ph740 ] ; 2 uses
  %i.ap = icmp samesign ult i64 %indvars.iv579732, %i.al
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !4464
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv579732
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !4456 ; 2 uses
  br i1 %.not277, label %bb.h, label %bb.cs

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1258 = phi ptr [ %i.as, %bb.g ], [ %5, %bb.f ] ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1258, i64 48 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !4272 ; 2 uses
  %i.av = and i32 %i.au, 1024
  %.not278 = icmp eq i32 %i.av, 0
  br i1 %.not278, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.1258, i64 29
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %.not322 = icmp eq i8 %i.ax, 0
  br i1 %.not322, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3625
  %i.ba = icmp eq ptr %i.az, %1
  br i1 %i.ba, label %.critedge.thread, label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !4154
  %i.bc = getelementptr inbounds nuw i8, ptr %.1258, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !4309
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3554 ; 5 uses
  br i1 %.not527, label %._crit_edge, label %.lr.ph491

.lr.ph491:                                        ; preds = %bb.k
  %i.bi = xor i64 %.1243, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %.1258, i64 52
  %i.bk = getelementptr inbounds nuw i8, ptr %.1258, i64 64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph491, %.critedge3
  %indvars.iv558 = phi i64 [ 0, %.lr.ph491 ], [ %indvars.iv.next559, %.critedge3 ] ; 3 uses
  %i.bl = phi i64 [ %.promoted731, %.lr.ph491 ], [ %i.ez, %.critedge3 ] ; 13 uses
  %i.bm = shl nuw i64 1, %indvars.iv558           ; 2 uses
  %i.bn = and i64 %i.bl, %i.bm
  %.not314 = icmp eq i64 %i.bn, 0
  br i1 %.not314, label %bb.m, label %.critedge3

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv558 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !902 ; 2 uses
  %.not9.i = icmp eq ptr %i.bp, null
  br i1 %.not9.i, label %.critedge3, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.r
  %.010.i = phi ptr [ %.1.i, %bb.r ], [ %i.bp, %bb.m ] ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !367 ; 2 uses
  %i.bs = and i32 %i.br, 532480
  %.not7.i = icmp eq i32 %i.bs, 0
  br i1 %.not7.i, label %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.bt = and i32 %i.br, 524288
  %.not8.i = icmp eq i32 %i.bt, 0
  br i1 %.not8.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !227
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bx = load i8, ptr %.010.i, align 8, !tbaa !3021 ; 2 uses
  %i.by = icmp eq i8 %i.bx, 114
  br i1 %i.by, label %bb.q, label %sqlite3ExprSkipCollateAndLikely.exit

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.1.in.i = phi ptr [ %i.bw, %bb.o ], [ %i.bz, %bb.q ]
  %.1.i = load ptr, ptr %.1.in.i, align 8, !tbaa !366 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %.critedge3, label %.lr.ph.i, !llvm.loop !3965

sqlite3ExprSkipCollateAndLikely.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load i8, ptr %.010.i, align 8, !tbaa !3021
  br label %sqlite3ExprSkipCollateAndLikely.exit

sqlite3ExprSkipCollateAndLikely.exit:             ; preds = %bb.p, %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split
  %i.ca = phi i8 [ %.pr, %sqlite3ExprSkipCollateAndLikely.exitthread-pre-split ], [ %i.bx, %bb.p ]
  switch i8 %i.ca, label %.critedge3 [
    i8 -88, label %bb.s
    i8 -86, label %bb.s
  ]

bb.s:                                             ; preds = %sqlite3ExprSkipCollateAndLikely.exit, %sqlite3ExprSkipCollateAndLikely.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3581
  %.not317 = icmp eq i32 %i.cc, %i.bh
  br i1 %.not317, label %bb.t, label %.critedge3

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i, i64 48 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !3487 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  store <2 x ptr> %10, ptr %8, align 16, !tbaa !1148
  store i8 0, ptr %i.s, align 8, !tbaa !4290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i32 %spec.select, ptr %i.u, align 4, !tbaa !4291
  store i32 0, ptr %i.v, align 16, !tbaa !4292
  store i32 %i.bh, ptr %i.w, align 4, !tbaa !5
  store i8 1, ptr %i.x, align 2, !tbaa !4293
  store i8 1, ptr %i.y, align 1, !tbaa !4294
  %i.cf = icmp eq i16 %i.ce, -2
  br i1 %i.cf, label %sqlite3WhereFindTerm.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t
  store i16 %i.ce, ptr %i.z, align 8, !tbaa !330
  %i.cg = call fastcc ptr @whereScanNext(ptr noundef nonnull %8) ; 2 uses
  %.not19.i = icmp eq ptr %i.cg, null
  br i1 %.not19.i, label %sqlite3WhereFindTerm.exit.thread, label %.lr.ph.i339

.lr.ph.i339:                                      ; preds = %.thread.i.i, %bb.x
  %.021.i = phi ptr [ %i.cq, %bb.x ], [ %i.cg, %.thread.i.i ] ; 4 uses
  %.01620.i = phi ptr [ %.1.i340, %bb.x ], [ null, %.thread.i.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.021.i, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !4295 ; 2 uses
  %i.cj = and i64 %i.ci, %i.bi
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph.i339
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %.021.i, i64 20
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !4492 ; 2 uses
  %i.co = and i16 %i.cn, 130
  %.not18.i = icmp eq i16 %i.co, 0
  br i1 %.not18.i, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %.critedge3.thread

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cp = icmp eq ptr %.01620.i, null
  %spec.select.i = select i1 %i.cp, ptr %.021.i, ptr %.01620.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i339
  %.1.i340 = phi ptr [ %.01620.i, %.lr.ph.i339 ], [ %spec.select.i, %bb.w ] ; 6 uses
  %i.cq = call fastcc ptr @whereScanNext(ptr noundef %8) ; 2 uses
  %.not.i341 = icmp eq ptr %i.cq, null
  br i1 %.not.i341, label %sqlite3WhereFindTerm.exit, label %.lr.ph.i339, !llvm.loop !4531

sqlite3WhereFindTerm.exit.thread:                 ; preds = %.thread.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %.critedge3

sqlite3WhereFindTerm.exit:                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  %i.cr = icmp eq ptr %.1.i340, null
  br i1 %i.cr, label %.critedge3, label %bb.y

bb.y:                                             ; preds = %sqlite3WhereFindTerm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1.i340, i64 20
  %.pre585 = load i16, ptr %.phi.trans.insert, align 4, !tbaa !4492 ; 3 uses
  %i.cs = icmp eq i16 %.pre585, 1
  br i1 %i.cs, label %.preheader460, label %.critedge3.thread

.preheader460:                                    ; preds = %bb.y
  %i.ct = load i16, ptr %i.bj, align 4, !tbaa !4270 ; 2 uses
  %.not529 = icmp eq i16 %i.ct, 0
  br i1 %.not529, label %.critedge3, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader460
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !4267
  %wide.trip.count = zext i16 %i.ct to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge3, label %bb.aa, !llvm.loop !4672

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !4297
  %.not318 = icmp eq ptr %.1.i340, %i.cw
  br i1 %.not318, label %.critedge3.thread, label %bb.z

.critedge3.thread:                                ; preds = %bb.aa, %.thread, %bb.y
  %.017.i372624 = phi ptr [ %.021.i, %.thread ], [ %.1.i340, %bb.y ], [ %.1.i340, %bb.aa ]
  %i.cx = phi i16 [ %i.cn, %.thread ], [ %.pre585, %bb.y ], [ %.pre585, %bb.aa ]
  %i.cy = and i16 %i.cx, 130
  %.not320 = icmp eq i16 %i.cy, 0
  br i1 %.not320, label %sqlite3StrICmp.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge3.thread
  %i.cz = load i16, ptr %i.cd, align 8, !tbaa !3487
  %i.da = icmp sgt i16 %i.cz, -1
  br i1 %i.da, label %bb.ac, label %sqlite3StrICmp.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.db = load ptr, ptr %0, align 8, !tbaa !820   ; 5 uses
  %i.dc = load ptr, ptr %i.bo, align 8, !tbaa !902
  %i.dd = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.db, ptr noundef readonly %i.dc) ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.ad, label %sqlite3ExprNNCollSeq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !651
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1299
  br label %sqlite3ExprNNCollSeq.exit

sqlite3ExprNNCollSeq.exit:                        ; preds = %bb.ac, %bb.ad
  %.0.i = phi ptr [ %i.dh, %bb.ad ], [ %i.dd, %bb.ac ]
  %i.di = load ptr, ptr %.017.i372624, align 8, !tbaa !1155 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !367
  %i.dl = and i32 %i.dk, 1024
  %.not.i342 = icmp eq i32 %i.dl, 0
  br i1 %.not.i342, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %sqlite3ExprNNCollSeq.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1157 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !371 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !367
  %i.ds = and i32 %i.dr, 512
  %.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i, label %bb.af, label %sqlite3ExprCompareCollSeq.exit

bb.af:                                            ; preds = %bb.ae
  %.not15.i.i = icmp eq ptr %i.dp, null
  br i1 %.not15.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !367
  %i.dv = and i32 %i.du, 512
  %.not16.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not16.i.i, label %bb.ah, label %sqlite3ExprCompareCollSeq.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dw = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.db, ptr noundef nonnull readonly %i.dn) ; 2 uses
  %.not17.i.i = icmp eq ptr %i.dw, null
  br i1 %.not17.i.i, label %sqlite3ExprCompareCollSeq.exit, label %sqlite3ExprCompareCollSeq.exit.thread

bb.ai:                                            ; preds = %sqlite3ExprNNCollSeq.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !371 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1157 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !367
  %i.ed = and i32 %i.ec, 512
  %.not.i8.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i8.i, label %bb.aj, label %sqlite3ExprCompareCollSeq.exit

bb.aj:                                            ; preds = %bb.ai
  %.not15.i12.i = icmp eq ptr %i.ea, null
  br i1 %.not15.i12.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !367
  %i.eg = and i32 %i.ef, 512
  %.not16.i13.i = icmp eq i32 %i.eg, 0
  br i1 %.not16.i13.i, label %bb.al, label %sqlite3ExprCompareCollSeq.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eh = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.db, ptr noundef nonnull readonly %i.dy) ; 2 uses
  %.not17.i14.i = icmp eq ptr %i.eh, null
  br i1 %.not17.i14.i, label %sqlite3ExprCompareCollSeq.exit, label %sqlite3ExprCompareCollSeq.exit.thread

sqlite3ExprCompareCollSeq.exit:                   ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.al
  %.sink.i10.sink.i = phi ptr [ %i.dp, %bb.ah ], [ %i.dn, %bb.ae ], [ %i.dp, %bb.ag ], [ %i.dy, %bb.ai ], [ %i.ea, %bb.ak ], [ %i.ea, %bb.al ]
  %i.ei = call fastcc ptr @sqlite3ExprCollSeq(ptr noundef %i.db, ptr noundef %.sink.i10.sink.i) ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.critedge3, label %sqlite3ExprCompareCollSeq.exit.thread

sqlite3ExprCompareCollSeq.exit.thread:            ; preds = %bb.ah, %bb.al, %sqlite3ExprCompareCollSeq.exit
  %.0.i343374 = phi ptr [ %i.ei, %sqlite3ExprCompareCollSeq.exit ], [ %i.dw, %bb.ah ], [ %i.eh, %bb.al ]
  %i.ek = load ptr, ptr %.0.i, align 8, !tbaa !569
  %i.el = load ptr, ptr %.0.i343374, align 8, !tbaa !569
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %sqlite3ExprCompareCollSeq.exit.thread
  %.013.i = phi ptr [ %i.el, %sqlite3ExprCompareCollSeq.exit.thread ], [ %i.ex, %bb.ap ] ; 2 uses
  %.0.i344 = phi ptr [ %i.ek, %sqlite3ExprCompareCollSeq.exit.thread ], [ %i.ew, %bb.ap ] ; 2 uses
  %i.em = load i8, ptr %.0.i344, align 1, !tbaa !227 ; 3 uses
  %i.en = load i8, ptr %.013.i, align 1, !tbaa !227 ; 2 uses
  %i.eo = icmp eq i8 %i.em, %i.en
  br i1 %i.eo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ep = icmp eq i8 %i.em, 0
  br i1 %i.ep, label %sqlite3StrICmp.exit.thread, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.eq = zext i8 %i.em to i64
  %i.er = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !227
end_hunk_3
begin_hunk_4_@ChooseLeaf:bb.a
  br i1 %cmp.n, label %.loopexit178, label %.preheader.i84.preheader179

.preheader.i84.preheader179:                      ; preds = %.preheader.i84.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i84.preheader ], [ %i.hv, %middle.block ]
  br label %.preheader.i84

.preheader.i84:                                   ; preds = %.preheader.i84.preheader179, %.preheader.i84
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i84 ], [ %indvars.iv61.i.ph, %.preheader.i84.preheader179 ] ; 3 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv61.i ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv61.i
  %i.nu = load <2 x float>, ptr %i.ns, align 8, !tbaa !227 ; 3 uses
  %i.nv = load <2 x float>, ptr %i.nt, align 4, !tbaa !227 ; 3 uses
  %i.nw = shufflevector <2 x float> %i.nu, <2 x float> %i.nv, <2 x i32> <i32 0, i32 3>
  %i.nx = shufflevector <2 x float> %i.nv, <2 x float> %i.nu, <2 x i32> <i32 0, i32 3>
  %i.ny = fcmp olt <2 x float> %i.nw, %i.nx
  %i.nz = select <2 x i1> %i.ny, <2 x float> %i.nu, <2 x float> %i.nv
  store <2 x float> %i.nz, ptr %i.ns, align 8, !tbaa !227
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.oa = icmp samesign ult i64 %indvars.iv.next62.i, %i.hh
  br i1 %i.oa, label %.preheader.i84, label %.loopexit178, !llvm.loop !8045

.preheader57.i:                                   ; preds = %.preheader57.i.preheader180, %.preheader57.i
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %.preheader57.i ], [ %indvars.iv.i82.ph, %.preheader57.i.preheader180 ] ; 4 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i82 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !227
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i82
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !227
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.oe)
  store i32 %.56.i, ptr %i.ob, align 8, !tbaa !227
  %i.of = or disjoint i64 %indvars.iv.i82, 1      ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.of ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !227
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.of
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !227
  %i.ok = tail call i32 @llvm.smax.i32(i32 %i.oh, i32 %i.oj)
  store i32 %i.ok, ptr %i.og, align 4, !tbaa !227
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 2 ; 2 uses
  %i.ol = icmp samesign ult i64 %indvars.iv.next.i83, %i.hh
  br i1 %i.ol, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !8046

.loopexit178:                                     ; preds = %.preheader.i84, %middle.block
  switch i8 %i.hk, label %bb.aj [
    i8 5, label %bb.af
    i8 4, label %bb.ag
    i8 3, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.af:                                            ; preds = %.loopexit178
  %i.om = load float, ptr %i.v, align 4, !tbaa !227
  %i.on = load float, ptr %i.w, align 8, !tbaa !227
  %i.oo = fsub float %i.om, %i.on
  %i.op = fpext float %i.oo to double
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit178
  %.0.i93 = phi double [ %i.op, %bb.af ], [ 1.000000e+00, %.loopexit178 ]
  %i.oq = load float, ptr %i.x, align 4, !tbaa !227
  %i.or = load float, ptr %i.y, align 8, !tbaa !227
  %i.os = fsub float %i.oq, %i.or
  %i.ot = fpext float %i.os to double
  %i.ou = fmul double %.0.i93, %i.ot
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit178
  %.1.i92 = phi double [ %i.ou, %bb.ag ], [ 1.000000e+00, %.loopexit178 ]
  %i.ov = load float, ptr %i.z, align 4, !tbaa !227
  %i.ow = load float, ptr %i.aa, align 8, !tbaa !227
  %i.ox = fsub float %i.ov, %i.ow
  %i.oy = fpext float %i.ox to double
  %i.oz = fmul double %.1.i92, %i.oy
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit178
  %.2.i90 = phi double [ %i.oz, %bb.ah ], [ 1.000000e+00, %.loopexit178 ]
  %i.pa = load float, ptr %i.ab, align 4, !tbaa !227
  %i.pb = load float, ptr %i.ac, align 8, !tbaa !227
  %i.pc = fsub float %i.pa, %i.pb
  %i.pd = fpext float %i.pc to double
  %i.pe = fmul double %.2.i90, %i.pd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit178
  %.3.i91 = phi double [ 1.000000e+00, %.loopexit178 ], [ %i.pe, %bb.ai ]
  %i.pf = load float, ptr %i.ad, align 4, !tbaa !227
  %i.pg = load float, ptr %i.u, align 8, !tbaa !227
  %i.ph = fsub float %i.pf, %i.pg
  %i.pi = fpext float %i.ph to double
  %i.pj = fmul double %.3.i91, %i.pi
  br label %cellArea.exit94

cellUnion.exit:                                   ; preds = %.preheader57.i, %middle.block175
  switch i8 %i.hk, label %bb.ao [
    i8 5, label %bb.ak
    i8 4, label %bb.al
    i8 3, label %bb.am
    i8 2, label %bb.an
  ]

bb.ak:                                            ; preds = %cellUnion.exit
  %i.pk = load i32, ptr %i.v, align 4, !tbaa !227
  %i.pl = sext i32 %i.pk to i64
  %i.pm = load i32, ptr %i.w, align 8, !tbaa !227
  %i.pn = sext i32 %i.pm to i64
  %i.po = sub nsw i64 %i.pl, %i.pn
  %i.pp = sitofp i64 %i.po to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %cellUnion.exit
  %.4.i89 = phi double [ %i.pp, %bb.ak ], [ 1.000000e+00, %cellUnion.exit ]
  %i.pq = load i32, ptr %i.x, align 4, !tbaa !227
  %i.pr = sext i32 %i.pq to i64
  %i.ps = load i32, ptr %i.y, align 8, !tbaa !227
  %i.pt = sext i32 %i.ps to i64
  %i.pu = sub nsw i64 %i.pr, %i.pt
  %i.pv = sitofp i64 %i.pu to double
  %i.pw = fmul nnan double %.4.i89, %i.pv
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cellUnion.exit
  %.5.i88 = phi double [ %i.pw, %bb.al ], [ 1.000000e+00, %cellUnion.exit ]
  %i.px = load i32, ptr %i.z, align 4, !tbaa !227
  %i.py = sext i32 %i.px to i64
  %i.pz = load i32, ptr %i.aa, align 8, !tbaa !227
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sub nsw i64 %i.py, %i.qa
  %i.qc = sitofp i64 %i.qb to double
  %i.qd = fmul double %.5.i88, %i.qc
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %cellUnion.exit
  %.6.i85 = phi double [ %i.qd, %bb.am ], [ 1.000000e+00, %cellUnion.exit ]
  %i.qe = load i32, ptr %i.ab, align 4, !tbaa !227
  %i.qf = sext i32 %i.qe to i64
  %i.qg = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.qh = sext i32 %i.qg to i64
  %i.qi = sub nsw i64 %i.qf, %i.qh
  %i.qj = sitofp i64 %i.qi to double
  %i.qk = fmul double %.6.i85, %i.qj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %cellUnion.exit
  %.7.i86 = phi double [ 1.000000e+00, %cellUnion.exit ], [ %i.qk, %bb.an ]
  %i.ql = load i32, ptr %i.ad, align 4, !tbaa !227
  %i.qm = sext i32 %i.ql to i64
  %i.qn = load i32, ptr %i.u, align 8, !tbaa !227
  %i.qo = sext i32 %i.qn to i64
  %i.qp = sub nsw i64 %i.qm, %i.qo
  %i.qq = sitofp i64 %i.qp to double
  %i.qr = fmul double %.7.i86, %i.qq
  br label %cellArea.exit94

cellArea.exit94:                                  ; preds = %bb.aj, %bb.ao
  %.8.i74150 = phi double [ %i.nj, %bb.aj ], [ %i.my, %bb.ao ] ; 3 uses
  %.8.i87 = phi double [ %i.pj, %bb.aj ], [ %i.qr, %bb.ao ]
  %i.qs = fsub double %.8.i87, %.8.i74150         ; 3 uses
  %i.qt = icmp eq i64 %indvars.iv135, 0
  %i.qu = fcmp olt double %i.qs, %.051115
  %or.cond59 = select i1 %i.qt, i1 true, i1 %i.qu
  br i1 %or.cond59, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %cellArea.exit94
  %i.qv = fcmp oeq double %i.qs, %.051115
  %i.qw = fcmp olt double %.8.i74150, %.349116
  %or.cond60 = select i1 %i.qv, i1 %i.qw, i1 false
  br i1 %or.cond60, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %cellArea.exit94
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.152 = phi double [ %i.qs, %bb.aq ], [ %.051115, %bb.ap ]
  %.450 = phi double [ %.8.i74150, %bb.aq ], [ %.349116, %bb.ap ]
  %.4 = phi i64 [ %i.jj, %bb.aq ], [ %.3117, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit, label %bb.t, !llvm.loop !8047

.loopexit:                                        ; preds = %bb.ar, %bb.c, %._crit_edge
  %.5 = phi i64 [ %.2, %._crit_edge ], [ 0, %bb.c ], [ %.4, %bb.ar ]
  %i.qx = call fastcc i32 @nodeAcquire(ptr noundef %0, i64 noundef %.5, ptr noundef %i.ae, ptr noundef nonnull %i.b) ; 2 uses
  %i.qy = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef %i.ae) ; 0 uses
  %i.qz = load ptr, ptr %i.b, align 8, !tbaa !7929 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.ra = add nuw nsw i32 %.042121, 1
  %i.rb = icmp eq i32 %i.qx, 0
  br i1 %i.rb, label %bb.b, label %.critedge, !llvm.loop !8048

.critedge:                                        ; preds = %bb.b, %.loopexit, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %i.qz, %.loopexit ], [ %i.ae, %bb.b ]
  %.0.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.qx, %.loopexit ], [ 0, %bb.b ]
  store ptr %.lcssa, ptr %3, align 8, !tbaa !7929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rtreeInsertCell(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.RtreeCell, align 8          ; 16 uses
  %5 = alloca %struct.RtreeCell, align 8          ; 16 uses
  %6 = alloca %struct.RtreeCell, align 8          ; 8 uses
  %7 = alloca %struct.RtreeCell, align 8          ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.b, label %bb.b, label %nodeHashLookup.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !7969   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = trunc i64 %i.c to i32
  %i.f = urem i32 %i.e, 97
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %.07.i = load ptr, ptr %i.h, align 8, !tbaa !7929 ; 2 uses
  %.not8.i = icmp eq ptr %.07.i, null
  br i1 %.not8.i, label %nodeHashLookup.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.09.i = phi ptr [ %.0.i, %bb.c ], [ %.07.i, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8010
  %.not6.i = icmp eq i64 %i.j, %i.c
  br i1 %.not6.i, label %nodeHashLookup.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i, i64 32
  %.0.i = load ptr, ptr %i.k, align 8, !tbaa !7929 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nodeHashLookup.exit.thread, label %.lr.ph.i, !llvm.loop !8020

nodeHashLookup.exit:                              ; preds = %.lr.ph.i
  %i.l = load ptr, ptr %.09.i, align 8, !tbaa !8011
  %i.m = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef %i.l) ; 0 uses
  %.not.i30 = icmp eq ptr %1, null
  br i1 %.not.i30, label %nodeReference.exit, label %bb.d

bb.d:                                             ; preds = %nodeHashLookup.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !8009
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !8009
  br label %nodeReference.exit

nodeReference.exit:                               ; preds = %nodeHashLookup.exit, %bb.d
  store ptr %1, ptr %.09.i, align 8, !tbaa !8011
  br label %nodeHashLookup.exit.thread

nodeHashLookup.exit.thread:                       ; preds = %bb.c, %bb.b, %nodeReference.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.s = add nsw i32 %i.r, -4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 6 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !7936
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = sdiv i32 %i.s, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7934 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !227
  %i.aa = getelementptr i8, ptr %i.y, i64 3
  %.val13.i = load i8, ptr %i.aa, align 1, !tbaa !227
  %i.ab = zext i8 %.val.i to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = zext i8 %.val13.i to i32
  %i.ae = or disjoint i32 %i.ac, %i.ad            ; 4 uses
  %i.af = icmp slt i32 %i.ae, %i.w
  br i1 %i.af, label %bb.e, label %nodeInsertCell.exit

bb.e:                                             ; preds = %nodeHashLookup.exit.thread
  %i.ag = mul nuw nsw i32 %i.ae, %i.v
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah   ; 9 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i64, ptr %2, align 8, !tbaa !7969  ; 8 uses
  %i.al = lshr i64 %i.ak, 56
  %i.am = trunc nuw i64 %i.al to i8
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !227
  %i.an = lshr i64 %i.ak, 48
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr i8, ptr %i.ai, i64 5
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !227
  %i.aq = lshr i64 %i.ak, 40
  %i.ar = trunc i64 %i.aq to i8
  %i.as = getelementptr i8, ptr %i.ai, i64 6
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !227
  %i.at = lshr i64 %i.ak, 32
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr i8, ptr %i.ai, i64 7
  store i8 %i.au, ptr %i.av, align 1, !tbaa !227
  %i.aw = lshr i64 %i.ak, 24
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = getelementptr i8, ptr %i.ai, i64 8
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !227
  %i.az = lshr i64 %i.ak, 16
  %i.ba = trunc i64 %i.az to i8
  %i.bb = getelementptr i8, ptr %i.ai, i64 9
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !227
  %i.bc = lshr i64 %i.ak, 8
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %i.ai, i64 10
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !227
  %i.bf = trunc i64 %i.ak to i8
  %i.bg = getelementptr i8, ptr %i.ai, i64 11
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !227
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7913
  %.not.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i, label %nodeOverwriteCell.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bj = getelementptr i8, ptr %i.ai, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %.015.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.bw, %bb.f ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.i
  %.val.i.i = load i32, ptr %i.bl, align 4, !tbaa !227 ; 4 uses
  %i.bm = lshr i32 %.val.i.i, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %.015.i.i, align 1, !tbaa !227
  %i.bo = lshr i32 %.val.i.i, 16
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !227
  %i.br = lshr i32 %.val.i.i, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !227
  %i.bu = trunc i32 %.val.i.i to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !227
  %i.bw = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bx = load i8, ptr %i.bh, align 1, !tbaa !7913
  %i.by = zext i8 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next.i.i, %i.by
  br i1 %i.bz, label %bb.f, label %nodeOverwriteCell.exit.i, !llvm.loop !8049

nodeOverwriteCell.exit.i:                         ; preds = %bb.f, %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !7934 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !227
  %i.cg = trunc i32 %i.cd to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !227
  store i32 1, ptr %i.ca, align 4, !tbaa !8014
  br label %nodeInsertCell.exit

nodeInsertCell.exit:                              ; preds = %nodeHashLookup.exit.thread, %nodeOverwriteCell.exit.i
  %.not = icmp eq i32 %i.ae, %i.w
  br i1 %.not, label %bb.g, label %bb.cb

bb.g:                                             ; preds = %nodeInsertCell.exit
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !7934 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %.val151.i = load i8, ptr %i.cj, align 1, !tbaa !227
  %i.ck = getelementptr i8, ptr %i.ci, i64 3
  %.val152.i = load i8, ptr %i.ck, align 1, !tbaa !227
  %i.cl = zext i8 %.val151.i to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8                ; 3 uses
  %i.cn = zext i8 %.val152.i to i32               ; 3 uses
  %i.co = or disjoint i32 %i.cm, %i.cn            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  %i.cp = add nuw nsw i32 %i.co, 1                ; 5 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 6 uses
  %i.cr = tail call i32 @sqlite3_initialize(), !inline_history !8050
  %.not.i66 = icmp eq i32 %i.cr, 0
  br i1 %.not.i66, label %sqlite3_malloc64.exit, label %SplitNode.exit

sqlite3_malloc64.exit:                            ; preds = %bb.g
  %i.cs = mul nuw nsw i64 %i.cq, 52
  %i.ct = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.cs), !inline_history !8050 ; 26 uses
  %.not.i31 = icmp eq ptr %i.ct, null
  br i1 %.not.i31, label %SplitNode.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_malloc64.exit
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %i.cq
  %i.cv = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cu, i8 0, i64 %i.cv, i1 false)
  %.not122 = icmp eq i32 %i.co, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.cx = or disjoint i32 %i.cm, %i.cn
  %wide.trip.count = zext nneg i32 %i.cx to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %nodeGetCell.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nodeGetCell.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %indvars.iv ; 2 uses
  %.val155.i = load ptr, ptr %i.x, align 8, !tbaa !7934
  %.val.i63 = load i8, ptr %i.t, align 1, !tbaa !7936
end_hunk_4
begin_hunk_5_@rtreeInsertCell:bb.a
  %i.oc = shufflevector <2 x float> %i.oa, <2 x float> %i.ob, <2 x i32> <i32 0, i32 3>
  %i.od = shufflevector <2 x float> %i.ob, <2 x float> %i.oa, <2 x i32> <i32 0, i32 3>
  %i.oe = fcmp olt <2 x float> %i.oc, %i.od
  %i.of = select <2 x i1> %i.oe, <2 x float> %i.oa, <2 x float> %i.ob
  store <2 x float> %i.of, ptr %i.ny, align 8, !tbaa !227
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 2 ; 2 uses
  %i.og = icmp samesign ult i64 %indvars.iv.next62.i.i, %i.lo
  br i1 %i.og, label %.preheader.i.i, label %cellUnion.exit.i, !llvm.loop !8060

.preheader57.i.i:                                 ; preds = %.preheader57.i.i.preheader358, %.preheader57.i.i
  %indvars.iv.i.i46 = phi i64 [ %indvars.iv.next.i.i47, %.preheader57.i.i ], [ %indvars.iv.i.i46.ph, %.preheader57.i.i.preheader358 ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i.i46 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !227
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i.i46
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !227
  %.56.i.i = tail call i32 @llvm.smin.i32(i32 %i.oi, i32 %i.ok)
  store i32 %.56.i.i, ptr %i.oh, align 8, !tbaa !227
  %i.ol = or disjoint i64 %indvars.iv.i.i46, 1    ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !227
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ol
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !227
  %i.oq = tail call i32 @llvm.smax.i32(i32 %i.on, i32 %i.op)
  store i32 %i.oq, ptr %i.om, align 4, !tbaa !227
  %indvars.iv.next.i.i47 = add nuw nsw i64 %indvars.iv.i.i46, 2 ; 2 uses
  %i.or = icmp samesign ult i64 %indvars.iv.next.i.i47, %i.lo
  br i1 %i.or, label %.preheader57.i.i, label %cellUnion.exit.i, !llvm.loop !8061

bb.v:                                             ; preds = %.lr.ph212.i
  %i.os = icmp eq i8 %i.nd, 0
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 5 uses
  br i1 %i.os, label %.preheader.i148.i.preheader, label %.preheader57.i144.i.preheader

.preheader57.i144.i.preheader:                    ; preds = %bb.v
  br i1 %min.iters.check286, label %.preheader57.i144.i.preheader362, label %vector.body290

vector.body290:                                   ; preds = %.preheader57.i144.i.preheader, %vector.body290
  %index291 = phi i64 [ %index.next299, %vector.body290 ], [ 0, %.preheader57.i144.i.preheader ] ; 2 uses
  %i.ou = shl i64 %index291, 1                    ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ou ; 2 uses
  %wide.vec292 = load <4 x i32>, ptr %i.ov, align 8, !tbaa !227 ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.ou
  %wide.vec295 = load <4 x i32>, ptr %i.ow, align 4, !tbaa !227 ; 2 uses
  %i.ox = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec292, <4 x i32> %wide.vec295)
  %i.oy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec292, <4 x i32> %wide.vec295)
  %interleaved.vec298 = shufflevector <4 x i32> %i.ox, <4 x i32> %i.oy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec298, ptr %i.ov, align 8, !tbaa !227
  %index.next299 = add nuw i64 %index291, 2       ; 2 uses
  %i.oz = icmp eq i64 %index.next299, %n.vec289
  br i1 %i.oz, label %middle.block300, label %vector.body290, !llvm.loop !8062

middle.block300:                                  ; preds = %vector.body290
  br i1 %cmp.n301, label %cellUnion.exit.i, label %.preheader57.i144.i.preheader362

.preheader57.i144.i.preheader362:                 ; preds = %.preheader57.i144.i.preheader, %middle.block300
  %indvars.iv.i145.i.ph = phi i64 [ 0, %.preheader57.i144.i.preheader ], [ %i.lv, %middle.block300 ]
  br label %.preheader57.i144.i

.preheader.i148.i.preheader:                      ; preds = %bb.v
  br i1 %min.iters.check268, label %.preheader.i148.i.preheader360, label %vector.body272

vector.body272:                                   ; preds = %.preheader.i148.i.preheader, %vector.body272
  %index273 = phi i64 [ %index.next281, %vector.body272 ], [ 0, %.preheader.i148.i.preheader ] ; 2 uses
  %i.pa = shl i64 %index273, 1                    ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pa ; 2 uses
  %wide.vec274 = load <8 x float>, ptr %i.pb, align 8, !tbaa !227 ; 2 uses
  %strided.vec275 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec276 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pa
  %wide.vec277 = load <8 x float>, ptr %i.pc, align 4, !tbaa !227 ; 2 uses
  %strided.vec278 = shufflevector <8 x float> %wide.vec277, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec279 = shufflevector <8 x float> %wide.vec277, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pd = fcmp olt <4 x float> %strided.vec275, %strided.vec278
  %i.pe = select <4 x i1> %i.pd, <4 x float> %strided.vec275, <4 x float> %strided.vec278
  %i.pf = fcmp ogt <4 x float> %strided.vec276, %strided.vec279
  %i.pg = select <4 x i1> %i.pf, <4 x float> %strided.vec276, <4 x float> %strided.vec279
  %interleaved.vec280 = shufflevector <4 x float> %i.pe, <4 x float> %i.pg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec280, ptr %i.pb, align 8, !tbaa !227
  %index.next281 = add nuw i64 %index273, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next281, %n.vec271
  br i1 %i.ph, label %middle.block282, label %vector.body272, !llvm.loop !8063

middle.block282:                                  ; preds = %vector.body272
  br i1 %cmp.n283, label %cellUnion.exit.i, label %.preheader.i148.i.preheader360

.preheader.i148.i.preheader360:                   ; preds = %.preheader.i148.i.preheader, %middle.block282
  %indvars.iv61.i149.i.ph = phi i64 [ 0, %.preheader.i148.i.preheader ], [ %i.lw, %middle.block282 ]
  br label %.preheader.i148.i

.preheader.i148.i:                                ; preds = %.preheader.i148.i.preheader360, %.preheader.i148.i
  %indvars.iv61.i149.i = phi i64 [ %indvars.iv.next62.i151.i, %.preheader.i148.i ], [ %indvars.iv61.i149.i.ph, %.preheader.i148.i.preheader360 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv61.i149.i ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv61.i149.i
  %i.pk = load <2 x float>, ptr %i.pi, align 8, !tbaa !227 ; 3 uses
  %i.pl = load <2 x float>, ptr %i.pj, align 4, !tbaa !227 ; 3 uses
  %i.pm = shufflevector <2 x float> %i.pk, <2 x float> %i.pl, <2 x i32> <i32 0, i32 3>
  %i.pn = shufflevector <2 x float> %i.pl, <2 x float> %i.pk, <2 x i32> <i32 0, i32 3>
  %i.po = fcmp olt <2 x float> %i.pm, %i.pn
  %i.pp = select <2 x i1> %i.po, <2 x float> %i.pk, <2 x float> %i.pl
  store <2 x float> %i.pp, ptr %i.pi, align 8, !tbaa !227
  %indvars.iv.next62.i151.i = add nuw nsw i64 %indvars.iv61.i149.i, 2 ; 2 uses
  %i.pq = icmp samesign ult i64 %indvars.iv.next62.i151.i, %i.lo
  br i1 %i.pq, label %.preheader.i148.i, label %cellUnion.exit.i, !llvm.loop !8064

.preheader57.i144.i:                              ; preds = %.preheader57.i144.i.preheader362, %.preheader57.i144.i
  %indvars.iv.i145.i = phi i64 [ %indvars.iv.next.i147.i, %.preheader57.i144.i ], [ %indvars.iv.i145.i.ph, %.preheader57.i144.i.preheader362 ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i145.i ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !227
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.i145.i
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !227
  %.56.i146.i = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 %i.pu)
  store i32 %.56.i146.i, ptr %i.pr, align 8, !tbaa !227
  %i.pv = or disjoint i64 %indvars.iv.i145.i, 1   ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pv ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !227
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pv
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !227
  %i.qa = tail call i32 @llvm.smax.i32(i32 %i.px, i32 %i.pz)
  store i32 %i.qa, ptr %i.pw, align 4, !tbaa !227
  %indvars.iv.next.i147.i = add nuw nsw i64 %indvars.iv.i145.i, 2 ; 2 uses
  %i.qb = icmp samesign ult i64 %indvars.iv.next.i147.i, %i.lo
  br i1 %i.qb, label %.preheader57.i144.i, label %cellUnion.exit.i, !llvm.loop !8065

cellUnion.exit.i:                                 ; preds = %.preheader57.i144.i, %.preheader.i148.i, %.preheader57.i.i, %.preheader.i.i, %middle.block300, %middle.block282, %middle.block264, %middle.block246
  %i.qc = phi i8 [ %i.lm, %middle.block264 ], [ 0, %middle.block246 ], [ 0, %middle.block282 ], [ %i.nd, %middle.block300 ], [ 0, %.preheader.i148.i ], [ 0, %.preheader.i.i ], [ %i.lm, %.preheader57.i.i ], [ %i.nd, %.preheader57.i144.i ] ; 2 uses
  %indvars.iv.next253.i = add nuw nsw i64 %indvars.iv252.i, 1 ; 2 uses
  %exitcond256.not.i = icmp eq i64 %indvars.iv.next253.i, %i.gk
  br i1 %exitcond256.not.i, label %._crit_edge.i, label %.lr.ph212.i, !llvm.loop !8066

._crit_edge.i:                                    ; preds = %cellUnion.exit.i, %bb.t
  %i.qd = phi i8 [ %i.nc, %bb.t ], [ %i.qc, %cellUnion.exit.i ] ; 2 uses
  br i1 %i.ln, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %._crit_edge.i, %.split.us.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %.split.us.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.us.i.i = phi double [ %i.qi, %.split.us.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next22.i.i = add nsw i64 %indvars.iv21.i.i, -2
  %i.qe = getelementptr [4 x i8], ptr %4, i64 %indvars.iv21.i.i
  %i.qf = load <2 x float>, ptr %i.qe, align 4, !tbaa !227
  %i.qg = fpext <2 x float> %i.qf to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.qg
  %i.qh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.qi = fadd double %.014.us.i.i, %i.qh         ; 2 uses
  %i.qj = icmp samesign ugt i64 %indvars.iv21.i.i, 3
  br i1 %i.qj, label %.split.us.i.i, label %.split.us.i160.i, !llvm.loop !8067

.split.i.i:                                       ; preds = %._crit_edge.i, %.split.i.i
  %indvars.iv.i153.i = phi i64 [ %indvars.iv.next.i154.i, %.split.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.i.i = phi double [ %i.qo, %.split.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next.i154.i = add nsw i64 %indvars.iv.i153.i, -2
  %i.qk = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i153.i
  %i.ql = load <2 x i32>, ptr %i.qk, align 4, !tbaa !227
  %i.qm = sitofp <2 x i32> %i.ql to <2 x double>  ; 2 uses
  %shift340 = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop341 = fsub <2 x double> %shift340, %i.qm
  %i.qn = extractelement <2 x double> %foldExtExtBinop341, i64 0
  %i.qo = fadd double %.014.i.i, %i.qn            ; 2 uses
  %i.qp = icmp samesign ugt i64 %indvars.iv.i153.i, 3
  br i1 %i.qp, label %.split.i.i, label %.split.i155.i, !llvm.loop !8067

.split.us.i160.i:                                 ; preds = %.split.us.i.i, %.split.us.i160.i
  %indvars.iv21.i161.i = phi i64 [ %indvars.iv.next22.i163.i, %.split.us.i160.i ], [ %i.lo, %.split.us.i.i ] ; 3 uses
  %.014.us.i162.i = phi double [ %i.qu, %.split.us.i160.i ], [ 0.000000e+00, %.split.us.i.i ]
  %indvars.iv.next22.i163.i = add nsw i64 %indvars.iv21.i161.i, -2
  %i.qq = getelementptr [4 x i8], ptr %5, i64 %indvars.iv21.i161.i
  %i.qr = load <2 x float>, ptr %i.qq, align 4, !tbaa !227
  %i.qs = fpext <2 x float> %i.qr to <2 x double> ; 2 uses
  %shift343 = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop344 = fsub <2 x double> %shift343, %i.qs
  %i.qt = extractelement <2 x double> %foldExtExtBinop344, i64 0
  %i.qu = fadd double %.014.us.i162.i, %i.qt      ; 2 uses
  %i.qv = icmp samesign ugt i64 %indvars.iv21.i161.i, 3
  br i1 %i.qv, label %.split.us.i160.i, label %cellMargin.exit164.i, !llvm.loop !8067

.split.i155.i:                                    ; preds = %.split.i.i, %.split.i155.i
  %indvars.iv.i156.i = phi i64 [ %indvars.iv.next.i158.i, %.split.i155.i ], [ %i.lo, %.split.i.i ] ; 3 uses
  %.014.i157.i = phi double [ %i.ra, %.split.i155.i ], [ 0.000000e+00, %.split.i.i ]
  %indvars.iv.next.i158.i = add nsw i64 %indvars.iv.i156.i, -2
  %i.qw = getelementptr [4 x i8], ptr %5, i64 %indvars.iv.i156.i
  %i.qx = load <2 x i32>, ptr %i.qw, align 4, !tbaa !227
  %i.qy = sitofp <2 x i32> %i.qx to <2 x double>  ; 2 uses
  %shift346 = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop347 = fsub <2 x double> %shift346, %i.qy
  %i.qz = extractelement <2 x double> %foldExtExtBinop347, i64 0
  %i.ra = fadd double %.014.i157.i, %i.qz         ; 2 uses
  %i.rb = icmp samesign ugt i64 %indvars.iv.i156.i, 3
  br i1 %i.rb, label %.split.i155.i, label %cellMargin.exit164.thread.i, !llvm.loop !8067

cellMargin.exit164.i:                             ; preds = %.split.us.i160.i
  %i.rc = fadd double %.0136214.i, %i.qi
  %i.rd = fadd double %i.rc, %i.qu                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.i.thread, label %.preheader.us.us.i.i

cellMargin.exit164.thread.i:                      ; preds = %.split.i155.i
  %i.re = fadd double %.0136214.i, %i.qo
  %i.rf = fadd double %i.re, %i.ra                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.thread.i, label %.thread68.us.i.i

.preheader.us.us.i.i:                             ; preds = %cellMargin.exit164.i, %bb.w
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i, %bb.w ], [ 0, %cellMargin.exit164.i ] ; 3 uses
  %.06477.us.us.us.i.i = phi double [ %i.rj, %bb.w ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv94.i.i
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv94.i.i
  %8 = load <2 x float>, ptr %i.rg, align 8, !tbaa !227 ; 3 uses
  %9 = load <2 x float>, ptr %i.rh, align 8, !tbaa !227 ; 3 uses
  %10 = shufflevector <2 x float> %9, <2 x float> %8, <2 x i32> <i32 0, i32 3>
  %11 = shufflevector <2 x float> %8, <2 x float> %9, <2 x i32> <i32 0, i32 3>
  %12 = fcmp olt <2 x float> %10, %11
  %13 = select <2 x i1> %12, <2 x float> %8, <2 x float> %9 ; 3 uses
  %14 = extractelement <2 x float> %13, i64 0
  %15 = extractelement <2 x float> %13, i64 1
  %i.ri = fcmp olt float %15, %14
  br i1 %i.ri, label %cellOverlap.exit.i, label %bb.w

bb.w:                                             ; preds = %.preheader.us.us.i.i
  %16 = fpext <2 x float> %13 to <2 x double>     ; 2 uses
  %shift349 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop350 = fsub <2 x double> %shift349, %16
  %17 = extractelement <2 x double> %foldExtExtBinop350, i64 0
  %i.rj = fmul double %.06477.us.us.us.i.i, %17   ; 2 uses
  %indvars.iv.next95.i.i = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %i.rk = icmp samesign ult i64 %indvars.iv.next95.i.i, %i.lo
  br i1 %i.rk, label %.preheader.us.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8068

.thread68.us.i.i:                                 ; preds = %cellMargin.exit164.thread.i, %bb.x
  %indvars.iv.i167.i = phi i64 [ %indvars.iv.next.i168.i, %bb.x ], [ 0, %cellMargin.exit164.thread.i ] ; 5 uses
  %.06477.us82.i.i = phi double [ %i.sc, %bb.x ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i167.i
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !227
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i167.i
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !227
  %i.rp = tail call i32 @llvm.smax.i32(i32 %i.rm, i32 %i.ro)
  %i.rq = sitofp i32 %i.rp to double              ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i167.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !227
  %i.ru = sitofp i32 %i.rt to double              ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i167.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !227
  %i.ry = sitofp i32 %i.rx to double              ; 2 uses
  %i.rz = fcmp olt double %i.ru, %i.ry
  %.pre-phi.i.i = select i1 %i.rz, double %i.ru, double %i.ry ; 2 uses
  %i.sa = fcmp olt double %.pre-phi.i.i, %i.rq
  br i1 %i.sa, label %cellOverlap.exit.i, label %bb.x

bb.x:                                             ; preds = %.thread68.us.i.i
  %i.sb = fsub nnan double %.pre-phi.i.i, %i.rq
  %i.sc = fmul double %.06477.us82.i.i, %i.sb     ; 2 uses
  %indvars.iv.next.i168.i = add nuw nsw i64 %indvars.iv.i167.i, 2 ; 2 uses
  %i.sd = icmp samesign ult i64 %indvars.iv.next.i168.i, %i.lo
  br i1 %i.sd, label %.thread68.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8068

cellOverlap.exit.i:                               ; preds = %.thread68.us.i.i, %bb.x, %.preheader.us.us.i.i, %bb.w
  %i.se = phi double [ %i.rd, %.preheader.us.us.i.i ], [ %i.rd, %bb.w ], [ %i.rf, %bb.x ], [ %i.rf, %.thread68.us.i.i ] ; 2 uses
  %.us-phi.i169.i.in = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.rj, %bb.w ], [ 0.000000e+00, %.thread68.us.i.i ], [ %i.sc, %bb.x ]
  %.us-phi.i169.i = fadd double %.us-phi.i169.i.in, 0.000000e+00 ; 2 uses
  br i1 %i.ln, label %cellOverlap.exit.i.thread, label %cellOverlap.exit.thread.i

cellOverlap.exit.i.thread:                        ; preds = %cellMargin.exit164.i, %cellOverlap.exit.i
  %.us-phi.i169.i76 = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.sf = phi double [ %i.se, %cellOverlap.exit.i ], [ %i.rd, %cellMargin.exit164.i ]
  switch i8 %i.mp, label %bb.ag [
    i8 5, label %bb.y
    i8 4, label %bb.z
    i8 3, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %cellOverlap.exit.i.thread
  %i.sg = load float, ptr %i.kr, align 4, !tbaa !227
  %i.sh = load float, ptr %i.ks, align 8, !tbaa !227
  %i.si = fsub float %i.sg, %i.sh
  %i.sj = fpext float %i.si to double
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %cellOverlap.exit.i.thread
  %.0.i170.i = phi double [ %i.sj, %bb.y ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.sk = load float, ptr %i.kt, align 4, !tbaa !227
  %i.sl = load float, ptr %i.ku, align 8, !tbaa !227
  %i.sm = fsub float %i.sk, %i.sl
  %i.sn = fpext float %i.sm to double
  %i.so = fmul double %.0.i170.i, %i.sn
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %cellOverlap.exit.i.thread
  %.1.i.i = phi double [ %i.so, %bb.z ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.sp = load float, ptr %i.kv, align 4, !tbaa !227
  %i.sq = load float, ptr %i.kw, align 8, !tbaa !227
  %i.sr = fsub float %i.sp, %i.sq
  %i.ss = fpext float %i.sr to double
  %i.st = fmul double %.1.i.i, %i.ss
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %cellOverlap.exit.i.thread
  %.2.i.i = phi double [ %i.st, %bb.aa ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.su = load float, ptr %i.kx, align 4, !tbaa !227
  %i.sv = load float, ptr %i.ky, align 8, !tbaa !227
  %i.sw = fsub float %i.su, %i.sv
  %i.sx = fpext float %i.sw to double
  %i.sy = fmul double %.2.i.i, %i.sx
  br label %bb.ag

cellOverlap.exit.thread.i:                        ; preds = %cellOverlap.exit.i, %cellMargin.exit164.thread.i
  %.us-phi.i169292.i = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.sz = phi double [ %i.se, %cellOverlap.exit.i ], [ %i.rf, %cellMargin.exit164.thread.i ]
  switch i8 %i.mp, label %bb.am [
    i8 5, label %bb.ac
    i8 4, label %bb.ad
    i8 3, label %bb.ae
    i8 2, label %bb.af
  ]

bb.ac:                                            ; preds = %cellOverlap.exit.thread.i
  %i.ta = load i32, ptr %i.kr, align 4, !tbaa !227
  %i.tb = sext i32 %i.ta to i64
  %i.tc = load i32, ptr %i.ks, align 8, !tbaa !227
  %i.td = sext i32 %i.tc to i64
  %i.te = sub nsw i64 %i.tb, %i.td
  %i.tf = sitofp i64 %i.te to double
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %cellOverlap.exit.thread.i
  %.4.i.i = phi double [ %i.tf, %bb.ac ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tg = load i32, ptr %i.kt, align 4, !tbaa !227
  %i.th = sext i32 %i.tg to i64
  %i.ti = load i32, ptr %i.ku, align 8, !tbaa !227
  %i.tj = sext i32 %i.ti to i64
  %i.tk = sub nsw i64 %i.th, %i.tj
  %i.tl = sitofp i64 %i.tk to double
  %i.tm = fmul nnan double %.4.i.i, %i.tl
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %cellOverlap.exit.thread.i
  %.5.i.i = phi double [ %i.tm, %bb.ad ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tn = load i32, ptr %i.kv, align 4, !tbaa !227
  %i.to = sext i32 %i.tn to i64
  %i.tp = load i32, ptr %i.kw, align 8, !tbaa !227
  %i.tq = sext i32 %i.tp to i64
  %i.tr = sub nsw i64 %i.to, %i.tq
  %i.ts = sitofp i64 %i.tr to double
  %i.tt = fmul double %.5.i.i, %i.ts
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %cellOverlap.exit.thread.i
  %.6.i.i = phi double [ %i.tt, %bb.ae ], [ 1.000000e+00, %cellOverlap.exit.thread.i ]
  %i.tu = load i32, ptr %i.kx, align 4, !tbaa !227
  %i.tv = sext i32 %i.tu to i64
  %i.tw = load i32, ptr %i.ky, align 8, !tbaa !227
  %i.tx = sext i32 %i.tw to i64
  %i.ty = sub nsw i64 %i.tv, %i.tx
  %i.tz = sitofp i64 %i.ty to double
  %i.ua = fmul double %.6.i.i, %i.tz
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab, %cellOverlap.exit.i.thread
  %.3.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.i.thread ], [ %i.sy, %bb.ab ]
  %i.ub = load float, ptr %i.kz, align 4, !tbaa !227
  %i.uc = load float, ptr %i.kq, align 8, !tbaa !227
  %i.ud = fsub float %i.ub, %i.uc
  %i.ue = fpext float %i.ud to double
  %i.uf = fmul double %.3.i.i, %i.ue
  switch i8 %i.mp, label %bb.al [
    i8 5, label %bb.ah
    i8 4, label %bb.ai
    i8 3, label %bb.aj
    i8 2, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ug = load float, ptr %i.la, align 4, !tbaa !227
  %i.uh = load float, ptr %i.lb, align 8, !tbaa !227
  %i.ui = fsub float %i.ug, %i.uh
  %i.uj = fpext float %i.ui to double
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i179.i = phi double [ %i.uj, %bb.ah ], [ 1.000000e+00, %bb.ag ]
  %i.uk = load float, ptr %i.lc, align 4, !tbaa !227
  %i.ul = load float, ptr %i.ld, align 8, !tbaa !227
  %i.um = fsub float %i.uk, %i.ul
  %i.un = fpext float %i.um to double
  %i.uo = fmul double %.0.i179.i, %i.un
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.1.i178.i = phi double [ %i.uo, %bb.ai ], [ 1.000000e+00, %bb.ag ]
  %i.up = load float, ptr %i.le, align 4, !tbaa !227
  %i.uq = load float, ptr %i.lf, align 8, !tbaa !227
  %i.ur = fsub float %i.up, %i.uq
  %i.us = fpext float %i.ur to double
  %i.ut = fmul double %.1.i178.i, %i.us
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.2.i176.i = phi double [ %i.ut, %bb.aj ], [ 1.000000e+00, %bb.ag ]
  %i.uu = load float, ptr %i.lg, align 4, !tbaa !227
  %i.uv = load float, ptr %i.lh, align 8, !tbaa !227
  %i.uw = fsub float %i.uu, %i.uv
  %i.ux = fpext float %i.uw to double
  %i.uy = fmul double %.2.i176.i, %i.ux
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %.3.i177.i = phi double [ 1.000000e+00, %bb.ag ], [ %i.uy, %bb.ak ]
  %i.uz = load float, ptr %i.li, align 4, !tbaa !227
  %i.va = load float, ptr %i.kp, align 8, !tbaa !227
  %i.vb = fsub float %i.uz, %i.va
  %i.vc = fpext float %i.vb to double
  %i.vd = fmul double %.3.i177.i, %i.vc
  br label %cellArea.exit180.i

bb.am:                                            ; preds = %bb.af, %cellOverlap.exit.thread.i
  %.7.i.i = phi double [ 1.000000e+00, %cellOverlap.exit.thread.i ], [ %i.ua, %bb.af ]
  %i.ve = load i32, ptr %i.kz, align 4, !tbaa !227
  %i.vf = sext i32 %i.ve to i64
  %i.vg = load i32, ptr %i.kq, align 8, !tbaa !227
  %i.vh = sext i32 %i.vg to i64
  %i.vi = sub nsw i64 %i.vf, %i.vh
  %i.vj = sitofp i64 %i.vi to double
end_hunk_5
begin_hunk_6_@geopolyWithinFunc:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20 ; 2 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !162
  %i.au = and i16 %i.at, -28672
  %.not.i.i17 = icmp eq i16 %i.au, 0
  br i1 %.not.i.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ar, i64 noundef %i.aq)
  br label %sqlite3_result_error_nomem.exit.thread

bb.m:                                             ; preds = %bb.k
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !227
  store i16 4, ptr %i.as, align 4, !tbaa !162
  br label %sqlite3_result_error_nomem.exit.thread

sqlite3_result_error_nomem.exit:                  ; preds = %bb.a
  %i.av = icmp eq ptr %i.b, null
  br i1 %i.av, label %sqlite3_free.exit, label %sqlite3_result_error_nomem.exit.thread

sqlite3_result_error_nomem.exit.thread:           ; preds = %.lr.ph.i.i, %sqlite3VdbeMemSetNull.exit.i, %bb.f, %bb.i, %bb.j, %bb.l, %bb.m, %sqlite3_result_error_nomem.exit
  %i.aw = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %sqlite3_result_error_nomem.exit.thread
  %i.ax = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i18, label %sqlite3_mutex_enter.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ay(ptr noundef nonnull %i.ax) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.o, %bb.n
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %i.b) #59, !inline_history !269
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bd = sub nsw i64 %i.bc, %i.bb
  store i64 %i.bd, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bf = add nsw i64 %i.be, -1
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bg(ptr noundef nonnull %i.b) #59, !inline_history !270
  %i.bh = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bh, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bi(ptr noundef nonnull %i.bh) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.q:                                             ; preds = %sqlite3_result_error_nomem.exit.thread
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bj(ptr noundef nonnull %i.b) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_result_error_nomem.exit, %sqlite3_mutex_enter.exit.i, %bb.p, %bb.q
  %i.bk = icmp eq ptr %i.e, null
  br i1 %i.bk, label %sqlite3_free.exit23, label %bb.r

bb.r:                                             ; preds = %sqlite3_free.exit
  %i.bl = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i19 = icmp eq i32 %i.bl, 0
  br i1 %.not.i19, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i20, label %sqlite3_mutex_enter.exit.i21, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bn(ptr noundef nonnull %i.bm) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i21

sqlite3_mutex_enter.exit.i21:                     ; preds = %bb.t, %bb.s
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bp = tail call i32 %i.bo(ptr noundef nonnull %i.e) #59, !inline_history !269
  %i.bq = sext i32 %i.bp to i64
  %i.br = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bs = sub nsw i64 %i.br, %i.bq
  store i64 %i.bs, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bu = add nsw i64 %i.bt, -1
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bv(ptr noundef nonnull %i.e) #59, !inline_history !270
  %i.bw = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i22 = icmp eq ptr %i.bw, null
  br i1 %.not.i4.i22, label %sqlite3_free.exit23, label %bb.u

bb.u:                                             ; preds = %sqlite3_mutex_enter.exit.i21
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bx(ptr noundef nonnull %i.bw) #59, !inline_history !271
  br label %sqlite3_free.exit23

bb.v:                                             ; preds = %bb.r
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.by(ptr noundef nonnull %i.e) #59, !inline_history !270
  br label %sqlite3_free.exit23

sqlite3_free.exit23:                              ; preds = %sqlite3_free.exit, %sqlite3_mutex_enter.exit.i21, %bb.u, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyContainsPointFunc(ptr nofree noundef captures(address_is_null) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !288
  %i.b = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %i.a, ptr noundef null) ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !162
  %i.g = zext i16 %i.f to i32                     ; 3 uses
  %i.h = and i32 %i.g, 8
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load double, ptr %i.d, align 8, !tbaa !227
  br label %sqlite3_value_double.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.g, 36
  %.not7.i.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.d, align 8, !tbaa !227
  %i.l = sitofp i64 %i.k to double
  br label %sqlite3_value_double.exit

bb.e:                                             ; preds = %bb.c
  %i.m = and i32 %i.g, 18
  %.not8.i.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i.i, label %sqlite3_value_double.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.d, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit

sqlite3_value_double.exit:                        ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi double [ %i.i, %bb.b ], [ %i.l, %bb.d ], [ %i.n, %bb.f ], [ 0.000000e+00, %bb.e ] ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !288  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i16, ptr %i.q, align 4, !tbaa !162
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i41 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_double.exit
  %i.u = load double, ptr %i.p, align 8, !tbaa !227
  br label %sqlite3_value_double.exit45

bb.h:                                             ; preds = %sqlite3_value_double.exit
  %i.v = and i32 %i.s, 36
  %.not7.i.i43 = icmp eq i32 %i.v, 0
  br i1 %.not7.i.i43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.p, align 8, !tbaa !227
  %i.x = sitofp i64 %i.w to double
  br label %sqlite3_value_double.exit45

bb.j:                                             ; preds = %bb.h
  %i.y = and i32 %i.s, 18
  %.not8.i.i44 = icmp eq i32 %i.y, 0
  br i1 %.not8.i.i44, label %sqlite3_value_double.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.p, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit45

sqlite3_value_double.exit45:                      ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i.i42 = phi double [ %i.u, %bb.g ], [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ 0.000000e+00, %bb.j ] ; 14 uses
  %i.aa = icmp eq ptr %i.b, null
  br i1 %i.aa, label %sqlite3_free.exit, label %.preheader

.preheader:                                       ; preds = %sqlite3_value_double.exit45
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !8105 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %.03669 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %select.unfold ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.idx84 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx84
  %3 = load <2 x float>, ptr %i.af, align 4, !tbaa !8107 ; 2 uses
  %4 = fpext <2 x float> %3 to <2 x double>       ; 3 uses
  %5 = load <2 x float>, ptr %i.ag, align 4, !tbaa !8107 ; 2 uses
  %6 = fpext <2 x float> %5 to <2 x double>       ; 4 uses
  %7 = extractelement <2 x double> %4, i64 0      ; 5 uses
  %i.ah = fcmp oeq double %.0.i.i, %7
  %8 = extractelement <2 x double> %4, i64 1      ; 4 uses
  %i.ai = fcmp oeq double %.0.i.i42, %8
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %9 = extractelement <2 x float> %5, i64 0       ; 2 uses
  %10 = extractelement <2 x float> %3, i64 0      ; 2 uses
  %i.aj = fcmp olt float %10, %9
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = fcmp ole double %.0.i.i, %7
  %11 = extractelement <2 x double> %6, i64 0
  %i.al = fcmp ogt double %.0.i.i, %11
  %or.cond45.i = or i1 %i.ak, %i.al
  br i1 %or.cond45.i, label %select.unfold, label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.am = fcmp ogt float %10, %9
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %12 = extractelement <2 x double> %6, i64 0
  %i.an = fcmp ole double %.0.i.i, %12
  %i.ao = fcmp ogt double %.0.i.i, %7
  %or.cond46.i = or i1 %i.ao, %i.an
  br i1 %or.cond46.i, label %select.unfold, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ap = fcmp une double %.0.i.i, %7
  br i1 %i.ap, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = fcmp olt double %.0.i.i42, %8
  %13 = extractelement <2 x double> %6, i64 1     ; 2 uses
  %i.ar = fcmp olt double %.0.i.i42, %13
  %or.cond47.i = and i1 %i.aq, %i.ar
  br i1 %or.cond47.i, label %select.unfold, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = fcmp ogt double %.0.i.i42, %8
  %i.at = fcmp ogt double %.0.i.i42, %13
  %or.cond48.i = and i1 %i.as, %i.at
  br i1 %or.cond48.i, label %select.unfold, label %.loopexit

bb.t:                                             ; preds = %bb.p, %bb.n
  %14 = fsub <2 x double> %6, %4                  ; 2 uses
  %i.au = fsub double %.0.i.i, %7
  %15 = extractelement <2 x double> %14, i64 1
  %i.av = fmul double %i.au, %15
  %16 = extractelement <2 x double> %14, i64 0
  %i.aw = fdiv double %i.av, %16
  %i.ax = fadd double %i.aw, %8                   ; 2 uses
  %i.ay = fcmp oeq double %.0.i.i42, %i.ax
  br i1 %i.ay, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = fcmp olt double %.0.i.i42, %i.ax
  %..i = zext i1 %i.az to i32
  br label %select.unfold

select.unfold:                                    ; preds = %bb.s, %bb.r, %bb.u, %bb.n, %bb.p, %bb.q
  %.0.i.ph = phi i32 [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.n ], [ %..i, %bb.u ], [ 0, %bb.s ]
  %i.ba = add nuw nsw i32 %.0.i.ph, %.03669       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.l, !llvm.loop !8112

.critedge.loopexit:                               ; preds = %select.unfold
  %i.bb = shl nuw i32 %i.ab, 1
  %i.bc = add i32 %i.bb, -2
  %i.bd = zext nneg i32 %i.bc to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.036.lcssa = phi i32 [ 0, %.preheader ], [ %i.ba, %.critedge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.bd, %.critedge.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0.lcssa ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !8107 ; 3 uses
  %i.bh = fpext float %i.bg to double             ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !8107
  %i.bk = fpext float %i.bj to double             ; 5 uses
  %i.bl = load float, ptr %i.be, align 4, !tbaa !8107 ; 3 uses
  %i.bm = fpext float %i.bl to double             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !8107
  %i.bp = fpext float %i.bo to double             ; 3 uses
  %i.bq = fcmp oeq double %.0.i.i, %i.bh
  %i.br = fcmp oeq double %.0.i.i42, %i.bk
  %or.cond.i46 = and i1 %i.bq, %i.br
  br i1 %or.cond.i46, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.bs = fcmp olt float %i.bg, %i.bl
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bt = fcmp ole double %.0.i.i, %i.bh
  %i.bu = fcmp ogt double %.0.i.i, %i.bm
  %or.cond45.i53 = or i1 %i.bt, %i.bu
  br i1 %or.cond45.i53, label %pointBeneathLine.exit, label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bv = fcmp ogt float %i.bg, %i.bl
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bw = fcmp ole double %.0.i.i, %i.bm
  %i.bx = fcmp ogt double %.0.i.i, %i.bh
  %or.cond46.i51 = or i1 %i.bx, %i.bw
  br i1 %or.cond46.i51, label %pointBeneathLine.exit, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.by = fcmp une double %.0.i.i, %i.bh
  br i1 %i.by, label %pointBeneathLine.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = fcmp olt double %.0.i.i42, %i.bk
  %i.ca = fcmp olt double %.0.i.i42, %i.bp
  %or.cond47.i47 = and i1 %i.bz, %i.ca
  br i1 %or.cond47.i47, label %pointBeneathLine.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = fcmp ogt double %.0.i.i42, %i.bk
  %i.cc = fcmp ogt double %.0.i.i42, %i.bp
  %or.cond48.i48 = and i1 %i.cb, %i.cc
  br i1 %or.cond48.i48, label %pointBeneathLine.exit, label %.loopexit

bb.ac:                                            ; preds = %bb.y, %bb.w
  %i.cd = fsub double %i.bp, %i.bk
  %i.ce = fsub double %.0.i.i, %i.bh
  %i.cf = fmul double %i.ce, %i.cd
  %i.cg = fsub double %i.bm, %i.bh
  %i.ch = fdiv double %i.cf, %i.cg
  %i.ci = fadd double %i.ch, %i.bk                ; 2 uses
  %i.cj = fcmp oeq double %.0.i.i42, %i.ci
  br i1 %i.cj, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = fcmp olt double %.0.i.i42, %i.ci
  %..i52 = zext i1 %i.ck to i32
  br label %pointBeneathLine.exit

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.l, %.critedge, %bb.ab, %bb.ac
  %i.cl = load ptr, ptr %0, align 8, !tbaa !288   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 20 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !162
  %i.co = and i16 %i.cn, -28672
  %.not.i.i55 = icmp eq i16 %i.co, 0
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cl, i64 noundef 1)
  br label %sqlite3_result_int.exit

bb.af:                                            ; preds = %.loopexit
  store i64 1, ptr %i.cl, align 8, !tbaa !227
  store i16 4, ptr %i.cm, align 4, !tbaa !162
  br label %sqlite3_result_int.exit

pointBeneathLine.exit:                            ; preds = %bb.ab, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ad
  %.2 = phi i32 [ %..i52, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.ab ]
  %i.cp = add nuw nsw i32 %.2, %.036.lcssa
  %i.cq = and i32 %i.cp, 1
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = load ptr, ptr %0, align 8, !tbaa !288   ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20 ; 3 uses
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !162
  %i.cv = and i16 %i.cu, -28672
  %.not.i.i56 = icmp eq i16 %i.cv, 0              ; 2 uses
  br i1 %i.cr, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %pointBeneathLine.exit
  br i1 %.not.i.i56, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cs, i64 noundef 0)
  br label %sqlite3_result_int.exit

bb.ai:                                            ; preds = %bb.ag
  store i64 0, ptr %i.cs, align 8, !tbaa !227
  store i16 4, ptr %i.ct, align 4, !tbaa !162
  br label %sqlite3_result_int.exit

bb.aj:                                            ; preds = %pointBeneathLine.exit
  br i1 %.not.i.i56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cs, i64 noundef 2)
  br label %sqlite3_result_int.exit

bb.al:                                            ; preds = %bb.aj
  store i64 2, ptr %i.cs, align 8, !tbaa !227
  store i16 4, ptr %i.ct, align 4, !tbaa !162
  br label %sqlite3_result_int.exit

sqlite3_result_int.exit:                          ; preds = %bb.ae, %bb.af, %bb.ah, %bb.ai, %bb.ak, %bb.al
  %i.cw = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %sqlite3_result_int.exit
  %i.cx = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i60, label %sqlite3_mutex_enter.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.cy(ptr noundef nonnull %i.cx) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.an, %bb.am
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.da = tail call i32 %i.cz(ptr noundef nonnull %i.b) #59, !inline_history !269
  %i.db = sext i32 %i.da to i64
  %i.dc = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.dd = sub nsw i64 %i.dc, %i.db
  store i64 %i.dd, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.de = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.df = add nsw i64 %i.de, -1
  store i64 %i.df, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.dg(ptr noundef nonnull %i.b) #59, !inline_history !270
  %i.dh = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dh, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.ao

bb.ao:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.di(ptr noundef nonnull %i.dh) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.ap:                                            ; preds = %sqlite3_result_int.exit
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.dj(ptr noundef nonnull %i.b) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.ap, %bb.ao, %sqlite3_mutex_enter.exit.i, %sqlite3_value_double.exit45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyOverlapFunc(ptr nofree noundef captures(address_is_null) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !288
  %i.b = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %i.a, ptr noundef null) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.e = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %i.d, ptr noundef null) ; 6 uses
  %i.f = icmp ne ptr %i.b, null
  %i.g = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
end_hunk_6
