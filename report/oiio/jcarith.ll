inline.NumInlined: 23
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@encode_mcu_AC_refine:bb.a
  %.077.lcssa = phi i32 [ %i.bf, %._crit_edge115 ], [ %i.cl, %._crit_edge125.loopexit ] ; 2 uses
  %.not92 = icmp sgt i32 %.077.lcssa, %i.cm
  br i1 %.not92, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge125
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.co = sext i32 %i.t to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !49
  %i.cr = mul i32 %.077.lcssa, 3
  %i.cs = add i32 %i.cr, -3
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef %i.cu, i32 noundef 1)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge125
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @encode_mcu(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61
  tail call fastcc void @emit_restart(ptr noundef nonnull %0, i32 noundef %i.i)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !59
  %i.k = load i32, ptr %i.h, align 4, !tbaa !61
  %i.l = add nsw i32 %i.k, 1
  %i.m = and i32 %i.l, 7
  store i32 %i.m, ptr %i.h, align 4, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.e, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !75
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph208, %bb.w
  %indvars.iv218.a = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next219, %bb.w ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv218.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv218.a
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ag ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq ; 4 uses
  %i.as = load i16, ptr %i.ad, align 2, !tbaa !78
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ag ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = sub nsw i32 %i.at, %i.av                ; 4 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef %i.ar, i32 noundef 0)
  store i32 0, ptr %i.ao, align 4, !tbaa !3
  br label %.loopexit171

bb.h:                                             ; preds = %bb.f
  store i32 %i.at, ptr %i.au, align 4, !tbaa !3
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef %i.ar, i32 noundef 1)
  %i.ay = icmp sgt i32 %i.aw, 0
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nsw i32 0, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink250 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  %.sink = phi i64 [ 3, %bb.i ], [ 2, %bb.h ]
  %storemerge = phi i32 [ 8, %bb.i ], [ 4, %bb.h ]
  %.0138 = phi i32 [ %i.az, %bb.i ], [ %i.aw, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ba, i32 noundef %.sink250)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink ; 2 uses
  store i32 %storemerge, ptr %i.ao, align 4, !tbaa !3
  %i.bc = add nsw i32 %.0138, -1                  ; 3 uses
  %.not159 = icmp eq i32 %i.bc, 0
  br i1 %.not159, label %.loopexit172, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, i32 noundef 1)
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20 ; 2 uses
  %i.bf = lshr i32 %i.bc, 1                       ; 2 uses
  %.not160174 = icmp eq i32 %i.bf, 0
  br i1 %.not160174, label %.loopexit172, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.bg = phi i32 [ %i.bj, %.lr.ph ], [ %i.bf, %bb.k ]
  %.0176 = phi i32 [ %i.bh, %.lr.ph ], [ 1, %bb.k ]
  %.1145175 = phi ptr [ %i.bi, %.lr.ph ], [ %i.be, %bb.k ] ; 2 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.1145175, i32 noundef 1)
  %i.bh = shl i32 %.0176, 1                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1145175, i64 1 ; 2 uses
  %i.bj = lshr i32 %i.bg, 1                       ; 2 uses
  %.not160 = icmp eq i32 %i.bj, 0
  br i1 %.not160, label %.loopexit172, label %.lr.ph, !llvm.loop !91

.loopexit172:                                     ; preds = %.lr.ph, %bb.k, %bb.j
  %.2146 = phi ptr [ %i.bb, %bb.j ], [ %i.be, %bb.k ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.j ], [ 1, %bb.k ], [ %i.bh, %.lr.ph ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.2146, i32 noundef 0)
  %i.bk = getelementptr inbounds i8, ptr %i.x, i64 %i.al
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !34
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp slt i32 %.1, %i.bp
  br i1 %i.bq, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.loopexit172
  %i.br = getelementptr inbounds i8, ptr %i.y, i64 %i.al
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !34
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i64 %i.bu, 1
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = icmp sgt i32 %.1, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.bz = add nsw i32 %i.by, 8
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit172, %bb.m
  %.sink251 = phi i32 [ %i.bz, %bb.m ], [ 0, %.loopexit172 ]
  store i32 %.sink251, ptr %i.ao, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.2146, i64 14
  %i.cb = ashr i32 %.1, 1                         ; 2 uses
  %.not161178 = icmp eq i32 %i.cb, 0
  br i1 %.not161178, label %.loopexit171, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.n, %.lr.ph179
  %i.cc = phi i32 [ %i.cf, %.lr.ph179 ], [ %i.cb, %bb.n ] ; 2 uses
  %i.cd = and i32 %i.cc, %i.bc
  %.not162 = icmp ne i32 %i.cd, 0
  %i.ce = zext i1 %.not162 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, i32 noundef %i.ce)
  %i.cf = ashr i32 %i.cc, 1                       ; 2 uses
  %.not161 = icmp eq i32 %i.cf, 0
  br i1 %.not161, label %.loopexit171, label %.lr.ph179, !llvm.loop !92

.loopexit171:                                     ; preds = %.lr.ph179, %bb.n, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !52 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.loopexit171
  %indvars.iv = phi i64 [ 63, %.loopexit171 ], [ %indvars.iv.next.2, %bb.r ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !78
  %.not163 = icmp eq i16 %i.cm, 0
  br i1 %.not163, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.next
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !78
  %.not163.1 = icmp eq i16 %i.cr, 0
  br i1 %.not163.1, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.next.1
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !78
  %.not163.2 = icmp eq i16 %i.cw, 0
  br i1 %.not163.2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3
  %i.cx = icmp sgt i64 %indvars.iv, 3
  br i1 %i.cx, label %bb.o, label %._crit_edge204.thread, !llvm.loop !93

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.o ], [ %indvars.iv.next, %bb.p ], [ %indvars.iv.next.1, %bb.q ] ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %.not164200 = icmp slt i64 %indvars.iv.lcssa, 1
  br i1 %.not164200, label %._crit_edge204.thread, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.s
  %i.cy = sext i32 %i.ch to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.ab, i64 %i.cy
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph203, %._crit_edge199
  %.0141201 = phi i32 [ 1, %.lr.ph203 ], [ %i.et, %._crit_edge199 ] ; 3 uses
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !49
  %i.dc = mul i32 %.0141201, 3
  %i.dd = add i32 %i.dc, -3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.df, i32 noundef 0)
  %i.dg = sext i32 %.0141201 to i64               ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !78 ; 2 uses
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %.lr.ph184, label %._crit_edge

.lr.ph184:                                        ; preds = %bb.t, %.lr.ph184
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %.lr.ph184 ], [ %i.dg, %bb.t ]
  %.3147182 = phi ptr [ %i.do, %.lr.ph184 ], [ %i.df, %bb.t ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.3147182, i64 1
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dn, i32 noundef 0)
  %i.do = getelementptr inbounds nuw i8, ptr %.3147182, i64 3 ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %indvars.iv.next.a
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !78 ; 2 uses
  %i.du = icmp eq i16 %i.dt, 0
  br i1 %i.du, label %.lr.ph184, label %._crit_edge.loopexit, !llvm.loop !94

._crit_edge.loopexit:                             ; preds = %.lr.ph184
  %i.dv = trunc nsw i64 %indvars.iv.next.a to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.t
  %.lcssa181 = phi i16 [ %i.dl, %bb.t ], [ %i.dt, %._crit_edge.loopexit ] ; 2 uses
  %.3147.lcssa = phi ptr [ %i.df, %bb.t ], [ %i.do, %._crit_edge.loopexit ] ; 2 uses
  %.1142.lcssa = phi i32 [ %.0141201, %bb.t ], [ %i.dv, %._crit_edge.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.3147.lcssa, i64 1
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dw, i32 noundef 1)
  %i.dx = icmp slt i16 %.lcssa181, 1
  %.sink252 = zext i1 %i.dx to i32
  %i.dy = tail call i16 @llvm.abs.i16(i16 %.lcssa181, i1 false)
  %.1139 = zext i16 %i.dy to i32
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.aa, i32 noundef %.sink252)
  %i.dz = getelementptr inbounds nuw i8, ptr %.3147.lcssa, i64 2 ; 3 uses
  %i.ea = add nsw i32 %.1139, -1                  ; 4 uses
  %.not165 = icmp eq i32 %i.ea, 0
  br i1 %.not165, label %.loopexit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dz, i32 noundef 1)
  %.not166 = icmp eq i32 %i.ea, 1
  br i1 %.not166, label %.loopexit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dz, i32 noundef 1)
  %i.eb = load ptr, ptr %i.cz, align 8, !tbaa !49
  %i.ec = load i8, ptr %i.da, align 1, !tbaa !34
  %i.ed = zext i8 %i.ec to i32
  %.not167 = icmp sgt i32 %.1142.lcssa, %i.ed
  %i.ee = select i1 %.not167, i64 217, i64 189
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee ; 3 uses
  %i.eg = ashr i32 %i.ea, 2                       ; 2 uses
  %.not168189 = icmp eq i32 %i.eg, 0
  br i1 %.not168189, label %.loopexit.thread235, label %.lr.ph193

.loopexit.thread235:                              ; preds = %bb.v
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ef, i32 noundef 0)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 14
  br label %.lr.ph198.preheader

.lr.ph193:                                        ; preds = %bb.v, %.lr.ph193
  %i.ei = phi i32 [ %i.el, %.lr.ph193 ], [ %i.eg, %bb.v ]
  %.3191 = phi i32 [ %i.ej, %.lr.ph193 ], [ 2, %bb.v ]
  %.4148190 = phi ptr [ %i.ek, %.lr.ph193 ], [ %i.ef, %bb.v ] ; 3 uses
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %.4148190, i32 noundef 1)
  %i.ej = shl i32 %.3191, 1                       ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.4148190, i64 1 ; 2 uses
  %i.el = ashr i32 %i.ei, 1                       ; 2 uses
  %.not168 = icmp eq i32 %i.el, 0
  br i1 %.not168, label %.loopexit, label %.lr.ph193, !llvm.loop !95

.loopexit.thread:                                 ; preds = %._crit_edge, %bb.u
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef nonnull %i.dz, i32 noundef 0)
  br label %._crit_edge199

.loopexit:                                        ; preds = %.lr.ph193
  %i.em = ashr exact i32 %i.ej, 1
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.ek, i32 noundef 0)
  %i.en = getelementptr inbounds nuw i8, ptr %.4148190, i64 15
  %.not169196 = icmp eq i32 %i.ej, 0
  br i1 %.not169196, label %._crit_edge199, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %.loopexit.thread235, %.loopexit
  %i.eo = phi ptr [ %i.eh, %.loopexit.thread235 ], [ %i.en, %.loopexit ]
  %.4239 = phi i32 [ 1, %.loopexit.thread235 ], [ %i.em, %.loopexit ]
  br label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.lr.ph198
  %i.ep = phi i32 [ %i.es, %.lr.ph198 ], [ %.4239, %.lr.ph198.preheader ] ; 2 uses
  %i.eq = and i32 %i.ep, %i.ea
  %.not170 = icmp ne i32 %i.eq, 0
  %i.er = zext i1 %.not170 to i32
  tail call fastcc void @arith_encode(ptr noundef nonnull %0, ptr noundef nonnull %i.eo, i32 noundef %i.er)
  %i.es = ashr i32 %i.ep, 1                       ; 2 uses
  %.not169 = icmp eq i32 %i.es, 0
  br i1 %.not169, label %._crit_edge199, label %.lr.ph198, !llvm.loop !96

._crit_edge199:                                   ; preds = %.lr.ph198, %.loopexit.thread, %.loopexit
  %i.et = add nsw i32 %.1142.lcssa, 1             ; 2 uses
  %.not164.not = icmp slt i32 %.1142.lcssa, %2
  br i1 %.not164.not, label %bb.t, label %._crit_edge204, !llvm.loop !97

._crit_edge204:                                   ; preds = %._crit_edge199
  %i.eu = icmp slt i32 %.1142.lcssa, 63
  br i1 %i.eu, label %._crit_edge204.thread, label %bb.w

._crit_edge204.thread:                            ; preds = %bb.r, %bb.s, %._crit_edge204
  %.0141.lcssa241 = phi i32 [ %i.et, %._crit_edge204 ], [ 1, %bb.s ], [ 1, %bb.r ]
  %i.ev = sext i32 %i.ch to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !49
  %i.ey = mul i32 %.0141.lcssa241, 3
  %i.ez = add i32 %i.ey, -3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  tail call fastcc void @arith_encode(ptr noundef %0, ptr noundef %i.fb, i32 noundef 1)
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge204, %._crit_edge204.thread
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218.a, 1 ; 2 uses
  %i.fc = load i32, ptr %i.p, align 8, !tbaa !75
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next219, %i.fd
  br i1 %i.fe, label %bb.f, label %._crit_edge209, !llvm.loop !98

._crit_edge209:                                   ; preds = %bb.w, %bb.e
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_restart(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 9 uses
  tail call void @finish_pass(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !64
  store i8 -1, ptr %i.e, align 1, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !66
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %emit_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #3, !inline_history !68
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %emit_byte.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 25, ptr %i.o, align 8, !tbaa !36
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !40
  tail call void %i.p(ptr noundef nonnull %0) #3, !inline_history !68
  br label %emit_byte.exit

emit_byte.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !63   ; 4 uses
  %i.r = trunc i32 %1 to i8
  %i.s = add i8 %i.r, -48
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !64   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.q, align 8, !tbaa !64
  store i8 %i.s, ptr %i.t, align 1, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !66
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !66
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %emit_byte.exit29

bb.d:                                             ; preds = %emit_byte.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0) #3, !inline_history !68
  %.not.i28 = icmp eq i32 %i.ab, 0
  br i1 %.not.i28, label %bb.e, label %emit_byte.exit29

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 25, ptr %i.ad, align 8, !tbaa !36
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !40
  tail call void %i.ae(ptr noundef nonnull %0) #3, !inline_history !68
  br label %emit_byte.exit29

emit_byte.exit29:                                 ; preds = %emit_byte.exit, %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !45
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %emit_byte.exit29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = load i32, ptr %i.aj, align 8, !tbaa !41
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !42
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !47
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bd, i8 0, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 0, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  store i32 0, ptr %i.bf, align 4, !tbaa !3
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !41
  %i.bg = icmp eq i32 %.pre, 0
  br i1 %i.bg, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i
  %i.bh = load i32, ptr %i.ap, align 8, !tbaa !51
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !52
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.bm, i8 0, i64 256, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %i.af, align 8, !tbaa !45
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.f, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.k, %emit_byte.exit29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.bq, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 65536, ptr %i.br, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  store i32 11, ptr %i.bt, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 -1, ptr %i.bu, align 4, !tbaa !58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith_encode(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !34
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = and i32 %i.d, 127
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @jpeg_aritab, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = ashr i64 %i.h, 16                        ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !56
  %i.n = sub nsw i64 %i.m, %i.k                   ; 6 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !56
end_hunk_0
