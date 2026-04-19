inline.NumInlined: 10
begin_hunk_0_@add_y_list:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bo
  %.0225 = phi ptr [ %i.b, %.lr.ph ], [ %i.ko, %bb.bo ] ; 14 uses
  %.086224 = phi ptr [ undef, %.lr.ph ], [ %.1, %bb.bo ] ; 9 uses
  %.087223 = phi ptr [ undef, %.lr.ph ], [ %.188, %bb.bo ] ; 2 uses
  %.089222 = phi i32 [ undef, %.lr.ph ], [ %.090, %bb.bo ] ; 2 uses
  %.091221 = phi ptr [ undef, %.lr.ph ], [ %.0225, %bb.bo ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0225, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55
  %cond = icmp eq i32 %i.n, 0
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0225, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %bb.bo

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0225, i64 24 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0225, i64 32 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.091221, i64 24 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.091221, i64 32 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59   ; 8 uses
  %i.w = load i64, ptr %i.t, align 8, !tbaa !60   ; 3 uses
  %i.x = icmp sgt i64 %i.w, %i.f
end_hunk_0
begin_hunk_1_@add_y_list:bb.a

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.e
  %i.aj = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.g ], [ %i.ai, %bb.i ], [ 0, %bb.h ] ; 10 uses
  %i.ak = icmp sgt i32 %i.aj, %.089222
  br i1 %i.ak, label %bb.k, label %bb.ac

bb.k:                                             ; preds = %bb.j
  %.not103 = icmp eq i32 %.089222, 0
  br i1 %.not103, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %.091221, align 8, !tbaa !61 ; 2 uses
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !39  ; 26 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %i.an, ptr %i.j, align 8, !tbaa !39
end_hunk_1
begin_hunk_2_@add_y_list:bb.a
  store i64 %i.cj, ptr %i.co, align 8, !tbaa !64
  store <2 x i64> %i.cq, ptr %i.cp, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store ptr %.0225, ptr %i.cx, align 8, !tbaa !66
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !67  ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.v, label %bb.w
end_hunk_2
begin_hunk_3_@add_y_list:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %bb.t, %add_y_line.exit120, %bb.j
  %i.eb = icmp eq ptr %.0225, %.087223
  br i1 %i.eb, label %bb.ad, label %bb.bo

bb.ad:                                            ; preds = %bb.ac
end_hunk_3
begin_hunk_4_@add_y_list:bb.a
  br i1 %.not105, label %bb.bf, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %.086224, i64 32 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !75 ; 3 uses
  %i.ef = load i64, ptr %i.q, align 8, !tbaa !60  ; 3 uses
  %i.eg = icmp sgt i64 %i.ef, %i.f
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.086224, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !76
  %i.ej = icmp sgt i64 %i.ei, %i.f
  br i1 %i.ej, label %bb.ak, label %bb.ag
end_hunk_4
begin_hunk_5_@add_y_list:bb.a
  store i64 %i.ey, ptr %i.fd, align 8, !tbaa !64
  store <2 x i64> %i.ff, ptr %i.fe, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  store ptr %.091221, ptr %i.fm, align 8, !tbaa !66
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !67  ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.am, label %bb.an
end_hunk_5
begin_hunk_6_@add_y_list:bb.a
  %i.gs = load ptr, ptr %i.j, align 8, !tbaa !39  ; 27 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  store ptr %i.gt, ptr %i.j, align 8, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %.086224, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !60 ; 4 uses
  %i.gw = load i64, ptr %i.ed, align 8, !tbaa !59 ; 2 uses
  %i.gx = load i64, ptr %i.q, align 8, !tbaa !60  ; 4 uses
end_hunk_6
begin_hunk_7_@add_y_list:bb.a
  %.sink116.i132 = phi i64 [ %i.gv, %bb.aw ], [ %i.gx, %bb.av ]
  %.sink114.i133 = phi i64 [ %i.gx, %bb.aw ], [ %i.gv, %bb.av ]
  %.sink113.i134 = phi i64 [ %i.gy, %bb.aw ], [ %i.gw, %bb.av ]
  %.sink.i135 = phi ptr [ %.0225, %bb.aw ], [ %.086224, %bb.av ]
  %i.hf = tail call i64 @llvm.abs.i64(i64 %.sink137.i130, i1 true)
  %i.hg = or i64 %i.hf, 1
  %i.hh = udiv i64 2147483647, %i.hg
end_hunk_7
begin_hunk_8_@add_y_list:bb.a
  store i64 %i.iv, ptr %i.ja, align 8, !tbaa !64
  store <2 x i64> %i.jc, ptr %i.jb, align 8, !tbaa !64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  store ptr %.091221, ptr %i.jj, align 8, !tbaa !66
  %i.jk = load ptr, ptr %i.k, align 8, !tbaa !67  ; 4 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.bh, label %bb.bi
end_hunk_8
begin_hunk_9_@add_y_list:bb.a
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ac, %bb.bf, %add_y_line.exit159, %bb.at, %add_y_line.exit144, %bb.c
  %.090 = phi i32 [ 0, %bb.c ], [ %i.aj, %add_y_line.exit144 ], [ %i.aj, %bb.at ], [ -1, %add_y_line.exit159 ], [ %i.aj, %bb.bf ], [ %i.aj, %bb.ac ]
  %.188 = phi ptr [ %i.p, %bb.c ], [ %.0225, %add_y_line.exit144 ], [ %.0225, %bb.at ], [ %.0225, %add_y_line.exit159 ], [ %.0225, %bb.bf ], [ %.087223, %bb.ac ]
  %.1 = phi ptr [ %.0225, %bb.c ], [ %.086224, %add_y_line.exit144 ], [ %.086224, %bb.at ], [ %.086224, %add_y_line.exit159 ], [ %.086224, %bb.bf ], [ %.086224, %bb.ac ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.0225, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !77 ; 2 uses
  %.not = icmp eq ptr %i.ko, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !78
end_hunk_9
begin_hunk_10_@fill_loop:bb.a

.preheader247:                                    ; preds = %.preheader247.lr.ph, %bb.bg
  %.0284 = phi ptr [ %i.c, %.preheader247.lr.ph ], [ %.1251, %bb.bg ] ; 2 uses
  %.0175283 = phi i64 [ %i.f, %.preheader247.lr.ph ], [ %.1176, %bb.bg ] ; 3 uses
  %.0178282 = phi i64 [ undef, %.preheader247.lr.ph ], [ %.3, %bb.bg ] ; 2 uses
  %.0181281 = phi i64 [ undef, %.preheader247.lr.ph ], [ %.3184, %bb.bg ] ; 2 uses
  %.0199280 = phi ptr [ undef, %.preheader247.lr.ph ], [ %.2201, %bb.bg ] ; 2 uses
  %.not212257 = icmp eq ptr %.0284, null
  br i1 %.not212257, label %.critedge, label %.lr.ph

end_hunk_10
begin_hunk_11_@fill_loop:bb.a
  %.1258 = phi ptr [ %i.q, %insert_x_new.exit ], [ %.0284, %.preheader247 ] ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1258, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !69   ; 3 uses
  %i.o = icmp eq i64 %i.n, %.0175283
  br i1 %i.o, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph
end_hunk_11
begin_hunk_12_@fill_loop:bb.a

.preheader:                                       ; preds = %.thread236
  %.2198271 = load ptr, ptr %i.g, align 8, !tbaa !70 ; 2 uses
  %.not215272 = icmp eq ptr %.2198271, %.1195
  br i1 %.not215272, label %._crit_edge, label %.lr.ph274

.preheader246:                                    ; preds = %.lr.ph263, %.thread236
  %.2187270 = phi i64 [ %.4.a, %.thread236 ], [ %spec.select, %.lr.ph263 ] ; 5 uses
  %.0191269 = phi i32 [ %.1192, %.thread236 ], [ 0, %.lr.ph263 ] ; 5 uses
  %.0193268 = phi i64 [ %.0190, %.thread236 ], [ -2147483648, %.lr.ph263 ] ; 2 uses
  %.0194267 = phi ptr [ %.1195, %.thread236 ], [ %.0196259, %.lr.ph263 ] ; 2 uses
  %.1197266 = phi ptr [ %i.fa, %.thread236 ], [ %.0196259, %.lr.ph263 ] ; 15 uses
  %.1200265 = phi ptr [ %.1197266, %.thread236 ], [ %.0199280, %.lr.ph263 ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1197266, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1197266, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !87 ; 6 uses
  %i.aw = icmp eq i64 %.2187270, %i.av
  br i1 %i.aw, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.preheader246
  %i.ax = getelementptr inbounds nuw i8, ptr %.1197266, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %.not225 = icmp sgt i64 %.2187270, %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %.1197266, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !69 ; 4 uses
  %i.bb = sub nsw i64 %.2187270, %i.ba            ; 2 uses
  br i1 %.not225, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.bd = load i64, ptr %.1197266, align 8, !tbaa !81 ; 2 uses
  %i.be = sub nsw i64 %i.bc, %i.bd
  %i.bf = mul nsw i64 %i.be, %i.bb
  %i.bg = sub nsw i64 %i.av, %i.ba
end_hunk_12
begin_hunk_13_@fill_loop:bb.a
bb.k:                                             ; preds = %bb.i
  %i.bi = sitofp i64 %i.bb to double
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.bk = load i64, ptr %.1197266, align 8, !tbaa !81 ; 2 uses
  %i.bl = sub nsw i64 %i.bj, %i.bk
  %i.bm = sitofp i64 %i.bl to double
  %i.bn = fmul nnan double %i.bi, %i.bm
end_hunk_13
begin_hunk_14_@fill_loop:bb.a

bb.l:                                             ; preds = %.preheader246
  %i.bs = load i64, ptr %i.at, align 8, !tbaa !83 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1197266, i64 48 ; 2 uses
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !89
  %i.bu = icmp slt i64 %i.bs, %.0193268
  br i1 %i.bu, label %._crit_edge293, label %bb.z

._crit_edge293:                                   ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1197266, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  %.pre294 = load i64, ptr %.1197266, align 8, !tbaa !81
  br label %bb.m

.thread235:                                       ; preds = %bb.j, %bb.k
end_hunk_14
begin_hunk_15_@fill_loop:bb.a
  %i.bw = phi i64 [ %i.bd, %bb.j ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bx = phi i64 [ %i.bh, %bb.j ], [ %i.br, %bb.k ]
  %i.by = add nsw i64 %i.bw, %i.bx                ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1197266, i64 48 ; 2 uses
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !89
  %i.ca = icmp slt i64 %i.by, %.0193268
  br i1 %i.ca, label %bb.m, label %.thread236

bb.m:                                             ; preds = %._crit_edge293, %.thread235
end_hunk_15
begin_hunk_16_@fill_loop:bb.a
  %i.cc = phi i64 [ %i.bw, %.thread235 ], [ %.pre294, %._crit_edge293 ] ; 3 uses
  %i.cd = phi i64 [ %i.ba, %.thread235 ], [ %.pre, %._crit_edge293 ] ; 3 uses
  %i.ce = phi ptr [ %i.bz, %.thread235 ], [ %i.bt, %._crit_edge293 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1200265, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.1200265, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !87 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1200265, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !69 ; 3 uses
  %i.ck = sub nsw i64 %i.ch, %i.cj                ; 2 uses
  %i.cl = sitofp i64 %i.ck to double              ; 3 uses
  %i.cm = sub nsw i64 %i.av, %i.cd                ; 2 uses
  %i.cn = sitofp i64 %i.cm to double              ; 3 uses
  %i.co = load i64, ptr %.1200265, align 8, !tbaa !81 ; 3 uses
  %i.cp = sitofp i64 %i.co to double
  %i.cq = sitofp i64 %i.ch to double
  %i.cr = sitofp i64 %i.cj to double
end_hunk_16
begin_hunk_17_@fill_loop:bb.a
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.di, double %i.cl, double %i.dm)
  %i.do = fdiv double %i.dg, %i.dn
  %i.dp = fptosi double %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.1200265, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %.1197266, i64 32
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.m
end_hunk_17
begin_hunk_18_@fill_loop:bb.a
  br i1 %.not228, label %bb.n, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %.1200265, i64 48
  store i64 %i.ed, ptr %i.er, align 8, !tbaa !89
  store i64 %i.ep, ptr %i.ce, align 8, !tbaa !89
  %i.es = add nsw i32 %.0191269, 4
  %i.et = trunc i32 %.0191269 to i16              ; 2 uses
  %i.eu = add i16 %i.et, 7
  %i.ev = getelementptr inbounds nuw i8, ptr %.1200265, i64 70
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !90
  %i.ew = add i16 %i.et, 5
  br label %.thread236

bb.z:                                             ; preds = %bb.l
  %i.ex = trunc i32 %.0191269 to i16
  br label %.thread236

.thread236:                                       ; preds = %.thread235, %bb.z, %bb.y
  %.sink = phi i16 [ %i.ex, %bb.z ], [ %i.ew, %bb.y ], [ -2, %.thread235 ]
  %.1195 = phi ptr [ %.0194267, %bb.z ], [ %.1200265, %bb.y ], [ %.0194267, %.thread235 ] ; 3 uses
  %.1192 = phi i32 [ %.0191269, %bb.z ], [ %i.es, %bb.y ], [ %.0191269, %.thread235 ] ; 2 uses
  %.0190 = phi i64 [ %i.bs, %bb.z ], [ %i.ep, %bb.y ], [ %i.by, %.thread235 ]
  %.4.a = phi i64 [ %.2187270, %bb.z ], [ %.3188, %bb.y ], [ %.2187270, %.thread235 ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1197266, i64 70
  store i16 %.sink, ptr %i.ey, align 2, !tbaa !90
  %i.ez = getelementptr inbounds nuw i8, ptr %.1197266, i64 80
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !70 ; 2 uses
  %.not214.a = icmp eq ptr %i.fa, null
  br i1 %.not214.a, label %.preheader, label %.preheader246, !llvm.loop !91
end_hunk_18
begin_hunk_19_@fill_loop:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %.2198273, i64 16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.2198273, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !87 ; 3 uses
  %i.fe = icmp eq i64 %.4.a, %i.fd
  br i1 %i.fe, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph274
end_hunk_19
begin_hunk_20_@fill_loop:bb.a
bb.ab:                                            ; preds = %.lr.ph274
  %i.fg = getelementptr inbounds nuw i8, ptr %.2198273, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !65
  %.not224 = icmp sgt i64 %.4.a, %i.fh
  %i.fi = getelementptr inbounds nuw i8, ptr %.2198273, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !69 ; 3 uses
  %i.fk = sub nsw i64 %.4.a, %i.fj                ; 2 uses
  br i1 %.not224, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
end_hunk_20
begin_hunk_21_@fill_loop:bb.a
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !89
  %i.gg = getelementptr inbounds nuw i8, ptr %.2198273, i64 80
  %.2198 = load ptr, ptr %i.gg, align 8, !tbaa !70 ; 2 uses
  %.not215.a = icmp eq ptr %.2198, %.1195
  br i1 %.not215.a, label %._crit_edge, label %.lr.ph274, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.af, %.preheader
  %i.gh = sub nsw i64 %.4.a, %.0175283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.gi = load i32, ptr %i.j, align 8, !tbaa !48
end_hunk_21
begin_hunk_22_@fill_loop:bb.a

bb.ag:                                            ; preds = %._crit_edge, %swap_group.exit
  %i.gj = phi i32 [ 0, %._crit_edge ], [ %i.hy, %swap_group.exit ]
  %.1179278 = phi i64 [ %.0178282, %._crit_edge ], [ %.2180, %swap_group.exit ] ; 6 uses
  %.1182277 = phi i64 [ %.0181281, %._crit_edge ], [ %.2183, %swap_group.exit ] ; 6 uses
  %.0189276 = phi ptr [ %.0196259, %._crit_edge ], [ %i.gp, %swap_group.exit ] ; 17 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0189276, i64 40 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !82 ; 2 uses
end_hunk_22
begin_hunk_23_@fill_loop:bb.a
  %i.hi = add nsw i64 %.1179278, %5
  %.neg245 = sub i64 %.neg285, %.1179278
  %i.hj = add i64 %.neg245, %i.gn
  %i.hk = tail call i32 (i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ...) @gz_fill_trapezoid_fixed(i64 noundef %i.hg, i64 noundef %i.hh, i64 noundef %.0175283, i64 noundef %i.hi, i64 noundef %i.hj, i64 noundef %i.gh, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.an

bb.al:                                            ; preds = %bb.ah, %bb.ag
end_hunk_23
begin_hunk_24_@fill_loop:bb.a

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj, %bb.ak
  %i.hy = phi i32 [ %i.hc, %bb.aj ], [ %i.hc, %bb.ak ], [ %i.ht, %bb.al ], [ %i.ht, %bb.am ]
  %.2183 = phi i64 [ %.1182277, %bb.aj ], [ %.1182277, %bb.ak ], [ %.1182277, %bb.al ], [ %spec.select229, %bb.am ] ; 2 uses
  %.2180 = phi i64 [ %.1179278, %bb.aj ], [ %.1179278, %bb.ak ], [ %.1179278, %bb.al ], [ %spec.select230, %bb.am ] ; 2 uses
  store i64 %i.gn, ptr %i.gk, align 8, !tbaa !82
  %i.hz = getelementptr inbounds nuw i8, ptr %.0189276, i64 70
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !90
end_hunk_24
begin_hunk_25_@fill_loop:bb.a

bb.bg:                                            ; preds = %.critedge.thread, %bb.bf
  %.1251 = phi ptr [ %.1252, %bb.bf ], [ %.1258, %.critedge.thread ]
  %.2201 = phi ptr [ %.1197266, %bb.bf ], [ %.0199280, %.critedge.thread ]
  %.3184 = phi i64 [ %.2183, %bb.bf ], [ %.0181281, %.critedge.thread ]
  %.3 = phi i64 [ %.2180, %bb.bf ], [ %.0178282, %.critedge.thread ]
  %.1176 = phi i64 [ %.4.a, %bb.bf ], [ %i.n, %.critedge.thread ] ; 2 uses
  %.not = icmp slt i64 %.1176, %.sroa.3.0.copyload
  br i1 %.not, label %.preheader247, label %.thread237

end_hunk_25
