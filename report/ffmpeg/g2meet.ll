Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g2meet?download=true
inline.NumInlined: 41
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@jpg_decode_data:bb.a
  %.0102166 = phi ptr [ %7, %.preheader138.preheader ], [ %.1, %._crit_edge ] ; 9 uses
  %.0111164 = phi i32 [ 0, %.preheader138.preheader ], [ %i.fa, %._crit_edge ]
  %.1114163 = phi i32 [ %.0113, %.preheader138.preheader ], [ %.6, %._crit_edge ]
  %.not124 = icmp eq ptr %.0102166, null          ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.0102166, i64 %i.bc
  %invariant.gep222 = getelementptr i8, ptr %.0102166, i64 %i.bc
  br label %bb.f

bb.f:                                             ; preds = %.preheader138, %bb.z
  %indvars.iv195 = phi i64 [ 0, %.preheader138 ], [ %indvars.iv.next196, %bb.z ] ; 2 uses
  %indvars.iv193 = phi i64 [ 0, %.preheader138 ], [ %indvars.iv.next194, %bb.z ] ; 2 uses
  %.2115160 = phi i32 [ %.1114163, %.preheader138 ], [ %.6, %bb.z ] ; 6 uses
  br i1 %.not124, label %.split154.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = shl nuw nsw i64 %indvars.iv195, 1       ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102166, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31
  %.not125 = icmp eq i8 %i.bo, 0
  br i1 %.not125, label %bb.h, label %.preheader.preheader

bb.h:                                             ; preds = %bb.g
  %i.bp = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0102166, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %.not126 = icmp eq i8 %i.br, 0
  br i1 %.not126, label %bb.i, label %.preheader.preheader.thread

bb.i:                                             ; preds = %bb.h
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bm
  %i.bs = load i8, ptr %gep, align 1, !tbaa !31
  %.not127 = icmp eq i8 %i.bs, 0
  br i1 %.not127, label %bb.j, label %.preheader.preheader.thread

bb.j:                                             ; preds = %bb.i
  %gep223 = getelementptr i8, ptr %invariant.gep222, i64 %i.bp
  %i.bt = load i8, ptr %gep223, align 1, !tbaa !31
  %.not128 = icmp eq i8 %i.bt, 0
  br i1 %.not128, label %bb.z, label %.preheader.preheader.thread

.split154.us:                                     ; preds = %bb.f
  %i.bu = add i32 %.2115160, -4
  %i.bv = call fastcc i32 @jpg_decode_block(ptr noundef %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.ar) ; 2 uses
  %.not132.us.us = icmp eq i32 %i.bv, 0
  br i1 %.not132.us.us, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.split154.us
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.bw(ptr noundef nonnull %i.ar) #11
  %i.bx = call fastcc i32 @jpg_decode_block(ptr noundef nonnull %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.bh) ; 2 uses
  %.not132.us.us.1 = icmp eq i32 %i.bx, 0
  br i1 %.not132.us.us.1, label %.split.us.us, label %.loopexit

.split.us.us:                                     ; preds = %bb.k
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.by(ptr noundef nonnull %i.bh) #11
  %i.bz = call fastcc i32 @jpg_decode_block(ptr noundef nonnull %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.bi) ; 2 uses
  %.not132.us.us.1186 = icmp eq i32 %i.bz, 0
  br i1 %.not132.us.us.1186, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.split.us.us
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.ca(ptr noundef nonnull %i.bi) #11
  %i.cb = call fastcc i32 @jpg_decode_block(ptr noundef nonnull %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.bj) ; 2 uses
  %.not132.us.us.1.1 = icmp eq i32 %i.cb, 0
  br i1 %.not132.us.us.1.1, label %.preheader136.sink.split, label %.loopexit

.preheader136.sink.split:                         ; preds = %bb.l, %bb.t
  %.sink = phi ptr [ %i.bg, %bb.t ], [ %i.bj, %bb.l ]
  %.us-phi156.ph = phi i32 [ %i.cx, %bb.t ], [ %i.bu, %bb.l ]
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.cc(ptr noundef nonnull %.sink) #11
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.sink.split, %bb.r
  %.us-phi156 = phi i32 [ %.5.1183, %bb.r ], [ %.us-phi156.ph, %.preheader136.sink.split ] ; 2 uses
  %i.cd = call fastcc i32 @jpg_decode_block(ptr noundef %0, ptr noundef %11, i32 noundef 1, ptr noundef nonnull %i.bk) ; 2 uses
  %.not130 = icmp eq i32 %i.cd, 0
  br i1 %.not130, label %bb.u, label %.loopexit

.preheader.preheader:                             ; preds = %bb.g
  %i.ce = call fastcc i32 @jpg_decode_block(ptr noundef %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.ar) ; 2 uses
  %.not132 = icmp eq i32 %i.ce, 0
  br i1 %.not132, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.preheader.preheader
  %i.cf = add nsw i32 %.2115160, -1
  %i.cg = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.cg(ptr noundef nonnull %i.ar) #11
  br label %.preheader.preheader.thread

.preheader.preheader.thread:                      ; preds = %bb.j, %bb.i, %bb.h, %bb.m
  %.5 = phi i32 [ %i.cf, %bb.m ], [ %.2115160, %bb.h ], [ %.2115160, %bb.i ], [ %.2115160, %bb.j ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0102166, i64 %i.bm
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !31
  %.not131.1 = icmp eq i8 %i.cj, 0
  br i1 %.not131.1, label %.split, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader.thread
  %i.ck = call fastcc i32 @jpg_decode_block(ptr noundef %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.be) ; 2 uses
  %.not132.1 = icmp eq i32 %i.ck, 0
  br i1 %.not132.1, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cl = add nsw i32 %.5, -1
  %i.cm = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.cm(ptr noundef nonnull %i.be) #11
  br label %.split

.split:                                           ; preds = %bb.o, %.preheader.preheader.thread
  %.5.1 = phi i32 [ %i.cl, %bb.o ], [ %.5, %.preheader.preheader.thread ] ; 2 uses
  %i.cn = add nsw i64 %i.bm, %i.bc                ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.0102166, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31
  %.not131.1181 = icmp eq i8 %i.cp, 0
  br i1 %.not131.1181, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.split
  %i.cq = call fastcc i32 @jpg_decode_block(ptr noundef %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.bf) ; 2 uses
  %.not132.1182 = icmp eq i32 %i.cq, 0
  br i1 %.not132.1182, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cr = add nsw i32 %.5.1, -1
  %i.cs = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.cs(ptr noundef nonnull %i.bf) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.split
  %.5.1183 = phi i32 [ %i.cr, %bb.q ], [ %.5.1, %.split ] ; 2 uses
  %i.ct = getelementptr i8, ptr %.0102166, i64 %i.cn
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !31
  %.not131.1.1 = icmp eq i8 %i.cv, 0
  br i1 %.not131.1.1, label %.preheader136, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = call fastcc i32 @jpg_decode_block(ptr noundef %0, ptr noundef %11, i32 noundef 0, ptr noundef nonnull %i.bg) ; 2 uses
  %.not132.1.1 = icmp eq i32 %i.cw, 0
  br i1 %.not132.1.1, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cx = add nsw i32 %.5.1183, -1
  br label %.preheader136.sink.split

bb.u:                                             ; preds = %.preheader136
  %i.cy = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.cy(ptr noundef nonnull %i.bk) #11
  %i.cz = call fastcc i32 @jpg_decode_block(ptr noundef nonnull %0, ptr noundef %11, i32 noundef 2, ptr noundef nonnull %i.bl) ; 2 uses
  %.not130.1 = icmp eq i32 %i.cz, 0
  br i1 %.not130.1, label %.preheader135, label %.loopexit

.preheader135:                                    ; preds = %bb.u
  %i.da = load ptr, ptr %i.au, align 8, !tbaa !159
  tail call void %i.da(ptr noundef nonnull %i.bl) #11
  %i.db = mul nuw nsw i64 %indvars.iv193, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 %i.db
  br label %bb.v

bb.v:                                             ; preds = %.preheader135, %bb.x
  %indvars.iv189 = phi i64 [ 0, %.preheader135 ], [ %indvars.iv.next190, %bb.x ] ; 5 uses
  %i.dd = add nuw nsw i64 %indvars.iv189, %indvars.iv201
  %i.de = mul nsw i64 %i.dd, %i.bd
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = lshr i64 %indvars.iv189, 2
  %i.dh = and i64 %i.dg, 2
  %i.di = shl i64 %indvars.iv189, 3
  %i.dj = and i64 %i.di, 56
  %i.dk = shl i64 %indvars.iv189, 2
  %i.dl = and i64 %i.dk, 56
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.w
  %indvars.iv = phi i64 [ 0, %bb.v ], [ %indvars.iv.next, %bb.w ] ; 5 uses
  %i.dm = lshr i64 %indvars.iv, 3
  %.masked = and i64 %i.dm, 536870911
  %i.dn = or i64 %.masked, %i.dh
  %i.do = getelementptr inbounds nuw [128 x i8], ptr %i.ar, i64 %i.dn
  %i.dp = and i64 %indvars.iv, 7
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dj
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !70
  %i.dt = sext i16 %i.ds to i32                   ; 3 uses
  %i.du = lshr i64 %indvars.iv, 1
  %.masked220 = and i64 %i.du, 2147483647
  %i.dv = or i64 %.masked220, %i.dl               ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !70
  %i.dy = sext i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -128                 ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.dv
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !70
  %i.ec = sext i16 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -128                 ; 2 uses
  %i.ee = mul nuw nsw i64 %indvars.iv, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ee ; 3 uses
  %i.eg = mul nsw i32 %i.ed, 91881
  %i.eh = add nsw i32 %i.eg, 32768
  %i.ei = ashr i32 %i.eh, 16
  %i.ej = add nsw i32 %i.ei, %i.dt                ; 3 uses
  %12 = icmp ugt i32 %i.ej, 255
  %isnotneg.i13.i = icmp sgt i32 %i.ej, -1
  %13 = sext i1 %isnotneg.i13.i to i8
  %i.ek = trunc nuw i32 %i.ej to i8
  %.0.i14.i = select i1 %12, i8 %13, i8 %i.ek
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ax
  store i8 %.0.i14.i, ptr %i.el, align 1, !tbaa !31
  %i.em = mul nsw i32 %i.dz, -22554
  %.neg.i = mul nsw i32 %i.ed, -46802
  %i.en = add nsw i32 %i.em, 32768
  %i.eo = add i32 %i.en, %.neg.i
  %i.ep = ashr i32 %i.eo, 16
  %i.eq = add nsw i32 %i.ep, %i.dt                ; 3 uses
  %14 = icmp ugt i32 %i.eq, 255
  %isnotneg.i11.i = icmp sgt i32 %i.eq, -1
  %15 = sext i1 %isnotneg.i11.i to i8
  %i.er = trunc nuw i32 %i.eq to i8
  %.0.i12.i = select i1 %14, i8 %15, i8 %i.er
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %.0.i12.i, ptr %i.es, align 1, !tbaa !31
  %i.et = mul nsw i32 %i.dz, 116130
  %i.eu = add nsw i32 %i.et, 32768
  %i.ev = ashr i32 %i.eu, 16
  %i.ew = add nsw i32 %i.ev, %i.dt                ; 3 uses
  %16 = icmp ugt i32 %i.ew, 255
  %isnotneg.i.i = icmp sgt i32 %i.ew, -1
  %17 = sext i1 %isnotneg.i.i to i8
  %i.ex = trunc nuw i32 %i.ew to i8
  %.0.i.i133 = select i1 %16, i8 %17, i8 %i.ex
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.az
  store i8 %.0.i.i133, ptr %i.ey, align 1, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.x, label %bb.w, !llvm.loop !153

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next190, 16
  br i1 %exitcond192.not, label %bb.y, label %bb.v, !llvm.loop !154

bb.y:                                             ; preds = %bb.x
  %.not129 = icmp eq i32 %.us-phi156, 0
  br i1 %.not129, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.j
  %.6 = phi i32 [ %.2115160, %bb.j ], [ %.us-phi156, %bb.y ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 16
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count
  br i1 %exitcond200.not, label %._crit_edge, label %bb.f, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.z
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 16
  %i.ez = getelementptr inbounds i8, ptr %.0102166, i64 %i.bb
  %.1 = select i1 %.not124, ptr null, ptr %i.ez
  %i.fa = add nuw nsw i32 %.0111164, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.fa, %i.am
  br i1 %exitcond204.not, label %.loopexit, label %.preheader138, !llvm.loop !156

.loopexit:                                        ; preds = %._crit_edge, %bb.y, %.preheader136, %bb.u, %.preheader.preheader, %bb.n, %bb.p, %bb.s, %.split154.us, %bb.k, %.split.us.us, %bb.l, %bb.e, %.preheader138.lr.ph, %jpg_unescape.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.a ], [ -1094995529, %jpg_unescape.exit ], [ 0, %.preheader138.lr.ph ], [ 0, %bb.y ], [ %i.cd, %.preheader136 ], [ %i.cq, %bb.p ], [ %i.ck, %bb.n ], [ %i.ce, %.preheader.preheader ], [ %i.bz, %.split.us.us ], [ %i.bx, %bb.k ], [ %i.bv, %.split154.us ], [ %i.cz, %bb.u ], [ %i.cw, %bb.s ], [ %i.cb, %bb.l ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16777216) i32 @epic_decode_pixel_pred(ptr noundef %0, i32 noundef range(i32 -2147483648, 16384) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, -1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %3, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %4, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %4, i64 %i.d
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 3 uses
  %i.l = lshr i32 %i.i, 8
  %i.m = and i32 %i.l, 255                        ; 5 uses
  %i.n = lshr i32 %i.f, 8
  %i.o = and i32 %i.n, 255                        ; 4 uses
  %i.p = lshr i32 %i.k, 8
  %i.q = and i32 %i.p, 255                        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.s = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.t = add nuw nsw i32 %i.m, %i.o
  %i.u = sub nsw i32 %i.t, %i.q                   ; 2 uses
  %..i.i = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.m, i32 range(i32 -765, 766) %i.u)
  %.20.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.m, i32 range(i32 -765, 766) %i.u)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %..i.i)
  %i.w = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.v, i32 %.20.i.i)
  %i.x = lshr i32 %i.s, 1
  %i.y = and i32 %i.s, 1
  %i.z = sub nsw i32 0, %i.y
  %i.aa = xor i32 %i.x, %i.z
  %i.ab = sub i32 %i.w, %i.aa                     ; 3 uses
  %i.ac = lshr i32 %i.i, 16
  %i.ad = and i32 %i.ac, 255
  %i.ae = sub nsw i32 %i.ad, %i.m                 ; 3 uses
  %i.af = lshr i32 %i.f, 16
  %i.ag = and i32 %i.af, 255
  %i.ah = sub nsw i32 %i.ag, %i.o                 ; 2 uses
  %i.ai = lshr i32 %i.k, 16
  %i.aj = and i32 %i.ai, 255
  %.neg = sub nsw i32 %i.q, %i.aj
  %i.ak = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.al = add nsw i32 %i.ae, %i.ah
  %i.am = add nsw i32 %i.al, %.neg                ; 2 uses
  %..i.i79 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.ae, i32 range(i32 -765, 766) %i.am)
  %.20.i.i80 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ae, i32 range(i32 -765, 766) %i.am)
  %i.an = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ah, i32 %..i.i79)
  %i.ao = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.an, i32 %.20.i.i80)
  %i.ap = lshr i32 %i.ak, 1
  %i.aq = and i32 %i.ak, 1
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = xor i32 %i.ap, %i.ar
  %i.at = sub i32 %i.ao, %i.as
  %i.au = add nsw i32 %i.at, %i.ab
  %i.av = and i32 %i.i, 255
  %i.aw = sub nsw i32 %i.av, %i.m                 ; 3 uses
  %i.ax = and i32 %i.f, 255
  %i.ay = sub nsw i32 %i.ax, %i.o                 ; 2 uses
  %i.az = and i32 %i.k, 255
  %.neg83 = sub nsw i32 %i.q, %i.az
  %i.ba = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.bb = add nsw i32 %i.aw, %i.ay
  %i.bc = add nsw i32 %i.bb, %.neg83              ; 2 uses
  %..i.i81 = tail call i32 @llvm.smax.i32(i32 range(i32 -255, 256) %i.aw, i32 range(i32 -765, 766) %i.bc)
  %.20.i.i82 = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.aw, i32 range(i32 -765, 766) %i.bc)
  %i.bd = tail call i32 @llvm.smin.i32(i32 range(i32 -255, 256) %i.ay, i32 %..i.i81)
  %i.be = tail call range(i32 -255, 256) i32 @llvm.smax.i32(i32 %i.bd, i32 %.20.i.i82)
  %i.bf = lshr i32 %i.ba, 1
  %i.bg = and i32 %i.ba, 1
  %i.bh = sub nsw i32 0, %i.bg
  %i.bi = xor i32 %i.bf, %i.bh
  %i.bj = sub i32 %i.be, %i.bi
  %i.bk = add nsw i32 %i.bj, %i.ab
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bl = sext i32 %1 to i64
  %i.bm = getelementptr [4 x i8], ptr %3, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %.076.in = select i1 %i.a, ptr %i.bn, ptr %4
  %.076 = load i32, ptr %.076.in, align 4, !tbaa !30 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bp = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.bo) #11 ; 2 uses
  %i.bq = lshr i32 %.076, 16
  %i.br = and i32 %i.bq, 255
  %i.bs = lshr i32 %i.bp, 1
  %i.bt = and i32 %i.bp, 1
  %i.bu = sub nsw i32 0, %i.bt
  %i.bv = xor i32 %i.bs, %i.bu
  %i.bw = sub i32 %i.br, %i.bv
  %i.bx = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.bo) #11 ; 2 uses
  %i.by = lshr i32 %.076, 8
  %i.bz = and i32 %i.by, 255
  %i.ca = lshr i32 %i.bx, 1
  %i.cb = and i32 %i.bx, 1
  %i.cc = sub nsw i32 0, %i.cb
  %i.cd = xor i32 %i.ca, %i.cc
  %i.ce = sub i32 %i.bz, %i.cd
  %i.cf = tail call i32 @ff_els_decode_unsigned(ptr noundef %0, ptr noundef nonnull %i.bo) #11 ; 2 uses
  %i.cg = and i32 %.076, 255
  %i.ch = lshr i32 %i.cf, 1
  %i.ci = and i32 %i.cf, 1
  %i.cj = sub nsw i32 0, %i.ci
  %i.ck = xor i32 %i.ch, %i.cj
  %i.cl = sub i32 %i.cg, %i.ck
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.075 = phi i32 [ %i.au, %bb.b ], [ %i.bw, %bb.c ] ; 4 uses
  %.074 = phi i32 [ %i.ab, %bb.b ], [ %i.ce, %bb.c ] ; 4 uses
  %.0 = phi i32 [ %i.bk, %bb.b ], [ %i.cl, %bb.c ] ; 4 uses
  %i.cm = icmp slt i32 %.075, 0
  %i.cn = icmp slt i32 %.074, 0
  %or.cond3 = select i1 %i.cm, i1 true, i1 %i.cn
  %i.co = icmp slt i32 %.0, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.co
  %i.cp = icmp sgt i32 %.075, 255
  %or.cond7 = or i1 %i.cp, %or.cond5
  %i.cq = icmp sgt i32 %.074, 255
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.cq
  %i.cr = icmp sgt i32 %.0, 255
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %i.cr
  br i1 %or.cond11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef %.075, i32 noundef %.074, i32 noundef %.0) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cs = shl nuw nsw i32 %.075, 16
  %i.ct = shl nuw nsw i32 %.074, 8
  %i.cu = or i32 %i.ct, %i.cs
  %i.cv = or i32 %i.cu, %.0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.077 = phi i32 [ 0, %bb.e ], [ %i.cv, %bb.f ]
  ret i32 %.077
}

declare i32 @ff_els_decode_bit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @av_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @jpg_decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i32 %2, 0                        ; 2 uses
  %i.b = select i1 %i.a, ptr @chroma_quant, ptr @luma_quant ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 7 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr i8, ptr %1, i64 12
  %.val54 = load i32, ptr %i.d, align 4, !tbaa !67
  %.not56 = icmp sgt i32 %.val54, %.val
  br i1 %.not56, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
end_hunk_0
