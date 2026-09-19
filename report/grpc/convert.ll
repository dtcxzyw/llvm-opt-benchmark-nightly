Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/convert?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BN_bn2hex:bb.a
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.3, i64 1
  store i8 %i.ca, ptr %.4.3, align 1, !tbaa !19
  %i.cc = and i64 %i.bt, 15
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %.4.3, i64 2
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !19
  %.pre52 = load ptr, ptr %0, align 8, !tbaa !20
  %.phi.trans.insert53 = getelementptr inbounds nuw [8 x i8], ptr %.pre52, i64 %indvars.iv.next
  %.pre54 = load i64, ptr %.phi.trans.insert53, align 8, !tbaa !22
  %i.cg = lshr i64 %.pre54, 16                    ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 255
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = lshr i64 %i.bs, 16                      ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 255                      ; 2 uses
  %.not85 = icmp eq i32 %i.cl, 0
  br i1 %.not85, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread73, %bb.m
  %i.cm = phi i32 [ %i.ci, %.thread73 ], [ %i.cl, %bb.m ]
  %i.cn = phi i64 [ %i.cg, %.thread73 ], [ %i.cj, %bb.m ]
  %.4.476 = phi ptr [ %i.cf, %.thread73 ], [ %.4.3, %bb.m ] ; 3 uses
  %i.co = lshr i32 %i.cm, 4
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %.4.476, i64 1
  store i8 %i.cr, ptr %.4.476, align 1, !tbaa !19
  %i.ct = and i64 %i.cn, 15
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %.4.476, i64 2
  store i8 %i.cv, ptr %i.cs, align 1, !tbaa !19
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !20
  %.phi.trans.insert56 = getelementptr inbounds nuw [8 x i8], ptr %.pre55, i64 %indvars.iv.next
  %.pre57 = load i64, ptr %.phi.trans.insert56, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %or.cond.577 = phi i1 [ true, %bb.n ], [ false, %bb.m ]
  %i.cx = phi i64 [ %.pre57, %bb.n ], [ %i.bs, %bb.m ] ; 3 uses
  %.4.5 = phi ptr [ %i.cw, %bb.n ], [ %.4.3, %bb.m ] ; 5 uses
  %i.cy = lshr i64 %i.cx, 8                       ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = and i32 %i.cz, 255                      ; 2 uses
  %i.db = icmp ne i32 %i.da, 0
  %or.cond.6 = select i1 %or.cond.577, i1 true, i1 %i.db
  br i1 %or.cond.6, label %.thread79, label %bb.p

.thread79:                                        ; preds = %bb.o
  %i.dc = lshr i32 %i.da, 4
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %.4.5, i64 1
  store i8 %i.df, ptr %.4.5, align 1, !tbaa !19
  %i.dh = and i64 %i.cy, 15
  %i.di = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %.4.5, i64 2
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !19
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !20
  %.phi.trans.insert59 = getelementptr inbounds nuw [8 x i8], ptr %.pre58, i64 %indvars.iv.next
  %.pre60 = load i64, ptr %.phi.trans.insert59, align 8, !tbaa !22 ; 2 uses
  %i.dl = trunc i64 %.pre60 to i32
  %i.dm = and i32 %i.dl, 255
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dn = trunc i64 %i.cx to i32
  %i.do = and i32 %i.dn, 255                      ; 2 uses
  %.not86 = icmp eq i32 %i.do, 0
  br i1 %.not86, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.thread79, %bb.p
  %i.dp = phi i32 [ %i.dm, %.thread79 ], [ %i.do, %bb.p ]
  %.4.682 = phi ptr [ %i.dk, %.thread79 ], [ %.4.5, %bb.p ] ; 3 uses
  %i.dq = phi i64 [ %.pre60, %.thread79 ], [ %i.cx, %bb.p ]
  %i.dr = lshr i32 %i.dp, 4
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %.4.682, i64 1
  store i8 %i.du, ptr %.4.682, align 1, !tbaa !19
  %i.dw = and i64 %i.dq, 15
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZL8hextable, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %.4.682, i64 2
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.p
  %.4.7 = phi ptr [ %i.dz, %bb.q ], [ %.4.5, %bb.p ] ; 2 uses
  %.2.7 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  %i.ea = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ea, label %.preheader, label %._crit_edge, !llvm.loop !27

bb.r:                                             ; preds = %bb.a, %._crit_edge
  ret ptr %i.e
}

declare i32 @bn_minimal_width(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define i32 @BN_hex2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !19
  switch i8 %i.c, label %bb.d [
    i8 0, label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.031.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.e = zext nneg i32 %.031.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv11 = phi i32 [ %indvars.iv.next12, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.034.i, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19
  %i.h = zext i8 %i.g to i32
  %i.i = tail call noundef i32 @OPENSSL_isxdigit(i32 noundef %i.h) #4, !callees !24, !inline_history !0
  %i.j = icmp ne i32 %i.i, 0
  %i.k = add nuw nsw i64 %indvars.iv.i, %i.e      ; 2 uses
  %i.l = icmp ne i64 %i.k, 2147483647
  %i.m = select i1 %i.j, i1 %i.l, i1 false
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %indvars.iv.next12 = add nsw i32 %indvars.iv11, 1
  br i1 %i.m, label %bb.e, label %bb.f, !llvm.loop !1

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @BN_new() #4               ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @BN_zero(ptr noundef nonnull %i.p) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.032.i = phi ptr [ %i.r, %bb.h ], [ %i.p, %bb.i ] ; 8 uses
  %i.t = icmp samesign ugt i64 %indvars.iv.i, 536870911
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.2, i32 noundef 75) #4
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.u = shl nuw nsw i64 %indvars.iv.i, 2
  %i.v = tail call i32 @bn_expand(ptr noundef nonnull %.032.i, i64 noundef %i.u) #4
  %.not.i2 = icmp eq i32 %i.v, 0
  br i1 %.not.i2, label %bb.q, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %.not = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.w = lshr i32 %indvars.iv11, 4
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.i, %.lr.ph.i.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next34.i, %bb.n ] ; 2 uses
  %2 = trunc nuw i64 %indvars.iv to i32
  %3 = call i32 @llvm.umin.i32(i32 %2, i32 16)
  %umin.i = zext nneg i32 %3 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i3 = phi i64 [ %umin.i, %.lr.ph.i ], [ %indvars.iv.next.i4, %bb.m ] ; 3 uses
  %.02127.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.y = sub nsw i64 %indvars.iv, %indvars.iv.i3
  %i.z = getelementptr inbounds i8, ptr %.034.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19
  %i.ab = sext i8 %i.aa to i32
  %i.ac = call i32 @OPENSSL_fromxdigit(ptr noundef nonnull %i.a, i32 noundef %i.ab) #4 ; 0 uses
  %i.ad = shl i64 %.02127.i, 4
  %i.ae = load i8, ptr %i.a, align 1, !tbaa !19
  %i.af = zext i8 %i.ae to i64
  %i.ag = or i64 %i.ad, %i.af                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next.i4 = add nsw i64 %indvars.iv.i3, -1
  %i.ah = icmp samesign ugt i64 %indvars.iv.i3, 1
  br i1 %i.ah, label %bb.m, label %bb.n, !llvm.loop !28

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %.032.i, align 8, !tbaa !20
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv33.i
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !22
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond = icmp eq i64 %indvars.iv.next34.i, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !29

._crit_edge.loopexit.i:                           ; preds = %bb.n, %.preheader.i
  %.023.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.x, %bb.n ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  store i32 %.023.lcssa.i, ptr %i.ak, align 8, !tbaa !30
  call void @bn_set_minimal_width(ptr noundef nonnull %.032.i) #4
  %i.al = call i32 @BN_is_zero(ptr noundef nonnull %.032.i) #4
  %.not40.i = icmp eq i32 %i.al, 0
  br i1 %.not40.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.loopexit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.032.i, i64 16
  store i32 %.031.i, ptr %i.am, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.loopexit.i
  store ptr %.032.i, ptr %0, align 8, !tbaa !26
  br label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit

bb.q:                                             ; preds = %bb.k, %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !26
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.r, label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit

bb.r:                                             ; preds = %bb.q
  tail call void @BN_free(ptr noundef nonnull %.032.i) #4
  br label %_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit

_ZL7bn_x2bnPP9bignum_stPKcPFiS0_S3_iEPFiiE.exit:  ; preds = %bb.a, %bb.b, %bb.f, %bb.h, %bb.p, %bb.q, %bb.r
  %.033.i = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ %i.n, %bb.f ], [ %i.n, %bb.p ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.q ]
  ret i32 %.033.i
}

declare i32 @OPENSSL_isxdigit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_bn2dec(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cbb_st, align 8             ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.c = call i32 @CBB_init(ptr noundef nonnull %1, i64 noundef 16) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @CBB_add_u8(ptr noundef nonnull %1, i8 noundef zeroext 0) #4
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @BN_is_zero(ptr noundef %0) #4
  %.not34 = icmp eq i32 %i.e, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @CBB_add_u8(ptr noundef nonnull %1, i8 noundef zeroext 48) #4
  %.not38 = icmp eq i32 %i.f, 0
  br i1 %.not38, label %.critedge.thread, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.g = call ptr @BN_dup(ptr noundef %0) #4      ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge.thread, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.e
  %i.i = call i32 @BN_is_zero(ptr noundef nonnull %i.g) #4
  %.not3547 = icmp eq i32 %i.i, 0
  br i1 %.not3547, label %.lr.ph48, label %.loopexit

.critedge.loopexit:                               ; preds = %bb.g, %bb.f
  %i.j = call i32 @BN_is_zero(ptr noundef nonnull %i.g) #4
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %.critedge.preheader, %.critedge.loopexit
  %i.k = call i64 @BN_div_word(ptr noundef nonnull %i.g, i64 noundef -8446744073709551616) #4 ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph48
  %i.m = call i32 @BN_is_zero(ptr noundef nonnull %i.g) #4
  %.not36 = icmp eq i32 %i.m, 0                   ; 2 uses
  %i.n = icmp ne i64 %i.k, 0
  %i.o = or i1 %.not36, %i.n
  br i1 %i.o, label %.lr.ph, label %.critedge.loopexit

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.02746 = phi i32 [ %i.u, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.02845 = phi i64 [ %i.q, %bb.g ], [ %i.k, %bb.f ] ; 3 uses
  %i.p = urem i64 %.02845, 10
  %i.q = udiv i64 %.02845, 10
  %i.r = trunc nuw nsw i64 %i.p to i8
  %i.s = or disjoint i8 %i.r, 48
  %i.t = call i32 @CBB_add_u8(ptr noundef nonnull %1, i8 noundef zeroext %i.s) #4
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i32 %.02746, 1
  %i.v = icmp samesign ult i32 %.02746, 18
  %i.w = icmp ugt i64 %.02845, 9
  %i.x = or i1 %.not36, %i.w
  %or.cond = and i1 %i.v, %i.x
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %.critedge.loopexit, %.critedge.preheader, %bb.d
  %.029 = phi ptr [ null, %bb.d ], [ %i.g, %.critedge.preheader ], [ %i.g, %.critedge.loopexit ] ; 3 uses
  %i.y = call i32 @BN_is_negative(ptr noundef %0) #4
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.z = call i32 @CBB_add_u8(ptr noundef nonnull %1, i8 noundef zeroext 45) #4
  %.not40 = icmp eq i32 %i.z, 0
  br i1 %.not40, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.aa = call i32 @CBB_finish(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not41 = icmp eq i32 %i.aa, 0
  br i1 %.not41, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %.not51 = icmp ult i64 %i.ab, 2
  br i1 %.not51, label %._crit_edge, label %.lr.ph50

._crit_edge:                                      ; preds = %.lr.ph50, %.preheader
  call void @BN_free(ptr noundef %.029) #4
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %bb.j

.lr.ph50:                                         ; preds = %.preheader, %.lr.ph50
  %i.ad = phi i64 [ %i.aq, %.lr.ph50 ], [ %i.ab, %.preheader ]
  %.02549 = phi i64 [ %i.ap, %.lr.ph50 ], [ 0, %.preheader ] ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.02549 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = xor i64 %.02549, -1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !19
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.am = load i64, ptr %i.b, align 8, !tbaa !22
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ah
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !19
  %i.ap = add nuw nsw i64 %.02549, 1              ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = icmp samesign ult i64 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph50, label %._crit_edge, !llvm.loop !32

.critedge.thread:                                 ; preds = %.lr.ph48, %.lr.ph, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a, %bb.b
  %.130 = phi ptr [ %.029, %bb.i ], [ %.029, %bb.h ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.g, %.lr.ph ], [ %i.g, %.lr.ph48 ]
  call void @BN_free(ptr noundef %.130) #4
  call void @CBB_cleanup(ptr noundef nonnull %1) #4
  br label %bb.j

bb.j:                                             ; preds = %.critedge.thread, %._crit_edge
  %.0 = phi ptr [ %i.ac, %._crit_edge ], [ null, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret ptr %.0
}

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #2

declare i64 @BN_div_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@BIO_new_fp
declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define range(i64 4, 536870918) i64 @BN_bn2mpi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %0) #4
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 7
  %i.d = lshr i64 %i.c, 3                         ; 2 uses
  %.not = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, 7
  %i.f = icmp eq i64 %i.e, 0
  %or.cond40.not.not = and i1 %i.f, %.not         ; 2 uses
  %spec.select41 = zext i1 %or.cond40.not.not to i64 ; 2 uses
  %i.g = add nuw nsw i64 %i.d, %spec.select41     ; 6 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 24
  %i.j = trunc nuw nsw i64 %i.i to i8
  store i8 %i.j, ptr %1, align 1, !tbaa !19
  %i.k = lshr i64 %i.g, 16
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !19
  %i.n = lshr i64 %i.g, 8
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !19
  %i.q = trunc i64 %i.g to i8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.q, ptr %i.r, align 1, !tbaa !19
  br i1 %or.cond40.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.s, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select41
  %i.v = tail call i64 @BN_bn2bin(ptr noundef %0, ptr noundef nonnull %i.u) #4 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = icmp ne i32 %i.x, 0
  %i.z = icmp ne i64 %i.g, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !19
  %i.ab = or i8 %i.aa, -128
  store i8 %i.ab, ptr %i.t, align 1, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.ac = add nuw nsw i64 %i.g, 4
  ret i64 %i.ac
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare i64 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_mpi2bn(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.2, i32 noundef 369) #4
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1                ; 2 uses
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = add i64 %1, -4
  %.not = icmp eq i64 %i.e, %i.d
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.2, i32 noundef 377) #4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not31, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call ptr @BN_new() #4               ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024 = phi ptr [ %2, %bb.e ], [ %i.f, %bb.f ]  ; 9 uses
  %i.h = icmp eq i32 %i.b, 0
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @BN_zero(ptr noundef nonnull %.024) #4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.i, i64 noundef %i.d, ptr noundef nonnull %.024) #4
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %.not31, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call void @BN_free(ptr noundef nonnull %.024) #4
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.l = load i8, ptr %i.i, align 1, !tbaa !19    ; 2 uses
  %i.m = icmp slt i8 %i.l, 0
  %.lobit = lshr i8 %i.l, 7
  %i.n = zext nneg i8 %.lobit to i32
  %i.o = getelementptr inbounds nuw i8, ptr %.024, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !18
  br i1 %i.m, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.p = tail call i32 @BN_num_bits(ptr noundef nonnull %.024) #4
  %i.q = add i32 %i.p, -1
  %i.r = tail call i32 @BN_clear_bit(ptr noundef nonnull %.024, i32 noundef %i.q) #4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.l, %bb.m, %bb.j, %bb.k, %bb.f, %bb.h, %bb.b
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.j ], [ %.024, %bb.h ], [ null, %bb.f ], [ null, %bb.k ], [ %.024, %bb.m ], [ %.024, %bb.l ]
  ret ptr %.2
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BN_new() local_unnamed_addr #2

declare void @BN_zero(ptr noundef) local_unnamed_addr #2

declare ptr @BN_bin2bn(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -1, -2147483648) i32 @BN_bn2binpad(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %i.c = tail call i32 @BN_bn2bin_padded(ptr noundef %1, i64 noundef %i.b, ptr noundef %0) #4
  %.not = icmp eq i32 %i.c, 0
  %spec.select = select i1 %.not, i32 -1, i32 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 -1, -2147483648) i32 @BN_bn2lebinpad(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %i.c = tail call i32 @BN_bn2le_padded(ptr noundef %1, i64 noundef %i.b, ptr noundef %0) #4
  %.not = icmp eq i32 %i.c, 0
  %spec.select = select i1 %.not, i32 -1, i32 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare i32 @BN_bn2le_padded(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @bn_set_minimal_width(ptr noundef) local_unnamed_addr #2

declare i32 @bn_expand(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_fromxdigit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_add_word(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{!1, !23}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 long", !13, i64 0}
!17 = !{!"_ZTS9bignum_st", !16, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!18 = !{!17, !10, i64 16}
!19 = !{!9, !9, i64 0}
!20 = !{!17, !16, i64 0}
!21 = !{!"long", !9, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{ptr @OPENSSL_isdigit, ptr @OPENSSL_isxdigit}
!25 = !{!"p1 _ZTS9bignum_st", !13, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = !{!17, !10, i64 8}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
end_hunk_1
