Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_minterpolate?download=true
inline.NumInlined: 15
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@set_frame_data:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.au, %middle.block ], [ %i.ax, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.i, ptr %i.aj, align 4, !tbaa !56
  store i8 1, ptr %i.al, align 4, !tbaa !77
  store i16 0, ptr %i.ah, align 2, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 0, ptr %i.ay, align 2, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %1, ptr %i.az, align 4, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 2, ptr %i.ba, align 1, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 0, ptr %i.bb, align 2, !tbaa !94
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 0, ptr %i.bc, align 2, !tbaa !94
  store i32 2, ptr %i.am, align 4, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.bd = phi i32 [ %i.an, %._crit_edge ], [ 2, %._crit_edge.thread ] ; 2 uses
  %.1119 = phi i32 [ %.lcssa, %._crit_edge ], [ 1024, %._crit_edge.thread ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv164 to i32 ; 2 uses
  br i1 %i.u, label %.lr.ph137, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %bb.c
  %wide.trip.count157 = zext nneg i32 %i.bd to i64
  br label %.lr.ph133

.lr.ph137:                                        ; preds = %bb.c
  %i.bf = load i32, ptr %i.k, align 8, !tbaa !75  ; 2 uses
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = shl nuw i32 1, %i.bf
  %i.bi = load i32, ptr %i.l, align 4, !tbaa !76  ; 2 uses
  %i.bj = lshr i32 %i.ad, %i.bi
  %i.bk = shl nuw i32 1, %i.bi
  %wide.trip.count162 = zext nneg i32 %i.bd to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph137, %bb.d
  %indvars.iv159 = phi i64 [ 0, %.lr.ph137 ], [ %indvars.iv.next160, %bb.d ] ; 4 uses
  %.0114136 = phi i32 [ 0, %.lr.ph137 ], [ %i.co, %bb.d ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv159
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !77
  %i.bn = sext i8 %i.bm to i64
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv159 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !94
  %i.br = sext i16 %i.bq to i32
  %i.bs = sdiv i32 %i.br, %i.bh
  %i.bt = add nsw i32 %i.bs, %i.bg
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !94
  %i.bw = sext i16 %i.bv to i32
  %i.bx = sdiv i32 %i.bw, %i.bk
  %i.by = add nsw i32 %i.bx, %i.bj
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv159
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !56
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !51 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv174
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv174
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !56
  %i.ch = mul nsw i32 %i.cg, %i.by
  %i.ci = add nsw i32 %i.bt, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cd, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !77
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul i32 %i.ca, %i.cm
  %i.co = add i32 %i.cn, %.0114136                ; 3 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %bb.e, label %bb.d, !llvm.loop !175

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %indvars.iv154 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next155, %.lr.ph133 ] ; 4 uses
  %.1132 = phi i32 [ 0, %.lr.ph133.preheader ], [ %i.dq, %.lr.ph133 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv154
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !77
  %i.cr = sext i8 %i.cq to i64
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv154 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !94
  %i.cv = sext i16 %i.cu to i32
  %i.cw = add nsw i32 %i.be, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !94
  %i.cz = sext i16 %i.cy to i32
  %i.da = add nsw i32 %i.ab, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv154
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !56
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !51 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv174
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv174
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56
  %i.dj = mul nsw i32 %i.di, %i.da
  %i.dk = add nsw i32 %i.cw, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !77
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul i32 %i.dc, %i.do
  %i.dq = add i32 %i.dp, %.1132                   ; 3 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %bb.f, label %.lr.ph133, !llvm.loop !176

bb.e:                                             ; preds = %bb.d
  %i.dr = ashr i32 %.1119, 1                      ; 2 uses
  %i.ds = icmp slt i32 %i.co, 0
  %i.dt = sub nsw i32 0, %i.dr
  %.p187 = select i1 %i.ds, i32 %i.dt, i32 %i.dr
  %i.du = add i32 %.p187, %i.co
  %i.dv = load i32, ptr %i.k, align 8, !tbaa !75
  %i.dw = trunc nuw nsw i64 %indvars.iv164 to i32
  %i.dx = lshr i32 %i.dw, %i.dv
  %i.dy = load i32, ptr %i.l, align 4, !tbaa !76
  %i.dz = lshr i32 %i.ae, %i.dy
  %i.ea = load i32, ptr %i.y, align 4, !tbaa !56
  %i.eb = mul nsw i32 %i.dz, %i.ea
  %i.ec = add nsw i32 %i.eb, %i.dx
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph133
  %i.ed = ashr i32 %.1119, 1                      ; 2 uses
  %i.ee = icmp slt i32 %i.dq, 0
  %i.ef = sub nsw i32 0, %i.ed
  %.p = select i1 %i.ee, i32 %i.ef, i32 %i.ed
  %i.eg = add i32 %.p, %i.dq
  %i.eh = load i32, ptr %i.y, align 4, !tbaa !56
  %i.ei = mul nsw i32 %i.eh, %i.ac
  %i.ej = trunc nuw nsw i64 %indvars.iv164 to i32
  %i.ek = add nsw i32 %i.ei, %i.ej
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink193 = phi i32 [ %i.ek, %bb.f ], [ %i.ec, %bb.e ]
  %.pn = phi i32 [ %i.eg, %bb.f ], [ %i.du, %bb.e ]
  %.sink.in = sdiv i32 %.pn, %.1119
  %.sink = trunc i32 %.sink.in to i8
  %.sink191 = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.el = sext i32 %.sink193 to i64
  %i.em = getelementptr inbounds i8, ptr %.sink191, i64 %i.el
  store i8 %.sink, ptr %i.em, align 1, !tbaa !77
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %i.z
  br i1 %exitcond168.not, label %._crit_edge142, label %bb.b, !llvm.loop !177

._crit_edge142:                                   ; preds = %bb.g
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge144.split.loopexit, label %.preheader126, !llvm.loop !178

._crit_edge144.split.loopexit:                    ; preds = %._crit_edge142
  %.pre = load i32, ptr %i.a, align 8, !tbaa !72
  br label %._crit_edge144.split

._crit_edge144.split:                             ; preds = %._crit_edge144.split.loopexit, %.preheader126.lr.ph, %.lr.ph147.split
  %i.en = phi i32 [ %.pre, %._crit_edge144.split.loopexit ], [ %i.q, %.preheader126.lr.ph ], [ %i.q, %.lr.ph147.split ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp slt i64 %indvars.iv.next175, %i.eo
  br i1 %i.ep, label %.lr.ph147.splitthread-pre-split, label %._crit_edge148, !llvm.loop !179

._crit_edge148:                                   ; preds = %._crit_edge144.split, %.lr.ph147, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @var_size_bmc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.h = add i32 %4, -1                           ; 5 uses
  %i.i = shl nuw i32 1, %i.h                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3448 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 2 uses
  %.neg = add i32 %5, -1024                       ; 4 uses
  %i.m = sub nsw i32 1024, %5
  %i.n = mul nsw i32 %i.m, 255                    ; 2 uses
  %i.o = mul nsw i32 %5, 255                      ; 2 uses
  %i.p = sext i32 %i.d to i64                     ; 2 uses
  %.not113 = icmp eq i32 %i.h, 31
  %6 = add nsw i32 %2, %i.i
  %i.q = sext i32 %2 to i64
  %7 = sext i32 %6 to i64
  %8 = add nsw i32 %i.i, %2
  %i.r = add i32 %i.i, %2                         ; 2 uses
  %i.s = add nsw i32 %i.r, %i.i
  %9 = sext i32 %i.r to i64
  %i.t = sext i32 %i.s to i64
  %i.u = or disjoint i32 %2, -2147483648
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.split.us
  %i.v = phi i1 [ true, %bb.a ], [ false, %.split.us ]
  %indvars.iv125 = phi i64 [ 0, %bb.a ], [ 1, %.split.us ] ; 2 uses
  %i.w = shl nuw nsw i64 %indvars.iv125, 1        ; 4 uses
  %i.x = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.y = shl nuw i32 %i.x, %i.h
  %i.z = add i32 %i.y, %3                         ; 6 uses
  br i1 %.not113, label %.preheader.split.preheader, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.aa = add nsw i32 %i.z, %i.i
  %10 = sext i32 %i.z to i64                      ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.w ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !91
  %.not.us = icmp eq i32 %i.af, 0
  br i1 %.not.us, label %.lr.ph.us.preheader, label %bb.b

.preheader.split.preheader:                       ; preds = %.preheader
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !164 ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %i.w ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !91
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %.loopexit, label %bb.j

bb.b:                                             ; preds = %.preheader.split.us.preheader
  tail call fastcc void @var_size_bmc(ptr noundef %0, ptr noundef nonnull %i.ad, i32 noundef %2, i32 noundef %i.z, i32 noundef %i.h, i32 noundef %5)
  br label %..loopexit_crit_edge.split.us

.lr.ph.us.preheader:                              ; preds = %.preheader.split.us.preheader
  %i.ak = load i16, ptr %i.ad, align 8, !tbaa !94
  %i.al = sext i16 %i.ak to i32
  %i.am = shl nsw i32 %i.al, 1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !94
  %i.ap = sext i16 %i.ao to i32
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.ar = mul nsw i32 %i.am, %5
  %i.as = sdiv i32 %i.ar, 1024                    ; 2 uses
  %i.at = mul nsw i32 %i.aq, %5
  %i.au = sdiv i32 %i.at, 1024                    ; 2 uses
  %.neg97.us = mul i32 %i.am, %.neg
  %i.av = sdiv i32 %.neg97.us, 1024               ; 2 uses
  %.neg99.us = mul i32 %i.aq, %.neg
  %i.aw = sdiv i32 %.neg99.us, 1024               ; 2 uses
  %i.ax = sext i32 %i.as to i64
  %i.ay = sext i32 %i.av to i64
  %i.az = sext i32 %i.au to i64
  %i.ba = sext i32 %i.aw to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv116 = phi i64 [ %10, %.lr.ph.us.preheader ], [ %indvars.iv.next117, %._crit_edge.us ] ; 4 uses
  %i.bb = sub nsw i64 0, %indvars.iv116           ; 3 uses
  %i.bc = trunc nsw i64 %indvars.iv116 to i32
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.f, %i.bd                     ; 2 uses
  %i.bf = mul nsw i64 %indvars.iv116, %i.p
  %i.bg = icmp slt i64 %i.az, %i.bb
  %..i102.us = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.be)
  %i.bh = trunc nsw i64 %i.bb to i32              ; 2 uses
  %.0.i103.us = select i1 %i.bg, i32 %i.bh, i32 %..i102.us
  %i.bi = trunc i32 %.0.i103.us to i16
  %i.bj = icmp slt i64 %i.ba, %i.bb
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.be)
  %.0.i.us = select i1 %i.bj, i32 %i.bh, i32 %..i.us
  %i.bk = trunc i32 %.0.i.us to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.q, %.lr.ph.us ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv, %i.bf          ; 3 uses
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.bn = getelementptr inbounds [36 x i8], ptr %i.bm, i64 %i.bl ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !85 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 30
  br i1 %i.bq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.bs = getelementptr inbounds [128 x i8], ptr %i.br, i64 %i.bl ; 2 uses
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.bu = getelementptr inbounds [128 x i8], ptr %i.bt, i64 %i.bl ; 2 uses
  %i.bv = trunc nsw i64 %indvars.iv to i32
  %i.bw = xor i32 %i.bv, -1
  %i.bx = add i32 %i.d, %i.bw                     ; 2 uses
  %i.by = sub nsw i64 0, %indvars.iv              ; 3 uses
  %i.bz = sext i32 %i.bp to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %i.bz
  store i8 1, ptr %i.ca, align 1, !tbaa !77
  %i.cb = load i32, ptr %i.bo, align 4, !tbaa !85
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cc
  store i32 %i.n, ptr %i.cd, align 4, !tbaa !56
  %i.ce = icmp slt i64 %i.ax, %i.by
  %..i104.us = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.bx)
  %i.cf = trunc nsw i64 %i.by to i32              ; 2 uses
  %.0.i105.us = select i1 %i.ce, i32 %i.cf, i32 %..i104.us
  %i.cg = trunc i32 %.0.i105.us to i16
  %i.ch = load i32, ptr %i.bo, align 4, !tbaa !85 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ci ; 2 uses
  store i16 %i.cg, ptr %i.cj, align 2, !tbaa !94
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i16 %i.bi, ptr %i.ck, align 2, !tbaa !94
  %i.cl = add nsw i32 %i.ch, 1                    ; 2 uses
  store i32 %i.cl, ptr %i.bo, align 4, !tbaa !85
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.bn, i64 %i.cm
  store i8 2, ptr %i.cn, align 1, !tbaa !77
  %i.co = load i32, ptr %i.bo, align 4, !tbaa !85
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cp
  store i32 %i.o, ptr %i.cq, align 4, !tbaa !56
  %i.cr = icmp slt i64 %i.ay, %i.by
  %..i100.us = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.bx)
  %.0.i101.us = select i1 %i.cr, i32 %i.cf, i32 %..i100.us
  %i.cs = trunc i32 %.0.i101.us to i16
  %i.ct = load i32, ptr %i.bo, align 4, !tbaa !85 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cu ; 2 uses
  store i16 %i.cs, ptr %i.cv, align 2, !tbaa !94
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.bk, ptr %i.cw, align 2, !tbaa !94
  %i.cx = add nsw i32 %i.ct, 1
  store i32 %i.cx, ptr %i.bo, align 4, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cy = icmp slt i64 %indvars.iv.next, %7
  br i1 %i.cy, label %bb.c, label %._crit_edge.us, !llvm.loop !180

..loopexit_crit_edge.split.us:                    ; preds = %._crit_edge.us, %bb.b
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.cz, i64 %i.w ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !91
  %.not.us.1 = icmp eq i32 %i.dd, 0
  br i1 %.not.us.1, label %.lr.ph.us.preheader.1, label %bb.f

bb.f:                                             ; preds = %..loopexit_crit_edge.split.us
  tail call fastcc void @var_size_bmc(ptr noundef %0, ptr noundef nonnull %i.db, i32 noundef %8, i32 noundef %i.z, i32 noundef %i.h, i32 noundef %5)
  br label %.split.us

.lr.ph.us.preheader.1:                            ; preds = %..loopexit_crit_edge.split.us
  %i.de = load i16, ptr %i.db, align 8, !tbaa !94
  %i.df = sext i16 %i.de to i32
  %i.dg = shl nsw i32 %i.df, 1                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 42
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !94
  %i.dj = sext i16 %i.di to i32
  %i.dk = shl nsw i32 %i.dj, 1                    ; 2 uses
  %i.dl = mul nsw i32 %i.dg, %5
  %i.dm = sdiv i32 %i.dl, 1024                    ; 2 uses
  %i.dn = mul nsw i32 %i.dk, %5
  %i.do = sdiv i32 %i.dn, 1024                    ; 2 uses
  %.neg97.us.1 = mul i32 %i.dg, %.neg
  %i.dp = sdiv i32 %.neg97.us.1, 1024             ; 2 uses
  %.neg99.us.1 = mul i32 %i.dk, %.neg
  %i.dq = sdiv i32 %.neg99.us.1, 1024             ; 2 uses
  %i.dr = sext i32 %i.dm to i64
  %i.ds = sext i32 %i.dp to i64
  %i.dt = sext i32 %i.do to i64
  %i.du = sext i32 %i.dq to i64
  br label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %._crit_edge.us.1, %.lr.ph.us.preheader.1
  %indvars.iv116.1 = phi i64 [ %10, %.lr.ph.us.preheader.1 ], [ %indvars.iv.next117.1, %._crit_edge.us.1 ] ; 4 uses
  %i.dv = sub nsw i64 0, %indvars.iv116.1         ; 3 uses
  %i.dw = trunc nsw i64 %indvars.iv116.1 to i32
  %i.dx = xor i32 %i.dw, -1
  %i.dy = add i32 %i.f, %i.dx                     ; 2 uses
  %i.dz = mul nsw i64 %indvars.iv116.1, %i.p
  %i.ea = icmp slt i64 %i.dt, %i.dv
  %..i102.us.1 = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dy)
  %i.eb = trunc nsw i64 %i.dv to i32              ; 2 uses
  %.0.i103.us.1 = select i1 %i.ea, i32 %i.eb, i32 %..i102.us.1
  %i.ec = trunc i32 %.0.i103.us.1 to i16
  %i.ed = icmp slt i64 %i.du, %i.dv
  %..i.us.1 = tail call i32 @llvm.smin.i32(i32 %i.dq, i32 %i.dy)
  %.0.i.us.1 = select i1 %i.ed, i32 %i.eb, i32 %..i.us.1
  %i.ee = trunc i32 %.0.i.us.1 to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %bb.i ], [ %9, %.lr.ph.us.1 ] ; 4 uses
  %i.ef = add nsw i64 %indvars.iv.1, %i.dz        ; 3 uses
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.eh = getelementptr inbounds [36 x i8], ptr %i.eg, i64 %i.ef ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 7 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !85 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 30
  br i1 %i.ek, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.el = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.em = getelementptr inbounds [128 x i8], ptr %i.el, i64 %i.ef ; 2 uses
  %i.en = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.eo = getelementptr inbounds [128 x i8], ptr %i.en, i64 %i.ef ; 2 uses
  %i.ep = trunc nsw i64 %indvars.iv.1 to i32
  %i.eq = xor i32 %i.ep, -1
  %i.er = add i32 %i.d, %i.eq                     ; 2 uses
  %i.es = sub nsw i64 0, %indvars.iv.1            ; 3 uses
  %i.et = sext i32 %i.ej to i64
  %i.eu = getelementptr inbounds i8, ptr %i.eh, i64 %i.et
  store i8 1, ptr %i.eu, align 1, !tbaa !77
  %i.ev = load i32, ptr %i.ei, align 4, !tbaa !85
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ew
  store i32 %i.n, ptr %i.ex, align 4, !tbaa !56
  %i.ey = icmp slt i64 %i.dr, %i.es
  %..i104.us.1 = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.er)
  %i.ez = trunc nsw i64 %i.es to i32              ; 2 uses
  %.0.i105.us.1 = select i1 %i.ey, i32 %i.ez, i32 %..i104.us.1
  %i.fa = trunc i32 %.0.i105.us.1 to i16
  %i.fb = load i32, ptr %i.ei, align 4, !tbaa !85 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fc ; 2 uses
  store i16 %i.fa, ptr %i.fd, align 2, !tbaa !94
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %i.ec, ptr %i.fe, align 2, !tbaa !94
  %i.ff = add nsw i32 %i.fb, 1                    ; 2 uses
  store i32 %i.ff, ptr %i.ei, align 4, !tbaa !85
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.eh, i64 %i.fg
  store i8 2, ptr %i.fh, align 1, !tbaa !77
  %i.fi = load i32, ptr %i.ei, align 4, !tbaa !85
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fj
  store i32 %i.o, ptr %i.fk, align 4, !tbaa !56
  %i.fl = icmp slt i64 %i.ds, %i.es
  %..i100.us.1 = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.er)
  %.0.i101.us.1 = select i1 %i.fl, i32 %i.ez, i32 %..i100.us.1
  %i.fm = trunc i32 %.0.i101.us.1 to i16
  %i.fn = load i32, ptr %i.ei, align 4, !tbaa !85 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fo ; 2 uses
  store i16 %i.fm, ptr %i.fp, align 2, !tbaa !94
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  store i16 %i.ee, ptr %i.fq, align 2, !tbaa !94
  %i.fr = add nsw i32 %i.fn, 1
  store i32 %i.fr, ptr %i.ei, align 4, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.fs = icmp slt i64 %indvars.iv.next.1, %i.t
  br i1 %i.fs, label %bb.g, label %._crit_edge.us.1, !llvm.loop !180

._crit_edge.us.1:                                 ; preds = %bb.i
  %indvars.iv.next117.1 = add nsw i64 %indvars.iv116.1, 1 ; 2 uses
  %i.ft = icmp slt i64 %indvars.iv.next117.1, %i.ab
  br i1 %i.ft, label %.lr.ph.us.1, label %.split.us, !llvm.loop !181

._crit_edge.us:                                   ; preds = %bb.e
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.fu = icmp slt i64 %indvars.iv.next117, %i.ab
  br i1 %i.fu, label %.lr.ph.us, label %..loopexit_crit_edge.split.us, !llvm.loop !181

bb.j:                                             ; preds = %.preheader.split.preheader
  tail call fastcc void @var_size_bmc(ptr noundef %0, ptr noundef nonnull %i.ah, i32 noundef %2, i32 noundef %i.z, i32 noundef 31, i32 noundef %5)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !164
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.preheader, %bb.j
  %i.fv = phi ptr [ %i.ag, %.preheader.split.preheader ], [ %.pre, %bb.j ]
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fv, i64 %i.w ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !91
  %.not.1 = icmp eq i32 %i.fy, 0
  br i1 %.not.1, label %.split.us, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  tail call fastcc void @var_size_bmc(ptr noundef %0, ptr noundef nonnull %i.fz, i32 noundef %i.u, i32 noundef %i.z, i32 noundef 31, i32 noundef %5)
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge.us.1, %.loopexit, %bb.k, %bb.f
  br i1 %i.v, label %.preheader, label %bb.l, !llvm.loop !182

bb.l:                                             ; preds = %.split.us
  ret void
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ff_me_init_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @get_sad_ob(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !97     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !99   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !102  ; 3 uses
  %i.j = sdiv i32 %i.i, 2                         ; 4 uses
  %i.k = add nsw i32 %i.j, %i.g                   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !104
  %i.n = sub nsw i32 %i.m, %i.j                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !100
  %i.q = add nsw i32 %i.p, %i.j                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !101
  %i.t = sub nsw i32 %i.s, %i.j                   ; 2 uses
  %i.u = icmp slt i32 %1, %i.k
  %..i96 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.n)
  %.0.i97 = select i1 %i.u, i32 %i.k, i32 %..i96  ; 2 uses
  %i.v = icmp slt i32 %2, %i.q
  %..i94 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.t)
  %.0.i95 = select i1 %i.v, i32 %i.q, i32 %..i94  ; 2 uses
  %i.w = icmp slt i32 %3, %i.k
  %..i92 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.n)
  %.0.i93 = select i1 %i.w, i32 %i.k, i32 %..i92  ; 2 uses
  %i.x = icmp slt i32 %4, %i.q
  %..i = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.t)
  %.0.i = select i1 %i.x, i32 %i.q, i32 %..i      ; 2 uses
  %i.y = sdiv i32 %i.i, -2                        ; 8 uses
  %i.z = mul nsw i32 %i.i, 3
  %i.aa = sdiv i32 %i.z, 2                        ; 3 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  br i1 %i.ab, label %.preheader.us.preheader, label %._crit_edge107

.preheader.us.preheader:                          ; preds = %bb.a
  %i.ac = sext i32 %i.y to i64                    ; 5 uses
  %wide.trip.count = sext i32 %i.aa to i64        ; 5 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = add nsw i64 %i.ad, %wide.trip.count     ; 2 uses
  %i.af = add i32 %.0.i93, %i.y
  %i.ag = add i32 %.0.i, %i.y
  %i.ah = mul i32 %i.e, %i.ag
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = add i32 %.0.i97, %i.y
  %i.ak = add i32 %.0.i95, %i.y
  %i.al = mul i32 %i.e, %i.ak
  %i.am = add i32 %i.aj, %i.al
  %i.an = sub nsw i64 %wide.trip.count, %i.ac     ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 10
  %i.ao = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ap = icmp ugt i64 %i.ae, 4294967295
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.ac
  %cmp.n = icmp eq i64 %i.an, %n.vec
  %i.ar = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar = phi i32 [ 0, %.preheader.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.0106.us = phi i64 [ 0, %.preheader.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  %.084105.us = phi i32 [ %i.y, %.preheader.us.preheader ], [ %i.ec, %._crit_edge.us ] ; 3 uses
  %i.as = add nsw i32 %.084105.us, %.0.i
  %i.at = mul nsw i32 %i.as, %i.e
  %i.au = add i32 %i.at, %.0.i93                  ; 4 uses
  %i.av = add nsw i32 %.084105.us, %.0.i95
  %i.aw = mul nsw i32 %i.av, %i.e
  %i.ax = add i32 %i.aw, %.0.i97                  ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.ay = mul i32 %i.e, %indvar                   ; 2 uses
  %i.az = add i32 %i.am, %i.ay                    ; 2 uses
  %i.ba = add i32 %i.ai, %i.ay                    ; 2 uses
  %i.bb = add i32 %i.ba, %i.ao
  %i.bc = icmp slt i32 %i.bb, %i.ba
  %i.bd = add i32 %i.az, %i.ao
  %i.be = icmp slt i32 %i.bd, %i.az
  %i.bf = or i1 %i.be, %i.ap
  %i.bg = or i1 %i.bc, %i.bf
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.bh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0106.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bh, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi113 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %i.bi = trunc i64 %index to i32
  %i.bj = add i32 %i.y, %i.bi                     ; 2 uses
  %i.bk = add i32 %i.au, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.b, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %wide.load = load <2 x i8>, ptr %i.bm, align 1, !tbaa !77
  %wide.load114 = load <2 x i8>, ptr %i.bn, align 1, !tbaa !77
  %i.bo = zext <2 x i8> %wide.load to <2 x i32>
  %i.bp = zext <2 x i8> %wide.load114 to <2 x i32>
  %i.bq = add i32 %i.ax, %i.bj
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.c, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %wide.load115 = load <2 x i8>, ptr %i.bs, align 1, !tbaa !77
  %wide.load116 = load <2 x i8>, ptr %i.bt, align 1, !tbaa !77
  %i.bu = zext <2 x i8> %wide.load115 to <2 x i32>
  %i.bv = zext <2 x i8> %wide.load116 to <2 x i32>
  %i.bw = sub nsw <2 x i32> %i.bo, %i.bu
  %i.bx = sub nsw <2 x i32> %i.bp, %i.bv
  %i.by = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bw, i1 true)
  %i.bz = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bx, i1 true)
  %i.ca = zext nneg <2 x i32> %i.by to <2 x i64>
  %i.cb = zext nneg <2 x i32> %i.bz to <2 x i64>
  %i.cc = add <2 x i64> %vec.phi, %i.ca           ; 2 uses
  %i.cd = add <2 x i64> %vec.phi113, %i.cb        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %vector.scevcheck ], [ %i.ac, %.preheader.us ], [ %i.aq, %middle.block ] ; 5 uses
  %.1104.us.ph = phi i64 [ %.0106.us, %vector.scevcheck ], [ %.0106.us, %.preheader.us ], [ %i.cf, %middle.block ] ; 2 uses
  %i.cg = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ch = trunc nsw i64 %indvars.iv.ph to i32     ; 2 uses
  %i.ci = add i32 %i.au, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.b, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !77
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add i32 %i.ax, %i.ch
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.c, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !77
  %i.cr = zext i8 %i.cq to i32
  %i.cs = sub nsw i32 %i.cm, %i.cr
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cs, i1 true)
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = add i64 %.1104.us.ph, %i.cu             ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1104.us.unr = phi i64 [ %.1104.us.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %indvars.iv.ph, %i.ar
  br i1 %i.cw, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.1104.us = phi i64 [ %i.eb, %scalar.ph ], [ %.1104.us.unr, %scalar.ph.prol.loopexit ]
  %i.cx = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cy = add i32 %i.au, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.b, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !77
  %i.dc = zext i8 %i.db to i32
  %i.dd = add i32 %i.ax, %i.cx
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.c, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !77
  %i.dh = zext i8 %i.dg to i32
  %i.di = sub nsw i32 %i.dc, %i.dh
  %i.dj = tail call i32 @llvm.abs.i32(i32 %i.di, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add i64 %.1104.us, %i.dk
  %i.dm = trunc i64 %indvars.iv to i32
  %i.dn = add i32 %i.dm, 1                        ; 2 uses
  %i.do = add i32 %i.au, %i.dn
end_hunk_0
