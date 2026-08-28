Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dxv?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dxv_decompress_dxt1:bb.a
  %i.do = zext i16 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = add nuw nsw i32 %i.dp, 516
  br label %bytestream2_get_le16.exit153

bytestream2_get_le16.exit153:                     ; preds = %bb.x, %bb.y
  %.0.i152 = phi i32 [ 516, %bb.x ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dr = zext nneg i32 %.0.i152 to i64
  %i.ds = icmp samesign ult i64 %indvars.iv215, %i.dr
  br i1 %i.ds, label %.loopexit.sink.split, label %bb.z

bb.z:                                             ; preds = %bytestream2_get_le32.exit139, %bytestream2_get_byte.exit148, %bytestream2_get_le16.exit153
  %.2102.ph = phi i32 [ %.0.i152, %bytestream2_get_le16.exit153 ], [ %.0.i147, %bytestream2_get_byte.exit148 ], [ 2, %bytestream2_get_le32.exit139 ]
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.du = trunc nuw nsw i64 %indvars.iv215 to i32
  %i.dv = sub nsw i32 %i.du, %.2102.ph
  %i.dw = shl nsw i32 %i.dv, 2
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit137

bb.aa:                                            ; preds = %bytestream2_get_le32.exit139._crit_edge, %bytestream2_get_le32.exit139.thread
  %i.ea = phi ptr [ %.pre220, %bytestream2_get_le32.exit139._crit_edge ], [ %storemerge, %bytestream2_get_le32.exit139.thread ] ; 3 uses
  %i.eb = phi ptr [ %.pre, %bytestream2_get_le32.exit139._crit_edge ], [ %storemerge, %bytestream2_get_le32.exit139.thread ] ; 2 uses
  %i.ec = phi i32 [ %i.cs, %bytestream2_get_le32.exit139._crit_edge ], [ %.2.ph, %bytestream2_get_le32.exit139.thread ] ; 2 uses
  %i.ed = phi i32 [ %i.cr, %bytestream2_get_le32.exit139._crit_edge ], [ 0, %bytestream2_get_le32.exit139.thread ] ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = icmp slt i64 %i.eg, 4
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le32.exit137

bb.ac:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store ptr %i.ei, ptr %i.c, align 8, !tbaa !42
  %i.ej = load i32, ptr %i.ea, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit137

bytestream2_get_le32.exit137:                     ; preds = %bb.ac, %bb.ab, %bb.z
  %i.ek = phi i32 [ %i.cr, %bb.z ], [ %i.ed, %bb.ab ], [ %i.ed, %bb.ac ]
  %i.el = phi i32 [ %i.cs, %bb.z ], [ %i.ec, %bb.ab ], [ %i.ec, %bb.ac ] ; 2 uses
  %.0105 = phi i32 [ %i.dz, %bb.z ], [ 0, %bb.ab ], [ %i.ej, %bb.ac ]
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.en = shl nuw nsw i64 %indvars.iv215, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i32 %.0105, ptr %i.eo, align 1, !tbaa !43
  %i.ep = or disjoint i64 %indvars.iv215, 1       ; 6 uses
  %i.eq = icmp eq i32 %i.el, 0
  br i1 %i.eq, label %bb.ad, label %bytestream2_get_le32.exit135

bb.ad:                                            ; preds = %bytestream2_get_le32.exit137
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !39  ; 4 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %i.et = ptrtoint ptr %i.er to i64               ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = icmp slt i32 %i.ew, 4
  br i1 %i.ex, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = icmp slt i64 %i.ev, 4
  br i1 %i.ey, label %bytestream2_get_le32.exit135.thread, label %bb.af

bytestream2_get_le32.exit135.thread:              ; preds = %bb.ae
  store ptr %i.er, ptr %i.c, align 8, !tbaa !36
  br label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store ptr %i.ez, ptr %i.c, align 8, !tbaa !42
  %i.fa = load i32, ptr %i.es, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit135

bytestream2_get_le32.exit135:                     ; preds = %bb.af, %bytestream2_get_le32.exit137
  %.3110 = phi i32 [ %i.ek, %bytestream2_get_le32.exit137 ], [ %i.fa, %bb.af ] ; 2 uses
  %.3 = phi i32 [ %i.el, %bytestream2_get_le32.exit137 ], [ 16, %bb.af ]
  %i.fb = and i32 %.3110, 3
  %i.fc = lshr i32 %.3110, 2                      ; 2 uses
  %i.fd = add nsw i32 %.3, -1                     ; 2 uses
  switch i32 %i.fb, label %default.unreachable [
    i32 1, label %bb.am
    i32 2, label %bb.ag
    i32 3, label %bb.aj
    i32 0, label %bytestream2_get_le32.exit135._crit_edge
  ]

bytestream2_get_le32.exit135._crit_edge:          ; preds = %bytestream2_get_le32.exit135
  %.pre221 = load ptr, ptr %i.d, align 8, !tbaa !39 ; 2 uses
  %.pre222 = load ptr, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %.pre223 = ptrtoint ptr %.pre221 to i64
  %.pre224 = ptrtoint ptr %.pre222 to i64
  br label %bb.an

bb.ag:                                            ; preds = %bytestream2_get_le32.exit135
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.ff = load ptr, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = icmp slt i64 %i.fi, 1
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.fe, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !42
  %i.fl = load i8, ptr %i.ff, align 1, !tbaa !43
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 1
  %i.fo = add nuw nsw i32 %i.fn, 4
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.ah, %bb.ai
  %.0.i146 = phi i32 [ 4, %bb.ah ], [ %i.fo, %bb.ai ] ; 3 uses
  %i.fp = zext nneg i32 %.0.i146 to i64
  %i.fq = icmp samesign ult i64 %i.ep, %i.fp
  br i1 %i.fq, label %.loopexit.sink.split, label %bb.am

bb.aj:                                            ; preds = %bytestream2_get_le32.exit135
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp slt i64 %i.fv, 2
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.fr, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le16.exit

bb.al:                                            ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store ptr %i.fx, ptr %i.c, align 8, !tbaa !42
  %i.fy = load i16, ptr %i.fs, align 1, !tbaa !43
  %i.fz = zext i16 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 1
  %i.gb = add nuw nsw i32 %i.ga, 516
  br label %bytestream2_get_le16.exit

bytestream2_get_le16.exit:                        ; preds = %bb.ak, %bb.al
  %.0.i151 = phi i32 [ 516, %bb.ak ], [ %i.gb, %bb.al ] ; 3 uses
  %i.gc = zext nneg i32 %.0.i151 to i64
  %i.gd = icmp samesign ult i64 %i.ep, %i.gc
  br i1 %i.gd, label %.loopexit.sink.split, label %bb.am

bb.am:                                            ; preds = %bytestream2_get_le32.exit135, %bytestream2_get_byte.exit, %bytestream2_get_le16.exit
  %.3103.ph = phi i32 [ %.0.i151, %bytestream2_get_le16.exit ], [ %.0.i146, %bytestream2_get_byte.exit ], [ 2, %bytestream2_get_le32.exit135 ]
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.gf = trunc nuw nsw i64 %i.ep to i32
  %i.gg = sub nsw i32 %i.gf, %.3103.ph
  %i.gh = shl nsw i32 %i.gg, 2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.ge, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit

bb.an:                                            ; preds = %bytestream2_get_le32.exit135._crit_edge, %bytestream2_get_le32.exit135.thread
  %.pre-phi225 = phi i64 [ %.pre224, %bytestream2_get_le32.exit135._crit_edge ], [ %i.et, %bytestream2_get_le32.exit135.thread ]
  %.pre-phi = phi i64 [ %.pre223, %bytestream2_get_le32.exit135._crit_edge ], [ %i.et, %bytestream2_get_le32.exit135.thread ]
  %i.gl = phi ptr [ %.pre222, %bytestream2_get_le32.exit135._crit_edge ], [ %i.er, %bytestream2_get_le32.exit135.thread ] ; 2 uses
  %i.gm = phi ptr [ %.pre221, %bytestream2_get_le32.exit135._crit_edge ], [ %i.er, %bytestream2_get_le32.exit135.thread ]
  %i.gn = phi i32 [ %i.fd, %bytestream2_get_le32.exit135._crit_edge ], [ 15, %bytestream2_get_le32.exit135.thread ] ; 2 uses
  %i.go = phi i32 [ %i.fc, %bytestream2_get_le32.exit135._crit_edge ], [ 0, %bytestream2_get_le32.exit135.thread ] ; 2 uses
  %i.gp = sub i64 %.pre-phi, %.pre-phi225
  %i.gq = icmp slt i64 %i.gp, 4
  br i1 %i.gq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store ptr %i.gm, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le32.exit

bb.ap:                                            ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store ptr %i.gr, ptr %i.c, align 8, !tbaa !42
  %i.gs = load i32, ptr %i.gl, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.ap, %bb.ao, %bb.am
  %i.gt = phi i32 [ %i.fc, %bb.am ], [ %i.go, %bb.ao ], [ %i.go, %bb.ap ]
  %i.gu = phi i32 [ %i.fd, %bb.am ], [ %i.gn, %bb.ao ], [ %i.gn, %bb.ap ]
  %.1106 = phi i32 [ %i.gk, %bb.am ], [ 0, %bb.ao ], [ %i.gs, %bb.ap ]
  %i.gv = load ptr, ptr %i.m, align 8, !tbaa !57
  br label %bb.aq

bb.aq:                                            ; preds = %bytestream2_get_le32.exit, %bb.o
  %.sink = phi i64 [ %i.ep, %bytestream2_get_le32.exit ], [ %i.bx, %bb.o ]
  %.sink236 = phi ptr [ %i.gv, %bytestream2_get_le32.exit ], [ %i.by, %bb.o ]
  %.1106.sink = phi i32 [ %.1106, %bytestream2_get_le32.exit ], [ %i.ce, %bb.o ]
  %.4111 = phi i32 [ %i.gt, %bytestream2_get_le32.exit ], [ %i.am, %bb.o ]
  %.4 = phi i32 [ %i.gu, %bytestream2_get_le32.exit ], [ %i.an, %bb.o ]
  %i.gw = shl nuw nsw i64 %.sink, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %.sink236, i64 %i.gw
  store i32 %.1106.sink, ptr %i.gx, align 1, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gy = load i64, ptr %i.y, align 8, !tbaa !55
  %i.gz = lshr i64 %i.gy, 2
  %.not = icmp samesign ult i64 %i.gz, %indvars.iv.next
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 2
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !66

.loopexit.sink.split:                             ; preds = %bytestream2_get_le16.exit, %bytestream2_get_byte.exit, %bytestream2_get_le16.exit153, %bytestream2_get_byte.exit148, %bytestream2_get_le16.exit155, %bytestream2_get_byte.exit150
  %.lcssa.sink = phi i64 [ %i.ep, %bytestream2_get_byte.exit ], [ %indvars.iv215, %bytestream2_get_le16.exit153 ], [ %indvars.iv215, %bytestream2_get_byte.exit148 ], [ %indvars.iv215, %bytestream2_get_le16.exit155 ], [ %indvars.iv215, %bytestream2_get_byte.exit150 ], [ %i.ep, %bytestream2_get_le16.exit ]
  %.0.i151.lcssa.sink = phi i32 [ %.0.i146, %bytestream2_get_byte.exit ], [ %.0.i152, %bytestream2_get_le16.exit153 ], [ %.0.i147, %bytestream2_get_byte.exit148 ], [ %.0.i154, %bytestream2_get_le16.exit155 ], [ %.0.i149, %bytestream2_get_byte.exit150 ], [ %.0.i151, %bytestream2_get_le16.exit ]
  %i.ha = trunc nuw nsw i64 %.lcssa.sink to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.0.i151.lcssa.sink, i32 noundef %i.ha) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.q, %bb.ad, %bb.aq, %.loopexit.sink.split, %bytestream2_get_le32.exit143
  %.0112 = phi i32 [ -1094995529, %.loopexit.sink.split ], [ 0, %bytestream2_get_le32.exit143 ], [ 0, %bb.aq ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.f ], [ -1094995529, %bb.q ]
  ret i32 %.0112
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @dxv_decompress_dxt5(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 60 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 17 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le32.exit298

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.k, ptr %i.c, align 8, !tbaa !42
  %i.l = load i32, ptr %i.f, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit298

bytestream2_get_le32.exit298:                     ; preds = %bb.b, %bb.c
  %.0.i297 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 22 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  store i32 %.0.i297, ptr %i.n, align 1, !tbaa !43
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp slt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bytestream2_get_le32.exit298
  store ptr %i.o, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le32.exit296

bb.e:                                             ; preds = %bytestream2_get_le32.exit298
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.u, ptr %i.c, align 8, !tbaa !42
  %i.v = load i32, ptr %i.p, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit296

bytestream2_get_le32.exit296:                     ; preds = %bb.d, %bb.e
  %.0.i295 = phi i32 [ 0, %bb.d ], [ %i.v, %bb.e ]
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %.0.i295, ptr %i.x, align 1, !tbaa !43
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp slt i64 %i.ac, 4
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bytestream2_get_le32.exit296
  store ptr %i.y, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le32.exit294

bb.g:                                             ; preds = %bytestream2_get_le32.exit296
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !42
  %i.af = load i32, ptr %i.z, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit294

bytestream2_get_le32.exit294:                     ; preds = %bb.f, %bb.g
  %.0.i293 = phi i32 [ 0, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.0.i293, ptr %i.ah, align 1, !tbaa !43
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp slt i64 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bytestream2_get_le32.exit294
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !36
  br label %bytestream2_get_le32.exit292

bb.i:                                             ; preds = %bytestream2_get_le32.exit294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !42
  %i.ap = load i32, ptr %i.aj, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit292

bytestream2_get_le32.exit292:                     ; preds = %bb.h, %bb.i
  %.0.i291 = phi i32 [ 0, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %.0.i291, ptr %i.ar, align 1, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 7 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %.not431440 = icmp ult i64 %i.at, 24
  br i1 %.not431440, label %.loopexit356, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bytestream2_get_le32.exit292
  %i.au = lshr i64 %i.at, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %i.av = phi i64 [ %i.au, %.lr.ph.preheader ], [ %.be, %.lr.ph.backedge ]
  %i.aw = phi i32 [ 6, %.lr.ph.preheader ], [ %.be709, %.lr.ph.backedge ] ; 14 uses
  %.0218435 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0218435.be, %.lr.ph.backedge ] ; 2 uses
  %.0221434 = phi i32 [ 4, %.lr.ph.preheader ], [ %.0221434.be, %.lr.ph.backedge ] ; 14 uses
  %.0225433 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0225433.be, %.lr.ph.backedge ] ; 3 uses
  %.0237432 = phi i32 [ undef, %.lr.ph.preheader ], [ %.0237432.be, %.lr.ph.backedge ] ; 2 uses
  %.not267 = icmp eq i32 %.0218435, 0
  br i1 %.not267, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ax = add nsw i32 %.0218435, -1
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !57  ; 2 uses
  %i.az = shl i32 %.0221434, 2                    ; 4 uses
  %i.ba = add i32 %i.az, -16
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !43
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 1, !tbaa !43
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !57  ; 2 uses
  %i.bh = add i32 %i.az, -12
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !43
  %i.bl = add i32 %i.az, 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 1, !tbaa !43
  br label %bb.ab

bb.k:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !39  ; 6 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !36  ; 4 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 10 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp slt i32 %i.bt, 1
  br i1 %i.bu, label %.loopexit356, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp eq i32 %.0225433, 0
  br i1 %i.bv, label %bb.m, label %bytestream2_get_le32.exit290

bb.m:                                             ; preds = %bb.l
  %i.bw = icmp slt i64 %i.bs, 4
  br i1 %i.bw, label %bytestream2_get_le32.exit290.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !42
  %i.by = load i32, ptr %i.bp, align 1, !tbaa !43
  br label %bytestream2_get_le32.exit290

bytestream2_get_le32.exit290:                     ; preds = %bb.n, %bb.l
  %i.bz = phi ptr [ %i.bp, %bb.l ], [ %i.bx, %bb.n ] ; 8 uses
  %.1238 = phi i32 [ %.0237432, %bb.l ], [ %i.by, %bb.n ] ; 2 uses
  %.1226 = phi i32 [ %.0225433, %bb.l ], [ 16, %bb.n ]
  %i.ca = and i32 %.1238, 3
  %i.cb = lshr i32 %.1238, 2                      ; 4 uses
  %i.cc = add nsw i32 %.1226, -1                  ; 4 uses
  %.pre530 = ptrtoint ptr %i.bz to i64            ; 4 uses
  switch i32 %i.ca, label %bytestream2_get_le32.exit290.unreachabledefault [
    i32 0, label %bytestream2_get_le32.exit290.thread
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.w
  ]

end_hunk_0
