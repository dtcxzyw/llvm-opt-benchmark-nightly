Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSupps?download=true
inline.NumInlined: 598
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 33
begin_hunk_0_@Supp_ManSubsetAdd:bb.a
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i.i62 = icmp eq ptr %i.iu, null
  %i.iv = zext nneg i32 %spec.select.i.i60 to i64
  %i.iw = shl nuw nsw i64 %i.iv, 2                ; 2 uses
  br i1 %.not9.i10.i.i62, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ix = tail call ptr @realloc(ptr noundef nonnull %i.iu, i64 noundef %i.iw) #30
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.iy = tail call noalias ptr @malloc(i64 noundef %i.iw) #31
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.iz = phi ptr [ %i.ix, %bb.bk ], [ %i.iy, %bb.bl ]
  store ptr %i.iz, ptr %i.it, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i.i63

Vec_IntGrow.exit11.sink.split.i.i63:              ; preds = %bb.bm, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i64 = phi i32 [ %spec.select.i.i60, %bb.bm ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i64, ptr %i.ig, align 8, !tbaa !50
  %.pre.i65 = load i32, ptr %i.ih, align 4, !tbaa !49
  br label %Vec_WecPush.exit

Vec_WecPush.exit:                                 ; preds = %bb.bd, %bb.bi, %Vec_IntGrow.exit11.sink.split.i.i63
  %i.ja = phi i32 [ %i.ii, %bb.bd ], [ %i.ii, %bb.bi ], [ %.pre.i65, %Vec_IntGrow.exit11.sink.split.i.i63 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !51
  %i.jd = add nsw i32 %i.ja, 1
  store i32 %i.jd, ptr %i.ih, align 4, !tbaa !49
  %i.je = sext i32 %i.ja to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.je
  store i32 %.val31.val, ptr %i.jf, align 4, !tbaa !52
  br label %bb.bn

bb.bn:                                            ; preds = %Vec_WecPush.exit, %bb.aw, %Vec_IntPush.exit54
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @Supp_PrintOne(ptr noundef nonnull %0, i32 noundef %.val31.val)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %Vec_IntPushOrder.exit
  ret i32 %i.cw
}

; Function Attrs: nounwind uwtable
define i32 @Supp_ComputePair1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @Abc_Random(i32 noundef 0) #32 ; 3 uses
  %i.b = and i32 %i.a, 16777215
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val39 = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
  %i.i = srem i32 %i.b, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val38 = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds [4 x i8], ptr %.val38, i64 %i.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %.val34 = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %.val34, i64 %i.r ; 2 uses
  %i.t = shl nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55   ; 8 uses
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = or disjoint i32 %i.t, 1
  %i.aa = mul nsw i32 %i.v, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ab ; 2 uses
  %i.ad = and i32 %i.a, 65536
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = icmp sgt i32 %i.v, 0                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.ae, label %.lr.ph.preheader.i, label %Abc_TtFindFirstBit2.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 4 uses
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i64 %i.ag, 4294967295
  %i.ak = icmp eq i64 %i.aj, 0                    ; 2 uses
  %i.al = lshr exact i64 %i.ag, 32
  %.020.i.i = select i1 %i.ak, i64 %i.al, i64 %i.ag ; 3 uses
  %.0.i.i = select i1 %i.ak, i32 32, i32 0        ; 2 uses
  %i.am = and i64 %.020.i.i, 65535
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  %i.ao = or disjoint i32 %.0.i.i, 16
  %i.ap = lshr exact i64 %.020.i.i, 16
  %.121.i.i = select i1 %i.an, i64 %i.ap, i64 %.020.i.i ; 3 uses
  %.1.i.i = select i1 %i.an, i32 %i.ao, i32 %.0.i.i ; 2 uses
  %i.aq = and i64 %.121.i.i, 255
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  %i.as = or disjoint i32 %.1.i.i, 8
  %i.at = lshr exact i64 %.121.i.i, 8
  %.222.i.i = select i1 %i.ar, i64 %i.at, i64 %.121.i.i ; 3 uses
  %.2.i.i = select i1 %i.ar, i32 %i.as, i32 %.1.i.i ; 2 uses
  %i.au = and i64 %.222.i.i, 15
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.aw = or disjoint i32 %.2.i.i, 4
  %i.ax = lshr exact i64 %.222.i.i, 4
  %.323.i.i = select i1 %i.av, i64 %i.ax, i64 %.222.i.i ; 3 uses
  %.3.i.i = select i1 %i.av, i32 %i.aw, i32 %.2.i.i ; 2 uses
  %i.ay = and i64 %.323.i.i, 3
  %i.az = icmp eq i64 %i.ay, 0                    ; 2 uses
  %i.ba = add nuw nsw i32 %.3.i.i, 2
  %i.bb = lshr exact i64 %.323.i.i, 2
  %.424.i.i = select i1 %i.az, i64 %i.bb, i64 %.323.i.i
  %.4.i.i = select i1 %i.az, i32 %i.ba, i32 %.3.i.i
  %i.bc = trunc i64 %.424.i.i to i32
  %i.bd = and i32 %i.bc, 1
  %i.be = xor i32 %i.bd, 1
  %.5.i.i = add nuw nsw i32 %.4.i.i, %i.ai
  %i.bf = add nuw nsw i32 %.5.i.i, %i.be
  br label %Abc_TtFindFirstBit2.exit

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtFindFirstBit2.exit, label %.lr.ph.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.a
  br i1 %i.ae, label %.lr.ph, label %Abc_TtFindFirstBit2.exit

.lr.ph:                                           ; preds = %bb.e
  %i.bg = zext nneg i32 %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.bh = icmp sgt i32 %i.bl, 0
  br i1 %i.bh, label %bb.g, label %Abc_TtFindFirstBit2.exit, !llvm.loop !9

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i40137 = phi i64 [ %i.bg, %.lr.ph ], [ %i.bi, %bb.f ]
  %i.bi = add nsw i64 %indvars.iv.i40137, -1      ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31 ; 4 uses
  %.not.i42 = icmp eq i64 %i.bk, 0
  %i.bl = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %.not.i42, label %bb.f, label %bb.h, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  %i.bm = shl nuw nsw i32 %i.bl, 6
  %i.bn = icmp ult i64 %i.bk, 4294967296          ; 2 uses
  %i.bo = shl nuw i64 %i.bk, 32
  %.020.i.i43 = select i1 %i.bn, i64 %i.bo, i64 %i.bk ; 3 uses
  %.0.i.i44 = select i1 %i.bn, i32 32, i32 0      ; 2 uses
  %i.bp = icmp ult i64 %.020.i.i43, 281474976710656 ; 2 uses
  %i.bq = or disjoint i32 %.0.i.i44, 16
  %i.br = shl nuw i64 %.020.i.i43, 16
  %.121.i.i45 = select i1 %i.bp, i64 %i.br, i64 %.020.i.i43 ; 3 uses
  %.1.i.i46 = select i1 %i.bp, i32 %i.bq, i32 %.0.i.i44 ; 2 uses
  %i.bs = icmp ult i64 %.121.i.i45, 72057594037927936 ; 2 uses
  %i.bt = or disjoint i32 %.1.i.i46, 8
  %i.bu = shl nuw i64 %.121.i.i45, 8
  %.222.i.i47 = select i1 %i.bs, i64 %i.bu, i64 %.121.i.i45 ; 3 uses
  %.2.i.i48 = select i1 %i.bs, i32 %i.bt, i32 %.1.i.i46 ; 2 uses
  %i.bv = icmp ult i64 %.222.i.i47, 1152921504606846976 ; 2 uses
  %i.bw = or disjoint i32 %.2.i.i48, 4
  %i.bx = shl nuw i64 %.222.i.i47, 4
  %.323.i.i49 = select i1 %i.bv, i64 %i.bx, i64 %.222.i.i47 ; 3 uses
  %.3.i.i50 = select i1 %i.bv, i32 %i.bw, i32 %.2.i.i48 ; 2 uses
  %i.by = icmp ult i64 %.323.i.i49, 4611686018427387904 ; 2 uses
  %i.bz = add nuw nsw i32 %.3.i.i50, 2
  %i.ca = shl nuw i64 %.323.i.i49, 2
  %.424.i.i51 = select i1 %i.by, i64 %i.ca, i64 %.323.i.i49
  %.4.i.i52 = select i1 %i.by, i32 %i.bz, i32 %.3.i.i50
  %i.cb = icmp sgt i64 %.424.i.i51, -1
  %.neg28.i.i = sext i1 %i.cb to i32
  %reass.sub.i.i = or disjoint i32 %i.bm, 63
  %i.cc = sub i32 %reass.sub.i.i, %.4.i.i52
  %i.cd = add i32 %i.cc, %.neg28.i.i
  br label %Abc_TtFindFirstBit2.exit

Abc_TtFindFirstBit2.exit:                         ; preds = %bb.d, %bb.f, %bb.e, %bb.h, %bb.c, %bb.b
  %i.ce = phi i32 [ -1, %bb.e ], [ %i.bf, %bb.c ], [ -1, %bb.b ], [ %i.cd, %bb.h ], [ -1, %bb.f ], [ -1, %bb.d ]
  %i.cf = and i32 %i.a, 131072
  %.not33 = icmp eq i32 %i.cf, 0
  %i.cg = icmp sgt i32 %i.v, 0                    ; 2 uses
  br i1 %.not33, label %bb.l, label %bb.i

bb.i:                                             ; preds = %Abc_TtFindFirstBit2.exit
  br i1 %i.cg, label %.lr.ph.preheader.i54, label %Abc_TtFindFirstBit2.exit72

.lr.ph.preheader.i54:                             ; preds = %bb.i
  %wide.trip.count.i55 = zext nneg i32 %i.v to i64
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.k, %.lr.ph.preheader.i54
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.preheader.i54 ], [ %indvars.iv.next.i70, %bb.k ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i57
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !31 ; 4 uses
  %.not.i58 = icmp eq i64 %i.ci, 0
  br i1 %.not.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i56
  %i.cj = trunc nuw nsw i64 %indvars.iv.i57 to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i64 %i.ci, 4294967295
  %i.cm = icmp eq i64 %i.cl, 0                    ; 2 uses
  %i.cn = lshr exact i64 %i.ci, 32
  %.020.i.i59 = select i1 %i.cm, i64 %i.cn, i64 %i.ci ; 3 uses
  %.0.i.i60 = select i1 %i.cm, i32 32, i32 0      ; 2 uses
  %i.co = and i64 %.020.i.i59, 65535
  %i.cp = icmp eq i64 %i.co, 0                    ; 2 uses
  %i.cq = or disjoint i32 %.0.i.i60, 16
  %i.cr = lshr exact i64 %.020.i.i59, 16
  %.121.i.i61 = select i1 %i.cp, i64 %i.cr, i64 %.020.i.i59 ; 3 uses
  %.1.i.i62 = select i1 %i.cp, i32 %i.cq, i32 %.0.i.i60 ; 2 uses
  %i.cs = and i64 %.121.i.i61, 255
  %i.ct = icmp eq i64 %i.cs, 0                    ; 2 uses
  %i.cu = or disjoint i32 %.1.i.i62, 8
  %i.cv = lshr exact i64 %.121.i.i61, 8
  %.222.i.i63 = select i1 %i.ct, i64 %i.cv, i64 %.121.i.i61 ; 3 uses
  %.2.i.i64 = select i1 %i.ct, i32 %i.cu, i32 %.1.i.i62 ; 2 uses
  %i.cw = and i64 %.222.i.i63, 15
  %i.cx = icmp eq i64 %i.cw, 0                    ; 2 uses
  %i.cy = or disjoint i32 %.2.i.i64, 4
  %i.cz = lshr exact i64 %.222.i.i63, 4
  %.323.i.i65 = select i1 %i.cx, i64 %i.cz, i64 %.222.i.i63 ; 3 uses
  %.3.i.i66 = select i1 %i.cx, i32 %i.cy, i32 %.2.i.i64 ; 2 uses
  %i.da = and i64 %.323.i.i65, 3
  %i.db = icmp eq i64 %i.da, 0                    ; 2 uses
  %i.dc = add nuw nsw i32 %.3.i.i66, 2
  %i.dd = lshr exact i64 %.323.i.i65, 2
  %.424.i.i67 = select i1 %i.db, i64 %i.dd, i64 %.323.i.i65
  %.4.i.i68 = select i1 %i.db, i32 %i.dc, i32 %.3.i.i66
  %i.de = trunc i64 %.424.i.i67 to i32
  %i.df = and i32 %i.de, 1
  %i.dg = xor i32 %i.df, 1
  %.5.i.i69 = add nuw nsw i32 %.4.i.i68, %i.ck
  %i.dh = add nuw nsw i32 %.5.i.i69, %i.dg
  br label %Abc_TtFindFirstBit2.exit72

bb.k:                                             ; preds = %.lr.ph.i56
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i55
  br i1 %exitcond.not.i71, label %Abc_TtFindFirstBit2.exit72, label %.lr.ph.i56, !llvm.loop !8

bb.l:                                             ; preds = %Abc_TtFindFirstBit2.exit
  br i1 %i.cg, label %.lr.ph139, label %Abc_TtFindFirstBit2.exit72

.lr.ph139:                                        ; preds = %bb.l
  %i.di = zext nneg i32 %i.v to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.dn, 0
  br i1 %i.dj, label %bb.n, label %Abc_TtFindFirstBit2.exit72, !llvm.loop !9

bb.n:                                             ; preds = %.lr.ph139, %bb.m
  %indvars.iv.i73138 = phi i64 [ %i.di, %.lr.ph139 ], [ %i.dk, %bb.m ]
  %i.dk = add nsw i64 %indvars.iv.i73138, -1      ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !31 ; 4 uses
  %.not.i75 = icmp eq i64 %i.dm, 0
  %i.dn = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %.not.i75, label %bb.m, label %bb.o, !llvm.loop !9

bb.o:                                             ; preds = %bb.n
  %i.do = shl nuw nsw i32 %i.dn, 6
  %i.dp = icmp ult i64 %i.dm, 4294967296          ; 2 uses
  %i.dq = shl nuw i64 %i.dm, 32
  %.020.i.i76 = select i1 %i.dp, i64 %i.dq, i64 %i.dm ; 3 uses
  %.0.i.i77 = select i1 %i.dp, i32 32, i32 0      ; 2 uses
  %i.dr = icmp ult i64 %.020.i.i76, 281474976710656 ; 2 uses
  %i.ds = or disjoint i32 %.0.i.i77, 16
  %i.dt = shl nuw i64 %.020.i.i76, 16
  %.121.i.i78 = select i1 %i.dr, i64 %i.dt, i64 %.020.i.i76 ; 3 uses
  %.1.i.i79 = select i1 %i.dr, i32 %i.ds, i32 %.0.i.i77 ; 2 uses
  %i.du = icmp ult i64 %.121.i.i78, 72057594037927936 ; 2 uses
  %i.dv = or disjoint i32 %.1.i.i79, 8
  %i.dw = shl nuw i64 %.121.i.i78, 8
  %.222.i.i80 = select i1 %i.du, i64 %i.dw, i64 %.121.i.i78 ; 3 uses
  %.2.i.i81 = select i1 %i.du, i32 %i.dv, i32 %.1.i.i79 ; 2 uses
  %i.dx = icmp ult i64 %.222.i.i80, 1152921504606846976 ; 2 uses
  %i.dy = or disjoint i32 %.2.i.i81, 4
  %i.dz = shl nuw i64 %.222.i.i80, 4
  %.323.i.i82 = select i1 %i.dx, i64 %i.dz, i64 %.222.i.i80 ; 3 uses
  %.3.i.i83 = select i1 %i.dx, i32 %i.dy, i32 %.2.i.i81 ; 2 uses
  %i.ea = icmp ult i64 %.323.i.i82, 4611686018427387904 ; 2 uses
  %i.eb = add nuw nsw i32 %.3.i.i83, 2
  %i.ec = shl nuw i64 %.323.i.i82, 2
  %.424.i.i84 = select i1 %i.ea, i64 %i.ec, i64 %.323.i.i82
  %.4.i.i85 = select i1 %i.ea, i32 %i.eb, i32 %.3.i.i83
  %i.ed = icmp sgt i64 %.424.i.i84, -1
  %.neg28.i.i86 = sext i1 %i.ed to i32
  %reass.sub.i.i87 = or disjoint i32 %i.do, 63
  %i.ee = sub i32 %reass.sub.i.i87, %.4.i.i85
  %i.ef = add i32 %i.ee, %.neg28.i.i86
  br label %Abc_TtFindFirstBit2.exit72

Abc_TtFindFirstBit2.exit72:                       ; preds = %bb.k, %bb.m, %bb.l, %bb.o, %bb.j, %bb.i
  %i.eg = phi i32 [ -1, %bb.l ], [ %i.dh, %bb.j ], [ -1, %bb.i ], [ %i.ef, %bb.o ], [ -1, %bb.m ], [ -1, %bb.k ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !43 ; 5 uses
  %i.ej = icmp ne i32 %1, -1
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !61
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !59
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %.val.i.i = load ptr, ptr %i.eo, align 8, !tbaa !51
  %i.ep = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.f
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !52
  %i.er = getelementptr i8, ptr %i.el, i64 8
  %.val3.i.i = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.val3.i.i, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !63 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i32 %i.eu, ptr %i.ev, align 8, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !66
  %i.ez = shl i32 %i.ce, 16
  %i.fa = or i32 %i.eg, %i.ez
  ret i32 %i.fa
}

declare i32 @Abc_Random(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @Supp_ComputePair(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @Abc_Random(i32 noundef 0) #32 ; 3 uses
  %i.b = and i32 %i.a, 16777215
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val49 = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %.val49, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
  %i.i = srem i32 %i.b, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val48 = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds [4 x i8], ptr %.val48, i64 %i.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %.val45 = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %.val45, i64 %i.r ; 2 uses
  %i.t = shl nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55   ; 8 uses
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = or disjoint i32 %i.t, 1
  %i.aa = mul nsw i32 %i.v, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ab ; 2 uses
  %i.ad = and i32 %i.a, 65536
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = icmp sgt i32 %i.v, 0                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.ae, label %.lr.ph.preheader.i, label %Abc_TtFindFirstBit2.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 4 uses
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i64 %i.ag, 4294967295
  %i.ak = icmp eq i64 %i.aj, 0                    ; 2 uses
  %i.al = lshr exact i64 %i.ag, 32
  %.020.i.i = select i1 %i.ak, i64 %i.al, i64 %i.ag ; 3 uses
  %.0.i.i = select i1 %i.ak, i32 32, i32 0        ; 2 uses
  %i.am = and i64 %.020.i.i, 65535
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  %i.ao = or disjoint i32 %.0.i.i, 16
  %i.ap = lshr exact i64 %.020.i.i, 16
  %.121.i.i = select i1 %i.an, i64 %i.ap, i64 %.020.i.i ; 3 uses
  %.1.i.i = select i1 %i.an, i32 %i.ao, i32 %.0.i.i ; 2 uses
  %i.aq = and i64 %.121.i.i, 255
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  %i.as = or disjoint i32 %.1.i.i, 8
  %i.at = lshr exact i64 %.121.i.i, 8
  %.222.i.i = select i1 %i.ar, i64 %i.at, i64 %.121.i.i ; 3 uses
  %.2.i.i = select i1 %i.ar, i32 %i.as, i32 %.1.i.i ; 2 uses
  %i.au = and i64 %.222.i.i, 15
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  %i.aw = or disjoint i32 %.2.i.i, 4
  %i.ax = lshr exact i64 %.222.i.i, 4
  %.323.i.i = select i1 %i.av, i64 %i.ax, i64 %.222.i.i ; 3 uses
  %.3.i.i = select i1 %i.av, i32 %i.aw, i32 %.2.i.i ; 2 uses
  %i.ay = and i64 %.323.i.i, 3
  %i.az = icmp eq i64 %i.ay, 0                    ; 2 uses
  %i.ba = add nuw nsw i32 %.3.i.i, 2
  %i.bb = lshr exact i64 %.323.i.i, 2
  %.424.i.i = select i1 %i.az, i64 %i.bb, i64 %.323.i.i
  %.4.i.i = select i1 %i.az, i32 %i.ba, i32 %.3.i.i
  %i.bc = trunc i64 %.424.i.i to i32
  %i.bd = and i32 %i.bc, 1
  %i.be = xor i32 %i.bd, 1
  %.5.i.i = add nuw nsw i32 %.4.i.i, %i.ai
  %i.bf = add nuw nsw i32 %.5.i.i, %i.be
  br label %Abc_TtFindFirstBit2.exit

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtFindFirstBit2.exit, label %.lr.ph.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.a
  br i1 %i.ae, label %.lr.ph, label %Abc_TtFindFirstBit2.exit

.lr.ph:                                           ; preds = %bb.e
  %i.bg = zext nneg i32 %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.bh = icmp sgt i32 %i.bl, 0
  br i1 %i.bh, label %bb.g, label %Abc_TtFindFirstBit2.exit, !llvm.loop !9

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv.i50147 = phi i64 [ %i.bg, %.lr.ph ], [ %i.bi, %bb.f ]
  %i.bi = add nsw i64 %indvars.iv.i50147, -1      ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31 ; 4 uses
  %.not.i52 = icmp eq i64 %i.bk, 0
  %i.bl = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %.not.i52, label %bb.f, label %bb.h, !llvm.loop !9

bb.h:                                             ; preds = %bb.g
  %i.bm = shl nuw nsw i32 %i.bl, 6
  %i.bn = icmp ult i64 %i.bk, 4294967296          ; 2 uses
  %i.bo = shl nuw i64 %i.bk, 32
  %.020.i.i53 = select i1 %i.bn, i64 %i.bo, i64 %i.bk ; 3 uses
  %.0.i.i54 = select i1 %i.bn, i32 32, i32 0      ; 2 uses
  %i.bp = icmp ult i64 %.020.i.i53, 281474976710656 ; 2 uses
  %i.bq = or disjoint i32 %.0.i.i54, 16
  %i.br = shl nuw i64 %.020.i.i53, 16
  %.121.i.i55 = select i1 %i.bp, i64 %i.br, i64 %.020.i.i53 ; 3 uses
  %.1.i.i56 = select i1 %i.bp, i32 %i.bq, i32 %.0.i.i54 ; 2 uses
  %i.bs = icmp ult i64 %.121.i.i55, 72057594037927936 ; 2 uses
  %i.bt = or disjoint i32 %.1.i.i56, 8
  %i.bu = shl nuw i64 %.121.i.i55, 8
  %.222.i.i57 = select i1 %i.bs, i64 %i.bu, i64 %.121.i.i55 ; 3 uses
  %.2.i.i58 = select i1 %i.bs, i32 %i.bt, i32 %.1.i.i56 ; 2 uses
  %i.bv = icmp ult i64 %.222.i.i57, 1152921504606846976 ; 2 uses
  %i.bw = or disjoint i32 %.2.i.i58, 4
  %i.bx = shl nuw i64 %.222.i.i57, 4
  %.323.i.i59 = select i1 %i.bv, i64 %i.bx, i64 %.222.i.i57 ; 3 uses
  %.3.i.i60 = select i1 %i.bv, i32 %i.bw, i32 %.2.i.i58 ; 2 uses
  %i.by = icmp ult i64 %.323.i.i59, 4611686018427387904 ; 2 uses
  %i.bz = add nuw nsw i32 %.3.i.i60, 2
  %i.ca = shl nuw i64 %.323.i.i59, 2
  %.424.i.i61 = select i1 %i.by, i64 %i.ca, i64 %.323.i.i59
  %.4.i.i62 = select i1 %i.by, i32 %i.bz, i32 %.3.i.i60
  %i.cb = icmp sgt i64 %.424.i.i61, -1
  %.neg28.i.i = sext i1 %i.cb to i32
  %reass.sub.i.i = or disjoint i32 %i.bm, 63
  %i.cc = sub i32 %reass.sub.i.i, %.4.i.i62
  %i.cd = add i32 %i.cc, %.neg28.i.i
  br label %Abc_TtFindFirstBit2.exit

Abc_TtFindFirstBit2.exit:                         ; preds = %bb.d, %bb.f, %bb.e, %bb.h, %bb.c, %bb.b
  %i.ce = phi i32 [ -1, %bb.e ], [ %i.bf, %bb.c ], [ -1, %bb.b ], [ %i.cd, %bb.h ], [ -1, %bb.f ], [ -1, %bb.d ]
  %i.cf = and i32 %i.a, 131072
  %.not43 = icmp eq i32 %i.cf, 0
  %i.cg = icmp sgt i32 %i.v, 0                    ; 2 uses
  br i1 %.not43, label %bb.l, label %bb.i

bb.i:                                             ; preds = %Abc_TtFindFirstBit2.exit
  br i1 %i.cg, label %.lr.ph.preheader.i64, label %Abc_TtFindFirstBit2.exit82

.lr.ph.preheader.i64:                             ; preds = %bb.i
  %wide.trip.count.i65 = zext nneg i32 %i.v to i64
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.k, %.lr.ph.preheader.i64
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.preheader.i64 ], [ %indvars.iv.next.i80, %bb.k ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i67
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !31 ; 4 uses
  %.not.i68 = icmp eq i64 %i.ci, 0
  br i1 %.not.i68, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i66
  %i.cj = trunc nuw nsw i64 %indvars.iv.i67 to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i64 %i.ci, 4294967295
  %i.cm = icmp eq i64 %i.cl, 0                    ; 2 uses
  %i.cn = lshr exact i64 %i.ci, 32
  %.020.i.i69 = select i1 %i.cm, i64 %i.cn, i64 %i.ci ; 3 uses
  %.0.i.i70 = select i1 %i.cm, i32 32, i32 0      ; 2 uses
  %i.co = and i64 %.020.i.i69, 65535
  %i.cp = icmp eq i64 %i.co, 0                    ; 2 uses
  %i.cq = or disjoint i32 %.0.i.i70, 16
  %i.cr = lshr exact i64 %.020.i.i69, 16
  %.121.i.i71 = select i1 %i.cp, i64 %i.cr, i64 %.020.i.i69 ; 3 uses
  %.1.i.i72 = select i1 %i.cp, i32 %i.cq, i32 %.0.i.i70 ; 2 uses
  %i.cs = and i64 %.121.i.i71, 255
  %i.ct = icmp eq i64 %i.cs, 0                    ; 2 uses
  %i.cu = or disjoint i32 %.1.i.i72, 8
  %i.cv = lshr exact i64 %.121.i.i71, 8
  %.222.i.i73 = select i1 %i.ct, i64 %i.cv, i64 %.121.i.i71 ; 3 uses
  %.2.i.i74 = select i1 %i.ct, i32 %i.cu, i32 %.1.i.i72 ; 2 uses
  %i.cw = and i64 %.222.i.i73, 15
  %i.cx = icmp eq i64 %i.cw, 0                    ; 2 uses
  %i.cy = or disjoint i32 %.2.i.i74, 4
  %i.cz = lshr exact i64 %.222.i.i73, 4
  %.323.i.i75 = select i1 %i.cx, i64 %i.cz, i64 %.222.i.i73 ; 3 uses
  %.3.i.i76 = select i1 %i.cx, i32 %i.cy, i32 %.2.i.i74 ; 2 uses
  %i.da = and i64 %.323.i.i75, 3
  %i.db = icmp eq i64 %i.da, 0                    ; 2 uses
  %i.dc = add nuw nsw i32 %.3.i.i76, 2
  %i.dd = lshr exact i64 %.323.i.i75, 2
  %.424.i.i77 = select i1 %i.db, i64 %i.dd, i64 %.323.i.i75
  %.4.i.i78 = select i1 %i.db, i32 %i.dc, i32 %.3.i.i76
  %i.de = trunc i64 %.424.i.i77 to i32
  %i.df = and i32 %i.de, 1
  %i.dg = xor i32 %i.df, 1
  %.5.i.i79 = add nuw nsw i32 %.4.i.i78, %i.ck
  %i.dh = add nuw nsw i32 %.5.i.i79, %i.dg
  br label %Abc_TtFindFirstBit2.exit82

bb.k:                                             ; preds = %.lr.ph.i66
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i65
  br i1 %exitcond.not.i81, label %Abc_TtFindFirstBit2.exit82, label %.lr.ph.i66, !llvm.loop !8

bb.l:                                             ; preds = %Abc_TtFindFirstBit2.exit
  br i1 %i.cg, label %.lr.ph149, label %Abc_TtFindFirstBit2.exit82

.lr.ph149:                                        ; preds = %bb.l
  %i.di = zext nneg i32 %i.v to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.dj = icmp sgt i32 %i.dn, 0
  br i1 %i.dj, label %bb.n, label %Abc_TtFindFirstBit2.exit82, !llvm.loop !9

bb.n:                                             ; preds = %.lr.ph149, %bb.m
  %indvars.iv.i83148 = phi i64 [ %i.di, %.lr.ph149 ], [ %i.dk, %bb.m ]
  %i.dk = add nsw i64 %indvars.iv.i83148, -1      ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !31 ; 4 uses
  %.not.i85 = icmp eq i64 %i.dm, 0
  %i.dn = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %.not.i85, label %bb.m, label %bb.o, !llvm.loop !9

bb.o:                                             ; preds = %bb.n
  %i.do = shl nuw nsw i32 %i.dn, 6
  %i.dp = icmp ult i64 %i.dm, 4294967296          ; 2 uses
  %i.dq = shl nuw i64 %i.dm, 32
  %.020.i.i86 = select i1 %i.dp, i64 %i.dq, i64 %i.dm ; 3 uses
  %.0.i.i87 = select i1 %i.dp, i32 32, i32 0      ; 2 uses
  %i.dr = icmp ult i64 %.020.i.i86, 281474976710656 ; 2 uses
  %i.ds = or disjoint i32 %.0.i.i87, 16
  %i.dt = shl nuw i64 %.020.i.i86, 16
  %.121.i.i88 = select i1 %i.dr, i64 %i.dt, i64 %.020.i.i86 ; 3 uses
  %.1.i.i89 = select i1 %i.dr, i32 %i.ds, i32 %.0.i.i87 ; 2 uses
  %i.du = icmp ult i64 %.121.i.i88, 72057594037927936 ; 2 uses
  %i.dv = or disjoint i32 %.1.i.i89, 8
  %i.dw = shl nuw i64 %.121.i.i88, 8
  %.222.i.i90 = select i1 %i.du, i64 %i.dw, i64 %.121.i.i88 ; 3 uses
  %.2.i.i91 = select i1 %i.du, i32 %i.dv, i32 %.1.i.i89 ; 2 uses
  %i.dx = icmp ult i64 %.222.i.i90, 1152921504606846976 ; 2 uses
  %i.dy = or disjoint i32 %.2.i.i91, 4
  %i.dz = shl nuw i64 %.222.i.i90, 4
  %.323.i.i92 = select i1 %i.dx, i64 %i.dz, i64 %.222.i.i90 ; 3 uses
  %.3.i.i93 = select i1 %i.dx, i32 %i.dy, i32 %.2.i.i91 ; 2 uses
  %i.ea = icmp ult i64 %.323.i.i92, 4611686018427387904 ; 2 uses
  %i.eb = add nuw nsw i32 %.3.i.i93, 2
  %i.ec = shl nuw i64 %.323.i.i92, 2
  %.424.i.i94 = select i1 %i.ea, i64 %i.ec, i64 %.323.i.i92
  %.4.i.i95 = select i1 %i.ea, i32 %i.eb, i32 %.3.i.i93
  %i.ed = icmp sgt i64 %.424.i.i94, -1
  %.neg28.i.i96 = sext i1 %i.ed to i32
  %reass.sub.i.i97 = or disjoint i32 %i.do, 63
  %i.ee = sub i32 %reass.sub.i.i97, %.4.i.i95
  %i.ef = add i32 %i.ee, %.neg28.i.i96
  br label %Abc_TtFindFirstBit2.exit82

Abc_TtFindFirstBit2.exit82:                       ; preds = %bb.k, %bb.m, %bb.l, %bb.o, %bb.j, %bb.i
  %i.eg = phi i32 [ -1, %bb.l ], [ %i.dh, %bb.j ], [ -1, %bb.i ], [ %i.ef, %bb.o ], [ -1, %bb.m ], [ -1, %bb.k ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !43 ; 5 uses
  %i.ej = icmp ne i32 %1, -1
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !61
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !59
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %.val.i.i = load ptr, ptr %i.eo, align 8, !tbaa !51
  %i.ep = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.f
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !52
  %i.er = getelementptr i8, ptr %i.el, i64 8
  %.val3.i.i = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.val3.i.i, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !63 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store i32 %i.eu, ptr %i.ev, align 8, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !66
  %i.ez = shl i32 %i.ce, 16
  %i.fa = or i32 %i.eg, %i.ez
  ret i32 %i.fa
}

; Function Attrs: nounwind uwtable
define ptr @Supp_Compute64Pairs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !49
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_IntPush.exit
  %.010 = phi i32 [ 0, %bb.a ], [ %i.am, %Vec_IntPush.exit ]
  %i.f = tail call i32 @Abc_Random(i32 noundef 0) #32
  %i.g = and i32 %i.f, 16777215
  %.val = load i32, ptr %i.d, align 4, !tbaa !49
  %i.h = srem i32 %i.g, %.val
  %.val9 = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !91   ; 6 uses
  %i.m = tail call i32 @Supp_ComputePair(ptr noundef nonnull %0, i32 noundef %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49   ; 7 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !50
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  store ptr %i.w, ptr %i.s, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.x = icmp samesign ult i32 %i.o, 1073741823
  %i.y = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi ptr [ %i.ad, %bb.i ], [ %i.ae, %bb.j ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.l, align 8, !tbaa !50
  %.pre = load i32, ptr %i.n, align 4, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.ag = phi i32 [ %i.o, %bb.b ], [ %i.o, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = add nsw i32 %i.ag, 1
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !49
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.m, ptr %i.al, align 4, !tbaa !52
  %i.am = add nuw nsw i32 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, 64
  br i1 %exitcond.not, label %bb.l, label %bb.b, !llvm.loop !177

bb.l:                                             ; preds = %Vec_IntPush.exit
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !91
  ret ptr %i.an
}

; Function Attrs: nounwind uwtable
define void @Supp_ManFillBlock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val36 = load i32, ptr %i.a, align 4, !tbaa !49 ; 2 uses
  %i.b = icmp sgt i32 %.val36, 0
  br i1 %i.b, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 4, !tbaa !75
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !75   ; 8 uses
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val33 = load ptr, ptr %i.k, align 8, !tbaa !29 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val = load ptr, ptr %i.n, align 8, !tbaa !29  ; 5 uses
  %i.o = icmp sgt i32 %i.g, 0
  %wide.trip.count.i = zext i32 %i.g to i64       ; 16 uses
  br i1 %i.o, label %.lr.ph.preheader.i.preheader, label %.critedge

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %.val60 = ptrtoaddr ptr %.val to i64            ; 2 uses
  %.val3362 = ptrtoaddr ptr %.val33 to i64
  %.val3561 = ptrtoaddr ptr %.val35 to i64
  %wide.trip.count = zext nneg i32 %.val36 to i64 ; 2 uses
  %i.p = mul nuw nsw i64 %wide.trip.count, %wide.trip.count.i
  %i.q = shl i64 %i.p, 3
  %scevgep = getelementptr i8, ptr %.val, i64 %i.q ; 2 uses
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep49 = getelementptr i8, ptr %.val33, i64 %i.r
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 3
  %i.t = shl nuw nsw i64 %wide.trip.count.i, 3
  %min.iters.check66 = icmp ult i32 %i.g, 10
  %n.vec68 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n77 = icmp eq i64 %n.vec68, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.g, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter80 = and i64 %wide.trip.count.i, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  %i.u = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtOrAnd.exit.loopexit
end_hunk_0
