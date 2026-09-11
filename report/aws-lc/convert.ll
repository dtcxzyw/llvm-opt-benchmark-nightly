Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/convert?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BN_bn2hex:bb.a

.thread67:                                        ; preds = %bb.i
  %i.as = lshr i32 %i.aq, 4
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %.4.1, i64 1
  store i8 %i.av, ptr %.4.1, align 1, !tbaa !16
  %i.ax = and i64 %i.ao, 15
  %i.ay = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.4.1, i64 2
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !16
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !17
  %.phi.trans.insert47 = getelementptr inbounds nuw [8 x i8], ptr %.pre46, i64 %indvars.iv.next
  %.pre48 = load i64, ptr %.phi.trans.insert47, align 8, !tbaa !19
  %i.bb = lshr i64 %.pre48, 32                    ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 255
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = lshr i64 %i.an, 32                      ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 255                      ; 2 uses
  %.not84 = icmp eq i32 %i.bg, 0
  br i1 %.not84, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread67, %bb.j
  %i.bh = phi i32 [ %i.bd, %.thread67 ], [ %i.bg, %bb.j ]
  %i.bi = phi i64 [ %i.bb, %.thread67 ], [ %i.be, %bb.j ]
  %.4.270 = phi ptr [ %i.ba, %.thread67 ], [ %.4.1, %bb.j ] ; 3 uses
  %i.bj = lshr i32 %i.bh, 4
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %.4.270, i64 1
  store i8 %i.bm, ptr %.4.270, align 1, !tbaa !16
  %i.bo = and i64 %i.bi, 15
  %i.bp = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %.4.270, i64 2
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !16
  %.pre49 = load ptr, ptr %0, align 8, !tbaa !17
  %.phi.trans.insert50 = getelementptr inbounds nuw [8 x i8], ptr %.pre49, i64 %indvars.iv.next
  %.pre51 = load i64, ptr %.phi.trans.insert50, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %or.cond.371 = phi i1 [ true, %bb.k ], [ false, %bb.j ]
  %i.bs = phi i64 [ %.pre51, %bb.k ], [ %i.an, %bb.j ] ; 3 uses
  %.4.3 = phi ptr [ %i.br, %bb.k ], [ %.4.1, %bb.j ] ; 5 uses
  %i.bt = lshr i64 %i.bs, 24                      ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 255                      ; 2 uses
  %i.bw = icmp ne i32 %i.bv, 0
  %or.cond.4 = select i1 %or.cond.371, i1 true, i1 %i.bw
  br i1 %or.cond.4, label %.thread73, label %bb.m

.thread73:                                        ; preds = %bb.l
  %i.bx = lshr i32 %i.bv, 4
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.3, i64 1
  store i8 %i.ca, ptr %.4.3, align 1, !tbaa !16
  %i.cc = and i64 %i.bt, 15
  %i.cd = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %.4.3, i64 2
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !16
  %.pre52 = load ptr, ptr %0, align 8, !tbaa !17
  %.phi.trans.insert53 = getelementptr inbounds nuw [8 x i8], ptr %.pre52, i64 %indvars.iv.next
  %.pre54 = load i64, ptr %.phi.trans.insert53, align 8, !tbaa !19
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
  %i.cq = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %.4.476, i64 1
  store i8 %i.cr, ptr %.4.476, align 1, !tbaa !16
  %i.ct = and i64 %i.cn, 15
  %i.cu = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %.4.476, i64 2
  store i8 %i.cv, ptr %i.cs, align 1, !tbaa !16
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !17
  %.phi.trans.insert56 = getelementptr inbounds nuw [8 x i8], ptr %.pre55, i64 %indvars.iv.next
  %.pre57 = load i64, ptr %.phi.trans.insert56, align 8, !tbaa !19
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
  %i.de = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %.4.5, i64 1
  store i8 %i.df, ptr %.4.5, align 1, !tbaa !16
  %i.dh = and i64 %i.cy, 15
  %i.di = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %.4.5, i64 2
  store i8 %i.dj, ptr %i.dg, align 1, !tbaa !16
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !17
  %.phi.trans.insert59 = getelementptr inbounds nuw [8 x i8], ptr %.pre58, i64 %indvars.iv.next
  %.pre60 = load i64, ptr %.phi.trans.insert59, align 8, !tbaa !19 ; 2 uses
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
  %i.dt = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %.4.682, i64 1
  store i8 %i.du, ptr %.4.682, align 1, !tbaa !16
  %i.dw = and i64 %i.dq, 15
  %i.dx = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.4.682, i64 2
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.p
  %.4.7 = phi ptr [ %i.dz, %bb.q ], [ %.4.5, %bb.p ]
  %.2.7 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ]
  %i.ea = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ea, label %.preheader, label %.loopexit32, !llvm.loop !24

.loopexit32:                                      ; preds = %.loopexit, %bb.f, %bb.a
  ret ptr %i.e
}

declare i32 @bn_minimal_width(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_hex2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bn_x2bn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !16
  switch i8 %i.c, label %bb.d [
    i8 0, label %bn_x2bn.exit
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.035.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.032.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.e = zext nneg i32 %.032.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.035.i, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @OPENSSL_isxdigit(i32 noundef %i.h) #4, !callees !21, !inline_history !0
  %i.j = icmp ne i32 %i.i, 0
  %i.k = add nuw nsw i64 %indvars.iv.i, %i.e      ; 2 uses
  %i.l = icmp ne i64 %i.k, 2147483647
  %i.m = select i1 %i.j, i1 %i.l, i1 false
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.m, label %bb.e, label %bb.f, !llvm.loop !1

bb.f:                                             ; preds = %bb.e
  %i.n = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.o = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.2, i32 noundef 144) #4
  br label %bn_x2bn.exit

bb.h:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %0, null
  br i1 %i.p, label %bn_x2bn.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @BN_new() #4               ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bn_x2bn.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @BN_zero(ptr noundef nonnull %i.q) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.033.i = phi ptr [ %i.s, %bb.j ], [ %i.q, %bb.k ] ; 8 uses
  %i.u = icmp samesign ugt i64 %indvars.iv.i, 536870911
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.2, i32 noundef 63) #4
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.v = shl nuw nsw i64 %indvars.iv.i, 2
  %i.w = tail call i32 @bn_expand(ptr noundef nonnull %.033.i, i64 noundef %i.v) #4
  %.not.i2 = icmp eq i32 %i.w, 0
  br i1 %.not.i2, label %bb.s, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ %indvars.iv.i, %bb.n ] ; 4 uses
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.x = trunc nuw i64 %indvars.iv to i32
  %i.y = call i32 @llvm.umin.i32(i32 %i.x, i32 16)
  %umin.i = zext nneg i32 %i.y to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i3 = phi i64 [ %umin.i, %.lr.ph.i ], [ %indvars.iv.next.i4, %bb.o ] ; 3 uses
  %.02127.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i8 0, ptr %i.a, align 1, !tbaa !16
  %i.z = sub nsw i64 %indvars.iv, %indvars.iv.i3
  %i.aa = getelementptr inbounds i8, ptr %.035.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = sext i8 %i.ab to i32
  %i.ad = call i32 @OPENSSL_fromxdigit(ptr noundef nonnull %i.a, i32 noundef %i.ac) #4 ; 0 uses
  %i.ae = shl i64 %.02127.i, 4
  %i.af = load i8, ptr %i.a, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i64
  %i.ah = or i64 %i.ae, %i.ag                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next.i4 = add nsw i64 %indvars.iv.i3, -1
  %i.ai = icmp samesign ugt i64 %indvars.iv.i3, 1
  br i1 %i.ai, label %bb.o, label %bb.p, !llvm.loop !25

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %.033.i, align 8, !tbaa !17
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv33.i
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %.not31.i = icmp ult i64 %indvars.iv, 17
  br i1 %.not31.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !26

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %2 = trunc nuw i64 %indvars.iv.next34.i to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  store i32 %2, ptr %i.al, align 8, !tbaa !27
  call void @bn_set_minimal_width(ptr noundef nonnull %.033.i) #4
  %i.am = call i32 @BN_is_zero(ptr noundef nonnull %.033.i) #4
  %.not41.i = icmp eq i32 %i.am, 0
  br i1 %.not41.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.loopexit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  store i32 %.032.i, ptr %i.an, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.loopexit.i
  store ptr %.033.i, ptr %0, align 8, !tbaa !23
  br label %bn_x2bn.exit

bb.s:                                             ; preds = %bb.m, %bb.n
  %i.ao = load ptr, ptr %0, align 8, !tbaa !23
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.t, label %bn_x2bn.exit

bb.t:                                             ; preds = %bb.s
  tail call void @BN_free(ptr noundef nonnull %.033.i) #4
  br label %bn_x2bn.exit

bn_x2bn.exit:                                     ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %bb.j, %bb.r, %bb.s, %bb.t
  %.034.i = phi i32 [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.a ], [ %i.n, %bb.h ], [ %i.n, %bb.r ], [ 0, %bb.b ], [ 0, %bb.t ], [ 0, %bb.s ]
  ret i32 %.034.i
}

declare i32 @OPENSSL_isxdigit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !28

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
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %.not51 = icmp ult i64 %i.ab, 2
  br i1 %.not51, label %._crit_edge, label %.lr.ph50

._crit_edge:                                      ; preds = %.lr.ph50, %.preheader
  call void @BN_free(ptr noundef %.029) #4
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.j

.lr.ph50:                                         ; preds = %.preheader, %.lr.ph50
  %i.ad = phi i64 [ %i.aq, %.lr.ph50 ], [ %i.ab, %.preheader ]
  %.02549 = phi i64 [ %i.ap, %.lr.ph50 ], [ 0, %.preheader ] ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.02549 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = xor i64 %.02549, -1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !16
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.am = load i64, ptr %i.b, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ah
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !16
  %i.ap = add nuw nsw i64 %.02549, 1              ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = icmp samesign ult i64 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph50, label %._crit_edge, !llvm.loop !29

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

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_dec2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bn_x2bn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !16
  switch i8 %i.b, label %bb.d [
    i8 0, label %bn_x2bn.exit
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.035.i = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.032.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.d = zext nneg i32 %.032.i to i64
  br label %bb.e
end_hunk_0
