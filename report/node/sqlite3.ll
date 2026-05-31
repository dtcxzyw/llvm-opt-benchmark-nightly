inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@exprDup:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !227
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !227
  %i.bb = zext nneg i32 %.2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.ba, i64 %i.bb, i1 false)
  %i.bc = add nuw nsw i32 %.083, %.2
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !367
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi i32 [ %.pre, %bb.u ], [ %i.av, %bb.t ]
  %.184 = phi i32 [ %i.bc, %bb.u ], [ %.083, %bb.t ]
  %i.be = add nuw nsw i32 %.184, 7
  %i.bf = and i32 %i.be, -8
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.bg
  store ptr %i.bh, ptr %4, align 8, !tbaa !4061
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !367 ; 2 uses
  %i.bk = or i32 %i.bd, %i.bj
  %i.bl = and i32 %i.bk, 8454144
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bn = and i32 %i.bj, 4096
  %.not101 = icmp eq i32 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !227 ; 2 uses
  br i1 %.not101, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call fastcc ptr @sqlite3SelectDup(ptr noundef %0, ptr noundef %i.bp, i32 noundef %2)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.br = load i8, ptr %1, align 8, !tbaa !3021
  %.not102 = icmp eq i8 %i.br, -110
  %i.bs = select i1 %.not102, i32 0, i32 %2
  %i.bt = tail call fastcc ptr @sqlite3ExprListDup(ptr noundef %0, ptr noundef %i.bp, i32 noundef %i.bs)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink = phi ptr [ %i.bt, %bb.y ], [ %i.bq, %bb.x ]
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge, i64 32
  store ptr %.sink, ptr %i.bu, align 8, !tbaa !227
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !367
  %i.bw = and i32 %i.bv, 16777216
  %.not103 = icmp eq i32 %i.bw, 0
  br i1 %.not103, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !227
  %i.bz = tail call fastcc ptr @sqlite3WindowDup(ptr noundef %0, ptr noundef nonnull %storemerge, ptr noundef %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge, i64 64
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !227
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cb = load i8, ptr %1, align 8, !tbaa !3021
  %i.cc = icmp eq i8 %i.cb, -78                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !371 ; 6 uses
  br i1 %i.p, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cc, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not104 = icmp eq ptr %i.ce, null
  br i1 %.not104, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = call fastcc ptr @exprDup(ptr noundef %0, ptr noundef %i.ce, i32 noundef 1, ptr noundef nonnull %4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink121 = phi ptr [ %i.ce, %bb.ac ], [ %i.cf, %bb.ae ], [ null, %bb.ad ]
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  store ptr %.sink121, ptr %i.cg, align 8, !tbaa !371
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1157 ; 2 uses
  %.not105 = icmp eq ptr %i.ci, null
  br i1 %.not105, label %.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = call fastcc ptr @exprDup(ptr noundef %0, ptr noundef %i.ci, i32 noundef 1, ptr noundef nonnull %4)
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ab
  br i1 %i.cc, label %sqlite3ExprDup.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i109 = icmp eq ptr %i.ce, null
  br i1 %.not.i109, label %sqlite3ExprDup.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = tail call fastcc ptr @exprDup(ptr noundef %0, ptr noundef %i.ce, i32 noundef 0, ptr noundef null), !inline_history !3580
  br label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %bb.aj, %bb.ai, %bb.ah
  %.sink123 = phi ptr [ %i.ce, %bb.ah ], [ %i.ck, %bb.aj ], [ null, %bb.ai ]
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge, i64 16
  store ptr %.sink123, ptr %i.cl, align 8, !tbaa !371
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1157 ; 2 uses
  %.not.i110 = icmp eq ptr %i.cn, null
  br i1 %.not.i110, label %.sink.split, label %bb.ak

bb.ak:                                            ; preds = %sqlite3ExprDup.exit
  %i.co = tail call fastcc ptr @exprDup(ptr noundef %0, ptr noundef %i.cn, i32 noundef 0, ptr noundef null), !inline_history !3580
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %sqlite3ExprDup.exit, %bb.ag, %bb.af
  %.sink125 = phi ptr [ null, %bb.af ], [ %i.cj, %bb.ag ], [ %i.co, %bb.ak ], [ null, %sqlite3ExprDup.exit ]
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  store ptr %.sink125, ptr %i.cp, align 8, !tbaa !1157
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %bb.v, %bb.i
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = load i64, ptr %4, align 8
  store i64 %i.cq, ptr %3, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret ptr %storemerge
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 16, -2147483648) i32 @dupedExprSize(ptr noundef nonnull readonly captures(none) %0) unnamed_addr #19 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.g, %bb.a
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.x, %bb.g ]
  %.tr = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !367  ; 2 uses
  %i.c = and i32 %i.b, 131072
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %dupedExprStructSize.exit.i

bb.b:                                             ; preds = %tailrecurse
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !371
  %.not4.i.i = icmp eq ptr %i.e, null
  br i1 %.not4.i.i, label %bb.c, label %dupedExprStructSize.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227
  %.not5.i.i = icmp eq ptr %i.g, null
  %spec.select.i.i = select i1 %.not5.i.i, i32 16, i32 44
  br label %dupedExprStructSize.exit.i

dupedExprStructSize.exit.i:                       ; preds = %bb.c, %bb.b, %tailrecurse
  %.0.i.i = phi i32 [ 44, %bb.b ], [ %spec.select.i.i, %bb.c ], [ 72, %tailrecurse ] ; 3 uses
  %i.h = and i32 %i.b, 2048
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %dupedExprNodeSize.exit

bb.d:                                             ; preds = %dupedExprStructSize.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !227  ; 2 uses
  %.not7.i = icmp eq ptr %i.j, null
  br i1 %.not7.i, label %dupedExprNodeSize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #60
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 1073741823
  %i.n = or disjoint i32 %.0.i.i, 1
  %i.o = add nuw nsw i32 %i.n, %i.m
  br label %dupedExprNodeSize.exit

dupedExprNodeSize.exit:                           ; preds = %dupedExprStructSize.exit.i, %bb.d, %bb.e
  %.0.i = phi i32 [ %.0.i.i, %dupedExprStructSize.exit.i ], [ %i.o, %bb.e ], [ %.0.i.i, %bb.d ]
  %i.p = add nuw nsw i32 %.0.i, 7
  %i.q = and i32 %i.p, -8                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !371  ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %dupedExprNodeSize.exit
  %i.t = tail call fastcc i32 @dupedExprSize(ptr noundef %i.s)
  %i.u = add nuw nsw i32 %i.t, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %dupedExprNodeSize.exit
  %.0 = phi i32 [ %i.u, %bb.f ], [ %i.q, %dupedExprNodeSize.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1157 ; 2 uses
  %.not9 = icmp eq ptr %i.w, null
  %i.x = add i32 %.0, %accumulator.tr             ; 2 uses
  br i1 %.not9, label %bb.h, label %tailrecurse

bb.h:                                             ; preds = %bb.g
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprCodeFactorable(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i16 2, ptr %i.d, align 4, !tbaa !3505
  store ptr %0, ptr %3, align 8, !tbaa !3507
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @exprNodeIsConstant, ptr %i.e, align 8, !tbaa !3508
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @sqlite3SelectWalkFail, ptr %i.f, align 8, !tbaa !3509
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %sqlite3ExprIsConstantNotJoin.exit.thread, label %sqlite3ExprIsConstantNotJoin.exit

sqlite3ExprIsConstantNotJoin.exit.thread:         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %bb.c

sqlite3ExprIsConstantNotJoin.exit:                ; preds = %bb.b
  %i.g = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %1) #62, !inline_history !3510 ; 0 uses
  %.pre.i.i = load i16, ptr %i.d, align 4, !tbaa !3505
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %.not8 = icmp eq i16 %.pre.i.i, 0
  br i1 %.not8, label %.thread, label %bb.c

.thread:                                          ; preds = %sqlite3ExprIsConstantNotJoin.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !651
  br label %bb.e

bb.c:                                             ; preds = %sqlite3ExprIsConstantNotJoin.exit.thread, %sqlite3ExprIsConstantNotJoin.exit
  %i.i = call fastcc i32 @sqlite3ExprCodeRunJustOnce(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) ; 0 uses
  br label %sqlite3ExprDelete.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !651    ; 2 uses
  %.not.i10 = icmp eq ptr %1, null
  br i1 %.not.i10, label %sqlite3ExprDup.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.k = phi ptr [ %i.h, %.thread ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = call fastcc ptr @exprDup(ptr noundef %i.k, ptr noundef readonly %1, i32 noundef 0, ptr noundef null), !inline_history !3995
  br label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %bb.d, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.n = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 103
  %i.p = load i8, ptr %i.o, align 1, !tbaa !550
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.f, label %sqlite3ExprCodeCopy.exit

bb.f:                                             ; preds = %sqlite3ExprDup.exit
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.n, i32 noundef %2), !inline_history !3996
  br label %sqlite3ExprCodeCopy.exit

sqlite3ExprCodeCopy.exit:                         ; preds = %sqlite3ExprDup.exit, %bb.f
  %.not.i9 = icmp eq ptr %i.n, null
  br i1 %.not.i9, label %sqlite3ExprDelete.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3ExprCodeCopy.exit
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.m, ptr noundef %i.n), !inline_history !3997
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.g, %sqlite3ExprCodeCopy.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3ExprIfTrue(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !976  ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %1, null
  %or.cond126 = or i1 %i.h, %i.g
  br i1 %or.cond126, label %sqlite3ReleaseTempReg.exit141, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 8, !tbaa !3021    ; 5 uses
  %i.j = zext i8 %i.i to i32                      ; 7 uses
  switch i8 %i.i, label %bb.at [
    i8 44, label %bb.c
    i8 43, label %bb.c
    i8 19, label %bb.l
    i8 -81, label %bb.m
    i8 45, label %bb.s
    i8 46, label %bb.s
    i8 57, label %bb.t
    i8 56, label %bb.t
    i8 55, label %bb.t
    i8 58, label %bb.t
    i8 53, label %bb.t
    i8 54, label %bb.t
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 49, label %bb.an
    i8 50, label %bb.ao
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call fastcc ptr @sqlite3ExprSimplifiedAndOr(ptr noundef nonnull %1) ; 2 uses
  %.not124 = icmp eq ptr %i.k, %1
  br i1 %.not124, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @sqlite3ExprIfTrue(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %2, i32 noundef %3)
  br label %sqlite3VdbeAddOp2.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !371
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !367
  %i.p = and i32 %i.o, 4194304
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1157
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !367
  %i.u = and i32 %i.t, 4194304
  %.not2.i = icmp eq i32 %i.u, 0
  br i1 %.not2.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = phi ptr [ %i.w, %bb.h ], [ %i.l, %bb.g ]
  %i.y = phi ptr [ %i.l, %bb.h ], [ %i.v, %bb.g ]
  %.0114 = load ptr, ptr %i.y, align 8, !tbaa !366 ; 2 uses
  %.0115 = load ptr, ptr %i.x, align 8, !tbaa !366 ; 2 uses
  %i.z = icmp eq i8 %i.i, 44
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !3296
  %i.ac = add nsw i32 %i.ab, -1                   ; 3 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !3296
  %i.ad = xor i32 %3, 16
  tail call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %.0114, i32 noundef %i.ac, i32 noundef %i.ad)
  tail call void @sqlite3ExprIfTrue(ptr noundef nonnull %0, ptr noundef %.0115, i32 noundef %2, i32 noundef %3)
  tail call fastcc void @sqlite3VdbeResolveLabel(ptr noundef nonnull %i.f, i32 noundef %i.ac)
  br label %sqlite3VdbeAddOp2.exit

bb.k:                                             ; preds = %bb.i
  tail call void @sqlite3ExprIfTrue(ptr noundef nonnull %0, ptr noundef %.0114, i32 noundef %2, i32 noundef %3)
  tail call void @sqlite3ExprIfTrue(ptr noundef nonnull %0, ptr noundef %.0115, i32 noundef %2, i32 noundef %3)
  br label %sqlite3VdbeAddOp2.exit

bb.l:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !371
  tail call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %i.af, i32 noundef %2, i32 noundef %3)
  br label %sqlite3VdbeAddOp2.exit

bb.m:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !3276
  %i.ai = icmp eq i8 %i.ah, 46                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1157, !nonnull !1096, !noundef !1096 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !367 ; 2 uses
  %i.an = and i32 %i.am, 532480
  %.not7.i2.i = icmp eq i32 %i.an, 0
  br i1 %.not7.i2.i, label %sqlite3ExprTruthValue.exit, label %.lr.ph.i

end_hunk_0
