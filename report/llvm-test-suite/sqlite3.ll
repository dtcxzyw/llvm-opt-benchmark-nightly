inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@sqlite3PutVarint:bb.a
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.g, align 1, !tbaa !37
  %i.h = lshr i64 %1, 15
  %i.i = trunc i64 %i.h to i8
  %i.j = or i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.j, ptr %i.k, align 1, !tbaa !37
  %i.l = lshr i64 %1, 22
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !37
  %i.p = lshr i64 %1, 29
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !37
  %i.t = lshr i64 %1, 36
  %i.u = trunc i64 %i.t to i8
  %i.v = or i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !37
  %i.x = lshr i64 %1, 43
  %i.y = trunc i64 %i.x to i8
  %i.z = or i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !37
  %i.ab = lshr i64 %1, 50
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = or i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !37
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -128
  store i8 %i.ah, ptr %0, align 1, !tbaa !37
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %.preheader ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 7 uses
  %.125 = phi i64 [ %i.al, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.ai = trunc i64 %.125 to i8
  %i.aj = or i8 %i.ai, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !37
  %i.al = lshr i64 %.125, 7                       ; 2 uses
  %.not27 = icmp eq i64 %i.al, 0
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  br i1 %.not27, label %iter.check, label %.preheader, !llvm.loop !960

iter.check:                                       ; preds = %.preheader
  %i.am = load i8, ptr %i.a, align 1, !tbaa !37
  %i.an = and i8 %i.am, 127
  store i8 %i.an, ptr %i.a, align 1, !tbaa !37
  %wide.trip.count = zext nneg i32 %indvars.iv43 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %indvars.iv43, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i32 %indvars.iv43, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ao = sub nsw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = sub i64 %indvars.iv, %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -15
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ar, align 1, !tbaa !37
  %wide.load46 = load <16 x i8>, ptr %i.as, align 1, !tbaa !37
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <16 x i8> %wide.load46, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <16 x i8> %reverse, ptr %i.at, align 1, !tbaa !37
  store <16 x i8> %reverse47, ptr %i.au, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1019

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !67

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.aw = sub nsw i64 %indvars.iv, %n.vec49
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = sub i64 %indvars.iv, %index50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -7
  %wide.load51 = load <8 x i8>, ptr %i.az, align 1, !tbaa !37
  %reverse52 = shufflevector <8 x i8> %wide.load51, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %index50
  store <8 x i8> %reverse52, ptr %i.ba, align 1, !tbaa !37
  %index.next53 = add nuw i64 %index50, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1020

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec49, %wide.trip.count
  br i1 %cmp.n54, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.middle.block ]
  %indvars.iv36.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %vec.epilog.scalar.ph ], [ %indvars.iv38.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %vec.epilog.scalar.ph ], [ %indvars.iv36.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv36
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !37
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1021

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bf = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit33, %.loopexit.loopexit
  %.026 = phi i32 [ %i.bf, %.loopexit.loopexit ], [ 9, %.loopexit.loopexit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeBeginStmt(ptr noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !449
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !753
  %.not = icmp eq i8 %i.f, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !633
  %.not9 = icmp eq i8 %i.h, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !777
  %.not11 = icmp eq i8 %i.j, 0
  %i.k = select i1 %.not11, i32 1, i32 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.m = load i8, ptr %i.l, align 1, !tbaa !777
  %.not10 = icmp eq i8 %i.m, 0
  br i1 %.not10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !461
  %i.o = tail call fastcc i32 @sqlite3PagerStmtBegin(ptr noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %bb.d ]
  store i8 1, ptr %i.g, align 8, !tbaa !633
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.p, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeBeginTrans(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !325  ; 27 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !323
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !449
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !753   ; 2 uses
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i8 %i.g, 1
  %i.j = icmp ne i32 %1, 0                        ; 6 uses
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 33 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !777
  %i.m = icmp ne i8 %i.l, 0
  %or.cond3 = and i1 %i.j, %i.m
  br i1 %or.cond3, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !630
  %i.p = icmp eq i8 %i.o, 2
  %or.cond5 = and i1 %i.j, %i.p
  br i1 %or.cond5, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %1, 1                       ; 3 uses
  br i1 %i.q, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.05392 = load ptr, ptr %i.r, align 8, !tbaa !794 ; 2 uses
  %.not93 = icmp eq ptr %.05392, null
  br i1 %.not93, label %.thread, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.05394, i64 16
  %.053 = load ptr, ptr %i.s, align 8, !tbaa !794 ; 2 uses
  %.not = icmp eq ptr %.053, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !1022

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.05394 = phi ptr [ %.053, %bb.g ], [ %.05392, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %.05394, align 8, !tbaa !795
  %.not58 = icmp eq ptr %i.t, %0
  br i1 %.not58, label %bb.g, label %sqlite3BtreeInvokeBusyHandler.exit.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 46 ; 3 uses
  %.phi.trans.insert69.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 3 uses
  %.phi.trans.insert71.i = getelementptr inbounds nuw i8, ptr %i.c, i64 35 ; 3 uses
  %.phi.trans.insert73.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ac = zext i1 %i.q to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %sqlite3BtreeInvokeBusyHandler.exit, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 5, %sqlite3BtreeInvokeBusyHandler.exit ]
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !631 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %lockBtree.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.ai = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.ah, i32 noundef 1, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.j, label %sqlite3BtreeGetPage.exit.i

sqlite3BtreeGetPage.exit.i:                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %newDatabase.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !652 ; 9 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !635
  %.not.i.i.i = icmp eq ptr %i.ak, null           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 88 ; 2 uses
  %i.am = select i1 %.not.i.i.i, ptr null, ptr %i.al
  %i.an = getelementptr i8, ptr %i.aj, i64 80
  %.val.i.i = load ptr, ptr %i.an, align 8, !tbaa !657
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 200 ; 2 uses
  store ptr %.val.i.i, ptr %i.ao, align 8, !tbaa !801
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 208 ; 2 uses
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !629
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store ptr %i.c, ptr %i.aq, align 8, !tbaa !802
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 216
  store i32 1, ptr %i.ar, align 8, !tbaa !329
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i8 100, ptr %i.as, align 8, !tbaa !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.au = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.at)
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !831
  %.pre70.i = load i8, ptr %.phi.trans.insert69.i, align 2, !tbaa !1023
  %.pre72.i = load i8, ptr %.phi.trans.insert71.i, align 1, !tbaa !1024
  %.pre74.i = load i8, ptr %.phi.trans.insert73.i, align 4, !tbaa !1025
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !801 ; 11 uses
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = icmp ne i128 %i.ax, 265465397511803988906881385371554131
  %i.az = zext i1 %i.ay to i32
  %.not54.i = icmp eq i32 %i.az, 0
  br i1 %.not54.i, label %bb.l, label %.thread67.i

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = icmp ugt i8 %i.bb, 1
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.k, align 1, !tbaa !777
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = icmp ugt i8 %i.be, 1
  br i1 %i.bf, label %.thread67.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37  ; 2 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm            ; 4 uses
  %i.bo = add nuw nsw i32 %i.bn, 65535
  %i.bp = and i32 %i.bo, %i.bn
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = icmp ult i8 %i.bh, 2
  %or.cond.i = or i1 %i.br, %i.bq
  br i1 %or.cond.i, label %.thread67.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = trunc nuw i32 %i.bn to i16
  store i16 %i.bs, ptr %i.v, align 4, !tbaa !832
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nuw nsw i32 %i.bn, %i.bv            ; 2 uses
  %i.bx = trunc nuw i32 %i.bw to i16              ; 2 uses
  store i16 %i.bx, ptr %.phi.trans.insert.i, align 2, !tbaa !831
  %i.by = icmp samesign ult i32 %i.bw, 500
  br i1 %i.by, label %.thread67.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 21
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !37  ; 2 uses
  store i8 %i.ca, ptr %.phi.trans.insert69.i, align 2, !tbaa !1023
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 22
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37  ; 2 uses
  store i8 %i.cc, ptr %.phi.trans.insert71.i, align 1, !tbaa !1024
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 23
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37  ; 2 uses
  store i8 %i.ce, ptr %.phi.trans.insert73.i, align 4, !tbaa !1025
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !37
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i8
  store i8 %i.ci, ptr %i.w, align 2, !tbaa !846
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ck = load i32, ptr %i.cj, align 1, !tbaa !37
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %i.x, align 1, !tbaa !908
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i
  %i.cn = phi i8 [ %.pre74.i, %._crit_edge.i ], [ %i.ce, %bb.q ]
  %i.co = phi i8 [ %.pre72.i, %._crit_edge.i ], [ %i.cc, %bb.q ]
  %i.cp = phi i8 [ %.pre70.i, %._crit_edge.i ], [ %i.ca, %bb.q ]
  %i.cq = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.bx, %bb.q ]
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  %i.cs = add nsw i32 %i.cr, -12                  ; 3 uses
  %i.ct = zext i8 %i.cp to i32
  %i.cu = mul nsw i32 %i.cs, %i.ct                ; 2 uses
  %i.cv = sdiv i32 %i.cu, 255                     ; 2 uses
  %i.cw = add nsw i32 %i.cv, -23
  store i32 %i.cw, ptr %i.y, align 8, !tbaa !1026
  %i.cx = zext i8 %i.co to i32
  %i.cy = mul nsw i32 %i.cs, %i.cx
  %i.cz = sdiv i32 %i.cy, 255                     ; 2 uses
  %i.da = add nsw i32 %i.cz, -23
  store i32 %i.da, ptr %i.z, align 4, !tbaa !1027
  %i.db = add nsw i32 %i.cr, -35
  store i32 %i.db, ptr %i.aa, align 8, !tbaa !1028
  %i.dc = zext i8 %i.cn to i32
  %i.dd = mul nsw i32 %i.cs, %i.dc
  %i.de = sdiv i32 %i.dd, 255
  %i.df = add nsw i32 %i.de, -23
  store i32 %i.df, ptr %i.ab, align 4, !tbaa !1029
  %i.dg = icmp sgt i32 %i.cz, %i.cv
  %i.dh = icmp slt i32 %i.cu, 5865
  %or.cond58.i = or i1 %i.dh, %i.dg
  br i1 %or.cond58.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.am, ptr %i.u, align 8, !tbaa !631
  br label %lockBtree.exit

bb.t:                                             ; preds = %bb.r
  br i1 %.not.i.i.i, label %releasePage.exit.i, label %.thread67.i

.thread67.i:                                      ; preds = %bb.t, %bb.p, %bb.o, %bb.n, %bb.k
  %i.di = load ptr, ptr %i.ap, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.di)
  br label %releasePage.exit.i

releasePage.exit.i:                               ; preds = %.thread67.i, %bb.t
  store ptr null, ptr %i.u, align 8, !tbaa !631
  br label %newDatabase.exit.thread

lockBtree.exit:                                   ; preds = %bb.s, %bb.h
  %i.dj = phi ptr [ %i.af, %bb.h ], [ %i.al, %bb.s ]
  %.3 = phi i32 [ %.2, %bb.h ], [ 0, %bb.s ]      ; 2 uses
  %i.dk = icmp eq i32 %.3, 0                      ; 2 uses
  %or.cond7 = and i1 %i.j, %i.dk
  br i1 %or.cond7, label %bb.u, label %newDatabase.exit

bb.u:                                             ; preds = %lockBtree.exit
  %i.dl = load i8, ptr %i.k, align 1, !tbaa !777
  %.not59 = icmp eq i8 %i.dl, 0
  br i1 %.not59, label %bb.v, label %newDatabase.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 120
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !629
  %.val = load ptr, ptr %i.dn, align 8, !tbaa !635
  %i.do = tail call fastcc i32 @sqlite3PagerBegin(ptr %.val, i32 noundef %i.ac) ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.w, label %newDatabase.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.dr = tail call fastcc i32 @sqlite3PagerPagecount(ptr noundef %i.dq)
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.thread77, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load ptr, ptr %i.u, align 8, !tbaa !631 ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !801 ; 18 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 120
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !629
  %i.dy = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.dx) ; 2 uses
  %.not.i62 = icmp eq i32 %i.dy, 0
  br i1 %.not.i62, label %bb.y, label %newDatabase.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dv, ptr noundef nonnull align 16 dereferenceable(16) @zMagicHeader, i64 16, i1 false)
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  %2 = load i8, ptr %.shift.i, align 1, !tbaa !832
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i8 %2, ptr %i.ea, align 1, !tbaa !37
  %i.eb = load i16, ptr %i.v, align 4, !tbaa !832
  %i.ec = trunc i16 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 17
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 18
  store i8 1, ptr %i.ee, align 1, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 19
  store i8 1, ptr %i.ef, align 1, !tbaa !37
  %i.eg = load i16, ptr %i.v, align 4, !tbaa !832
  %i.eh = trunc i16 %i.eg to i8
  %i.ei = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !831
  %i.ej = trunc i16 %i.ei to i8
  %i.ek = sub i8 %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !37
  %i.em = load i8, ptr %.phi.trans.insert69.i, align 2, !tbaa !1023
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 21
  store i8 %i.em, ptr %i.en, align 1, !tbaa !37
  %i.eo = load i8, ptr %.phi.trans.insert71.i, align 1, !tbaa !1024
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 22
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !37
  %i.eq = load i8, ptr %.phi.trans.insert73.i, align 4, !tbaa !1025
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 23
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !37
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.es, i8 0, i64 76, i1 false)
  %i.et = load ptr, ptr %i.dz, align 8, !tbaa !801
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 104 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !802 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !803 ; 3 uses
  %i.ey = zext i8 %i.ex to i64                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ey ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 46 ; 3 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !831
  %i.fc = zext i16 %i.fb to i64
  %i.fd = sub nsw i64 %i.fc, %i.ey
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ez, i8 0, i64 %i.fd, i1 false)
  store i8 13, ptr %i.ez, align 1, !tbaa !37
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store i32 0, ptr %i.fe, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 7
  store i8 0, ptr %i.ff, align 1, !tbaa !37
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 47
  %3 = load i8, ptr %.shift.i.i, align 1, !tbaa !831
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  store i8 %3, ptr %i.fg, align 1, !tbaa !37
  %i.fh = load i16, ptr %i.fa, align 2, !tbaa !831
  %i.fi = trunc i16 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 6
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !37
  %i.fk = load i16, ptr %i.fa, align 2, !tbaa !831
  %i.fl = zext i8 %i.ex to i16
  %i.fm = add nuw nsw i16 %i.fl, 8                ; 2 uses
  %i.fn = sub i16 %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dt, i64 18
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !834
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 9
  store i8 0, ptr %i.fp, align 1, !tbaa !812
  %i.fq = load ptr, ptr %i.eu, align 8, !tbaa !802
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dt, i64 10
  %i.ft = load <2 x i32>, ptr %i.fr, align 8, !tbaa !4
  %i.fu = trunc <2 x i32> %i.ft to <2 x i16>
  store <2 x i16> %i.fu, ptr %i.fs, align 2, !tbaa !170
  store i8 %i.ex, ptr %i.ew, align 8, !tbaa !803
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dt, i64 14
  store i16 %i.fm, ptr %i.fv, align 2, !tbaa !809
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i16 0, ptr %i.fw, align 4, !tbaa !811
  store <8 x i8> <i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, i8 1, i8 1>, ptr %i.dt, align 8, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 37
  store i8 1, ptr %i.fx, align 1, !tbaa !1030
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 52
  %i.fz = load i8, ptr %i.w, align 2, !tbaa !846
  store i8 0, ptr %i.fy, align 1, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dv, i64 53
  store i8 0, ptr %i.ga, align 1, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dv, i64 54
  store i8 0, ptr %i.gb, align 1, !tbaa !37
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dv, i64 55
  store i8 %i.fz, ptr %i.gc, align 1, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.ge = load i8, ptr %i.x, align 1, !tbaa !908
  store i8 0, ptr %i.gd, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dv, i64 65
  store i8 0, ptr %i.gf, align 1, !tbaa !37
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 66
  store i8 0, ptr %i.gg, align 1, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dv, i64 67
  store i8 %i.ge, ptr %i.gh, align 1, !tbaa !37
  br label %.thread77

newDatabase.exit:                                 ; preds = %lockBtree.exit
  br i1 %i.dk, label %bb.z, label %newDatabase.exit.thread

bb.z:                                             ; preds = %newDatabase.exit
  br i1 %i.j, label %.thread77, label %.critedge.thread

.thread77:                                        ; preds = %bb.w, %bb.y, %bb.z
  store i8 0, ptr %i.ae, align 8, !tbaa !633
  br label %.critedge.thread

newDatabase.exit.thread:                          ; preds = %sqlite3BtreeGetPage.exit.i, %releasePage.exit.i, %bb.x, %bb.u, %bb.v, %newDatabase.exit
  %.472 = phi i32 [ %.3, %newDatabase.exit ], [ %i.dy, %bb.x ], [ 8, %bb.u ], [ %i.do, %bb.v ], [ %i.ai, %sqlite3BtreeGetPage.exit.i ], [ 26, %releasePage.exit.i ] ; 2 uses
  %i.gi = load i8, ptr %i.n, align 8, !tbaa !630
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.aa, label %unlockBtreeIfUnused.exit

bb.aa:                                            ; preds = %newDatabase.exit.thread
  %i.gk = load ptr, ptr %i.ad, align 8, !tbaa !453
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ab, label %unlockBtreeIfUnused.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gm = load ptr, ptr %i.u, align 8, !tbaa !631 ; 2 uses
  %.not.i64 = icmp eq ptr %i.gm, null
  br i1 %.not.i64, label %unlockBtreeIfUnused.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !461
  %i.go = getelementptr i8, ptr %i.gn, i64 76
  %.val.i = load i32, ptr %i.go, align 4, !tbaa !632
  %i.gp = icmp sgt i32 %.val.i, 0
  br i1 %i.gp, label %releasePage.exit.i65, label %bb.ad

releasePage.exit.i65:                             ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 120
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.gr)
  br label %bb.ad

bb.ad:                                            ; preds = %releasePage.exit.i65, %bb.ac
  store ptr null, ptr %i.u, align 8, !tbaa !631
  store i8 0, ptr %i.ae, align 8, !tbaa !633
  br label %unlockBtreeIfUnused.exit

unlockBtreeIfUnused.exit:                         ; preds = %bb.ad, %bb.ab, %bb.aa, %newDatabase.exit.thread
  %i.gs = icmp eq i32 %.472, 5
  br i1 %i.gs, label %bb.ae, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.ae:                                            ; preds = %unlockBtreeIfUnused.exit
  %i.gt = load i8, ptr %i.n, align 8, !tbaa !630
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.af, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !449 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 432
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !853 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 448 ; 4 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !850 ; 2 uses
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %sqlite3BtreeInvokeBusyHandler.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 440
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !854
  %i.he = tail call i32 %i.gx(ptr noundef %i.hd, i32 noundef %i.ha) #46, !inline_history !1031
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %sqlite3BtreeInvokeBusyHandler.exit.thread84, label %sqlite3BtreeInvokeBusyHandler.exit

sqlite3BtreeInvokeBusyHandler.exit.thread84:      ; preds = %bb.ah
  store i32 -1, ptr %i.gz, align 8, !tbaa !850
  br label %sqlite3BtreeInvokeBusyHandler.exit.thread

sqlite3BtreeInvokeBusyHandler.exit:               ; preds = %bb.ah
  %i.hg = load i32, ptr %i.gz, align 8, !tbaa !850
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.gz, align 8, !tbaa !850
  br label %bb.h, !llvm.loop !1032

.critedge.thread:                                 ; preds = %bb.z, %.thread77
  %i.hi = load i8, ptr %i.f, align 8, !tbaa !753
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge.thread
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !804
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !804
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge.thread
  %i.hn = select i1 %i.j, i8 2, i8 1              ; 3 uses
  store i8 %i.hn, ptr %i.f, align 8, !tbaa !753
  %i.ho = load i8, ptr %i.n, align 8, !tbaa !630
  %i.hp = icmp ugt i8 %i.hn, %i.ho
  br i1 %i.hp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.hn, ptr %i.n, align 8, !tbaa !630
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.q, label %bb.am, label %sqlite3BtreeInvokeBusyHandler.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %0, ptr %i.hq, align 8, !tbaa !799
  br label %sqlite3BtreeInvokeBusyHandler.exit.thread

sqlite3BtreeInvokeBusyHandler.exit.thread:        ; preds = %.lr.ph, %unlockBtreeIfUnused.exit, %bb.ae, %bb.af, %bb.ag, %sqlite3BtreeInvokeBusyHandler.exit.thread84, %bb.b, %bb.a, %bb.al, %bb.am, %bb.c, %bb.d
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 8, %bb.c ], [ 0, %bb.am ], [ 0, %bb.al ], [ 5, %sqlite3BtreeInvokeBusyHandler.exit.thread84 ], [ 5, %bb.d ], [ 5, %bb.af ], [ 5, %bb.ae ], [ %.472, %unlockBtreeIfUnused.exit ], [ 5, %bb.ag ], [ 5, %.lr.ph ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeGetMeta(ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !325  ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !323
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !449
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !456
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !799  ; 2 uses
  %.not29.i = icmp eq ptr %i.i, null
  %.not30.i = icmp eq ptr %i.i, %0
  %or.cond34.i = or i1 %.not29.i, %.not30.i
  br i1 %or.cond34.i, label %bb.c, label %queryTableLock.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %.035.i = load ptr, ptr %i.j, align 8, !tbaa !794 ; 2 uses
  %.not3236.i = icmp eq ptr %.035.i, null
  br i1 %.not3236.i, label %.loopexit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %bb.f
  %.037.i = phi ptr [ %.0.i, %bb.f ], [ %.035.i, %bb.c ] ; 4 uses
  %i.k = load ptr, ptr %.037.i, align 8, !tbaa !795
  %.not33.i = icmp eq ptr %i.k, %0
  br i1 %.not33.i, label %bb.f, label %bb.d

end_hunk_0
begin_hunk_1_@sqlite3BtreeCreateTable:bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.preheader.i
  %storemerge.in96.i = phi i32 [ %.promoted.i, %.critedge.preheader.i ], [ %storemerge.i, %.critedge.i ] ; 4 uses
  %storemerge.i = add i32 %storemerge.in96.i, 1   ; 11 uses
  %i.ai = add i32 %storemerge.in96.i, -1          ; 2 uses
  %i.aj = urem i32 %i.ai, %i.af
  %i.ak = sub nuw i32 %i.ai, %i.aj                ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  %i.am = icmp eq i32 %i.al, %i.ah
  %spec.select.v.i.i = select i1 %i.am, i32 3, i32 2
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %i.ak
  %i.an = icmp eq i32 %storemerge.i, %spec.select.i.i
  %i.ao = icmp eq i32 %storemerge.in96.i, %i.ah
  %or.cond.i = or i1 %i.ao, %i.an
  br i1 %or.cond.i, label %.critedge.i, label %bb.f, !llvm.loop !1059

bb.f:                                             ; preds = %.critedge.i
  %i.ap = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %i.j, ptr noundef %i.e, ptr noundef %i.d, i32 noundef %storemerge.i, i8 noundef zeroext 1) ; 2 uses
  %.not65.i = icmp eq i32 %i.ap, 0
  br i1 %.not65.i, label %bb.g, label %releasePage.exit87.thread.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !4   ; 2 uses
  %.not66.i = icmp eq i32 %i.aq, %storemerge.i
  br i1 %.not66.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !806 ; 2 uses
  %.not.i76.i = icmp eq ptr %i.ar, null
  br i1 %.not.i76.i, label %releasePage.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.at)
  br label %releasePage.exit.i

releasePage.exit.i:                               ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !461
  %i.av = call fastcc i32 @sqlite3PagerAcquire(ptr noundef %i.au, i32 noundef %storemerge.i, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not.i77.i = icmp eq i32 %i.av, 0
  br i1 %.not.i77.i, label %bb.j, label %sqlite3BtreeGetPage.exit.i

sqlite3BtreeGetPage.exit.i:                       ; preds = %releasePage.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %releasePage.exit79.thread.i

bb.j:                                             ; preds = %releasePage.exit.i
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !652 ; 9 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !635
  %.not.i.i.i = icmp eq ptr %i.ax, null           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 88 ; 2 uses
  %i.az = select i1 %.not.i.i.i, ptr null, ptr %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 80
  %.val.i.i = load ptr, ptr %i.ba, align 8, !tbaa !657
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  store ptr %.val.i.i, ptr %i.bb, align 8, !tbaa !801
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 208 ; 2 uses
  store ptr %i.aw, ptr %i.bc, align 8, !tbaa !629
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !802
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  store i32 %storemerge.i, ptr %i.be, align 8, !tbaa !329
  %i.bf = icmp eq i32 %storemerge.in96.i, 0
  %i.bg = select i1 %i.bf, i8 100, i8 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !803
  store ptr %i.az, ptr %i.b, align 8, !tbaa !806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.bi = call fastcc i32 @ptrmapGet(ptr noundef nonnull %i.j, i32 noundef %storemerge.i, ptr noundef %i.f, ptr noundef nonnull %i.g) ; 3 uses
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = load i8, ptr %i.f, align 1              ; 2 uses
  %i.bl = add i8 %i.bk, -1
  %i.bm = icmp ult i8 %i.bl, 2
  %or.cond6.i = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %or.cond6.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i.i, label %releasePage.exit79.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bn)
  br label %releasePage.exit79.thread.i

bb.m:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 120 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !629
  %i.bq = call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.bp) ; 2 uses
  %.not68.i = icmp eq i32 %i.bq, 0
  br i1 %.not68.i, label %releasePage.exit83.i, label %releasePage.exit81.i

releasePage.exit81.i:                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.br)
  br label %releasePage.exit79.thread.i

releasePage.exit83.i:                             ; preds = %bb.m
  %i.bs = load i32, ptr %i.g, align 4, !tbaa !4
  %i.bt = call fastcc i32 @relocatePage(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ay, i8 noundef zeroext %i.bk, i32 noundef %i.bs, i32 noundef %i.aq) ; 2 uses
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.bu)
  %.not69.i = icmp eq i32 %i.bt, 0
  br i1 %.not69.i, label %bb.n, label %releasePage.exit79.thread.i

bb.n:                                             ; preds = %releasePage.exit83.i
  %i.bv = call fastcc i32 @sqlite3BtreeGetPage(ptr noundef nonnull %i.j, i32 noundef %storemerge.i, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  %.not70.i = icmp eq i32 %i.bv, 0
  br i1 %.not70.i, label %bb.o, label %releasePage.exit79.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !806 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !629
  %i.bz = call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.by) ; 2 uses
  %.not71.i = icmp eq i32 %i.bz, 0
  br i1 %.not71.i, label %releasePage.exit79.i, label %releasePage.exit85.i

releasePage.exit85.i:                             ; preds = %bb.o
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.ca)
  br label %releasePage.exit79.thread.i

releasePage.exit79.thread.i:                      ; preds = %releasePage.exit85.i, %bb.n, %releasePage.exit83.i, %releasePage.exit81.i, %bb.l, %bb.k, %sqlite3BtreeGetPage.exit.i
  %.049.ph.i = phi i32 [ %i.bi, %bb.l ], [ %i.bi, %bb.k ], [ %i.bz, %releasePage.exit85.i ], [ %i.bt, %releasePage.exit83.i ], [ %i.av, %sqlite3BtreeGetPage.exit.i ], [ %i.bq, %releasePage.exit81.i ], [ %i.bv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  br label %releasePage.exit87.thread.i

releasePage.exit79.i:                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !806
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %releasePage.exit79.i
  %i.cc = phi ptr [ %i.bw, %releasePage.exit79.i ], [ %i.cb, %bb.p ] ; 5 uses
  %i.cd = call fastcc i32 @ptrmapPut(ptr noundef nonnull %i.j, i32 noundef %storemerge.i, i8 noundef zeroext 1, i32 noundef 0) ; 3 uses
  %.not72.i = icmp eq i32 %i.cd, 0
  br i1 %.not72.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i86.i = icmp eq ptr %i.cc, null
  br i1 %.not.i86.i, label %releasePage.exit87.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.cf)
  br label %releasePage.exit87.thread.i

bb.t:                                             ; preds = %bb.q
  %i.cg = call fastcc i32 @sqlite3BtreeUpdateMeta(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %storemerge.i) ; 3 uses
  %.not73.i = icmp eq i32 %i.cg, 0
  br i1 %.not73.i, label %releasePage.exit87.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i88.i = icmp eq ptr %i.cc, null
  br i1 %.not.i88.i, label %releasePage.exit87.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.ci)
  br label %releasePage.exit87.thread.i

releasePage.exit87.thread.i:                      ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %releasePage.exit79.thread.i, %bb.f, %invalidateAllOverflowCache.exit.i
  %.2.ph.i = phi i32 [ %i.cg, %bb.v ], [ %i.cg, %bb.u ], [ %i.cd, %bb.r ], [ %i.ap, %bb.f ], [ %i.cd, %bb.s ], [ %i.ab, %invalidateAllOverflowCache.exit.i ], [ %.049.ph.i, %releasePage.exit79.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  br label %btreeCreateTable.exit

releasePage.exit87.i:                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  br label %bb.x

bb.w:                                             ; preds = %bb.c
  %i.cj = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %i.j, ptr noundef %i.b, ptr noundef %i.c, i32 noundef 1, i8 noundef zeroext 0) ; 2 uses
  %.not63.i = icmp eq i32 %i.cj, 0
  br i1 %.not63.i, label %._crit_edge.i, label %btreeCreateTable.exit

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !806
  %.pre98.i = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %releasePage.exit87.i
  %i.ck = phi i32 [ %.pre98.i, %._crit_edge.i ], [ %storemerge.i, %releasePage.exit87.i ]
  %i.cl = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cc, %releasePage.exit87.i ] ; 18 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !801
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 104 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !802 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !803 ; 3 uses
  %i.cs = zext i8 %i.cr to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 46 ; 3 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !831
  %i.cw = zext i16 %i.cv to i64
  %i.cx = sub nsw i64 %i.cw, %i.cs
  call void @llvm.memset.p0.i64(ptr align 1 %i.ct, i8 0, i64 %i.cx, i1 false)
  %i.cy = trunc nuw nsw i32 %2 to i8              ; 2 uses
  %i.cz = or disjoint i8 %i.cy, 8
  store i8 %i.cz, ptr %i.ct, align 1, !tbaa !37
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i32 0, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 7
  store i8 0, ptr %i.db, align 1, !tbaa !37
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 47
  %3 = load i8, ptr %.shift.i.i, align 1, !tbaa !831
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 5
  store i8 %3, ptr %i.dc, align 1, !tbaa !37
  %i.dd = load i16, ptr %i.cu, align 2, !tbaa !831
  %i.de = trunc i16 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  store i8 %i.de, ptr %i.df, align 1, !tbaa !37
  %i.dg = load i16, ptr %i.cu, align 2, !tbaa !831
  %i.dh = zext i8 %i.cr to i16
  %i.di = add nuw nsw i16 %i.dh, 8                ; 2 uses
  %i.dj = sub i16 %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 18
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !834
  %i.dl = and i32 %2, 5
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !333
  %i.dp = lshr i8 %i.cy, 1
  %i.dq = and i8 %i.dp, 1                         ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cl, i64 5
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !827
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i8 1, ptr %i.ds, align 4, !tbaa !822
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  store i8 0, ptr %i.dt, align 1, !tbaa !812
  %i.du = load ptr, ptr %i.co, align 8, !tbaa !802 ; 2 uses
  %.not.i.i90.i = icmp samesign ugt i32 %2, 3     ; 3 uses
  %..i.i.i = select i1 %.not.i.i90.i, i64 56, i64 48
  %.29.i.i.i = select i1 %.not.i.i90.i, i64 60, i64 52
  %.30.i.i.i = zext i1 %.not.i.i90.i to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %..i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %.29.i.i.i
  %.sink.in.i.i.i = load i32, ptr %i.dw, align 4, !tbaa !4
  %.sink.i.i.i = trunc i32 %.sink.in.i.i.i to i16
  %.sink25.in.i.i.i = load i32, ptr %i.dv, align 8, !tbaa !4
  %.sink25.i.i.i = trunc i32 %.sink25.in.i.i.i to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  store i8 %.30.i.i.i, ptr %i.dx, align 2, !tbaa !821
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  store i16 %.sink25.i.i.i, ptr %i.dy, align 2, !tbaa !828
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i16 %.sink.i.i.i, ptr %i.dz, align 4, !tbaa !829
  %i.ea = xor i8 %i.dq, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cl, i64 7
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !813
  store i8 %i.cr, ptr %i.cq, align 8, !tbaa !803
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cl, i64 14
  store i16 %i.di, ptr %i.ec, align 2, !tbaa !809
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 0, ptr %i.ed, align 2, !tbaa !830
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 0, ptr %i.ee, align 1, !tbaa !825
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  store i16 0, ptr %i.ef, align 4, !tbaa !811
  store i8 1, ptr %i.cl, align 8, !tbaa !823
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 120
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !629
  call fastcc void @sqlite3PagerUnref(ptr noundef %i.eh)
  store i32 %i.ck, ptr %1, align 4, !tbaa !4
  br label %btreeCreateTable.exit

btreeCreateTable.exit:                            ; preds = %bb.b, %releasePage.exit87.thread.i, %bb.w, %bb.x
  %.3.i = phi i32 [ %i.p, %bb.b ], [ 0, %bb.x ], [ %.2.ph.i, %releasePage.exit87.thread.i ], [ %i.cj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeNext(ptr noundef %0, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 102
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.n, %bb.a
  %i.i = load i8, ptr %i.a, align 1, !tbaa !315   ; 3 uses
  %i.j = icmp ugt i8 %i.i, 1
  br i1 %i.j, label %bb.b, label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread

bb.b:                                             ; preds = %tailrecurse
  %i.k = icmp eq i8 %i.i, 3
  br i1 %i.k, label %sqlite3BtreeRestoreOrClearCursorPosition.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.b, align 4, !tbaa !295
  %.not.i3 = icmp eq i8 %i.l, 0
  br i1 %.not.i3, label %bb.d, label %btreeNext.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 1, !tbaa !315
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !316
  %i.n = load i64, ptr %i.d, align 8, !tbaa !317
  %i.o = tail call fastcc i32 @sqlite3BtreeMoveto(ptr noundef nonnull %0, ptr noundef %i.m, i64 noundef %i.n, i32 noundef 0, ptr noundef nonnull %i.e), !inline_history !1060 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %btreeNext.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !316  ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %sqlite3_free.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i.i, 32
  %i.v = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.w = sub nsw i64 %i.v, %i.u
  store i64 %i.w, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.s) #46, !inline_history !1060
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.c, align 8, !tbaa !316
  %.pr.pre = load i8, ptr %i.a, align 1, !tbaa !315
  br label %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread

sqlite3BtreeRestoreOrClearCursorPosition.exit:    ; preds = %bb.b
  %i.x = load i32, ptr %i.e, align 8, !tbaa !319  ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.thread, label %btreeNext.exit

sqlite3BtreeRestoreOrClearCursorPosition.exit.thread: ; preds = %sqlite3_free.exit.i, %tailrecurse
  %i.y = phi i8 [ %i.i, %tailrecurse ], [ %.pr.pre, %sqlite3_free.exit.i ]
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread
  store i32 1, ptr %1, align 4, !tbaa !4
  br label %btreeNext.exit

bb.h:                                             ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit.thread
  %.pr = load i32, ptr %i.e, align 8, !tbaa !319
  %i.aa = icmp sgt i32 %.pr, 0
  br i1 %i.aa, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.e, align 8, !tbaa !319
  store i32 0, ptr %1, align 4, !tbaa !4
  br label %btreeNext.exit

.thread:                                          ; preds = %sqlite3BtreeRestoreOrClearCursorPosition.exit, %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !328 ; 6 uses
  store i32 0, ptr %i.e, align 8, !tbaa !319
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !808
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.g, align 8, !tbaa !808
  store i16 0, ptr %i.h, align 2, !tbaa !807
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !811
  %i.ag = zext i16 %i.af to i32
  %.not44.i = icmp slt i32 %i.ad, %i.ag
  br i1 %.not44.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !822
  %.not46.i = icmp eq i8 %i.ai, 0
  br i1 %.not46.i, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !801
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load i8, ptr %i.al, align 8, !tbaa !803
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = tail call fastcc i32 @moveToChild(ptr noundef nonnull %0, i32 noundef %i.ar), !inline_history !1061 ; 2 uses
  %.not47.i = icmp eq i32 %i.as, 0
  br i1 %.not47.i, label %bb.l, label %btreeNext.exit

bb.l:                                             ; preds = %bb.k
  %i.at = tail call fastcc i32 @moveToLeftmost(ptr noundef nonnull %0), !inline_history !1061
  store i32 0, ptr %1, align 4, !tbaa !4
  br label %btreeNext.exit

.preheader:                                       ; preds = %bb.j, %sqlite3BtreeIsRootPage.exit.thread
  %.0.i = phi ptr [ %i.bk, %sqlite3BtreeIsRootPage.exit.thread ], [ %i.ab, %bb.j ]
  %i.au = getelementptr i8, ptr %.0.i, i64 136
  %.0.val.i = load ptr, ptr %i.au, align 8, !tbaa !826 ; 4 uses
  %i.av = icmp eq ptr %.0.val.i, null
  br i1 %i.av, label %sqlite3BtreeIsRootPage.exit.thread11, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 128
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !329
  %i.ay = icmp ugt i32 %i.ax, 1
  br i1 %i.ay, label %sqlite3BtreeIsRootPage.exit.thread, label %sqlite3BtreeIsRootPage.exit

sqlite3BtreeIsRootPage.exit:                      ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 112
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !801
end_hunk_1
begin_hunk_2_@sqlite3VtabBegin:bb.a
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store ptr %i.z, ptr %i.a, align 8, !tbaa !421
  br label %bb.k

bb.k:                                             ; preds = %sqlite3DbRealloc.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre19.i, %._crit_edge.i ], [ %i.ab, %sqlite3DbRealloc.exit.i ]
  %i.ad = phi i32 [ %i.q, %._crit_edge.i ], [ %i.aa, %sqlite3DbRealloc.exit.i ]
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %sqlite3DbRealloc.exit.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.j, align 8, !tbaa !422
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.pre-phi.i
  store ptr %1, ptr %i.ag, align 8, !tbaa !423
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !406
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !406
  br label %addToVTrans.exit

addToVTrans.exit:                                 ; preds = %bb.f, %.critedge, %bb.h, %bb.j, %bb.k, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.k ], [ %i.p, %.critedge ], [ 7, %bb.h ], [ 7, %bb.j ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabCallCreate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !444
  %i.f = tail call fastcc ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %2, ptr noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1120 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !410
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.248, ptr noundef %i.k)
  store ptr %i.l, ptr %3, align 8, !tbaa !72
  br label %addToVTrans.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !360
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1121
  %i.p = tail call fastcc i32 @vtabCallConstructor(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef %3) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %addToVTrans.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !405  ; 3 uses
  %.not21 = icmp eq ptr %i.s, null
  br i1 %.not21, label %addToVTrans.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !422  ; 4 uses
  %i.v = srem i32 %i.u, 5
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  br i1 %i.w, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !421
  %.pre19.i = sext i32 %i.u to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !129
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %addToVTrans.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !421
  %i.ac = shl i32 %i.u, 3
  %i.ad = add i32 %i.ac, 40
  %i.ae = tail call ptr @sqlite3_realloc(ptr noundef %i.ab, i32 noundef %i.ad) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.g, label %sqlite3DbRealloc.exit.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.y, align 2, !tbaa !129
  br label %addToVTrans.exit

sqlite3DbRealloc.exit.i:                          ; preds = %bb.f
  %i.af = load i32, ptr %i.t, align 8, !tbaa !422 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i8 0, i64 40, i1 false)
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !421
  br label %bb.h

bb.h:                                             ; preds = %sqlite3DbRealloc.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre19.i, %._crit_edge.i ], [ %i.ag, %sqlite3DbRealloc.exit.i ]
  %i.ai = phi i32 [ %i.u, %._crit_edge.i ], [ %i.af, %sqlite3DbRealloc.exit.i ]
  %i.aj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ae, %sqlite3DbRealloc.exit.i ]
  %i.ak = add nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.t, align 8, !tbaa !422
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.pre-phi.i
  store ptr %i.s, ptr %i.al, align 8, !tbaa !423
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !406
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !406
  br label %addToVTrans.exit

addToVTrans.exit:                                 ; preds = %bb.h, %bb.g, %bb.e, %.thread, %bb.c, %bb.b
  %.1 = phi i32 [ 1, %.thread ], [ 0, %bb.c ], [ %i.p, %bb.b ], [ 0, %bb.h ], [ 7, %bb.g ], [ 7, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabCallDestroy(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !444
  %i.f = tail call fastcc ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %2, ptr noundef %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !405  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !360
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1122 ; 2 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.h) #46 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !405
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %i.n, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @sqlite3BtreeInvokeBusyHandler(ptr noundef readonly captures(none) %0, i32 %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !853  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %sqlite3InvokeBusyHandler.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !850  ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %sqlite3InvokeBusyHandler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !854
  %i.k = tail call i32 %i.d(ptr noundef %i.j, i32 noundef %i.g) #46, !inline_history !1123 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.f, align 8, !tbaa !850
  %i.n = add nsw i32 %i.m, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi i32 [ %i.n, %bb.d ], [ -1, %bb.c ]
  store i32 %storemerge.i, ptr %i.f, align 8, !tbaa !850
  br label %sqlite3InvokeBusyHandler.exit

sqlite3InvokeBusyHandler.exit:                    ; preds = %bb.a, %bb.b, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @zeroPage(ptr noundef captures(none) initializes((0, 8), (9, 16), (18, 22)) %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #37 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !801
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !802  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !803   ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 46 ; 3 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !831
  %i.l = zext i16 %i.k to i32
  %i.m = sub nsw i32 %i.l, %i.g
  %i.n = sext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 0, i64 %i.n, i1 false)
  %i.o = trunc nuw i32 %1 to i8                   ; 3 uses
  store i8 %i.o, ptr %i.i, align 1, !tbaa !37
  %i.p = lshr i32 %1, 1
  %i.q = and i32 %i.p, 4
  %reass.sub = sub nsw i32 %i.g, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i32 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  store i8 0, ptr %i.s, align 1, !tbaa !37
  %.shift = getelementptr inbounds nuw i8, ptr %i.d, i64 47
  %2 = load i8, ptr %.shift, align 1, !tbaa !831
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store i8 %2, ptr %i.t, align 1, !tbaa !37
  %i.u = load i16, ptr %i.j, align 2, !tbaa !831
  %i.v = trunc i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i8 %i.v, ptr %i.w, align 1, !tbaa !37
  %i.x = load i16, ptr %i.j, align 2, !tbaa !831
  %i.y = trunc nsw i32 %reass.sub to i16
  %i.z = add nsw i16 %i.y, 12                     ; 2 uses
  %i.aa = sub i16 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !834
  %i.ac = and i32 %1, 5
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !333
  %i.ag = lshr i8 %i.o, 1
  %i.ah = and i8 %i.ag, 1                         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !827
  %i.aj = lshr i8 %i.o, 3                         ; 2 uses
  %i.ak = and i8 %i.aj, 1                         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ak, ptr %i.al, align 4, !tbaa !822
  %i.am = shl nuw nsw i8 %i.ak, 2
  %i.an = xor i8 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !812
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !802 ; 2 uses
  %i.aq = and i32 %1, 4
  %.not.i = icmp eq i32 %i.aq, 0                  ; 4 uses
  %..i = select i1 %.not.i, i64 48, i64 56
  %.29.i = select i1 %.not.i, i64 52, i64 60
  %not..not.i = xor i1 %.not.i, true
  %.30.i = zext i1 %not..not.i to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %..i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.29.i
  %.sink.in.i = load i32, ptr %i.as, align 4, !tbaa !4
  %.sink.i = trunc i32 %.sink.in.i to i16
  %.sink25.in.i = load i32, ptr %i.ar, align 8, !tbaa !4
  %.sink25.i = trunc i32 %.sink25.in.i to i16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.30.i, ptr %i.at, align 2, !tbaa !821
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sink25.i, ptr %i.au, align 2, !tbaa !828
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %.sink.i, ptr %i.av, align 4, !tbaa !829
  %.not23.i = icmp eq i8 %i.ah, 0
  %.not24.i = trunc i8 %i.aj to i1
  %narrow.i = or i1 %.not.i, %.not24.i
  %narrow31.i = select i1 %.not23.i, i1 %narrow.i, i1 false
  %i.aw = zext i1 %narrow31.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !813
  store i8 %i.f, ptr %i.e, align 8, !tbaa !803
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.z, ptr %i.ay, align 2, !tbaa !809
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.az, align 2, !tbaa !830
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ba, align 1, !tbaa !825
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.bb, align 4, !tbaa !811
  store i8 1, ptr %0, align 8, !tbaa !823
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define internal i32 @dfltCompare(ptr readnone captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, ptr noundef readonly captures(none) %4) #30 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i32 @memcmp(ptr noundef %2, ptr noundef %4, i64 noundef %i.b) #45 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = sub nsw i32 %1, %3
  %spec.select = select i1 %i.d, i32 %i.e, i32 %i.c
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal void @pageDestructor(ptr noundef captures(none) %0, i32 %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !635
  %.not.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = select i1 %.not.i, ptr null, ptr %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !826  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.a
  store ptr null, ptr %i.d, align 8, !tbaa !826
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.g)
  br label %bb.b

bb.b:                                             ; preds = %releasePage.exit, %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !823
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pageReinit(ptr noundef captures(none) %0, i32 %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !823
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !823
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !826
  %i.e = tail call fastcc i32 @sqlite3BtreeInitPage(ptr noundef nonnull %i.a, ptr noundef %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3PagerSetPagesize(ptr noundef captures(none) %0, ptr noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !170    ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 5 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !646
  %.not19 = icmp eq i32 %i.d, %i.b
  br i1 %.not19, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !651
  %.not20 = icmp eq i8 %i.f, 0
  br i1 %.not20, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !632
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @sqlite3_malloc(i32 noundef %i.b) ; 2 uses
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @pager_reset(ptr noundef nonnull %0)
  store i32 %i.b, ptr %i.c, align 4, !tbaa !646
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !723
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.g, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !708
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !523  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !530
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !724  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %sqlite3OsSectorSize.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.n) #46, !inline_history !725
  %.pre.pre = load i32, ptr %i.c, align 4, !tbaa !646
  br label %sqlite3OsSectorSize.exit.i

sqlite3OsSectorSize.exit.i:                       ; preds = %bb.h, %bb.g
  %.pre = phi i32 [ %.pre.pre, %bb.h ], [ %i.b, %bb.g ]
  %i.s = phi i32 [ %i.r, %bb.h ], [ 512, %bb.g ]  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.s, ptr %i.t, align 8, !tbaa !708
  br label %bb.i

bb.i:                                             ; preds = %sqlite3OsSectorSize.exit.i, %._crit_edge.i
  %i.u = phi i32 [ %i.b, %._crit_edge.i ], [ %.pre, %sqlite3OsSectorSize.exit.i ] ; 2 uses
  %i.v = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.s, %sqlite3OsSectorSize.exit.i ]
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %bb.j, label %setSectorSize.exit

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.u, ptr %i.x, align 8, !tbaa !708
  br label %setSectorSize.exit

setSectorSize.exit:                               ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !704  ; 2 uses
end_hunk_2
begin_hunk_3_@dropCell:bb.a
  %i.cw = sub nsw i32 %i.bp, %i.bf
  %i.cx = add nsw i32 %i.cw, %i.cv
  %i.cy = lshr i32 %i.cx, 8
  %i.cz = trunc i32 %i.cy to i8
  store i8 %i.cz, ptr %i.bq, align 1, !tbaa !37
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !37
  %i.db = sub i8 %i.bn, %i.bg
  %i.dc = add i8 %i.db, %i.da
  store i8 %i.dc, ptr %i.bu, align 1, !tbaa !37
  %.pre.i = zext nneg i32 %.1128.i to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre.i ; 2 uses
  %.pre131.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !37
  %.phi.trans.insert132.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %.pre133.i = load i8, ptr %.phi.trans.insert132.i, align 1, !tbaa !37 ; 2 uses
  %.pre134.i = zext i8 %.pre131.i to i32
  %.pre136.i = shl nuw nsw i32 %.pre134.i, 8
  %.pre138.i = zext i8 %.pre133.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.pre-phi139.i = phi i32 [ %i.bo, %.lr.ph.i ], [ %.pre138.i, %bb.d ]
  %.pre-phi137.i = phi i32 [ %i.bl, %.lr.ph.i ], [ %.pre136.i, %bb.d ]
  %i.dd = phi i8 [ %i.bn, %.lr.ph.i ], [ %.pre133.i, %bb.d ]
  %.2.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %.1128.i, %bb.d ]
  %i.de = or disjoint i32 %.pre-phi137.i, %.pre-phi139.i ; 2 uses
  %.not.i = icmp eq i32 %i.de, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1134

._crit_edge.i:                                    ; preds = %bb.e, %bb.c
  %i.df = zext nneg i32 %i.t to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !37  ; 3 uses
  %i.di = zext i8 %i.dh to i64
  %i.dj = zext i8 %i.r to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dj ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 5 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !37
  %i.dn = icmp eq i8 %i.dh, %i.dm
  br i1 %i.dn, label %bb.f, label %freeSpace.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !37  ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 6 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !37
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.g, label %freeSpace.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = shl nuw nsw i64 %i.di, 8
  %i.du = zext i8 %i.dp to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du ; 3 uses
  %i.dx = load i16, ptr %i.dw, align 1
  store i16 %i.dx, ptr %i.dg, align 1
  %i.dy = zext i8 %i.dh to i16
  %i.dz = shl nuw i16 %i.dy, 8
  %i.ea = zext i8 %i.dp to i16
  %i.eb = or disjoint i16 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !37
  %i.ee = zext i8 %i.ed to i16
  %i.ef = shl nuw i16 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 3 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !37
  %i.ei = zext i8 %i.eh to i16
  %i.ej = or disjoint i16 %i.ef, %i.ei
  %i.ek = add i16 %i.ej, %i.eb
  %i.el = lshr i16 %i.ek, 8
  %i.em = trunc nuw i16 %i.el to i8
  store i8 %i.em, ptr %i.dl, align 1, !tbaa !37
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !37
  %i.eo = add i8 %i.en, %i.dp
  store i8 %i.eo, ptr %i.dq, align 1, !tbaa !37
  br label %freeSpace.exit

freeSpace.exit:                                   ; preds = %._crit_edge.i, %bb.f, %bb.g
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %.02635 = add nsw i32 %1, 1                     ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 4, !tbaa !811 ; 2 uses
  %i.er = zext i16 %i.eq to i32
  %i.es = icmp slt i32 %.02635, %i.er
  br i1 %i.es, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %freeSpace.exit, %.lr.ph
  %.02637 = phi i32 [ %.026, %.lr.ph ], [ %.02635, %freeSpace.exit ]
  %.036 = phi ptr [ %i.et, %.lr.ph ], [ %i.i, %freeSpace.exit ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.036, i64 2 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !37
  store i8 %i.eu, ptr %.036, align 1, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %.036, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !37
  %i.ex = getelementptr inbounds nuw i8, ptr %.036, i64 1
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !37
  %.026 = add nsw i32 %.02637, 1                  ; 2 uses
  %i.ey = load i16, ptr %i.ep, align 4, !tbaa !811 ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %i.fa = icmp slt i32 %.026, %i.ez
  br i1 %i.fa, label %.lr.ph, label %._crit_edge, !llvm.loop !1135

._crit_edge:                                      ; preds = %.lr.ph, %freeSpace.exit
  %.lcssa = phi i16 [ %i.eq, %freeSpace.exit ], [ %i.ey, %.lr.ph ]
  %i.fb = add i16 %.lcssa, -1                     ; 2 uses
  store i16 %i.fb, ptr %i.ep, align 4, !tbaa !811
  %i.fc = lshr i16 %i.fb, 8
  %i.fd = trunc nuw i16 %i.fc to i8
  %i.fe = load i8, ptr %i.q, align 8, !tbaa !803
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  store i8 %i.fd, ptr %i.fh, align 1, !tbaa !37
  %i.fi = load i16, ptr %i.ep, align 4, !tbaa !811
  %i.fj = trunc i16 %i.fi to i8
  %i.fk = load i8, ptr %i.q, align 8, !tbaa !803
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i8 %i.fj, ptr %i.fn, align 1, !tbaa !37
  %i.fo = load i16, ptr %i.ap, align 2, !tbaa !834
  %i.fp = add i16 %i.fo, 2
  store i16 %i.fp, ptr %i.ap, align 2, !tbaa !834
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fq, align 1, !tbaa !825
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insertCell(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext range(i8 0, 5) %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.CellInfo, align 8           ; 4 uses
  %7 = alloca %struct.CellInfo, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !830   ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %3, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !834
  %i.f = zext i16 %i.e to i32
  %i.g = icmp sgt i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not106 = icmp eq ptr %4, null
  br i1 %.not106, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i8 %5 to i32
  %i.i = zext nneg i8 %5 to i64                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.l = sub nsw i32 %3, %i.h
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.k, i64 %i.m, i1 false)
  %.pre = load i8, ptr %i.a, align 2, !tbaa !830
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %.097 = phi ptr [ %4, %bb.d ], [ %2, %bb.c ]
  %i.o = add i8 %i.n, 1
  store i8 %i.o, ptr %i.a, align 2, !tbaa !830
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = zext i8 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  store ptr %.097, ptr %i.r, align 8, !tbaa !1136
  %i.s = trunc i32 %1 to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i16 %i.s, ptr %i.t, align 8, !tbaa !1138
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 0, ptr %i.u, align 2, !tbaa !834
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !629
  %i.x = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.w) ; 2 uses
  %.not102 = icmp eq i32 %i.x, 0
  br i1 %.not102, label %bb.g, label %.thread110

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !801  ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !803
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 6 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ah, %i.ak            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.an = load i16, ptr %i.am, align 2, !tbaa !809 ; 2 uses
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !811 ; 3 uses
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.at = add nuw nsw i32 %i.as, %i.ao            ; 5 uses
  %i.au = add nuw nsw i32 %i.at, 2
  %i.av = shl nsw i32 %1, 1                       ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.ao                ; 2 uses
  %i.ax = sub nsw i32 %i.al, %3
  %i.ay = icmp sgt i32 %i.au, %i.ax
  br i1 %i.ay, label %bb.h, label %._crit_edge122

._crit_edge122:                                   ; preds = %bb.g
  %.pre123 = zext nneg i32 %i.at to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !802 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !461
  %i.bc = getelementptr i8, ptr %i.bb, i64 296
  %.val.i = load ptr, ptr %i.bc, align 8, !tbaa !704 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 46
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !831 ; 3 uses
  %i.bf = zext i16 %i.be to i32                   ; 3 uses
  %i.bg = zext nneg i32 %i.al to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bg
  %i.bj = sub nsw i32 %i.bf, %i.al
  %i.bk = sext i32 %i.bj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  %.not.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.h
  %.pre.i = lshr i16 %i.be, 8
  %.pre61.i = trunc nuw i16 %.pre.i to i8
  %.pre63.i = trunc i16 %i.be to i8
  br label %defragmentPage.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 30
  %i.bm = zext i16 %i.an to i64
  %wide.trip.count.i = zext i16 %i.aq to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bm
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.05658.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.by, %bb.i ]
  %i.bn = shl nuw nsw i64 %indvars.iv.i, 1
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %i.bn ; 3 uses
  %i.bo = load i8, ptr %gep.i, align 1, !tbaa !37
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %gep.i, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call fastcc void @sqlite3BtreeParseCellPtr(ptr noundef nonnull readonly %0, ptr noundef %i.bv, ptr noundef nonnull %6)
  %i.bw = load i16, ptr %i.bl, align 2, !tbaa !842 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  %i.bx = zext i16 %i.bw to i32
  %i.by = sub nsw i32 %.05658.i, %i.bx            ; 5 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.z, i64 %i.bz
  %i.cb = zext i16 %i.bw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.bv, i64 %i.cb, i1 false)
  %i.cc = lshr i32 %i.by, 8
  %i.cd = trunc i32 %i.cc to i8                   ; 2 uses
  store i8 %i.cd, ptr %gep.i, align 1, !tbaa !37
  %i.ce = trunc i32 %i.by to i8                   ; 2 uses
  store i8 %i.ce, ptr %i.br, align 1, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %defragmentPage.exit, label %bb.i, !llvm.loop !1139

defragmentPage.exit:                              ; preds = %bb.i, %.._crit_edge_crit_edge.i
  %.pre-phi64.i = phi i8 [ %.pre63.i, %.._crit_edge_crit_edge.i ], [ %i.ce, %bb.i ]
  %.pre-phi62.i = phi i8 [ %.pre61.i, %.._crit_edge_crit_edge.i ], [ %i.cd, %bb.i ]
  %.056.lcssa.i = phi i32 [ %i.bf, %.._crit_edge_crit_edge.i ], [ %i.by, %bb.i ]
  store i8 %.pre-phi62.i, ptr %i.ae, align 1, !tbaa !37
  store i8 %.pre-phi64.i, ptr %i.ai, align 1, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.cf, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 0, ptr %i.cg, align 1, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i8 0, ptr %i.ch, align 1, !tbaa !37
  %i.ci = zext nneg i32 %i.at to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ci
  %i.ck = sub nsw i32 %.056.lcssa.i, %i.at
  %i.cl = sext i32 %i.ck to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cj, i8 0, i64 %i.cl, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge122, %defragmentPage.exit
  %.pre-phi = phi i64 [ %.pre123, %._crit_edge122 ], [ %i.ci, %defragmentPage.exit ]
  %i.cm = tail call fastcc i32 @allocateSpace(ptr noundef nonnull %0, i32 noundef %3) ; 3 uses
  %i.cn = load <2 x i16>, ptr %i.d, align 2, !tbaa !170
  %i.co = add <2 x i16> %i.cn, <i16 -2, i16 1>
  store <2 x i16> %i.co, ptr %i.d, align 2, !tbaa !170
  %i.cp = zext nneg i8 %5 to i32                  ; 2 uses
  %i.cq = add nsw i32 %i.cm, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.z, i64 %i.cr
  %i.ct = zext nneg i8 %5 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct
  %i.cv = sub nsw i32 %3, %i.cp
  %i.cw = sext i32 %i.cv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  %i.cx = icmp sgt i32 %i.as, %i.av
  br i1 %i.cx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 %.pre-phi
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.096119 = phi ptr [ %i.cz, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ] ; 4 uses
  %.098118 = phi i32 [ %i.de, %.lr.ph ], [ %i.at, %.lr.ph.preheader ]
  %i.cz = getelementptr inbounds i8, ptr %.096119, i64 -2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !37
  store i8 %i.da, ptr %.096119, align 1, !tbaa !37
  %i.db = getelementptr inbounds i8, ptr %.096119, i64 -1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %.096119, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !37
  %i.de = add nsw i32 %.098118, -2                ; 2 uses
  %i.df = icmp sgt i32 %i.de, %i.aw
  br i1 %i.df, label %.lr.ph, label %._crit_edge, !llvm.loop !1140

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %i.dg = lshr i32 %i.cm, 8
  %i.dh = trunc i32 %i.dg to i8
  %i.di = sext i32 %i.aw to i64
  %i.dj = getelementptr inbounds i8, ptr %i.z, i64 %i.di ; 2 uses
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !37
  %i.dk = trunc i32 %i.cm to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !37
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 21
  %8 = load i8, ptr %.shift, align 1, !tbaa !811
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  store i8 %8, ptr %i.dm, align 1, !tbaa !37
  %i.dn = load i16, ptr %i.ap, align 4, !tbaa !811
  %i.do = trunc i16 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.dq, align 1, !tbaa !825
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !802
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 38
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !846
  %.not103 = icmp eq i8 %i.du, 0
  br i1 %.not103, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call fastcc void @sqlite3BtreeParseCellPtr(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %7)
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !836
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !333
  %.not104 = icmp eq i8 %i.dz, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = select i1 %.not104, i64 %i.eb, i64 0
  %i.ed = add nsw i64 %i.ec, %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !840
  %i.eg = zext i16 %i.ef to i64
  %i.eh = icmp sgt i64 %i.ed, %i.eg
  br i1 %i.eh, label %bb.l, label %.thread113

.thread113:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !841
  %i.ek = zext i16 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 1
  %i.en = tail call i32 @llvm.bswap.i32(i32 %i.em)
  %i.eo = load ptr, ptr %i.dr, align 8, !tbaa !802
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !329
  %i.er = tail call fastcc i32 @ptrmapPut(ptr noundef %i.eo, i32 noundef %i.en, i8 noundef zeroext 3, i32 noundef %i.eq) ; 2 uses
  %.not105 = icmp eq i32 %i.er, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.not105, label %.thread, label %.thread110

.thread:                                          ; preds = %._crit_edge, %.thread113, %bb.l, %bb.e
  br label %.thread110

.thread110:                                       ; preds = %bb.f, %bb.l, %.thread
  %.5 = phi i32 [ 0, %.thread ], [ %i.er, %bb.l ], [ %i.x, %bb.f ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !826
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !629
  %i.i = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.h) ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %balance_shallower.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !830
  %.not16 = icmp eq i8 %i.l, 0
  br i1 %.not16, label %.thread26, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !802  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !329
  %i.q = call fastcc i32 @allocateBtreePage(ptr noundef %i.n, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.p, i8 noundef zeroext 0), !inline_history !1141 ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.e, label %.thread30

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 46
  %i.s = load i16, ptr %i.r, align 2, !tbaa !831
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !801  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !803   ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = zext i8 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah            ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !806 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !801 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.an = load i16, ptr %i.am, align 2, !tbaa !809
  %i.ao = zext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !811
  %i.ar = zext i16 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 1
  %i.at = sub nsw i32 %i.ao, %i.y
  %i.au = add nsw i32 %i.at, %i.as
  %i.av = sext i32 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.aa, i64 %i.av, i1 false)
  %i.aw = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aw
  %i.az = sub nsw i32 %i.t, %i.ai
  %i.ba = sext i32 %i.az to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  %i.bb = tail call fastcc i32 @sqlite3BtreeInitPage(ptr noundef %i.aj, ptr noundef nonnull %0), !inline_history !1141 ; 2 uses
  %.not53.i = icmp eq i32 %i.bb, 0
  br i1 %.not53.i, label %bb.f, label %.thread33

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i8, ptr %i.k, align 2, !tbaa !830
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load i8, ptr %i.k, align 2, !tbaa !830  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.bh, ptr %i.bi, align 2, !tbaa !830
  %.not54.i = icmp eq i8 %i.bh, 0
  br i1 %.not54.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  store i16 0, ptr %i.bj, align 2, !tbaa !834
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !801
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = and i8 %i.bl, -9
  %i.bn = zext i8 %i.bm to i32
  tail call fastcc void @zeroPage(ptr noundef nonnull %0, i32 noundef %i.bn), !inline_history !1141
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !801
  %i.bp = load i8, ptr %i.w, align 8, !tbaa !803
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !4   ; 4 uses
  %i.bu = lshr i32 %i.bt, 24
  %i.bv = trunc nuw i32 %i.bu to i8
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !37
  %i.bw = lshr i32 %i.bt, 16
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 9
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !37
  %i.bz = lshr i32 %i.bt, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 10
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !37
  %i.cc = trunc i32 %i.bt to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 11
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 38
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !846
  %.not55.i = icmp eq i8 %i.cf, 0
  br i1 %.not55.i, label %.thread22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !329
  %i.ci = load i32, ptr %i.o, align 8, !tbaa !329
  %i.cj = tail call fastcc i32 @ptrmapPut(ptr noundef nonnull %i.n, i32 noundef %i.ch, i8 noundef zeroext 5, i32 noundef %i.ci), !inline_history !1141 ; 2 uses
  %.not56.i = icmp eq i32 %i.cj, 0
  br i1 %.not56.i, label %.preheader, label %.thread33

.preheader:                                       ; preds = %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aj, i64 20 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !811
  %.not39 = icmp eq i16 %i.cl, 0
  br i1 %.not39, label %.thread22, label %.lr.ph
end_hunk_3
begin_hunk_4_@balance_nonroot:bb.a
  %.0394.lcssa875.ph = phi i32 [ %.3, %._crit_edge644 ], [ 0, %._crit_edge ] ; 2 uses
  %.0439.lcssa874.ph = phi i32 [ %.2441, %._crit_edge644 ], [ 0, %._crit_edge ]
  store i32 0, ptr %i.i, align 16, !tbaa !4
  store i32 %.0394.lcssa875.ph, ptr %i.h, align 16, !tbaa !4
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !801
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !37  ; 2 uses
  %i.tk = zext i8 %i.tj to i32
  br label %.lr.ph663

._crit_edge652:                                   ; preds = %bb.bn
  %i.tl = sext i32 %.2425 to i64                  ; 2 uses
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.tl
  store i32 %.1447, ptr %i.tm, align 4, !tbaa !4
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.tl
  store i32 %.3, ptr %i.tn, align 4, !tbaa !4
  %i.to = icmp sgt i32 %.2425, 0                  ; 3 uses
  br i1 %i.to, label %.lr.ph657.preheader, label %._crit_edge658

.lr.ph657.preheader:                              ; preds = %._crit_edge652
  %i.tp = zext nneg i32 %.2425 to i64             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.tp
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %.lr.ph657

.lr.ph657:                                        ; preds = %.lr.ph657.preheader, %bb.bq
  %i.tq = phi i32 [ %.pre, %.lr.ph657.preheader ], [ %.0402, %bb.bq ]
  %indvars.iv750 = phi i64 [ %i.tp, %.lr.ph657.preheader ], [ %indvars.iv.next751, %bb.bq ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv750
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, -1 ; 3 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next751 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !4
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next751 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !4  ; 2 uses
  %i.tw = add nsw i32 %i.tv, -1
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge, %.lr.ph657
  %.0403 = phi i32 [ %i.tq, %.lr.ph657 ], [ %.pre-phi820, %.critedge ] ; 3 uses
  %.0402 = phi i32 [ %i.tt, %.lr.ph657 ], [ %.pre-phi825, %.critedge ] ; 4 uses
  %.0401 = phi i32 [ %i.tw, %.lr.ph657 ], [ %i.ui, %.critedge ] ; 2 uses
  %i.tx = phi i32 [ %i.tv, %.lr.ph657 ], [ %i.uh, %.critedge ] ; 3 uses
  %.0400 = add i32 %i.tx, %.neg
  %i.ty = icmp eq i32 %.0403, 0
  %.phi.trans.insert808 = sext i32 %.0400 to i64
  %.phi.trans.insert809 = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %.phi.trans.insert808
  %.pre810 = load i16, ptr %.phi.trans.insert809, align 2, !tbaa !170 ; 2 uses
  br i1 %i.ty, label %..critedge_crit_edge, label %bb.bp

..critedge_crit_edge:                             ; preds = %bb.bo
  %.pre811 = sext i32 %.0401 to i64
  %.phi.trans.insert812 = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %.pre811
  %.pre813 = load i16, ptr %.phi.trans.insert812, align 2, !tbaa !170
  %.pre815 = zext i16 %.pre810 to i32
  %.pre819 = add nuw nsw i32 %.pre815, 2
  %.pre821 = zext i16 %.pre813 to i32
  %.pre823 = add i32 %.0402, -2
  %.pre824 = sub i32 %.pre823, %.pre821
  br label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.tz = zext i16 %.pre810 to i32
  %i.ua = add i32 %.0403, 2
  %i.ub = add i32 %i.ua, %i.tz                    ; 2 uses
  %i.uc = sext i32 %.0401 to i64
  %i.ud = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %i.uc
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !170
  %i.uf = zext i16 %i.ue to i32
  %.neg588 = add i32 %.0402, -2
  %i.ug = sub i32 %.neg588, %i.uf                 ; 2 uses
  %.not512 = icmp sgt i32 %i.ub, %i.ug
  br i1 %.not512, label %bb.bq, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.bp
  %.pre-phi825 = phi i32 [ %.pre824, %..critedge_crit_edge ], [ %i.ug, %bb.bp ]
  %.pre-phi820 = phi i32 [ %.pre819, %..critedge_crit_edge ], [ %i.ub, %bb.bp ]
  %i.uh = add nsw i32 %i.tx, -1                   ; 2 uses
  store i32 %i.uh, ptr %i.tu, align 4, !tbaa !4
  %i.ui = add nsw i32 %i.tx, -2
  br label %bb.bo, !llvm.loop !1153

bb.bq:                                            ; preds = %bb.bp
  store i32 %.0403, ptr %i.tr, align 4, !tbaa !4
  store i32 %.0402, ptr %i.ts, align 4, !tbaa !4
  %i.uj = icmp sgt i64 %indvars.iv750, 1
  br i1 %i.uj, label %.lr.ph657, label %._crit_edge658, !llvm.loop !1154

._crit_edge658:                                   ; preds = %bb.bq, %._crit_edge652
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !801
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !37  ; 2 uses
  %i.un = zext i8 %i.um to i32                    ; 2 uses
  %.not499659 = icmp slt i32 %.2425, 0
  br i1 %.not499659, label %.preheader596, label %.lr.ph663

.lr.ph663:                                        ; preds = %._crit_edge658.thread, %._crit_edge658
  %i.uo = phi i32 [ %i.tk, %._crit_edge658.thread ], [ %i.un, %._crit_edge658 ] ; 4 uses
  %i.up = phi i8 [ %i.tj, %._crit_edge658.thread ], [ %i.um, %._crit_edge658 ] ; 3 uses
  %.0394.lcssa875880891 = phi i32 [ %.0394.lcssa875.ph, %._crit_edge658.thread ], [ %.3, %._crit_edge658 ]
  %.0439.lcssa874881889 = phi i32 [ %.0439.lcssa874.ph, %._crit_edge658.thread ], [ %.2441, %._crit_edge658 ]
  %.1424.lcssa882887 = phi i32 [ 0, %._crit_edge658.thread ], [ %.2425, %._crit_edge658 ] ; 2 uses
  %i.uq = phi i1 [ false, %._crit_edge658.thread ], [ %i.to, %._crit_edge658 ]
  %i.ur = lshr i32 %i.uo, 1
  %i.us = and i32 %i.ur, 4
  %i.ut = and i32 %i.uo, 5
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = zext i1 %i.uu to i8
  %i.uw = lshr i8 %i.up, 1
  %i.ux = and i8 %i.uw, 1                         ; 2 uses
  %i.uy = lshr i8 %i.up, 3                        ; 2 uses
  %i.uz = and i8 %i.uy, 1                         ; 2 uses
  %i.va = shl nuw nsw i8 %i.uz, 2
  %i.vb = xor i8 %i.va, 4
  %i.vc = and i32 %i.uo, 4
  %.not.i.i526 = icmp eq i32 %i.vc, 0             ; 4 uses
  %..i.i = select i1 %.not.i.i526, i64 48, i64 56
  %.29.i.i = select i1 %.not.i.i526, i64 52, i64 60
  %not..not.i.i = xor i1 %.not.i.i526, true
  %.30.i.i = zext i1 %not..not.i.i to i8
  %.not23.i.i = icmp eq i8 %i.ux, 0
  %.not24.i.i = trunc i8 %i.uy to i1
  %narrow.i.i = or i1 %.not.i.i526, %.not24.i.i
  %narrow31.i.i = select i1 %.not23.i.i, i1 %narrow.i.i, i1 false
  %i.vd = zext i1 %narrow31.i.i to i8
  %i.ve = zext nneg i32 %.0404.lcssa to i64
  %i.vf = add nuw i32 %.1424.lcssa882887, 1       ; 2 uses
  %wide.trip.count757 = zext i32 %i.vf to i64
  br label %bb.br

.preheader596:                                    ; preds = %bb.bv, %._crit_edge658
  %i.vg = phi i32 [ %i.un, %._crit_edge658 ], [ %i.uo, %bb.bv ]
  %.0394.lcssa875880892 = phi i32 [ %.3, %._crit_edge658 ], [ %.0394.lcssa875880891, %bb.bv ]
  %.0439.lcssa874881890 = phi i32 [ %.2441, %._crit_edge658 ], [ %.0439.lcssa874881889, %bb.bv ]
  %.1424.lcssa882888 = phi i32 [ %.2425, %._crit_edge658 ], [ %.1424.lcssa882887, %bb.bv ] ; 3 uses
  %i.vh = phi i1 [ %i.to, %._crit_edge658 ], [ %i.uq, %bb.bv ]
  %.8.lcssa = phi i32 [ 0, %._crit_edge658 ], [ %i.vf, %bb.bv ] ; 15 uses
  %i.vi = icmp samesign ult i32 %.8.lcssa, %.0404.lcssa
  br i1 %i.vi, label %.lr.ph667.preheader, label %.preheader595

.lr.ph667.preheader:                              ; preds = %.preheader596
  %i.vj = zext nneg i32 %.8.lcssa to i64
  %wide.trip.count763 = zext nneg i32 %.0404.lcssa to i64
  br label %.lr.ph667

bb.br:                                            ; preds = %.lr.ph663, %bb.bv
  %indvars.iv753 = phi i64 [ 0, %.lr.ph663 ], [ %indvars.iv.next754, %bb.bv ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #46
  %i.vk = icmp samesign ult i64 %indvars.iv753, %i.ve
  br i1 %i.vk, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv753 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !806 ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv753
  store ptr %i.vm, ptr %i.vn, align 8, !tbaa !806
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv753
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !4
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv753
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !4
  store ptr null, ptr %i.vl, align 8, !tbaa !806
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 120
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !629
  %i.vt = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.vs) ; 2 uses
  %.not511 = icmp eq i32 %i.vt, 0
  br i1 %.not511, label %bb.bv, label %.thread.split.loop.exit

bb.bt:                                            ; preds = %bb.br
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv753 ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 -4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !4
  %i.vx = call fastcc i32 @allocateBtreePage(ptr noundef %i.n, ptr noundef %i.k, ptr noundef %i.vu, i32 noundef %i.vw, i8 noundef zeroext 0) ; 2 uses
  %.not510 = icmp eq i32 %i.vx, 0
  br i1 %.not510, label %bb.bu, label %.thread.split.loop.exit928

bb.bu:                                            ; preds = %bb.bt
  %i.vy = load ptr, ptr %i.k, align 8, !tbaa !806 ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv753
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !806
  br label %bb.bv

.thread.split.loop.exit:                          ; preds = %bb.bs
  %indvars.le = trunc i64 %indvars.iv753 to i32
  %i.wa = add nuw nsw i32 %indvars.le, 1
  br label %.thread

.thread.split.loop.exit928:                       ; preds = %bb.bt
  %indvars.le931 = trunc i64 %indvars.iv753 to i32
  br label %.thread

.thread:                                          ; preds = %.thread.split.loop.exit928, %.thread.split.loop.exit
  %.3451.ph = phi i32 [ %i.vt, %.thread.split.loop.exit ], [ %i.vx, %.thread.split.loop.exit928 ]
  %.2407.ph = phi i32 [ %i.wa, %.thread.split.loop.exit ], [ %indvars.le931, %.thread.split.loop.exit928 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bs, %bb.bu
  %i.wb = phi ptr [ %i.vm, %bb.bs ], [ %i.vy, %bb.bu ] ; 17 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 112
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !801
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 104 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !802 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 8 ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 8, !tbaa !803 ; 3 uses
  %i.wi = zext i8 %i.wh to i32                    ; 2 uses
  %i.wj = zext i8 %i.wh to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wj ; 6 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 46 ; 3 uses
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !831
  %i.wn = zext i16 %i.wm to i32
  %i.wo = sub nsw i32 %i.wn, %i.wi
  %i.wp = sext i32 %i.wo to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.wk, i8 0, i64 %i.wp, i1 false)
  store i8 %i.up, ptr %i.wk, align 1, !tbaa !37
  %reass.sub.i = sub nsw i32 %i.wi, %i.us
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i32 0, ptr %i.wq, align 1
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wk, i64 7
  store i8 0, ptr %i.wr, align 1, !tbaa !37
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 47
  %5 = load i8, ptr %.shift.i, align 1, !tbaa !831
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wk, i64 5
  store i8 %5, ptr %i.ws, align 1, !tbaa !37
  %i.wt = load i16, ptr %i.wl, align 2, !tbaa !831
  %i.wu = trunc i16 %i.wt to i8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wk, i64 6
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !37
  %i.ww = load i16, ptr %i.wl, align 2, !tbaa !831
  %i.wx = trunc nsw i32 %reass.sub.i to i16
  %i.wy = add nsw i16 %i.wx, 12                   ; 2 uses
  %i.wz = sub i16 %i.ww, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wb, i64 18
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !834
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wb, i64 3
  store i8 %i.uv, ptr %i.xb, align 1, !tbaa !333
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wb, i64 5
  store i8 %i.ux, ptr %i.xc, align 1, !tbaa !827
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store i8 %i.uz, ptr %i.xd, align 4, !tbaa !822
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wb, i64 9
  store i8 %i.vb, ptr %i.xe, align 1, !tbaa !812
  %i.xf = load ptr, ptr %i.we, align 8, !tbaa !802 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %..i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.29.i.i
  %.sink.in.i.i = load i32, ptr %i.xh, align 4, !tbaa !4
  %.sink.i.i = trunc i32 %.sink.in.i.i to i16
  %.sink25.in.i.i = load i32, ptr %i.xg, align 8, !tbaa !4
  %.sink25.i.i = trunc i32 %.sink25.in.i.i to i16
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 6
  store i8 %.30.i.i, ptr %i.xi, align 2, !tbaa !821
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wb, i64 10
  store i16 %.sink25.i.i, ptr %i.xj, align 2, !tbaa !828
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wb, i64 12
  store i16 %.sink.i.i, ptr %i.xk, align 4, !tbaa !829
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wb, i64 7
  store i8 %i.vd, ptr %i.xl, align 1, !tbaa !813
  store i8 %i.wh, ptr %i.wg, align 8, !tbaa !803
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wb, i64 14
  store i16 %i.wy, ptr %i.xm, align 2, !tbaa !809
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  store i8 0, ptr %i.xn, align 2, !tbaa !830
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  store i8 0, ptr %i.xo, align 1, !tbaa !825
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wb, i64 20
  store i16 0, ptr %i.xp, align 4, !tbaa !811
  store i8 1, ptr %i.wb, align 8, !tbaa !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 1 ; 2 uses
  %exitcond758.not = icmp eq i64 %indvars.iv.next754, %wide.trip.count757
  br i1 %exitcond758.not, label %.preheader596, label %bb.br, !llvm.loop !1155

.preheader595:                                    ; preds = %releasePage.exit, %.preheader596
  br i1 %i.vh, label %.lr.ph677.preheader, label %.preheader594

.lr.ph677.preheader:                              ; preds = %.preheader595
  %i.xq = add nuw i32 %.1424.lcssa882888, 1
  %wide.trip.count777 = zext nneg i32 %.1424.lcssa882888 to i64
  %wide.trip.count771 = zext i32 %i.xq to i64     ; 2 uses
  %i.xr = zext i32 %.1424.lcssa882888 to i64
  %i.xs = add nsw i64 %wide.trip.count771, -2
  br label %.lr.ph673.preheader

.lr.ph667:                                        ; preds = %.lr.ph667.preheader, %releasePage.exit
  %indvars.iv759 = phi i64 [ %i.vj, %.lr.ph667.preheader ], [ %indvars.iv.next760, %releasePage.exit ] ; 2 uses
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv759 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !806 ; 3 uses
  %i.xv = tail call fastcc i32 @freePage(ptr noundef %i.xu) ; 2 uses
  %.not509 = icmp eq i32 %i.xv, 0
  br i1 %.not509, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %.lr.ph667
  %.not.i527 = icmp eq ptr %i.xu, null
  br i1 %.not.i527, label %releasePage.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 120
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.xx)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.bw, %bb.bx
  store ptr null, ptr %i.xt, align 8, !tbaa !806
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond764.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count763
  br i1 %exitcond764.not, label %.preheader595, label %.lr.ph667, !llvm.loop !1156

.preheader594:                                    ; preds = %bb.bz, %.preheader595
  %i.xy = icmp sgt i32 %.8.lcssa, 0               ; 2 uses
  br i1 %i.xy, label %.lr.ph685, label %._crit_edge686

.lr.ph685:                                        ; preds = %.preheader594
  %i.xz = add nsw i32 %.8.lcssa, -1
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.yb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.yd = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ye = zext nneg i32 %i.xz to i64
  %wide.trip.count788 = zext nneg i32 %.8.lcssa to i64
  br label %bb.ca

.lr.ph673.preheader:                              ; preds = %bb.bz, %.lr.ph677.preheader
  %indvars.iv773 = phi i64 [ 0, %.lr.ph677.preheader ], [ %indvars.iv.next774, %bb.bz ] ; 7 uses
  %indvars.iv765 = phi i64 [ 1, %.lr.ph677.preheader ], [ %indvars.iv.next766, %bb.bz ] ; 3 uses
  %i.yf = sub nsw i64 %i.xr, %indvars.iv773
  %i.yg = sub i64 %i.xs, %indvars.iv773
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv773 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !4  ; 3 uses
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1 ; 2 uses
  %i.yj = trunc nuw nsw i64 %indvars.iv773 to i32 ; 2 uses
  %xtraiter = and i64 %i.yf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph673.prol.loopexit, label %.lr.ph673.prol

.lr.ph673.prol:                                   ; preds = %.lr.ph673.preheader, %.lr.ph673.prol
  %indvars.iv767.prol = phi i64 [ %indvars.iv.next768.prol, %.lr.ph673.prol ], [ %indvars.iv765, %.lr.ph673.preheader ] ; 3 uses
  %.0396671.prol = phi i32 [ %spec.select521.prol, %.lr.ph673.prol ], [ %i.yj, %.lr.ph673.preheader ]
  %.0398670.prol = phi i32 [ %spec.select520.prol, %.lr.ph673.prol ], [ %i.yi, %.lr.ph673.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph673.prol ], [ 0, %.lr.ph673.preheader ]
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv767.prol
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !4  ; 2 uses
  %i.ym = icmp ult i32 %i.yl, %.0398670.prol
  %spec.select520.prol = tail call i32 @llvm.umin.i32(i32 %i.yl, i32 %.0398670.prol) ; 2 uses
  %i.yn = trunc nuw nsw i64 %indvars.iv767.prol to i32
  %spec.select521.prol = select i1 %i.ym, i32 %i.yn, i32 %.0396671.prol ; 3 uses
  %indvars.iv.next768.prol = add nuw nsw i64 %indvars.iv767.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph673.prol.loopexit, label %.lr.ph673.prol, !llvm.loop !1157

.lr.ph673.prol.loopexit:                          ; preds = %.lr.ph673.prol, %.lr.ph673.preheader
  %spec.select521.lcssa.unr = phi i32 [ poison, %.lr.ph673.preheader ], [ %spec.select521.prol, %.lr.ph673.prol ]
  %indvars.iv767.unr = phi i64 [ %indvars.iv765, %.lr.ph673.preheader ], [ %indvars.iv.next768.prol, %.lr.ph673.prol ]
  %.0396671.unr = phi i32 [ %i.yj, %.lr.ph673.preheader ], [ %spec.select521.prol, %.lr.ph673.prol ]
  %.0398670.unr = phi i32 [ %i.yi, %.lr.ph673.preheader ], [ %spec.select520.prol, %.lr.ph673.prol ]
  %i.yo = icmp ult i64 %i.yg, 3
  br i1 %i.yo, label %._crit_edge674, label %.lr.ph673

.lr.ph673:                                        ; preds = %.lr.ph673.prol.loopexit, %.lr.ph673
  %indvars.iv767 = phi i64 [ %indvars.iv.next768.3, %.lr.ph673 ], [ %indvars.iv767.unr, %.lr.ph673.prol.loopexit ] ; 6 uses
  %.0396671 = phi i32 [ %spec.select521.3, %.lr.ph673 ], [ %.0396671.unr, %.lr.ph673.prol.loopexit ]
  %.0398670 = phi i32 [ %spec.select520.3, %.lr.ph673 ], [ %.0398670.unr, %.lr.ph673.prol.loopexit ] ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv767
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !4  ; 2 uses
  %i.yr = icmp ult i32 %i.yq, %.0398670
  %spec.select520 = tail call i32 @llvm.umin.i32(i32 %i.yq, i32 %.0398670) ; 2 uses
  %i.ys = trunc nuw nsw i64 %indvars.iv767 to i32
  %spec.select521 = select i1 %i.yr, i32 %i.ys, i32 %.0396671
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next768
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !4  ; 2 uses
  %i.yv = icmp ult i32 %i.yu, %spec.select520
  %spec.select520.1 = tail call i32 @llvm.umin.i32(i32 %i.yu, i32 %spec.select520) ; 2 uses
  %i.yw = trunc nuw nsw i64 %indvars.iv.next768 to i32
  %spec.select521.1 = select i1 %i.yv, i32 %i.yw, i32 %spec.select521
  %indvars.iv.next768.1 = add nuw nsw i64 %indvars.iv767, 2 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next768.1
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !4  ; 2 uses
  %i.yz = icmp ult i32 %i.yy, %spec.select520.1
  %spec.select520.2 = tail call i32 @llvm.umin.i32(i32 %i.yy, i32 %spec.select520.1) ; 2 uses
  %i.za = trunc nuw nsw i64 %indvars.iv.next768.1 to i32
  %spec.select521.2 = select i1 %i.yz, i32 %i.za, i32 %spec.select521.1
  %indvars.iv.next768.2 = add nuw nsw i64 %indvars.iv767, 3 ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next768.2
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !4  ; 2 uses
  %i.zd = icmp ult i32 %i.zc, %spec.select520.2
  %spec.select520.3 = tail call i32 @llvm.umin.i32(i32 %i.zc, i32 %spec.select520.2)
  %i.ze = trunc nuw nsw i64 %indvars.iv.next768.2 to i32
  %spec.select521.3 = select i1 %i.zd, i32 %i.ze, i32 %spec.select521.2 ; 2 uses
  %indvars.iv.next768.3 = add nuw nsw i64 %indvars.iv767, 4 ; 2 uses
  %exitcond772.not.3 = icmp eq i64 %indvars.iv.next768.3, %wide.trip.count771
  br i1 %exitcond772.not.3, label %._crit_edge674, label %.lr.ph673, !llvm.loop !1158

._crit_edge674:                                   ; preds = %.lr.ph673, %.lr.ph673.prol.loopexit
  %spec.select521.lcssa = phi i32 [ %spec.select521.lcssa.unr, %.lr.ph673.prol.loopexit ], [ %spec.select521.3, %.lr.ph673 ]
  %i.zf = sext i32 %spec.select521.lcssa to i64   ; 3 uses
  %i.zg = icmp slt i64 %indvars.iv773, %i.zf
  br i1 %i.zg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %._crit_edge674
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv773 ; 2 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !806
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.zf ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !4
  store i32 %i.zk, ptr %i.yh, align 4, !tbaa !4
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.zf ; 2 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !806
  store ptr %i.zm, ptr %i.zh, align 8, !tbaa !806
  store i32 %i.yi, ptr %i.zj, align 4, !tbaa !4
  store ptr %i.zi, ptr %i.zl, align 8, !tbaa !806
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge674
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1
  %exitcond778.not = icmp eq i64 %indvars.iv.next774, %wide.trip.count777
  br i1 %exitcond778.not, label %.preheader594, label %.lr.ph673.preheader, !llvm.loop !1159

bb.ca:                                            ; preds = %.lr.ph685, %bb.cu
  %indvars.iv784 = phi i64 [ 0, %.lr.ph685 ], [ %indvars.iv.next785, %bb.cu ] ; 4 uses
  %.2418683 = phi i32 [ 0, %.lr.ph685 ], [ %.6422.ph, %bb.cu ] ; 5 uses
  %.1434681 = phi i32 [ %spec.store.select, %.lr.ph685 ], [ %.4437.ph, %bb.cu ] ; 6 uses
  %.3442680 = phi i32 [ %.0439.lcssa874881890, %.lr.ph685 ], [ %.6445.ph, %bb.cu ] ; 6 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv784
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !806 ; 11 uses
end_hunk_4
begin_hunk_5_@reparentPage:bb.a
_page_ref.exit.i:                                 ; preds = %.critedge.i.i.i.i, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 76 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !632
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !632
  br label %bb.q

bb.p:                                             ; preds = %pager_lookup.exit.i
  %i.as = add i16 %i.u, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_page_ref.exit.i
  %.sink.i = phi i16 [ 1, %_page_ref.exit.i ], [ %i.as, %bb.p ]
  store i16 %.sink.i, ptr %i.t, align 2, !tbaa !638
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 88 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !823
  %.not24 = icmp eq i8 %i.au, 0
  br i1 %.not24, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %.014.i.i, align 8, !tbaa !635
  %.not.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i, ptr null, ptr %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !826 ; 3 uses
  %.not25 = icmp eq ptr %i.ay, %2
  br i1 %.not25, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not26 = icmp eq ptr %i.ay, null
  br i1 %.not26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !629
  tail call fastcc void @sqlite3PagerUnref(ptr noundef %i.ba)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %2, ptr %i.ax, align 8, !tbaa !826
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !629 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 62 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !638 ; 2 uses
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.v, label %sqlite3PagerRef.exit

bb.v:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !635 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 168 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 4 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !642
  %i.bk = icmp eq ptr %i.bc, %i.bj
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !639
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !642
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 176 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !640
  %i.bo = icmp eq ptr %i.bc, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !641 ; 4 uses
  br i1 %i.bo, label %bb.y, label %._crit_edge.i.i.i.i28

bb.y:                                             ; preds = %bb.x
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !640
  br label %._crit_edge.i.i.i.i28

._crit_edge.i.i.i.i28:                            ; preds = %bb.y, %bb.x
  %.not.i.i.i.i29 = icmp eq ptr %i.bq, null
  %.pre43.i.i.i.i30 = load ptr, ptr %i.bi, align 8, !tbaa !639 ; 3 uses
  br i1 %.not.i.i.i.i29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %.pre43.i.i.i.i30, ptr %i.br, align 8, !tbaa !639
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i28
  %.not33.i.i.i.i31 = icmp eq ptr %.pre43.i.i.i.i30, null
  br i1 %.not33.i.i.i.i31, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre43.i.i.i.i30, i64 40
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !641
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 184 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !643
  %i.bv = icmp eq ptr %i.bc, %i.bu
  br i1 %i.bv, label %.preheader.i.i.i.i33, label %_page_ref.exit.i32

.preheader.i.i.i.i33:                             ; preds = %bb.ac
  %.038.i.i.i.i34 = load ptr, ptr %i.bi, align 8, !tbaa !639 ; 2 uses
  %.not3539.i.i.i.i35 = icmp eq ptr %.038.i.i.i.i34, null
  br i1 %.not3539.i.i.i.i35, label %.critedge.i.i.i.i41, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.preheader.i.i.i.i33, %bb.ad
  %.040.i.i.i.i37 = phi ptr [ %.0.i.i.i.i39, %bb.ad ], [ %.038.i.i.i.i34, %.preheader.i.i.i.i33 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i37, i64 58
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !644
  %.not36.i.i.i.i38 = icmp eq i8 %i.bx, 0
  br i1 %.not36.i.i.i.i38, label %.critedge.i.i.i.i41, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i36
  %i.by = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i37, i64 32
  %.0.i.i.i.i39 = load ptr, ptr %i.by, align 8, !tbaa !639 ; 2 uses
  %.not35.i.i.i.i40 = icmp eq ptr %.0.i.i.i.i39, null
  br i1 %.not35.i.i.i.i40, label %.critedge.i.i.i.i41, label %.lr.ph.i.i.i.i36, !llvm.loop !726

.critedge.i.i.i.i41:                              ; preds = %bb.ad, %.lr.ph.i.i.i.i36, %.preheader.i.i.i.i33
  %.0.lcssa.i.i.i.i42 = phi ptr [ null, %.preheader.i.i.i.i33 ], [ null, %bb.ad ], [ %.040.i.i.i.i37, %.lr.ph.i.i.i.i36 ]
  store ptr %.0.lcssa.i.i.i.i42, ptr %i.bt, align 8, !tbaa !643
  br label %_page_ref.exit.i32

_page_ref.exit.i32:                               ; preds = %.critedge.i.i.i.i41, %bb.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 76 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !632
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !632
  br label %sqlite3PagerRef.exit

sqlite3PagerRef.exit:                             ; preds = %bb.u, %_page_ref.exit.i32
  %storemerge.i = add i16 %i.be, 1
  store i16 %storemerge.i, ptr %i.bd, align 2, !tbaa !638
  br label %bb.ae

bb.ae:                                            ; preds = %sqlite3PagerRef.exit, %bb.r
  %i.cc = trunc i32 %3 to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 104
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !824
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.q
  tail call fastcc void @sqlite3PagerUnref(ptr noundef nonnull %.014.i.i)
  br label %sqlite3PagerLookup.exit.thread

sqlite3PagerLookup.exit.thread:                   ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %bb.b, %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !846
  %.not27 = icmp eq i8 %i.cf, 0
  br i1 %.not27, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %sqlite3PagerLookup.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !329
  %i.ci = tail call fastcc i32 @ptrmapPut(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext 5, i32 noundef %i.ch)
  br label %bb.ah

bb.ah:                                            ; preds = %sqlite3PagerLookup.exit.thread, %bb.a, %bb.ag
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ci, %bb.ag ], [ 0, %sqlite3PagerLookup.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance_quick(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.CellInfo, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !802  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !811
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.j = call fastcc i32 @allocateBtreePage(ptr noundef %i.f, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call fastcc void @sqlite3BtreeParseCellPtr(ptr noundef nonnull readonly %0, ptr noundef %i.l, ptr noundef nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.n = load i16, ptr %i.m, align 2, !tbaa !842  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !806  ; 22 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !801
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37    ; 4 uses
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !801
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !802  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !803   ; 3 uses
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = zext i8 %i.y to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 46 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !831
  %i.ae = zext i16 %i.ad to i32
  %i.af = sub nsw i32 %i.ae, %i.z
  %i.ag = sext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ag, i1 false)
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !37
  %i.ah = lshr i32 %i.s, 1
  %i.ai = and i32 %i.ah, 4
  %reass.sub.i = sub nsw i32 %i.z, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i32 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  store i8 0, ptr %i.ak, align 1, !tbaa !37
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.w, i64 47
  %4 = load i8, ptr %.shift.i, align 1, !tbaa !831
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 %4, ptr %i.al, align 1, !tbaa !37
  %i.am = load i16, ptr %i.ac, align 2, !tbaa !831
  %i.an = trunc i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !37
  %i.ap = load i16, ptr %i.ac, align 2, !tbaa !831
  %i.aq = trunc nsw i32 %reass.sub.i to i16
  %i.ar = add nsw i16 %i.aq, 12                   ; 3 uses
  %i.as = sub i16 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 18 ; 3 uses
  store i16 %i.as, ptr %i.at, align 2, !tbaa !834
  %i.au = and i32 %i.s, 5
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !333
  %i.ay = lshr i8 %i.r, 1
  %i.az = and i8 %i.ay, 1                         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !827
  %i.bb = lshr i8 %i.r, 3                         ; 2 uses
  %i.bc = and i8 %i.bb, 1                         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 %i.bc, ptr %i.bd, align 4, !tbaa !822
  %i.be = shl nuw nsw i8 %i.bc, 2
  %i.bf = xor i8 %i.be, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !812
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !802 ; 2 uses
  %i.bi = and i32 %i.s, 4
  %.not.i.i = icmp eq i32 %i.bi, 0                ; 4 uses
  %..i.i = select i1 %.not.i.i, i64 48, i64 56
  %.29.i.i = select i1 %.not.i.i, i64 52, i64 60
  %not..not.i.i = xor i1 %.not.i.i, true
  %.30.i.i = zext i1 %not..not.i.i to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %..i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.29.i.i
  %.sink.in.i.i = load i32, ptr %i.bk, align 4, !tbaa !4
  %.sink.i.i = trunc i32 %.sink.in.i.i to i16
  %.sink25.in.i.i = load i32, ptr %i.bj, align 8, !tbaa !4
  %.sink25.i.i = trunc i32 %.sink25.in.i.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i8 %.30.i.i, ptr %i.bl, align 2, !tbaa !821
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  store i16 %.sink25.i.i, ptr %i.bm, align 2, !tbaa !828
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i16 %.sink.i.i, ptr %i.bn, align 4, !tbaa !829
  %.not23.i.i = icmp eq i8 %i.az, 0
  %.not24.i.i = trunc i8 %i.bb to i1
  %narrow.i.i = or i1 %.not.i.i, %.not24.i.i
  %narrow31.i.i = select i1 %.not23.i.i, i1 %narrow.i.i, i1 false
  %i.bo = zext i1 %narrow31.i.i to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !813
  store i8 %i.y, ptr %i.x, align 8, !tbaa !803
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  store i16 %i.ar, ptr %i.bq, align 2, !tbaa !809
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.br, align 2, !tbaa !830
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.bs, align 1, !tbaa !825
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  store i16 0, ptr %i.bt, align 4, !tbaa !811
  store i8 1, ptr %i.o, align 8, !tbaa !823
  %i.bu = zext i16 %i.n to i32
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !801 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.aa ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  store i8 0, ptr %i.bx, align 1, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i8 1, ptr %i.by, align 1, !tbaa !37
  %i.bz = tail call fastcc i32 @allocateSpace(ptr noundef nonnull %i.o, i32 noundef %i.bu) ; 3 uses
  %i.ca = load i16, ptr %i.at, align 2, !tbaa !834
  %i.cb = add i16 %i.ca, -2
  store i16 %i.cb, ptr %i.at, align 2, !tbaa !834
  %i.cc = zext nneg i16 %i.ar to i64
  %i.cd = zext i16 %i.n to i64
  %i.ce = sext i32 %i.bz to i64
  %i.cf = lshr i32 %i.bz, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cc ; 2 uses
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !37
  %i.ci = trunc i32 %i.bz to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !37
  %i.ck = getelementptr inbounds i8, ptr %i.bv, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.l, i64 %i.cd, i1 false)
  store i16 1, ptr %i.bt, align 4, !tbaa !811
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.cl, align 2, !tbaa !830
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr %1, ptr %i.cm, align 8, !tbaa !826
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !629 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 62 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !638 ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %bb.b, label %sqlite3PagerRef.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !635 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 168 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 4 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !642
  %i.cw = icmp eq ptr %i.co, %i.cv
  br i1 %i.cw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !639
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !642
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 176 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !640
  %i.da = icmp eq ptr %i.co, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !641 ; 4 uses
  br i1 %i.da, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !640
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  %.pre43.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !639 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %.pre43.i.i.i.i, ptr %i.dd, align 8, !tbaa !639
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i
  %.not33.i.i.i.i = icmp eq ptr %.pre43.i.i.i.i, null
  br i1 %.not33.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.pre43.i.i.i.i, i64 40
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !641
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 184 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !643
  %i.dh = icmp eq ptr %i.co, %i.dg
  br i1 %i.dh, label %.preheader.i.i.i.i, label %_page_ref.exit.i

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.038.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !639 ; 2 uses
  %.not3539.i.i.i.i = icmp eq ptr %.038.i.i.i.i, null
  br i1 %.not3539.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.j
  %.040.i.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.j ], [ %.038.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i, i64 58
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !644
  %.not36.i.i.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not36.i.i.i.i, label %.critedge.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.040.i.i.i.i, i64 32
  %.0.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !639 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !726

.critedge.i.i.i.i:                                ; preds = %bb.j, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ null, %.preheader.i.i.i.i ], [ null, %bb.j ], [ %.040.i.i.i.i, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.df, align 8, !tbaa !643
  br label %_page_ref.exit.i

_page_ref.exit.i:                                 ; preds = %.critedge.i.i.i.i, %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 76 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !632
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !632
  br label %sqlite3PagerRef.exit

sqlite3PagerRef.exit:                             ; preds = %._crit_edge.i, %_page_ref.exit.i
  %storemerge.i = add i16 %i.cq, 1
  store i16 %storemerge.i, ptr %i.cp, align 2, !tbaa !638
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !801 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !809
  %i.dr = zext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dt = load i16, ptr %i.ds, align 4, !tbaa !811
  %i.du = zext i16 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = add nsw i32 %i.dr, -2
  %i.dx = add nsw i32 %i.dw, %i.dv
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.do, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !37
  %i.eb = zext i8 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !37
  %i.ef = zext i8 %i.ee to i64
end_hunk_5
