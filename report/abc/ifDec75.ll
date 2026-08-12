inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@If_CutPerformCheck75__:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %.thread, label %Dau_DsdCheckDecExist.exit

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  br label %Dau_DsdCheckDecAndExist.exit46.thread

Dau_DsdCheckDecExist.exit:                        ; preds = %bb.i
  %i.ah = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.ai = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.i, ptr noundef %i.ah, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = and i32 %i.ai, 16
  %.not39 = icmp eq i32 %i.aj, 0
  br i1 %.not39, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %Dau_DsdCheckDecExist.exit
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.m, ptr %i.g, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i32 0, ptr %i.h, align 4, !tbaa !14
  %i.ak = icmp eq i8 %.pr, 0
  br i1 %i.ak, label %Dau_DsdCheckDecAndExist.exit46.thread, label %Dau_DsdCheckDecAndExist.exit46

Dau_DsdCheckDecAndExist.exit46.thread:            ; preds = %bb.j, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k

Dau_DsdCheckDecAndExist.exit46:                   ; preds = %bb.j
  %i.al = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.am = call i32 @Dau_DsdCheckDecAndExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.g, ptr noundef %i.al, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.an = and i32 %i.am, 24
  %.not40 = icmp eq i32 %i.an, 0
  br i1 %.not40, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %Dau_DsdCheckDecAndExist.exit46.thread, %Dau_DsdCheckDecAndExist.exit46, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.ad
  %indvars.iv = phi i64 [ 0, %bb.k ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %i.as = load i64, ptr %1, align 8, !tbaa !29    ; 5 uses
  store i64 %i.as, ptr %i.n, align 16, !tbaa !29
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !29 ; 5 uses
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !29
  %.not98 = icmp eq i64 %indvars.iv, 6
  br i1 %.not98, label %Abc_TtCofactor1.exit, label %.loopexit.loopexit.i48

.loopexit.loopexit.i48:                           ; preds = %bb.l
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = shl nuw nsw i32 1, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = zext nneg i32 %i.av to i64              ; 4 uses
  %i.az = and i64 %i.ax, %i.as                    ; 2 uses
  %i.ba = shl i64 %i.az, %i.ay
  %i.bb = or i64 %i.ba, %i.az                     ; 2 uses
  store i64 %i.bb, ptr %i.n, align 16, !tbaa !29
  %i.bc = and i64 %i.ax, %i.at                    ; 2 uses
  %i.bd = shl i64 %i.bc, %i.ay
  %i.be = or i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %i.bh = and i64 %i.bg, %i.as                    ; 2 uses
  %i.bi = lshr i64 %i.bh, %i.ay
  %i.bj = or i64 %i.bi, %i.bh
  %i.bk = and i64 %i.bg, %i.at                    ; 2 uses
  %i.bl = lshr i64 %i.bk, %i.ay
  %i.bm = or i64 %i.bl, %i.bk                     ; 2 uses
  store i64 %i.bm, ptr %i.ap, align 8, !tbaa !29
  br label %Abc_TtCofactor1.exit

Abc_TtCofactor1.exit:                             ; preds = %bb.l, %.loopexit.loopexit.i48
  %i.bn = phi i64 [ %i.bm, %.loopexit.loopexit.i48 ], [ %i.at, %bb.l ] ; 13 uses
  %i.bo = phi i64 [ %i.bb, %.loopexit.loopexit.i48 ], [ %i.as, %bb.l ] ; 13 uses
  %i.bp = phi i64 [ %i.be, %.loopexit.loopexit.i48 ], [ %i.as, %bb.l ] ; 14 uses
  %i.bq = phi i64 [ %i.bj, %.loopexit.loopexit.i48 ], [ %i.at, %bb.l ] ; 14 uses
  store i64 %i.bp, ptr %i.aq, align 8, !tbaa !29
  store i64 %i.bq, ptr %i.o, align 16, !tbaa !29
  %i.br = lshr i64 %i.bo, 1
  %i.bs = xor i64 %i.br, %i.bo
  %i.bt = and i64 %i.bs, 6148914691236517205
  %.not39.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not39.i.i, label %bb.m, label %Abc_TtHasVar.exit.i

bb.m:                                             ; preds = %Abc_TtCofactor1.exit
  %i.bu = lshr i64 %i.bp, 1
  %i.bv = xor i64 %i.bu, %i.bp
  %i.bw = and i64 %i.bv, 6148914691236517205
  %.not39.i.1.i = icmp eq i64 %i.bw, 0
  br i1 %.not39.i.1.i, label %.loopexit.i, label %Abc_TtHasVar.exit.i

Abc_TtHasVar.exit.i:                              ; preds = %bb.m, %Abc_TtCofactor1.exit
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %Abc_TtHasVar.exit.i, %bb.m
  %i.bx = phi i32 [ 1, %Abc_TtHasVar.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.by = lshr i64 %i.bo, 2
  %i.bz = xor i64 %i.by, %i.bo
  %i.ca = and i64 %i.bz, 3689348814741910323
  %.not39.i.119.i = icmp eq i64 %i.ca, 0
  br i1 %.not39.i.119.i, label %bb.n, label %Abc_TtHasVar.exit.1.i

bb.n:                                             ; preds = %.loopexit.i
  %i.cb = lshr i64 %i.bp, 2
  %i.cc = xor i64 %i.cb, %i.bp
  %i.cd = and i64 %i.cc, 3689348814741910323
  %.not39.i.1.1.i = icmp eq i64 %i.cd, 0
  br i1 %.not39.i.1.1.i, label %.loopexit.1.i, label %Abc_TtHasVar.exit.1.i

Abc_TtHasVar.exit.1.i:                            ; preds = %bb.n, %.loopexit.i
  %i.ce = add nuw nsw i32 %i.bx, 1
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %Abc_TtHasVar.exit.1.i, %bb.n
  %i.cf = phi i32 [ %i.ce, %Abc_TtHasVar.exit.1.i ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cg = lshr i64 %i.bo, 4
  %i.ch = xor i64 %i.cg, %i.bo
  %i.ci = and i64 %i.ch, 1085102592571150095
  %.not39.i.2.i = icmp eq i64 %i.ci, 0
  br i1 %.not39.i.2.i, label %bb.o, label %Abc_TtHasVar.exit.2.i

bb.o:                                             ; preds = %.loopexit.1.i
  %i.cj = lshr i64 %i.bp, 4
  %i.ck = xor i64 %i.cj, %i.bp
  %i.cl = and i64 %i.ck, 1085102592571150095
  %.not39.i.1.2.i = icmp eq i64 %i.cl, 0
  br i1 %.not39.i.1.2.i, label %.loopexit.2.i, label %Abc_TtHasVar.exit.2.i

Abc_TtHasVar.exit.2.i:                            ; preds = %bb.o, %.loopexit.1.i
  %i.cm = add nuw nsw i32 %i.cf, 1
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %Abc_TtHasVar.exit.2.i, %bb.o
  %i.cn = phi i32 [ %i.cm, %Abc_TtHasVar.exit.2.i ], [ %i.cf, %bb.o ] ; 2 uses
  %i.co = lshr i64 %i.bo, 8
  %i.cp = xor i64 %i.co, %i.bo
  %i.cq = and i64 %i.cp, 71777214294589695
  %.not39.i.3.i = icmp eq i64 %i.cq, 0
  br i1 %.not39.i.3.i, label %bb.p, label %Abc_TtHasVar.exit.3.i

bb.p:                                             ; preds = %.loopexit.2.i
  %i.cr = lshr i64 %i.bp, 8
  %i.cs = xor i64 %i.cr, %i.bp
  %i.ct = and i64 %i.cs, 71777214294589695
  %.not39.i.1.3.i = icmp eq i64 %i.ct, 0
  br i1 %.not39.i.1.3.i, label %.loopexit.3.i, label %Abc_TtHasVar.exit.3.i

Abc_TtHasVar.exit.3.i:                            ; preds = %bb.p, %.loopexit.2.i
  %i.cu = add nuw nsw i32 %i.cn, 1
  br label %.loopexit.3.i

.loopexit.3.i:                                    ; preds = %Abc_TtHasVar.exit.3.i, %bb.p
  %i.cv = phi i32 [ %i.cu, %Abc_TtHasVar.exit.3.i ], [ %i.cn, %bb.p ] ; 2 uses
  %i.cw = lshr i64 %i.bo, 16
  %i.cx = xor i64 %i.cw, %i.bo
  %i.cy = and i64 %i.cx, 281470681808895
  %.not39.i.4.i = icmp eq i64 %i.cy, 0
  br i1 %.not39.i.4.i, label %bb.q, label %Abc_TtHasVar.exit.4.i

bb.q:                                             ; preds = %.loopexit.3.i
  %i.cz = lshr i64 %i.bp, 16
  %i.da = xor i64 %i.cz, %i.bp
  %i.db = and i64 %i.da, 281470681808895
  %.not39.i.1.4.i = icmp eq i64 %i.db, 0
  br i1 %.not39.i.1.4.i, label %.loopexit.4.i, label %Abc_TtHasVar.exit.4.i

Abc_TtHasVar.exit.4.i:                            ; preds = %bb.q, %.loopexit.3.i
  %i.dc = add nuw nsw i32 %i.cv, 1
  br label %.loopexit.4.i

.loopexit.4.i:                                    ; preds = %Abc_TtHasVar.exit.4.i, %bb.q
  %i.dd = phi i32 [ %i.dc, %Abc_TtHasVar.exit.4.i ], [ %i.cv, %bb.q ] ; 2 uses
  %i.de = lshr i64 %i.bo, 32
  %.masked.i = and i64 %i.bo, 4294967295
  %.not39.i.5.i = icmp eq i64 %i.de, %.masked.i
  br i1 %.not39.i.5.i, label %bb.r, label %Abc_TtHasVar.exit.5.i

bb.r:                                             ; preds = %.loopexit.4.i
  %i.df = lshr i64 %i.bp, 32
  %.masked20.i = and i64 %i.bp, 4294967295
  %.not39.i.1.5.i = icmp eq i64 %i.df, %.masked20.i
  br i1 %.not39.i.1.5.i, label %.preheader.us.i.preheader.6.i, label %Abc_TtHasVar.exit.5.i

Abc_TtHasVar.exit.5.i:                            ; preds = %bb.r, %.loopexit.4.i
  %i.dg = add nuw nsw i32 %i.dd, 1
  br label %.preheader.us.i.preheader.6.i

.preheader.us.i.preheader.6.i:                    ; preds = %bb.r, %Abc_TtHasVar.exit.5.i
  %i.dh = phi i32 [ %i.dg, %Abc_TtHasVar.exit.5.i ], [ %i.dd, %bb.r ]
  %.not.us.i.6.i = icmp ne i64 %i.bo, %i.bp
  %i.di = zext i1 %.not.us.i.6.i to i32
  %spec.select = add nuw nsw i32 %i.dh, %i.di
  %i.dj = icmp samesign ult i32 %spec.select, 4
  br i1 %i.dj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.preheader.us.i.preheader.6.i
  call void @If_Dec7MinimumBase(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 7, ptr noundef nonnull %i.p) #7
  %i.dk = load i32, ptr %i.p, align 4, !tbaa !14
  %i.dl = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.o, i32 noundef %i.dk, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.m) #7
  %i.dm = icmp sgt i32 %i.dl, 4
  br i1 %i.dm, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.m, ptr %i.e, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %i.dn = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %Dau_DsdCheckDecExist.exit50.thread, label %Dau_DsdCheckDecExist.exit50

Dau_DsdCheckDecExist.exit50.thread:               ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ad

Dau_DsdCheckDecExist.exit50:                      ; preds = %bb.t
  %i.dp = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.dq = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.e, ptr noundef %i.dp, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dr = and i32 %i.dq, 24
  %.not42 = icmp eq i32 %i.dr, 0
  br i1 %.not42, label %bb.ad, label %.loopexit

bb.u:                                             ; preds = %.preheader.us.i.preheader.6.i
  %i.ds = lshr i64 %i.bq, 1
  %i.dt = xor i64 %i.ds, %i.bq
  %i.du = and i64 %i.dt, 6148914691236517205
  %.not39.i.i51 = icmp eq i64 %i.du, 0
  br i1 %.not39.i.i51, label %bb.v, label %Abc_TtHasVar.exit.i52

bb.v:                                             ; preds = %bb.u
  %i.dv = lshr i64 %i.bn, 1
  %i.dw = xor i64 %i.dv, %i.bn
  %i.dx = and i64 %i.dw, 6148914691236517205
  %.not39.i.1.i82 = icmp eq i64 %i.dx, 0
  br i1 %.not39.i.1.i82, label %.loopexit.i53, label %Abc_TtHasVar.exit.i52

Abc_TtHasVar.exit.i52:                            ; preds = %bb.v, %bb.u
  br label %.loopexit.i53

.loopexit.i53:                                    ; preds = %Abc_TtHasVar.exit.i52, %bb.v
  %i.dy = phi i32 [ 1, %Abc_TtHasVar.exit.i52 ], [ 0, %bb.v ] ; 2 uses
  %i.dz = lshr i64 %i.bq, 2
  %i.ea = xor i64 %i.dz, %i.bq
  %i.eb = and i64 %i.ea, 3689348814741910323
  %.not39.i.119.i54 = icmp eq i64 %i.eb, 0
  br i1 %.not39.i.119.i54, label %bb.w, label %Abc_TtHasVar.exit.1.i55

bb.w:                                             ; preds = %.loopexit.i53
  %i.ec = lshr i64 %i.bn, 2
  %i.ed = xor i64 %i.ec, %i.bn
  %i.ee = and i64 %i.ed, 3689348814741910323
  %.not39.i.1.1.i81 = icmp eq i64 %i.ee, 0
  br i1 %.not39.i.1.1.i81, label %.loopexit.1.i56, label %Abc_TtHasVar.exit.1.i55

Abc_TtHasVar.exit.1.i55:                          ; preds = %bb.w, %.loopexit.i53
  %i.ef = add nuw nsw i32 %i.dy, 1
  br label %.loopexit.1.i56

.loopexit.1.i56:                                  ; preds = %Abc_TtHasVar.exit.1.i55, %bb.w
  %i.eg = phi i32 [ %i.ef, %Abc_TtHasVar.exit.1.i55 ], [ %i.dy, %bb.w ] ; 2 uses
  %i.eh = lshr i64 %i.bq, 4
  %i.ei = xor i64 %i.eh, %i.bq
  %i.ej = and i64 %i.ei, 1085102592571150095
  %.not39.i.2.i57 = icmp eq i64 %i.ej, 0
  br i1 %.not39.i.2.i57, label %bb.x, label %Abc_TtHasVar.exit.2.i58

bb.x:                                             ; preds = %.loopexit.1.i56
  %i.ek = lshr i64 %i.bn, 4
  %i.el = xor i64 %i.ek, %i.bn
  %i.em = and i64 %i.el, 1085102592571150095
  %.not39.i.1.2.i80 = icmp eq i64 %i.em, 0
  br i1 %.not39.i.1.2.i80, label %.loopexit.2.i59, label %Abc_TtHasVar.exit.2.i58

Abc_TtHasVar.exit.2.i58:                          ; preds = %bb.x, %.loopexit.1.i56
  %i.en = add nuw nsw i32 %i.eg, 1
  br label %.loopexit.2.i59

.loopexit.2.i59:                                  ; preds = %Abc_TtHasVar.exit.2.i58, %bb.x
  %i.eo = phi i32 [ %i.en, %Abc_TtHasVar.exit.2.i58 ], [ %i.eg, %bb.x ] ; 2 uses
  %i.ep = lshr i64 %i.bq, 8
  %i.eq = xor i64 %i.ep, %i.bq
  %i.er = and i64 %i.eq, 71777214294589695
  %.not39.i.3.i60 = icmp eq i64 %i.er, 0
  br i1 %.not39.i.3.i60, label %bb.y, label %Abc_TtHasVar.exit.3.i61

bb.y:                                             ; preds = %.loopexit.2.i59
  %i.es = lshr i64 %i.bn, 8
  %i.et = xor i64 %i.es, %i.bn
  %i.eu = and i64 %i.et, 71777214294589695
  %.not39.i.1.3.i79 = icmp eq i64 %i.eu, 0
  br i1 %.not39.i.1.3.i79, label %.loopexit.3.i62, label %Abc_TtHasVar.exit.3.i61

Abc_TtHasVar.exit.3.i61:                          ; preds = %bb.y, %.loopexit.2.i59
  %i.ev = add nuw nsw i32 %i.eo, 1
  br label %.loopexit.3.i62

.loopexit.3.i62:                                  ; preds = %Abc_TtHasVar.exit.3.i61, %bb.y
  %i.ew = phi i32 [ %i.ev, %Abc_TtHasVar.exit.3.i61 ], [ %i.eo, %bb.y ] ; 2 uses
  %i.ex = lshr i64 %i.bq, 16
  %i.ey = xor i64 %i.ex, %i.bq
  %i.ez = and i64 %i.ey, 281470681808895
  %.not39.i.4.i63 = icmp eq i64 %i.ez, 0
  br i1 %.not39.i.4.i63, label %bb.z, label %Abc_TtHasVar.exit.4.i64

bb.z:                                             ; preds = %.loopexit.3.i62
  %i.fa = lshr i64 %i.bn, 16
  %i.fb = xor i64 %i.fa, %i.bn
  %i.fc = and i64 %i.fb, 281470681808895
  %.not39.i.1.4.i78 = icmp eq i64 %i.fc, 0
  br i1 %.not39.i.1.4.i78, label %.loopexit.4.i65, label %Abc_TtHasVar.exit.4.i64

Abc_TtHasVar.exit.4.i64:                          ; preds = %bb.z, %.loopexit.3.i62
  %i.fd = add nuw nsw i32 %i.ew, 1
  br label %.loopexit.4.i65

.loopexit.4.i65:                                  ; preds = %Abc_TtHasVar.exit.4.i64, %bb.z
  %i.fe = phi i32 [ %i.fd, %Abc_TtHasVar.exit.4.i64 ], [ %i.ew, %bb.z ] ; 2 uses
  %i.ff = lshr i64 %i.bq, 32
  %.masked.i66 = and i64 %i.bq, 4294967295
  %.not39.i.5.i67 = icmp eq i64 %i.ff, %.masked.i66
  br i1 %.not39.i.5.i67, label %bb.aa, label %Abc_TtHasVar.exit.5.i68

bb.aa:                                            ; preds = %.loopexit.4.i65
  %i.fg = lshr i64 %i.bn, 32
  %.masked20.i76 = and i64 %i.bn, 4294967295
  %.not39.i.1.5.i77 = icmp eq i64 %i.fg, %.masked20.i76
  br i1 %.not39.i.1.5.i77, label %.preheader.us.i.preheader.6.i69, label %Abc_TtHasVar.exit.5.i68

Abc_TtHasVar.exit.5.i68:                          ; preds = %bb.aa, %.loopexit.4.i65
  %i.fh = add nuw nsw i32 %i.fe, 1
  br label %.preheader.us.i.preheader.6.i69

.preheader.us.i.preheader.6.i69:                  ; preds = %bb.aa, %Abc_TtHasVar.exit.5.i68
  %i.fi = phi i32 [ %i.fh, %Abc_TtHasVar.exit.5.i68 ], [ %i.fe, %bb.aa ]
  %.not.us.i.6.i73 = icmp ne i64 %i.bq, %i.bn
  %i.fj = zext i1 %.not.us.i.6.i73 to i32
  %spec.select102 = add nuw nsw i32 %i.fi, %i.fj
  %i.fk = icmp samesign ult i32 %spec.select102, 4
  br i1 %i.fk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.preheader.us.i.preheader.6.i69
  call void @If_Dec7MinimumBase(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 7, ptr noundef nonnull %i.p) #7
  %i.fl = load i32, ptr %i.p, align 4, !tbaa !14
  %i.fm = call i32 @Dau_DsdDecompose(ptr noundef nonnull %i.n, i32 noundef %i.fl, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.m) #7
  %i.fn = icmp sgt i32 %i.fm, 4
  br i1 %i.fn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.fo = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %Dau_DsdCheckDecExist.exit85.thread, label %Dau_DsdCheckDecExist.exit85

Dau_DsdCheckDecExist.exit85.thread:               ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

Dau_DsdCheckDecExist.exit85:                      ; preds = %bb.ac
  %i.fq = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.fr = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, ptr noundef %i.fq, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fs = and i32 %i.fr, 24
  %.not41 = icmp eq i32 %i.fs, 0
  br i1 %.not41, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %Dau_DsdCheckDecExist.exit85.thread, %Dau_DsdCheckDecExist.exit50.thread, %Dau_DsdCheckDecExist.exit50, %Dau_DsdCheckDecExist.exit85, %.preheader.us.i.preheader.6.i69, %bb.ab, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !31

.loopexit:                                        ; preds = %bb.ad, %Dau_DsdCheckDecExist.exit85, %Dau_DsdCheckDecExist.exit50, %Dau_DsdCheckDecAndExist.exit46, %Dau_DsdCheckDecExist.exit
  %.035 = phi i32 [ 1, %Dau_DsdCheckDecAndExist.exit46 ], [ 1, %Dau_DsdCheckDecExist.exit ], [ 0, %bb.ad ], [ 1, %Dau_DsdCheckDecExist.exit50 ], [ 1, %Dau_DsdCheckDecExist.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  br label %bb.ai

bb.ae:                                            ; preds = %bb.d
  %i.ft = icmp slt i32 %i.v, 5
  br i1 %i.ft, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !11
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %Dau_DsdCheckDecExist.exit87.thread, label %Dau_DsdCheckDecExist.exit87

Dau_DsdCheckDecExist.exit87.thread:               ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ag

Dau_DsdCheckDecExist.exit87:                      ; preds = %bb.af
  %i.fx = call ptr @Dau_DsdComputeMatches(ptr noundef nonnull %i.m) #7
  %i.fy = call i32 @Dau_DsdCheckDecExist_rec(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef %i.fx, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fz = and i32 %i.fy, 24
  %.not37 = icmp eq i32 %i.fz, 0
  br i1 %.not37, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %Dau_DsdCheckDecExist.exit87.thread, %Dau_DsdCheckDecExist.exit87
  %i.ga = call i32 @Dau_DsdCheckDecAndExist(ptr noundef nonnull %i.m)
  %i.gb = and i32 %i.ga, 28
  %.not38 = icmp eq i32 %i.gb, 0
  br i1 %.not38, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.gc = call i32 @If_CutPerformCheck07(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 6, ptr noundef %4) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.d, %bb.ag, %Dau_DsdCheckDecExist.exit87, %Dau_DsdCheckDecAndExist.exit, %bb.e, %bb.c, %bb.a, %bb.ah, %.loopexit
  %.1 = phi i32 [ 1, %bb.ag ], [ 1, %bb.a ], [ 1, %bb.c ], [ %.0.i, %Dau_DsdCheckDecAndExist.exit ], [ 0, %bb.e ], [ %.035, %.loopexit ], [ %i.gc, %bb.ah ], [ 1, %Dau_DsdCheckDecExist.exit87 ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  ret i32 %.1
}

declare i32 @If_CutPerformCheck16(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @If_Dec7MinimumBase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @If_CutPerformCheck07(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CutPerformCheck75(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x i64], align 16               ; 21 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = alloca [1000 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.f = load <2 x i64>, ptr %1, align 8, !tbaa !29
  %i.g = load i64, ptr %1, align 8, !tbaa !29     ; 12 uses
  store <2 x i64> %i.f, ptr %i.c, align 16, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x i64>, ptr %i.i, align 8, !tbaa !29
  store <2 x i64> %i.j, ptr %i.h, align 16, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %Abc_TtMinimumBase.exit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %3, 0
  br i1 %i.o, label %.lr.ph.i, label %Abc_TtMinimumBase.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = icmp samesign ult i32 %3, 7              ; 2 uses
  %i.q = add nsw i32 %3, -6                       ; 2 uses
  %i.r = shl nuw i32 1, %i.q
  %.fr.i.i = freeze i32 %i.r                      ; 3 uses
  %i.s = sext i32 %.fr.i.i to i64
  %.idx.i.i = shl nsw i64 %i.s, 3
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i.i
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %.fr.i.i, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.p, label %Abc_TtHasVar.exit.us.i, label %.lr.ph.split.i

Abc_TtHasVar.exit.us.i:                           ; preds = %.lr.ph.i
  %i.u = lshr i64 %i.g, 1
  %i.v = xor i64 %i.u, %i.g
  %i.w = and i64 %i.v, 6148914691236517205
  %.not1.us.i = icmp ne i64 %i.w, 0               ; 2 uses
  %i.x = zext i1 %.not1.us.i to i32               ; 2 uses
  %i.y = zext i1 %.not1.us.i to i32               ; 2 uses
  %exitcond42.not.i = icmp eq i32 %3, 1
  br i1 %exitcond42.not.i, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.1

Abc_TtHasVar.exit.us.i.1:                         ; preds = %Abc_TtHasVar.exit.us.i
  %i.z = lshr i64 %i.g, 2
  %i.aa = xor i64 %i.z, %i.g
  %i.ab = and i64 %i.aa, 3689348814741910323
  %.not1.us.i.1 = icmp ne i64 %i.ab, 0            ; 2 uses
  %i.ac = zext i1 %.not1.us.i.1 to i32
  %.124.us.i.1 = add nuw nsw i32 %i.x, %i.ac      ; 2 uses
  %i.ad = select i1 %.not1.us.i.1, i32 2, i32 0
  %.1.us.i.1 = or disjoint i32 %i.ad, %i.y        ; 2 uses
  %exitcond42.not.i.1 = icmp eq i32 %3, 2
  br i1 %exitcond42.not.i.1, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.2

Abc_TtHasVar.exit.us.i.2:                         ; preds = %Abc_TtHasVar.exit.us.i.1
  %i.ae = lshr i64 %i.g, 4
  %i.af = xor i64 %i.ae, %i.g
  %i.ag = and i64 %i.af, 1085102592571150095
  %.not1.us.i.2 = icmp ne i64 %i.ag, 0            ; 2 uses
  %i.ah = zext i1 %.not1.us.i.2 to i32
  %.124.us.i.2 = add nuw nsw i32 %.124.us.i.1, %i.ah ; 2 uses
  %i.ai = select i1 %.not1.us.i.2, i32 4, i32 0
  %.1.us.i.2 = or disjoint i32 %i.ai, %.1.us.i.1  ; 2 uses
  %exitcond42.not.i.2 = icmp eq i32 %3, 3
  br i1 %exitcond42.not.i.2, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.3

Abc_TtHasVar.exit.us.i.3:                         ; preds = %Abc_TtHasVar.exit.us.i.2
  %i.aj = lshr i64 %i.g, 8
  %i.ak = xor i64 %i.aj, %i.g
  %i.al = and i64 %i.ak, 71777214294589695
  %.not1.us.i.3 = icmp ne i64 %i.al, 0            ; 2 uses
  %i.am = zext i1 %.not1.us.i.3 to i32
  %.124.us.i.3 = add nuw nsw i32 %.124.us.i.2, %i.am ; 2 uses
  %i.an = select i1 %.not1.us.i.3, i32 8, i32 0
  %.1.us.i.3 = or disjoint i32 %i.an, %.1.us.i.2  ; 2 uses
  %exitcond42.not.i.3 = icmp eq i32 %3, 4
  br i1 %exitcond42.not.i.3, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.4

Abc_TtHasVar.exit.us.i.4:                         ; preds = %Abc_TtHasVar.exit.us.i.3
  %i.ao = lshr i64 %i.g, 16
  %i.ap = xor i64 %i.ao, %i.g
  %i.aq = and i64 %i.ap, 281470681808895
  %.not1.us.i.4 = icmp ne i64 %i.aq, 0            ; 2 uses
  %i.ar = zext i1 %.not1.us.i.4 to i32
  %.124.us.i.4 = add nuw nsw i32 %.124.us.i.3, %i.ar ; 2 uses
  %i.as = select i1 %.not1.us.i.4, i32 16, i32 0
  %.1.us.i.4 = or disjoint i32 %i.as, %.1.us.i.3  ; 2 uses
  %exitcond42.not.i.4 = icmp eq i32 %3, 5
  br i1 %exitcond42.not.i.4, label %._crit_edge.i, label %Abc_TtHasVar.exit.us.i.5

Abc_TtHasVar.exit.us.i.5:                         ; preds = %Abc_TtHasVar.exit.us.i.4
  %i.at = lshr i64 %i.g, 32
end_hunk_0
