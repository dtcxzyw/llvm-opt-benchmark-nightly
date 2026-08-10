inline.NumInlined: 75
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@If_Dec7PickBestMux:bb.a
  %.1.1.i35 = add nuw nsw i32 %i.dj, %i.fc
  %.1.2.i39 = add nuw nsw i32 %.1.1.i35, %i.cy
  %.1.3.i43 = add nuw nsw i32 %.1.2.i39, %i.du
  %.1.4.i47 = add nuw nsw i32 %.1.3.i43, %i.ef
  %.1.5.i51 = add nuw nsw i32 %.1.4.i47, %i.eq
  %.1.6.i53 = add nuw nsw i32 %.1.5.i51, %i.fb    ; 2 uses
  %i.fd = icmp samesign ult i32 %.1.6.i, 5
  %i.fe = icmp samesign ult i32 %.1.6.i53, 5
  %or.cond = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %If_Dec7Cofactor.exit28
  %i.ff = add nuw nsw i32 %.1.6.i53, %.1.6.i      ; 2 uses
  %i.fg = icmp sgt i32 %.068, %i.ff
  br i1 %i.fg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %.sroa.056.064, ptr %1, align 8, !tbaa !12
  store i64 %.sroa.658.062, ptr %i.b, align 8, !tbaa !12
  store i64 %.sroa.0.0, ptr %2, align 8, !tbaa !12
  store i64 %.sroa.6.0, ptr %i.c, align 8, !tbaa !12
  %i.fh = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.g

bb.g:                                             ; preds = %If_Dec7Cofactor.exit28, %bb.e, %bb.f
  %.121 = phi i32 [ %i.fh, %bb.f ], [ %.02066, %bb.e ], [ %.02066, %If_Dec7Cofactor.exit28 ] ; 2 uses
  %.1 = phi i32 [ %i.ff, %bb.f ], [ %.068, %bb.e ], [ %.068, %If_Dec7Cofactor.exit28 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !36

bb.h:                                             ; preds = %bb.g
  ret i32 %.121
}

; Function Attrs: nounwind uwtable
define range(i64 31525197391593472, 2) i64 @If_Dec5Perform(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
.preheader.preheader:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [4 x i64], align 16               ; 9 uses
  %i.c = alloca [4 x i64], align 16               ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca [7 x i32], align 16               ; 28 uses
  %i.h = alloca [7 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.h, align 16, !tbaa !8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.g, align 16, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 4, ptr %i.i, align 16, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 4, ptr %i.j, align 16, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 5, ptr %i.k, align 4, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 5, ptr %i.l, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 6, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 6, ptr %i.n, align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.af
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.af ] ; 2 uses
  %.02599 = phi i64 [ %0, %.preheader.preheader ], [ %.0.lcssa.i, %bb.af ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8    ; 2 uses
  %.not28.i = icmp eq i32 %i.p, 0
  br i1 %.not28.i, label %If_Dec6MoveTo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %.lr.ph.i
  %i.q = phi i32 [ %i.av, %.lr.ph.i ], [ %i.p, %.preheader ] ; 2 uses
  %.029.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.02599, %.preheader ] ; 3 uses
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr @PMasks, i64 %i.s ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = and i64 %i.u, %.029.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !12
  %i.y = and i64 %i.x, %.029.i
  %i.z = shl nuw i32 1, %i.r
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl i64 %i.y, %i.aa
  %i.ac = or i64 %i.ab, %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !12
  %i.af = and i64 %i.ae, %.029.i
  %i.ag = lshr i64 %i.af, %i.aa
  %i.ah = or i64 %i.ac, %i.ag                     ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !8
  %i.ao = sext i32 %i.q to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !8
  store i32 %i.aj, ptr %i.ap, align 4, !tbaa !8
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !8
  %i.av = load i32, ptr %i.o, align 4, !tbaa !8   ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %If_Dec6MoveTo.exit, label %.lr.ph.i, !llvm.loop !18

If_Dec6MoveTo.exit:                               ; preds = %.lr.ph.i, %.preheader
  %.0.lcssa.i = phi i64 [ %.02599, %.preheader ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.aw = trunc i64 %.0.lcssa.i to i32            ; 16 uses
  %i.ax = and i32 %i.aw, 3
  %i.ay = shl nuw nsw i32 1, %i.ax                ; 2 uses
  %i.az = lshr i32 %i.aw, 2
  %i.ba = and i32 %i.az, 3
  %i.bb = shl nuw nsw i32 1, %i.ba                ; 2 uses
  %i.bc = lshr i32 %i.aw, 4
  %i.bd = and i32 %i.bc, 3
  %i.be = shl nuw nsw i32 1, %i.bd                ; 2 uses
  %i.bf = lshr i32 %i.aw, 6
  %i.bg = and i32 %i.bf, 3
  %i.bh = shl nuw nsw i32 1, %i.bg                ; 2 uses
  %i.bi = lshr i32 %i.aw, 8
  %i.bj = and i32 %i.bi, 3
  %i.bk = shl nuw nsw i32 1, %i.bj                ; 2 uses
  %i.bl = lshr i32 %i.aw, 10
  %i.bm = and i32 %i.bl, 3
  %i.bn = shl nuw nsw i32 1, %i.bm                ; 2 uses
  %i.bo = lshr i32 %i.aw, 12
  %i.bp = and i32 %i.bo, 3
  %i.bq = shl nuw nsw i32 1, %i.bp                ; 2 uses
  %i.br = lshr i32 %i.aw, 14
  %i.bs = and i32 %i.br, 3
  %i.bt = shl nuw nsw i32 1, %i.bs                ; 2 uses
  %i.bu = lshr i32 %i.aw, 16
  %i.bv = and i32 %i.bu, 3
  %i.bw = shl nuw nsw i32 1, %i.bv                ; 2 uses
  %i.bx = lshr i32 %i.aw, 18
  %i.by = and i32 %i.bx, 3
  %i.bz = shl nuw nsw i32 1, %i.by                ; 2 uses
  %i.ca = lshr i32 %i.aw, 20
  %i.cb = and i32 %i.ca, 3
  %i.cc = shl nuw nsw i32 1, %i.cb                ; 2 uses
  %i.cd = lshr i32 %i.aw, 22
  %i.ce = and i32 %i.cd, 3
  %i.cf = shl nuw nsw i32 1, %i.ce                ; 2 uses
  %i.cg = lshr i32 %i.aw, 24
  %i.ch = and i32 %i.cg, 3
  %i.ci = shl nuw nsw i32 1, %i.ch                ; 2 uses
  %i.cj = lshr i32 %i.aw, 26
  %i.ck = and i32 %i.cj, 3
  %i.cl = shl nuw nsw i32 1, %i.ck                ; 2 uses
  %i.cm = lshr i32 %i.aw, 28
  %i.cn = and i32 %i.cm, 3
  %i.co = shl nuw nsw i32 1, %i.cn                ; 2 uses
  %i.cp = lshr i32 %i.aw, 30
  %i.cq = shl nuw nsw i32 1, %i.cp                ; 2 uses
  %broadcast.splatinsert426 = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat427 = shufflevector <4 x i32> %broadcast.splatinsert426, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert422 = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %broadcast.splat423 = shufflevector <4 x i32> %broadcast.splatinsert422, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert418 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat419 = shufflevector <4 x i32> %broadcast.splatinsert418, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert414 = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat415 = shufflevector <4 x i32> %broadcast.splatinsert414, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert410 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat411 = shufflevector <4 x i32> %broadcast.splatinsert410, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert406 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat407 = shufflevector <4 x i32> %broadcast.splatinsert406, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert402 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat403 = shufflevector <4 x i32> %broadcast.splatinsert402, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat399 = shufflevector <4 x i32> %broadcast.splatinsert398, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert394 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat395 = shufflevector <4 x i32> %broadcast.splatinsert394, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert390 = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat391 = shufflevector <4 x i32> %broadcast.splatinsert390, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert386 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat387 = shufflevector <4 x i32> %broadcast.splatinsert386, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert382 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat383 = shufflevector <4 x i32> %broadcast.splatinsert382, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat379 = shufflevector <4 x i32> %broadcast.splatinsert378, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert374 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat375 = shufflevector <4 x i32> %broadcast.splatinsert374, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ay, i64 0
  %i.cs = insertelement <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, i32 %i.cq, i64 3
  %invariant.op = or <4 x i32> %i.cr, %i.cs
  br label %bb.a

.loopexit:                                        ; preds = %vector.early.exit, %bb.a
  %exitcond180.not = icmp eq i32 %i.ct, 4
  br i1 %exitcond180.not, label %bb.af, label %bb.a, !llvm.loop !37

bb.a:                                             ; preds = %If_Dec6MoveTo.exit, %.loopexit
  %.12997 = phi i32 [ 0, %If_Dec6MoveTo.exit ], [ %i.ct, %.loopexit ] ; 23 uses
  %i.ct = add nuw nsw i32 %.12997, 1              ; 3 uses
  %i.cu = icmp samesign ult i32 %.12997, 3
  br i1 %i.cu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.cv = icmp eq i32 %.12997, 0                  ; 3 uses
  %i.cw = lshr i32 2, %.12997                     ; 2 uses
  %i.cx = lshr i32 3, %.12997                     ; 2 uses
  %i.cy = lshr i32 4, %.12997                     ; 2 uses
  %i.cz = lshr i32 5, %.12997                     ; 2 uses
  %i.da = lshr i32 6, %.12997                     ; 2 uses
  %i.db = lshr i32 7, %.12997                     ; 2 uses
  %i.dc = lshr exact i32 8, %.12997               ; 2 uses
  %i.dd = lshr i32 9, %.12997                     ; 2 uses
  %i.de = lshr i32 10, %.12997                    ; 2 uses
  %i.df = lshr i32 11, %.12997                    ; 2 uses
  %i.dg = lshr i32 12, %.12997                    ; 2 uses
  %i.dh = lshr i32 13, %.12997                    ; 2 uses
  %i.di = lshr i32 14, %.12997                    ; 2 uses
  %broadcast.splatinsert424 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat425 = shufflevector <4 x i32> %broadcast.splatinsert424, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert420 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat421 = shufflevector <4 x i32> %broadcast.splatinsert420, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert416 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat417 = shufflevector <4 x i32> %broadcast.splatinsert416, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert408 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat409 = shufflevector <4 x i32> %broadcast.splatinsert408, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert404 = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %broadcast.splat405 = shufflevector <4 x i32> %broadcast.splatinsert404, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert396 = insertelement <4 x i32> poison, i32 %i.db, i64 0
  %broadcast.splat397 = shufflevector <4 x i32> %broadcast.splatinsert396, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert392 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat393 = shufflevector <4 x i32> %broadcast.splatinsert392, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert388 = insertelement <4 x i32> poison, i32 %i.cz, i64 0
  %broadcast.splat389 = shufflevector <4 x i32> %broadcast.splatinsert388, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat381 = shufflevector <4 x i32> %broadcast.splatinsert380, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat377 = shufflevector <4 x i32> %broadcast.splatinsert376, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert372 = insertelement <4 x i1> poison, i1 %i.cv, i64 0
  %broadcast.splat373 = shufflevector <4 x i1> %broadcast.splatinsert372, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dj = xor <4 x i1> %broadcast.splat373, <i1 false, i1 true, i1 false, i1 true>
  %i.dk = or <4 x i1> %i.dj, <i1 false, i1 false, i1 true, i1 true>
  %i.dl = select <4 x i1> %i.dk, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat375
  %i.dm = xor <4 x i32> %broadcast.splat377, <i32 0, i32 1, i32 2, i32 3>
  %i.dn = and <4 x i32> %i.dm, splat (i32 1)
  %i.do = icmp eq <4 x i32> %i.dn, zeroinitializer
  %i.dp = xor <4 x i32> %broadcast.splat381, <i32 0, i32 1, i32 2, i32 3>
  %i.dq = and <4 x i32> %i.dp, splat (i32 1)
  %i.dr = icmp eq <4 x i32> %i.dq, zeroinitializer
  %i.ds = xor <4 x i32> %broadcast.splat385, <i32 0, i32 1, i32 2, i32 3>
  %i.dt = and <4 x i32> %i.ds, splat (i32 1)
  %i.du = icmp eq <4 x i32> %i.dt, zeroinitializer
  %i.dv = xor <4 x i32> %broadcast.splat389, <i32 0, i32 1, i32 2, i32 3>
  %i.dw = and <4 x i32> %i.dv, splat (i32 1)
  %i.dx = icmp eq <4 x i32> %i.dw, zeroinitializer
  %i.dy = xor <4 x i32> %broadcast.splat393, <i32 0, i32 1, i32 2, i32 3>
  %i.dz = and <4 x i32> %i.dy, splat (i32 1)
  %i.ea = icmp eq <4 x i32> %i.dz, zeroinitializer
  %i.eb = xor <4 x i32> %broadcast.splat397, <i32 0, i32 1, i32 2, i32 3>
  %i.ec = and <4 x i32> %i.eb, splat (i32 1)
  %i.ed = icmp eq <4 x i32> %i.ec, zeroinitializer
  %i.ee = xor <4 x i32> %broadcast.splat401, <i32 0, i32 1, i32 2, i32 3>
  %i.ef = and <4 x i32> %i.ee, splat (i32 1)
  %i.eg = icmp eq <4 x i32> %i.ef, zeroinitializer
  %i.eh = xor <4 x i32> %broadcast.splat405, <i32 0, i32 1, i32 2, i32 3>
  %i.ei = and <4 x i32> %i.eh, splat (i32 1)
  %i.ej = icmp eq <4 x i32> %i.ei, zeroinitializer
  %i.ek = xor <4 x i32> %broadcast.splat409, <i32 0, i32 1, i32 2, i32 3>
  %i.el = and <4 x i32> %i.ek, splat (i32 1)
  %i.em = icmp eq <4 x i32> %i.el, zeroinitializer
  %i.en = xor <4 x i32> %broadcast.splat413, <i32 0, i32 1, i32 2, i32 3>
  %i.eo = and <4 x i32> %i.en, splat (i32 1)
  %i.ep = icmp eq <4 x i32> %i.eo, zeroinitializer
  %i.eq = xor <4 x i32> %broadcast.splat417, <i32 0, i32 1, i32 2, i32 3>
  %i.er = and <4 x i32> %i.eq, splat (i32 1)
  %i.es = icmp eq <4 x i32> %i.er, zeroinitializer
  %i.et = xor <4 x i32> %broadcast.splat421, <i32 0, i32 1, i32 2, i32 3>
  %i.eu = and <4 x i32> %i.et, splat (i32 1)
  %i.ev = icmp eq <4 x i32> %i.eu, zeroinitializer
  %i.ew = xor <4 x i32> %broadcast.splat425, <i32 0, i32 1, i32 2, i32 3>
  %i.ex = and <4 x i32> %i.ew, splat (i32 1)
  %i.ey = icmp eq <4 x i32> %i.ex, zeroinitializer
  %i.ez = and <4 x i1> %i.ey, <i1 false, i1 false, i1 true, i1 true>
  %i.fa = select <4 x i1> %i.ez, <4 x i32> %broadcast.splat427, <4 x i32> zeroinitializer
  %.reass = or <4 x i32> %i.dl, %invariant.op
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph, %vector.early.exit
  %.02796 = phi i32 [ %i.ct, %.lr.ph ], [ %i.vu, %vector.early.exit ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !12
  %i.fb = icmp eq i32 %.02796, 1                  ; 3 uses
  %i.fc = zext i1 %i.fb to i32                    ; 2 uses
  %i.fd = lshr i32 3, %.02796                     ; 2 uses
  %i.fe = icmp eq i32 %.02796, 2                  ; 2 uses
  %i.ff = zext i1 %i.fe to i32                    ; 2 uses
  %i.fg = lshr i32 5, %.02796
  %i.fh = and i32 %i.fg, 1                        ; 2 uses
  %i.fi = lshr i32 6, %.02796
  %i.fj = and i32 %i.fi, 1                        ; 2 uses
  %i.fk = lshr i32 7, %.02796
  %i.fl = and i32 %i.fk, 1                        ; 2 uses
  %i.fm = icmp eq i32 %.02796, 3                  ; 2 uses
  %i.fn = zext i1 %i.fm to i32                    ; 2 uses
  %i.fo = lshr i32 9, %.02796
  %i.fp = and i32 %i.fo, 1                        ; 2 uses
  %i.fq = lshr i32 10, %.02796
  %i.fr = and i32 %i.fq, 1                        ; 2 uses
  %i.fs = lshr i32 11, %.02796
  %i.ft = and i32 %i.fs, 1                        ; 2 uses
  %i.fu = lshr i32 12, %.02796
  %i.fv = and i32 %i.fu, 1                        ; 2 uses
  %i.fw = lshr i32 13, %.02796
  %i.fx = and i32 %i.fw, 1                        ; 2 uses
  %broadcast.splatinsert368 = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %broadcast.splat369 = shufflevector <4 x i32> %broadcast.splatinsert368, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert366 = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %broadcast.splat367 = shufflevector <4 x i32> %broadcast.splatinsert366, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert364 = insertelement <4 x i32> poison, i32 %i.ft, i64 0
  %broadcast.splat365 = shufflevector <4 x i32> %broadcast.splatinsert364, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert358 = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %broadcast.splat359 = shufflevector <4 x i32> %broadcast.splatinsert358, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert356 = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %broadcast.splat357 = shufflevector <4 x i32> %broadcast.splatinsert356, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert354 = insertelement <4 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat355 = shufflevector <4 x i32> %broadcast.splatinsert354, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert352 = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %broadcast.splat353 = shufflevector <4 x i32> %broadcast.splatinsert352, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert350 = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %broadcast.splat351 = shufflevector <4 x i32> %broadcast.splatinsert350, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat349 = shufflevector <4 x i32> %broadcast.splatinsert348, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fy = icmp eq <4 x i32> %broadcast.splat, <i32 0, i32 0, i32 1, i32 1>
  %i.fz = and <4 x i1> %i.fy, %i.do
  %i.ga = select <4 x i1> %i.fz, <4 x i32> %broadcast.splat379, <4 x i32> zeroinitializer
  %i.gb = icmp eq <4 x i32> %broadcast.splat349, <i32 0, i32 0, i32 1, i32 1>
  %i.gc = select <4 x i1> %i.dr, <4 x i1> %i.gb, <4 x i1> zeroinitializer
  %i.gd = select <4 x i1> %i.gc, <4 x i32> %broadcast.splat383, <4 x i32> zeroinitializer
  %i.ge = icmp eq <4 x i32> %broadcast.splat351, <i32 0, i32 0, i32 1, i32 1>
  %i.gf = and <4 x i1> %i.ge, %i.du
  %i.gg = select <4 x i1> %i.gf, <4 x i32> %broadcast.splat387, <4 x i32> zeroinitializer
  %i.gh = icmp eq <4 x i32> %broadcast.splat353, <i32 0, i32 0, i32 1, i32 1>
  %i.gi = select <4 x i1> %i.dx, <4 x i1> %i.gh, <4 x i1> zeroinitializer
  %i.gj = select <4 x i1> %i.gi, <4 x i32> %broadcast.splat391, <4 x i32> zeroinitializer
  %i.gk = icmp eq <4 x i32> %broadcast.splat355, <i32 0, i32 0, i32 1, i32 1>
  %i.gl = select <4 x i1> %i.ea, <4 x i1> %i.gk, <4 x i1> zeroinitializer
  %i.gm = select <4 x i1> %i.gl, <4 x i32> %broadcast.splat395, <4 x i32> zeroinitializer
  %i.gn = icmp eq <4 x i32> %broadcast.splat357, <i32 0, i32 0, i32 1, i32 1>
  %i.go = select <4 x i1> %i.ed, <4 x i1> %i.gn, <4 x i1> zeroinitializer
  %i.gp = select <4 x i1> %i.go, <4 x i32> %broadcast.splat399, <4 x i32> zeroinitializer
  %i.gq = icmp eq <4 x i32> %broadcast.splat359, <i32 0, i32 0, i32 1, i32 1>
  %i.gr = and <4 x i1> %i.gq, %i.eg
  %i.gs = select <4 x i1> %i.gr, <4 x i32> %broadcast.splat403, <4 x i32> zeroinitializer
  %i.gt = icmp eq <4 x i32> %broadcast.splat361, <i32 0, i32 0, i32 1, i32 1>
  %i.gu = select <4 x i1> %i.ej, <4 x i1> %i.gt, <4 x i1> zeroinitializer
  %i.gv = select <4 x i1> %i.gu, <4 x i32> %broadcast.splat407, <4 x i32> zeroinitializer
  %i.gw = icmp eq <4 x i32> %broadcast.splat363, <i32 0, i32 0, i32 1, i32 1>
  %i.gx = select <4 x i1> %i.em, <4 x i1> %i.gw, <4 x i1> zeroinitializer
  %i.gy = select <4 x i1> %i.gx, <4 x i32> %broadcast.splat411, <4 x i32> zeroinitializer
  %i.gz = icmp eq <4 x i32> %broadcast.splat365, <i32 0, i32 0, i32 1, i32 1>
  %i.ha = select <4 x i1> %i.ep, <4 x i1> %i.gz, <4 x i1> zeroinitializer
  %i.hb = select <4 x i1> %i.ha, <4 x i32> %broadcast.splat415, <4 x i32> zeroinitializer
  %i.hc = icmp eq <4 x i32> %broadcast.splat367, <i32 0, i32 0, i32 1, i32 1>
  %i.hd = select <4 x i1> %i.es, <4 x i1> %i.hc, <4 x i1> zeroinitializer
  %i.he = select <4 x i1> %i.hd, <4 x i32> %broadcast.splat419, <4 x i32> zeroinitializer
  %i.hf = icmp eq <4 x i32> %broadcast.splat369, <i32 0, i32 0, i32 1, i32 1>
  %i.hg = select <4 x i1> %i.ev, <4 x i1> %i.hf, <4 x i1> zeroinitializer
  %i.hh = select <4 x i1> %i.hg, <4 x i32> %broadcast.splat423, <4 x i32> zeroinitializer
  %i.hi = or <4 x i32> %.reass, %i.ga
  %i.hj = or <4 x i32> %i.hi, %i.gd
  %i.hk = or <4 x i32> %i.hj, %i.gg
  %i.hl = or <4 x i32> %i.hk, %i.gj
  %i.hm = or <4 x i32> %i.hl, %i.gm
  %i.hn = or <4 x i32> %i.hm, %i.gp
  %i.ho = or <4 x i32> %i.hn, %i.gs
  %i.hp = or <4 x i32> %i.ho, %i.gv
  %i.hq = or <4 x i32> %i.hp, %i.gy
  %i.hr = or <4 x i32> %i.hq, %i.hb
  %i.hs = or <4 x i32> %i.hr, %i.he
  %i.ht = or <4 x i32> %i.hs, %i.hh
  %i.hu = or <4 x i32> %i.ht, %i.fa
  %.fr430 = freeze <4 x i32> %i.hu
  %i.hv = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %.fr430)
  %i.hw = icmp samesign ugt <4 x i32> %i.hv, splat (i32 2)
  %i.hx = bitcast <4 x i1> %i.hw to i4
  %.not = icmp eq i4 %i.hx, 0
  br i1 %.not, label %middle.block, label %vector.early.exit

middle.block:                                     ; preds = %vector.ph
  %.not.i31 = icmp eq i32 %1, 0
  br i1 %.not.i31, label %If_Dec5CofCount2.exit.thread, label %bb.b

bb.b:                                             ; preds = %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  br i1 %i.cv, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  br i1 %i.fb, label %._crit_edge.thread.i.thread, label %._crit_edge.thread.i

._crit_edge.i:                                    ; preds = %bb.b
  %.not187.i = icmp eq i32 %.12997, 1
  %or.cond207.i = or i1 %.not187.i, %i.fb
  br i1 %or.cond207.i, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.0174276.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.c ] ; 2 uses
  %.not187.1.i = icmp eq i32 %.12997, 2
  %or.cond207.1.i = or i1 %.not187.1.i, %i.fe
  br i1 %or.cond207.1.i, label %._crit_edge.thread.i.thread, label %bb.d

._crit_edge.thread.i.thread:                      ; preds = %bb.c, %._crit_edge.thread.i
  %.0174276.i42 = phi i32 [ %.0174276.i, %._crit_edge.thread.i ], [ 2, %bb.c ]
  %spec.select324.i = select i1 %i.fm, i32 -1, i32 3
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.thread, %._crit_edge.thread.i, %._crit_edge.i
  %.0174275.i = phi i32 [ %.0174276.i42, %._crit_edge.thread.i.thread ], [ 0, %._crit_edge.i ], [ %.0174276.i, %._crit_edge.thread.i ] ; 5 uses
  %.0173.i = phi i32 [ %spec.select324.i, %._crit_edge.thread.i.thread ], [ 1, %._crit_edge.i ], [ 2, %._crit_edge.thread.i ] ; 5 uses
  %i.hy = insertelement <8 x i32> poison, i32 %i.db, i64 0
  %i.hz = insertelement <8 x i32> %i.hy, i32 %i.dc, i64 1
  %i.ia = insertelement <8 x i32> %i.hz, i32 %i.dd, i64 2
  %i.ib = insertelement <8 x i32> %i.ia, i32 %i.de, i64 3
  %i.ic = insertelement <8 x i32> %i.ib, i32 %i.df, i64 4
  %i.id = insertelement <8 x i32> %i.ic, i32 %i.dg, i64 5
  %i.ie = insertelement <8 x i32> %i.id, i32 %i.dh, i64 6
  %i.if = insertelement <8 x i32> %i.ie, i32 %i.di, i64 7
  %i.ig = insertelement <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>, i32 %i.fl, i64 0
  %i.ih = insertelement <8 x i32> %i.ig, i32 %i.fn, i64 1
  %i.ii = insertelement <8 x i32> %i.ih, i32 %i.fp, i64 2
  %i.ij = insertelement <8 x i32> %i.ii, i32 %i.fr, i64 3
  %i.ik = insertelement <8 x i32> %i.ij, i32 %i.ft, i64 4
  %i.il = insertelement <8 x i32> %i.ik, i32 %i.fv, i64 5
  %i.im = insertelement <8 x i32> %i.il, i32 %i.fx, i64 6
  %i.in = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %i.io = insertelement <4 x i32> %i.in, i32 %i.cy, i64 1
  %i.ip = insertelement <4 x i32> %i.io, i32 %i.cz, i64 2
  %i.iq = insertelement <4 x i32> %i.ip, i32 %i.da, i64 3
  %i.ir = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %i.is = insertelement <4 x i32> %i.ir, i32 %i.ff, i64 1
  %i.it = insertelement <4 x i32> %i.is, i32 %i.fh, i64 2
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.fj, i64 3
  %i.iv = insertelement <16 x i32> <i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, i32 %i.ay, i64 0
  %i.iw = insertelement <16 x i32> %i.iv, i32 %i.cq, i64 2
  %i.ix = insertelement <16 x i32> %i.iw, i32 %i.be, i64 3
  %i.iy = insertelement <16 x i32> %i.ix, i32 %i.bh, i64 4
  %i.iz = insertelement <16 x i32> %i.iy, i32 %i.bk, i64 5
  %i.ja = insertelement <16 x i32> %i.iz, i32 %i.bn, i64 6
  %i.jb = insertelement <16 x i32> %i.ja, i32 %i.bq, i64 7
  %i.jc = insertelement <16 x i32> %i.jb, i32 %i.bt, i64 8
  %i.jd = insertelement <16 x i32> %i.jc, i32 %i.bw, i64 9
  %i.je = insertelement <16 x i32> %i.jd, i32 %i.bz, i64 10
  %i.jf = insertelement <16 x i32> %i.je, i32 %i.cc, i64 11
  %i.jg = insertelement <16 x i32> %i.jf, i32 %i.cf, i64 12
  %i.jh = insertelement <16 x i32> %i.jg, i32 %i.ci, i64 13
  %i.ji = insertelement <16 x i32> %i.jh, i32 %i.cl, i64 14
  %i.jj = insertelement <16 x i32> %i.ji, i32 %i.co, i64 15
  %i.jk = insertelement <16 x i32> <i32 0, i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.bb, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.d
  %indvars.iv258.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next259.i, %.loopexit.i ] ; 8 uses
  %i.jl = trunc nsw i64 %indvars.iv258.i to i32   ; 5 uses
  %i.jm = lshr i32 %i.jl, 1                       ; 6 uses
  %i.jn = and i32 %i.jl, 1
  %i.jo = or i32 %i.jn, %i.jm
  %or.cond325.i = icmp eq i32 %i.jo, 0
  %.tr.i = trunc i64 %indvars.iv258.i to i1       ; 2 uses
  %.narrow.i = xor i1 %i.cv, %.tr.i
  %i.jp = icmp ne i32 %i.jm, 0
  %or.cond326.not.i = select i1 %.narrow.i, i1 true, i1 %i.jp
  %i.jq = xor i32 %i.cw, %i.jl
  %i.jr = and i32 %i.jq, 1
  %i.js = icmp eq i32 %i.jr, 0
  %i.jt = icmp eq i32 %i.jm, %i.fc
  %or.cond327.i = and i1 %i.jt, %i.js
  %i.ju = insertelement <4 x i32> poison, i32 %i.jl, i64 0 ; 2 uses
  %i.jv = shufflevector <4 x i32> %i.ju, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jw = xor <4 x i32> %i.iq, %i.jv
  %i.jx = and <4 x i32> %i.jw, splat (i32 1)
  %i.jy = icmp eq <4 x i32> %i.jx, zeroinitializer
  %i.jz = insertelement <4 x i32> poison, i32 %i.jm, i64 0 ; 2 uses
  %i.ka = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kb = icmp eq <4 x i32> %i.iu, %i.ka
  %i.kc = select <4 x i1> %i.jy, <4 x i1> %i.kb, <4 x i1> zeroinitializer
  %i.kd = shufflevector <4 x i32> %i.ju, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.ke = xor <8 x i32> %i.if, %i.kd
  %i.kf = and <8 x i32> %i.ke, splat (i32 1)
  %i.kg = icmp eq <8 x i32> %i.kf, zeroinitializer
  %i.kh = icmp eq i32 %i.jm, 1
  %i.ki = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.kj = icmp eq <8 x i32> %i.ki, %i.im
  %i.kk = select <8 x i1> %i.kg, <8 x i1> %i.kj, <8 x i1> zeroinitializer
  %or.cond340.i = select i1 %.tr.i, i1 %i.kh, i1 false
  %i.kl = insertelement <16 x i1> poison, i1 %or.cond325.i, i64 0
  %i.km = insertelement <16 x i1> %i.kl, i1 %or.cond326.not.i, i64 1
  %i.kn = insertelement <16 x i1> %i.km, i1 %or.cond340.i, i64 2
  %i.ko = insertelement <16 x i1> %i.kn, i1 %or.cond327.i, i64 3
  %i.kp = shufflevector <8 x i1> %i.kk, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kq = shufflevector <16 x i1> %i.ko, <16 x i1> %i.kp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.kr = shufflevector <4 x i1> %i.kc, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ks = shufflevector <16 x i1> %i.kq, <16 x i1> %i.kr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kt = select <16 x i1> %i.ks, <16 x i32> %i.jj, <16 x i32> %i.jk
  %i.ku = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.kt) ; 7 uses
  %i.kv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ku)
  switch i32 %i.kv, label %.loopexit.i [
    i32 1, label %bb.e
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %.preheader.i
  %i.kw = icmp eq i32 %i.ku, 0
  br i1 %i.kw, label %Abc_Tt6FirstBit.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.kx = zext nneg i32 %i.ku to i64              ; 3 uses
  %i.ky = and i64 %i.kx, 3
  %i.kz = icmp eq i64 %i.ky, 0                    ; 2 uses
  %i.la = lshr exact i64 %i.kx, 2
  %.424.i.i = select i1 %i.kz, i64 %i.la, i64 %i.kx
  %.4.i.i = select i1 %i.kz, i64 2, i64 0
  %i.lb = and i64 %.424.i.i, 1
  %i.lc = or disjoint i64 %i.lb, %.4.i.i
  %sext239.i = xor i64 %i.lc, 1
  br label %Abc_Tt6FirstBit.exit.i

Abc_Tt6FirstBit.exit.i:                           ; preds = %bb.f, %bb.e
  %.025.i.i = phi i64 [ %sext239.i, %bb.f ], [ -1, %bb.e ]
  %i.ld = getelementptr inbounds [8 x i8], ptr @__const.If_Dec5CofCount2.F, i64 %.025.i.i
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !12
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv258.i
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !12
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv258.i
  store i64 -1, ptr %i.lg, align 8, !tbaa !12
  br label %.loopexit.i

bb.g:                                             ; preds = %.preheader.i
  %i.lh = zext nneg i32 %i.ku to i64              ; 3 uses
  %i.li = icmp eq i32 %i.ku, 0
  br i1 %i.li, label %Abc_Tt6FirstBit.exit221.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.lj = and i64 %i.lh, 3
  %i.lk = icmp eq i64 %i.lj, 0                    ; 2 uses
  %i.ll = lshr exact i32 %i.ku, 2
  %.4.i218.i = select i1 %i.lk, i32 2, i32 0
  %i.lm = select i1 %i.lk, i32 %i.ll, i32 %i.ku
  %i.ln = and i32 %i.lm, 1
  %i.lo = or disjoint i32 %i.ln, %.4.i218.i
  %.5.i219.i = xor i32 %i.lo, 1
  br label %Abc_Tt6FirstBit.exit221.i

Abc_Tt6FirstBit.exit221.i:                        ; preds = %bb.h, %bb.g
  %.025.i220.i = phi i32 [ %.5.i219.i, %bb.h ], [ -1, %bb.g ] ; 2 uses
  %i.lp = zext nneg i32 %.025.i220.i to i64
  %i.lq = shl nuw i64 1, %i.lp                    ; 3 uses
  %i.lr = icmp eq i64 %i.lq, %i.lh
  br i1 %i.lr, label %Abc_Tt6FirstBit.exit234.i, label %bb.i

bb.i:                                             ; preds = %Abc_Tt6FirstBit.exit221.i
  %i.ls = xor i64 %i.lq, %i.lh                    ; 2 uses
  %i.lt = and i64 %i.ls, 4294967295
  %i.lu = icmp eq i64 %i.lt, 0                    ; 2 uses
  %i.lv = lshr i64 %i.lq, 32
  %spec.select.i222.i = select i1 %i.lu, i64 %i.lv, i64 %i.ls ; 3 uses
  %spec.select27.i223.i = select i1 %i.lu, i64 32, i64 0 ; 2 uses
  %i.lw = and i64 %spec.select.i222.i, 65535
  %i.lx = icmp eq i64 %i.lw, 0                    ; 2 uses
  %i.ly = or disjoint i64 %spec.select27.i223.i, 16
  %i.lz = lshr exact i64 %spec.select.i222.i, 16
  %.121.i224.i = select i1 %i.lx, i64 %i.lz, i64 %spec.select.i222.i ; 3 uses
  %.1.i225.i = select i1 %i.lx, i64 %i.ly, i64 %spec.select27.i223.i ; 2 uses
  %i.ma = and i64 %.121.i224.i, 255
  %i.mb = icmp eq i64 %i.ma, 0                    ; 2 uses
  %i.mc = or disjoint i64 %.1.i225.i, 8
  %i.md = lshr exact i64 %.121.i224.i, 8
  %.222.i226.i = select i1 %i.mb, i64 %i.md, i64 %.121.i224.i ; 3 uses
  %.2.i227.i = select i1 %i.mb, i64 %i.mc, i64 %.1.i225.i ; 2 uses
  %i.me = and i64 %.222.i226.i, 15
  %i.mf = icmp eq i64 %i.me, 0                    ; 2 uses
  %i.mg = or disjoint i64 %.2.i227.i, 4
  %i.mh = lshr exact i64 %.222.i226.i, 4
  %.323.i228.i = select i1 %i.mf, i64 %i.mh, i64 %.222.i226.i ; 3 uses
  %.3.i229.i = select i1 %i.mf, i64 %i.mg, i64 %.2.i227.i ; 2 uses
  %i.mi = and i64 %.323.i228.i, 3
  %i.mj = icmp eq i64 %i.mi, 0                    ; 2 uses
  %i.mk = add nuw nsw i64 %.3.i229.i, 2
  %i.ml = lshr exact i64 %.323.i228.i, 2
  %.424.i230.i = select i1 %i.mj, i64 %i.ml, i64 %.323.i228.i
  %.4.i231.i = select i1 %i.mj, i64 %i.mk, i64 %.3.i229.i
  %i.mm = and i64 %.424.i230.i, 1
  %i.mn = xor i64 %i.mm, 1
  %.5.i232.i = add nuw nsw i64 %i.mn, %.4.i231.i
  br label %Abc_Tt6FirstBit.exit234.i

Abc_Tt6FirstBit.exit234.i:                        ; preds = %bb.i, %Abc_Tt6FirstBit.exit221.i
  %.025.i233.i = phi i64 [ %.5.i232.i, %bb.i ], [ -1, %Abc_Tt6FirstBit.exit221.i ] ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr @__const.If_Dec5CofCount2.F, i64 %.025.i233.i
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !12
  %i.mq = and i64 %i.mp, -3689348814741910324
  %i.mr = sext i32 %.025.i220.i to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr @__const.If_Dec5CofCount2.F, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !12
  %i.mu = and i64 %i.mt, 3689348814741910323
  %i.mv = or disjoint i64 %i.mu, %i.mq
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv258.i
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !12
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv258.i ; 2 uses
  br label %bb.j

end_hunk_0
