inline.NumInlined: 70
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@svq3_decode_init:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 11400 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1328 ; 3 uses
  store ptr %i.c, ptr %i.d, align 16, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 11432
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1344 ; 3 uses
  store ptr %i.e, ptr %i.f, align 16, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 11464
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !40
  %i.i = tail call ptr @av_frame_alloc() #10
  %i.j = load ptr, ptr %i.d, align 16, !tbaa !29
  store ptr %i.i, ptr %i.j, align 8, !tbaa !41
  %i.k = tail call ptr @av_frame_alloc() #10
  %i.l = load ptr, ptr %i.f, align 16, !tbaa !39
  store ptr %i.k, ptr %i.l, align 8, !tbaa !41
  %i.m = tail call ptr @av_frame_alloc() #10      ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = load ptr, ptr %i.d, align 16, !tbaa !29
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %init_dequant4_coeff_table.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.f, align 16, !tbaa !39
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %.not118 = icmp eq ptr %i.r, null
  %.not119 = icmp eq ptr %i.m, null
  %or.cond = select i1 %.not118, i1 true, i1 %.not119
  br i1 %or.cond, label %init_dequant4_coeff_table.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @ff_h264dsp_init(ptr noundef nonnull %i.s, i32 noundef 8, i32 noundef 1) #10
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  tail call void @ff_h264_pred_init(ptr noundef nonnull %i.t, i32 noundef 23, i32 noundef 8, i32 noundef 1) #10
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1312
  tail call void @ff_videodsp_init(ptr noundef nonnull %i.u, i32 noundef 8) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 8, ptr %i.v, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  tail call void @ff_hpeldsp_init(ptr noundef nonnull %i.w, i32 noundef %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  tail call void @ff_tpeldsp_init(ptr noundef nonnull %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 12, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.ab, align 4, !tbaa !47
  store ptr %0, ptr %i.b, align 16, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1412
  store i32 1, ptr %i.ac, align 4, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  store i32 1, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1420
  store i32 0, ptr %i.ae, align 4, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52 ; 2 uses
  %.not120 = icmp eq ptr %i.ag, null
  br i1 %.not120, label %.loopexit, label %.preheader127

.preheader127:                                    ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 8
  br i1 %i.aj, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.ak = add nsw i32 %i.ai, -9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.0106130 = phi i32 [ %i.ar, %bb.e ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0112129 = phi ptr [ %i.aq, %bb.e ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.al = load i32, ptr %.0112129, align 1
  %i.am = icmp ne i32 %i.al, 1213285715
  %i.an = zext i1 %i.am to i32
  %.not121 = icmp eq i32 %i.an, 0
  br i1 %.not121, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ao = tail call fastcc i32 @svq3_decode_extradata(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %.0106130) #11 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %init_dequant4_coeff_table.exit, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.0112129, i64 1
  %i.ar = add nuw nsw i32 %.0106130, 1
  %exitcond.not = icmp eq i32 %.0106130, %i.ak
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !54

.loopexit:                                        ; preds = %bb.e, %.preheader127, %bb.d, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1492 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1496 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1500 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1508
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 1432
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !56
  %i.ba = add nsw <2 x i32> %i.az, splat (i32 15)
  %i.bb = sdiv <2 x i32> %i.ba, splat (i32 16)    ; 3 uses
  %i.bc = extractelement <2 x i32> %i.bb, i64 0   ; 4 uses
  store i32 %i.bc, ptr %i.at, align 4, !tbaa !57
  %i.bd = extractelement <2 x i32> %i.bb, i64 1   ; 3 uses
  store i32 %i.bd, ptr %i.au, align 8, !tbaa !58
  %i.be = add nsw i32 %i.bc, 1                    ; 2 uses
  store i32 %i.be, ptr %i.av, align 4, !tbaa !59
  %i.bf = mul nsw i32 %i.bd, %i.bc
  store i32 %i.bf, ptr %i.aw, align 16, !tbaa !60
  %i.bg = shl nsw i32 %i.bc, 2
  store i32 %i.bg, ptr %i.ax, align 4, !tbaa !61
  %i.bh = shl nsw <2 x i32> %i.bb, splat (i32 4)
  store <2 x i32> %i.bh, ptr %i.ay, align 8, !tbaa !56
  %i.bi = add nsw i32 %i.bd, 2
  %i.bj = mul nsw i32 %i.bi, %i.be
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = tail call noalias ptr @av_calloc(i64 noundef %i.bl, i64 noundef 12) #10 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 11496
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !62
  %.not122 = icmp eq ptr %i.bm, null
  br i1 %.not122, label %init_dequant4_coeff_table.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bo = load i32, ptr %i.av, align 4, !tbaa !59
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !57
  %i.bq = shl nsw i32 %i.bp, 2
  %i.br = or disjoint i32 %i.bq, 1
  %i.bs = load i32, ptr %i.au, align 8, !tbaa !58
  %i.bt = shl i32 %i.bs, 2
  %i.bu = mul i32 %i.bt, %i.br
  %i.bv = add i32 %i.bu, 4
  %i.bw = zext i32 %i.bv to i64                   ; 3 uses
  %i.bx = tail call noalias ptr @av_calloc(i64 noundef %i.bw, i64 noundef 24) #10 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 11504
  store ptr %i.bx, ptr %i.by, align 16, !tbaa !63
  %.not123 = icmp eq ptr %i.bx, null
  br i1 %.not123, label %init_dequant4_coeff_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = shl nsw i32 %i.bo, 1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !59
  %i.cf = shl nsw i32 %i.ce, 4
  %i.cg = sext i32 %i.cf to i64
  %i.ch = tail call noalias ptr @av_mallocz(i64 noundef %i.cg) #10 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  store ptr %i.ch, ptr %i.ci, align 16, !tbaa !64
  %.not124 = icmp eq ptr %i.ch, null
  br i1 %.not124, label %init_dequant4_coeff_table.exit, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %.0107135 = phi i64 [ 0, %bb.g ], [ %i.cq, %bb.i ] ; 2 uses
  %.0108134 = phi ptr [ %i.cd, %bb.g ], [ %i.co, %bb.i ] ; 2 uses
  %.0113133 = phi ptr [ %i.cc, %bb.g ], [ %i.cp, %bb.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.0107135 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %.0113133, ptr %i.ck, align 8, !tbaa !65
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.0108134, ptr %i.cl, align 8, !tbaa !66
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0108134, i64 %i.bw ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !66
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.bw
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0113133, i64 %i.bl
  %i.cq = add nuw nsw i64 %.0107135, 1            ; 2 uses
  %exitcond141.not = icmp eq i64 %i.cq, 3
  br i1 %exitcond141.not, label %bb.h, label %bb.i, !llvm.loop !67

bb.j:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %i.av, align 4, !tbaa !59
  %i.cs = load i32, ptr %i.au, align 8, !tbaa !58
  %i.ct = add nsw i32 %i.cs, 1
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = tail call noalias ptr @av_mallocz(i64 noundef %i.cw) #10 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 1512
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !68
  %.not125 = icmp eq ptr %i.cx, null
  br i1 %.not125, label %init_dequant4_coeff_table.exit, label %.preheader126

.preheader126:                                    ; preds = %bb.j
  %i.cz = load i32, ptr %i.au, align 8, !tbaa !58 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.preheader.preheader, label %._crit_edge139

.preheader.preheader:                             ; preds = %.preheader126
  %.pre = load i32, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.db = icmp sgt i32 %.pre, 0
  br i1 %i.db, label %.lr.ph137.preheader, label %._crit_edge139

.lr.ph137.preheader:                              ; preds = %.preheader.preheader, %._crit_edge
  %.0111138 = phi i32 [ %i.dl, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.pre142 = load i32, ptr %i.av, align 4, !tbaa !59 ; 2 uses
  %i.dc = mul nsw i32 %.pre142, %.0111138
  %i.dd = shl nsw i32 %.pre142, 1
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %.lr.ph137
  %.0110136 = phi i32 [ %i.dj, %.lr.ph137 ], [ 0, %.lr.ph137.preheader ] ; 2 uses
  %i.de = add nsw i32 %i.dc, %.0110136            ; 2 uses
  %i.df = srem i32 %i.de, %i.dd
  %i.dg = shl nsw i32 %i.df, 3
  %i.dh = sext i32 %i.de to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.dh
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !56
  %i.dj = add nuw nsw i32 %.0110136, 1            ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %.pre
  br i1 %i.dk, label %.lr.ph137, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph137
  %i.dl = add nuw nsw i32 %.0111138, 1            ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.cz
  br i1 %i.dm, label %.lr.ph137.preheader, label %._crit_edge139, !llvm.loop !70

._crit_edge139:                                   ; preds = %._crit_edge, %.preheader.preheader, %.preheader126
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 5384
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge139
  %indvars.iv.i = phi i64 [ 0, %._crit_edge139 ], [ %indvars.iv.next.i, %bb.k ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr @ff_h264_quant_div6, i64 %indvars.iv.i
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !71
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dq, 2                ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr @ff_h264_quant_rem6, i64 %indvars.iv.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !71
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [3 x i8], ptr @ff_h264_dequant4_coeff_init, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %indvars.iv.i ; 16 uses
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !71
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 4
  %i.ea = shl i32 %i.dz, %i.dr                    ; 4 uses
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !71
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 4
  %i.ef = shl i32 %i.ee, %i.dr                    ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !56
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 %i.ea, ptr %i.eh, align 4, !tbaa !56
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store i32 %i.ef, ptr %i.ei, align 4, !tbaa !56
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.ef, ptr %i.ej, align 4, !tbaa !56
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !71
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 4
  %i.eo = shl i32 %i.en, %i.dr                    ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  store i32 %i.ef, ptr %i.eq, align 4, !tbaa !56
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 52
  store i32 %i.eo, ptr %i.er, align 4, !tbaa !56
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.ea, ptr %i.es, align 4, !tbaa !56
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i32 %i.ef, ptr %i.et, align 4, !tbaa !56
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i32 %i.ea, ptr %i.eu, align 4, !tbaa !56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store i32 %i.ef, ptr %i.ev, align 4, !tbaa !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %i.ef, ptr %i.ew, align 4, !tbaa !56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  store i32 %i.eo, ptr %i.ex, align 4, !tbaa !56
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dw, i64 44
  store i32 %i.ef, ptr %i.ey, align 4, !tbaa !56
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dw, i64 60
  store i32 %i.eo, ptr %i.ez, align 4, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 52
  br i1 %exitcond.not.i, label %init_dequant4_coeff_table.exit, label %bb.k, !llvm.loop !72

init_dequant4_coeff_table.exit:                   ; preds = %bb.k, %.loopexit, %bb.h, %bb.j, %bb.f, %bb.d, %bb.a, %bb.b
  %.3 = phi i32 [ -12, %bb.a ], [ %i.ao, %bb.d ], [ -12, %bb.h ], [ -12, %bb.b ], [ -12, %.loopexit ], [ -12, %bb.f ], [ -12, %bb.j ], [ 0, %bb.k ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @svq3_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 333 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73   ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1336
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %.not271 = icmp eq ptr %i.i, null
  br i1 %.not271, label %get_buffer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1476
  %i.k = load i32, ptr %i.j, align 4, !tbaa !76
  %.not272 = icmp eq i32 %i.k, 0
  br i1 %.not272, label %bb.d, label %get_buffer.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @av_frame_move_ref(ptr noundef %1, ptr noundef nonnull %i.h) #10
  store i32 1, ptr %2, align 4, !tbaa !56
  br label %get_buffer.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1488 ; 4 uses
  store i32 0, ptr %i.l, align 16, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1484 ; 11 uses
  store i32 0, ptr %i.m, align 4, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1480 ; 12 uses
  store i32 0, ptr %i.n, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80   ; 2 uses
  %or.cond.i = icmp ugt i32 %i.d, 268435455
  %i.r = shl nsw i32 %i.d, 3                      ; 2 uses
  %i.s = select i1 %or.cond.i, i32 -8, i32 %i.r   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.s, 2147483135    ; 2 uses
  %i.t = icmp ne ptr %i.q, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.t       ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.q, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.s, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.o, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1364
  store i32 %.013.i.i, ptr %i.u, align 4, !tbaa !82
  %i.v = add nuw nsw i32 %.013.i.i, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1368
  store i32 %i.v, ptr %i.w, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  store i32 0, ptr %i.x, align 16, !tbaa !84
  br i1 %or.cond3.i.i, label %bb.f, label %get_buffer.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = tail call fastcc i32 @svq3_decode_slice_header(ptr noundef nonnull %0) ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %get_buffer.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1492 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1496 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !58
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = sdiv i32 %i.af, 8
  %i.ah = icmp slt i32 %i.aa, %i.ag
  br i1 %i.ah, label %get_buffer.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1472 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !85 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1468 ; 16 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !86
  %.not = icmp eq i32 %i.aj, 3
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !87
  %i.an = shufflevector <2 x ptr> %i.am, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 1328 ; 32 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !29
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  tail call void @av_frame_unref(ptr noundef %i.aq) #10
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !86 ; 2 uses
  %i.as = load ptr, ptr %i.ao, align 16, !tbaa !29 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  store i32 %i.ar, ptr %i.au, align 8, !tbaa !88
  %i.av = icmp eq i32 %i.ar, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 276 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !93
  %i.ay = and i32 %i.ax, -3
  %masksel = select i1 %i.av, i32 2, i32 0
  %.sink491 = or disjoint i32 %i.ay, %masksel
  store i32 %.sink491, ptr %i.aw, align 4, !tbaa !93
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1468
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !86
  %.not.i = icmp ne i32 %i.bb, 3
  %i.bc = zext i1 %.not.i to i32
  %i.bd = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.at, i32 noundef %i.bc) #10 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %get_buffer.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 1584 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !94
  %.not11.i = icmp eq ptr %i.bg, null
  br i1 %.not11.i, label %bb.l, label %get_buffer.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call noalias ptr @av_calloc(i64 noundef %i.bk, i64 noundef 17) #10 ; 2 uses
  store ptr %i.bl, ptr %i.bf, align 16, !tbaa !94
  %.not12.i = icmp eq ptr %i.bl, null
  br i1 %.not12.i, label %get_buffer.exit.thread, label %get_buffer.exit

get_buffer.exit:                                  ; preds = %bb.k, %bb.l
  %i.bm = load ptr, ptr %i.ao, align 16, !tbaa !29
end_hunk_0
