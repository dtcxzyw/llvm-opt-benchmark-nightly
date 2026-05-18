inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@h2v2_merged_upsample:bb.a
  br i1 %.not127.i74, label %extrgb_h2v2_merged_upsample_internal.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge183
  %i.ala = load i8, ptr %.0122.i70.lcssa, align 1, !tbaa !36
  %i.alb = load i8, ptr %.0121.i71.lcssa, align 1, !tbaa !36
  %i.alc = zext i8 %i.alb to i64                  ; 2 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.alc
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !3 ; 2 uses
  %i.alf = zext i8 %i.ala to i64                  ; 2 uses
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.alf
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !62
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.alc
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !62
  %i.alk = add nsw i64 %i.alj, %i.alh
  %i.all = lshr i64 %i.alk, 16
  %i.alm = trunc i64 %i.all to i32                ; 2 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.alf
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !3 ; 2 uses
  %i.alp = load i8, ptr %.0124.i68.lcssa, align 1, !tbaa !36
  %i.alq = zext i8 %i.alp to i32                  ; 3 uses
  %i.alr = add nsw i32 %i.ale, %i.alq
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds i8, ptr %i.f, i64 %i.als
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !36
  store i8 %i.alu, ptr %.0126.i66.lcssa, align 1, !tbaa !36
  %i.alv = add nsw i32 %i.alq, %i.alm
  %i.alw = sext i32 %i.alv to i64
  %i.alx = getelementptr inbounds i8, ptr %i.f, i64 %i.alw
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !36
  %i.alz = getelementptr inbounds nuw i8, ptr %.0126.i66.lcssa, i64 1
  store i8 %i.aly, ptr %i.alz, align 1, !tbaa !36
  %i.ama = add nsw i32 %i.alo, %i.alq
  %i.amb = sext i32 %i.ama to i64
  %i.amc = getelementptr inbounds i8, ptr %i.f, i64 %i.amb
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !36
  %i.ame = getelementptr inbounds nuw i8, ptr %.0126.i66.lcssa, i64 2
  store i8 %i.amd, ptr %i.ame, align 1, !tbaa !36
  %i.amf = load i8, ptr %.0123.i69.lcssa, align 1, !tbaa !36
  %i.amg = zext i8 %i.amf to i32                  ; 3 uses
  %i.amh = add nsw i32 %i.ale, %i.amg
  %i.ami = sext i32 %i.amh to i64
  %i.amj = getelementptr inbounds i8, ptr %i.f, i64 %i.ami
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !36
  store i8 %i.amk, ptr %.0125.i67.lcssa, align 1, !tbaa !36
  %i.aml = add nsw i32 %i.amg, %i.alm
  %i.amm = sext i32 %i.aml to i64
  %i.amn = getelementptr inbounds i8, ptr %i.f, i64 %i.amm
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !36
  %i.amp = getelementptr inbounds nuw i8, ptr %.0125.i67.lcssa, i64 1
  store i8 %i.amo, ptr %i.amp, align 1, !tbaa !36
  %i.amq = add nsw i32 %i.alo, %i.amg
  %i.amr = sext i32 %i.amq to i64
  %i.ams = getelementptr inbounds i8, ptr %i.f, i64 %i.amr
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !36
  %i.amu = getelementptr inbounds nuw i8, ptr %.0125.i67.lcssa, i64 2
  store i8 %i.amt, ptr %i.amu, align 1, !tbaa !36
  br label %extrgb_h2v2_merged_upsample_internal.exit

extrgb_h2v2_merged_upsample_internal.exit:        ; preds = %bb.o, %._crit_edge183, %bb.m, %._crit_edge, %bb.k, %._crit_edge98, %bb.i, %._crit_edge115, %bb.g, %._crit_edge132, %bb.e, %._crit_edge149, %bb.c, %._crit_edge166
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_merged_upsample_565D(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load i32, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.o = and i32 %i.n, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = add i32 %i.n, 1
  %i.t = and i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62   ; 2 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.y = shl i32 %2, 1                            ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %i.ac = or disjoint i32 %i.y, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = zext i32 %2 to i64                      ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ai
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68 ; 2 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.at = load i32, ptr %i.as, align 8, !tbaa !47 ; 2 uses
  %i.au = lshr i32 %i.at, 1                       ; 2 uses
  %.not.i7 = icmp eq i32 %i.au, 0
  br i1 %.not.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i16 = phi i64 [ %i.fo, %.lr.ph ], [ %i.w, %bb.a ] ; 2 uses
  %.0161.i15 = phi i64 [ %i.de, %.lr.ph ], [ %i.r, %bb.a ] ; 2 uses
  %.0162.i14 = phi i32 [ %i.gg, %.lr.ph ], [ %i.au, %bb.a ]
  %.0163.i13 = phi ptr [ %i.ax, %.lr.ph ], [ %i.ao, %bb.a ] ; 2 uses
  %.0164.i12 = phi ptr [ %i.av, %.lr.ph ], [ %i.ak, %bb.a ] ; 2 uses
  %.0165.i11 = phi ptr [ %i.et, %.lr.ph ], [ %i.af, %bb.a ] ; 3 uses
  %.0166.i10 = phi ptr [ %i.cj, %.lr.ph ], [ %i.ab, %bb.a ] ; 3 uses
  %.0167.i9 = phi ptr [ %i.gf, %.lr.ph ], [ %i.ar, %bb.a ] ; 2 uses
  %.0168.i8 = phi ptr [ %i.dv, %.lr.ph ], [ %i.ap, %bb.a ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0164.i12, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.0164.i12, align 1, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %.0163.i13, i64 1 ; 2 uses
  %i.ay = load i8, ptr %.0163.i13, align 1, !tbaa !36
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 4 uses
  %i.bc = zext i8 %i.aw to i64                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.az
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !62
  %i.bh = add nsw i64 %i.bg, %i.be
  %i.bi = lshr i64 %i.bh, 16
  %i.bj = trunc i64 %i.bi to i32                  ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bc
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0166.i10, i64 1
  %i.bn = load i8, ptr %.0166.i10, align 1, !tbaa !36
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = add nsw i32 %i.bb, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = and i64 %.0161.i15, 255                 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 %i.br   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !36
  %i.bv = add nsw i32 %i.bo, %i.bj
  %i.bw = sext i32 %i.bv to i64
  %i.bx = lshr i64 %i.br, 1
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = add nsw i32 %i.bl, %i.bo
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.bs, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !36
  %i.cf = shl nuw nsw i64 %i.br, 24
  %i.cg = lshr i64 %.0161.i15, 8                  ; 2 uses
  %i.ch = and i64 %i.cg, 16776960
  %i.ci = or disjoint i64 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.0166.i10, i64 2 ; 2 uses
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !36
  %i.cl = zext i8 %i.ck to i32                    ; 3 uses
  %i.cm = add nsw i32 %i.bb, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = and i64 %i.cg, 255                      ; 3 uses
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.co   ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cn
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !36
  %i.cs = add nsw i32 %i.cl, %i.bj
  %i.ct = sext i32 %i.cs to i64
  %i.cu = lshr i64 %i.co, 1
  %i.cv = getelementptr i8, ptr %i.d, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !36
  %i.cy = add nsw i32 %i.bl, %i.cl
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.cp, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !36
  %i.dc = shl nuw nsw i64 %i.co, 24
  %i.dd = lshr exact i64 %i.ci, 8
  %i.de = or disjoint i64 %i.dd, %i.dc            ; 2 uses
  %i.df = zext i8 %i.cr to i16
  %i.dg = zext i8 %i.ca to i16
  %i.dh = zext i8 %i.cx to i16
  %i.di = zext i8 %i.bu to i16
  %i.dj = insertelement <2 x i16> poison, i16 %i.dg, i64 0
  %i.dk = insertelement <2 x i16> %i.dj, i16 %i.df, i64 1
  %i.dl = shl nuw <2 x i16> %i.dk, <i16 3, i16 8>
  %i.dm = and <2 x i16> %i.dl, <i16 2016, i16 -2048>
  %i.dn = insertelement <2 x i16> poison, i16 %i.di, i64 0
  %i.do = insertelement <2 x i16> %i.dn, i16 %i.dh, i64 1
  %i.dp = shl nuw <2 x i16> %i.do, <i16 8, i16 3>
  %i.dq = and <2 x i16> %i.dp, <i16 -2048, i16 2016>
  %i.dr = or disjoint <2 x i16> %i.dq, %i.dm
  %4 = insertelement <2 x i8> poison, i8 %i.ce, i64 0
  %i.ds = insertelement <2 x i8> %4, i8 %i.db, i64 1
  %5 = lshr <2 x i8> %i.ds, splat (i8 3)
  %i.dt = zext nneg <2 x i8> %5 to <2 x i16>
  %i.du = or disjoint <2 x i16> %i.dr, %i.dt
  store <2 x i16> %i.du, ptr %.0168.i8, align 2, !tbaa !79
  %i.dv = getelementptr inbounds nuw i8, ptr %.0168.i8, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0165.i11, i64 1
  %i.dx = load i8, ptr %.0165.i11, align 1, !tbaa !36
  %i.dy = zext i8 %i.dx to i32                    ; 3 uses
  %i.dz = add nsw i32 %i.bb, %i.dy
  %i.ea = sext i32 %i.dz to i64
  %i.eb = and i64 %.0.i16, 255                    ; 3 uses
  %i.ec = getelementptr i8, ptr %i.d, i64 %i.eb   ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.ea
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !36
  %i.ef = add nsw i32 %i.dy, %i.bj
  %i.eg = sext i32 %i.ef to i64
  %i.eh = lshr i64 %i.eb, 1
  %i.ei = getelementptr i8, ptr %i.d, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !36
  %i.el = add nsw i32 %i.bl, %i.dy
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr i8, ptr %i.ec, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !36
  %i.ep = shl nuw nsw i64 %i.eb, 24
  %i.eq = lshr i64 %.0.i16, 8                     ; 2 uses
  %i.er = and i64 %i.eq, 16776960
  %i.es = or disjoint i64 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.0165.i11, i64 2 ; 2 uses
  %i.eu = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.ev = zext i8 %i.eu to i32                    ; 3 uses
  %i.ew = add nsw i32 %i.bb, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = and i64 %i.eq, 255                      ; 3 uses
  %i.ez = getelementptr i8, ptr %i.d, i64 %i.ey   ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !36
  %i.fc = add nsw i32 %i.ev, %i.bj
  %i.fd = sext i32 %i.fc to i64
  %i.fe = lshr i64 %i.ey, 1
  %i.ff = getelementptr i8, ptr %i.d, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fd
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !36
  %i.fi = add nsw i32 %i.bl, %i.ev
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.ez, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !36
  %i.fm = shl nuw nsw i64 %i.ey, 24
  %i.fn = lshr exact i64 %i.es, 8
  %i.fo = or disjoint i64 %i.fn, %i.fm            ; 2 uses
  %i.fp = zext i8 %i.fb to i16
  %i.fq = zext i8 %i.ek to i16
  %i.fr = zext i8 %i.fh to i16
  %i.fs = zext i8 %i.ee to i16
  %i.ft = insertelement <2 x i16> poison, i16 %i.fq, i64 0
  %i.fu = insertelement <2 x i16> %i.ft, i16 %i.fp, i64 1
  %i.fv = shl nuw <2 x i16> %i.fu, <i16 3, i16 8>
  %i.fw = and <2 x i16> %i.fv, <i16 2016, i16 -2048>
  %i.fx = insertelement <2 x i16> poison, i16 %i.fs, i64 0
  %i.fy = insertelement <2 x i16> %i.fx, i16 %i.fr, i64 1
  %i.fz = shl nuw <2 x i16> %i.fy, <i16 8, i16 3>
  %i.ga = and <2 x i16> %i.fz, <i16 -2048, i16 2016>
  %i.gb = or disjoint <2 x i16> %i.ga, %i.fw
  %6 = insertelement <2 x i8> poison, i8 %i.eo, i64 0
  %i.gc = insertelement <2 x i8> %6, i8 %i.fl, i64 1
  %7 = lshr <2 x i8> %i.gc, splat (i8 3)
  %i.gd = zext nneg <2 x i8> %7 to <2 x i16>
  %i.ge = or disjoint <2 x i16> %i.gb, %i.gd
  store <2 x i16> %i.ge, ptr %.0167.i9, align 2, !tbaa !79
  %i.gf = getelementptr inbounds nuw i8, ptr %.0167.i9, i64 4 ; 2 uses
  %i.gg = add nsw i32 %.0162.i14, -1              ; 2 uses
  %.not.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0168.i.lcssa = phi ptr [ %i.ap, %bb.a ], [ %i.dv, %.lr.ph ]
  %.0167.i.lcssa = phi ptr [ %i.ar, %bb.a ], [ %i.gf, %.lr.ph ]
  %.0166.i.lcssa = phi ptr [ %i.ab, %bb.a ], [ %i.cj, %.lr.ph ]
  %.0165.i.lcssa = phi ptr [ %i.af, %bb.a ], [ %i.et, %.lr.ph ]
  %.0164.i.lcssa = phi ptr [ %i.ak, %bb.a ], [ %i.av, %.lr.ph ]
  %.0163.i.lcssa = phi ptr [ %i.ao, %bb.a ], [ %i.ax, %.lr.ph ]
  %.0161.i.lcssa = phi i64 [ %i.r, %bb.a ], [ %i.de, %.lr.ph ]
  %.0.i.lcssa = phi i64 [ %i.w, %bb.a ], [ %i.fo, %.lr.ph ]
  %i.gh = and i32 %i.at, 1
  %.not169.i = icmp eq i32 %i.gh, 0
  br i1 %.not169.i, label %h2v2_merged_upsample_565D_le.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.gi = load i8, ptr %.0164.i.lcssa, align 1, !tbaa !36
  %i.gj = load i8, ptr %.0163.i.lcssa, align 1, !tbaa !36
  %i.gk = zext i8 %i.gj to i64                    ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3  ; 2 uses
  %i.gn = zext i8 %i.gi to i64                    ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !62
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gk
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !62
  %i.gs = add nsw i64 %i.gr, %i.gp
  %i.gt = lshr i64 %i.gs, 16
  %i.gu = trunc i64 %i.gt to i32                  ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.gn
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3  ; 2 uses
  %i.gx = load i8, ptr %.0166.i.lcssa, align 1, !tbaa !36
  %i.gy = zext i8 %i.gx to i32                    ; 3 uses
  %i.gz = add nsw i32 %i.gm, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = and i64 %.0161.i.lcssa, 255             ; 2 uses
  %i.hc = getelementptr i8, ptr %i.d, i64 %i.hb   ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.ha
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !36
  %i.hf = zext i8 %i.he to i16
  %i.hg = add nsw i32 %i.gy, %i.gu
  %i.hh = sext i32 %i.hg to i64
  %i.hi = lshr i64 %i.hb, 1
  %i.hj = getelementptr i8, ptr %i.d, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.hh
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !36
  %i.hm = zext i8 %i.hl to i16
  %i.hn = add nsw i32 %i.gw, %i.gy
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !36
  %i.hr = shl nuw i16 %i.hf, 8
  %i.hs = and i16 %i.hr, -2048
  %i.ht = shl nuw nsw i16 %i.hm, 3
  %i.hu = and i16 %i.ht, 2016
  %i.hv = or disjoint i16 %i.hu, %i.hs
  %i.hw = lshr i8 %i.hq, 3
  %i.hx = zext nneg i8 %i.hw to i16
  %i.hy = or disjoint i16 %i.hv, %i.hx
  store i16 %i.hy, ptr %.0168.i.lcssa, align 2, !tbaa !79
  %i.hz = load i8, ptr %.0165.i.lcssa, align 1, !tbaa !36
  %i.ia = zext i8 %i.hz to i32                    ; 3 uses
  %i.ib = add nsw i32 %i.gm, %i.ia
  %i.ic = sext i32 %i.ib to i64
  %i.id = and i64 %.0.i.lcssa, 255                ; 2 uses
  %i.ie = getelementptr i8, ptr %i.d, i64 %i.id   ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 %i.ic
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !36
  %i.ih = zext i8 %i.ig to i16
  %i.ii = add nsw i32 %i.ia, %i.gu
  %i.ij = sext i32 %i.ii to i64
  %i.ik = lshr i64 %i.id, 1
  %i.il = getelementptr i8, ptr %i.d, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.il, i64 %i.ij
  %i.in = load i8, ptr %i.im, align 1, !tbaa !36
  %i.io = zext i8 %i.in to i16
  %i.ip = add nsw i32 %i.gw, %i.ia
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr i8, ptr %i.ie, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !36
  %i.it = shl nuw i16 %i.ih, 8
  %i.iu = and i16 %i.it, -2048
  %i.iv = shl nuw nsw i16 %i.io, 3
  %i.iw = and i16 %i.iv, 2016
  %i.ix = or disjoint i16 %i.iw, %i.iu
  %i.iy = lshr i8 %i.is, 3
  %i.iz = zext nneg i8 %i.iy to i16
  %i.ja = or disjoint i16 %i.ix, %i.iz
  store i16 %i.ja, ptr %.0167.i.lcssa, align 2, !tbaa !79
  br label %h2v2_merged_upsample_565D_le.exit

h2v2_merged_upsample_565D_le.exit:                ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_merged_upsample_565(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.n = shl i32 %2, 1                            ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 2 uses
  %i.r = or disjoint i32 %i.n, 1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.x = zext i32 %2 to i64                       ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %.not.i7 = icmp eq i32 %i.aj, 0
  br i1 %.not.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i14 = phi i32 [ %i.er, %.lr.ph ], [ %i.aj, %bb.a ]
  %.0133.i13 = phi ptr [ %i.am, %.lr.ph ], [ %i.ad, %bb.a ] ; 2 uses
  %.0134.i12 = phi ptr [ %i.ak, %.lr.ph ], [ %i.z, %bb.a ] ; 2 uses
  %.0135.i11 = phi ptr [ %i.dl, %.lr.ph ], [ %i.u, %bb.a ] ; 3 uses
  %.0136.i10 = phi ptr [ %i.bq, %.lr.ph ], [ %i.q, %bb.a ] ; 3 uses
  %.0137.i9 = phi ptr [ %i.eq, %.lr.ph ], [ %i.ag, %bb.a ] ; 2 uses
  %.0138.i8 = phi ptr [ %i.cv, %.lr.ph ], [ %i.ae, %bb.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0134.i12, i64 1 ; 2 uses
  %i.al = load i8, ptr %.0134.i12, align 1, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %.0133.i13, i64 1 ; 2 uses
  %i.an = load i8, ptr %.0133.i13, align 1, !tbaa !36
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 4 uses
  %i.ar = zext i8 %i.al to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ao
  %i.av = load i64, ptr %i.au, align 8, !tbaa !62
  %i.aw = add nsw i64 %i.av, %i.at
  %i.ax = lshr i64 %i.aw, 16
  %i.ay = trunc i64 %i.ax to i32                  ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ar
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0136.i10, i64 1
  %i.bc = load i8, ptr %.0136.i10, align 1, !tbaa !36
  %i.bd = zext i8 %i.bc to i32                    ; 3 uses
  %i.be = add nsw i32 %i.aq, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.d, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bi = add nsw i32 %i.bd, %i.ay
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.d, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = add nsw i32 %i.ba, %i.bd
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.d, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %.0136.i10, i64 2 ; 2 uses
  %i.br = load i8, ptr %i.bb, align 1, !tbaa !36
  %i.bs = zext i8 %i.br to i32                    ; 3 uses
  %i.bt = add nsw i32 %i.aq, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.d, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !36
  %i.bx = add nsw i32 %i.bs, %i.ay
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = add nsw i32 %i.ba, %i.bs
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.d, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !36
  %i.cf = zext i8 %i.bw to i16
  %i.cg = zext i8 %i.bl to i16
  %i.ch = zext i8 %i.ca to i16
  %i.ci = zext i8 %i.bh to i16
  %i.cj = insertelement <2 x i16> poison, i16 %i.cg, i64 0
  %i.ck = insertelement <2 x i16> %i.cj, i16 %i.cf, i64 1
  %i.cl = shl nuw <2 x i16> %i.ck, <i16 3, i16 8>
  %i.cm = and <2 x i16> %i.cl, <i16 2016, i16 -2048>
  %i.cn = insertelement <2 x i16> poison, i16 %i.ci, i64 0
  %i.co = insertelement <2 x i16> %i.cn, i16 %i.ch, i64 1
  %i.cp = shl nuw <2 x i16> %i.co, <i16 8, i16 3>
  %i.cq = and <2 x i16> %i.cp, <i16 -2048, i16 2016>
  %i.cr = or disjoint <2 x i16> %i.cq, %i.cm
  %4 = insertelement <2 x i8> poison, i8 %i.bp, i64 0
  %i.cs = insertelement <2 x i8> %4, i8 %i.ce, i64 1
  %5 = lshr <2 x i8> %i.cs, splat (i8 3)
  %i.ct = zext nneg <2 x i8> %5 to <2 x i16>
  %i.cu = or disjoint <2 x i16> %i.cr, %i.ct
  store <2 x i16> %i.cu, ptr %.0138.i8, align 2, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %.0138.i8, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0135.i11, i64 1
  %i.cx = load i8, ptr %.0135.i11, align 1, !tbaa !36
  %i.cy = zext i8 %i.cx to i32                    ; 3 uses
  %i.cz = add nsw i32 %i.aq, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.d, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !36
  %i.dd = add nsw i32 %i.cy, %i.ay
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.d, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !36
  %i.dh = add nsw i32 %i.ba, %i.cy
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.d, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %.0135.i11, i64 2 ; 2 uses
  %i.dm = load i8, ptr %i.cw, align 1, !tbaa !36
  %i.dn = zext i8 %i.dm to i32                    ; 3 uses
  %i.do = add nsw i32 %i.aq, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.d, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !36
  %i.ds = add nsw i32 %i.dn, %i.ay
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.d, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %i.dw = add nsw i32 %i.ba, %i.dn
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.d, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !36
  %i.ea = zext i8 %i.dr to i16
  %i.eb = zext i8 %i.dg to i16
  %i.ec = zext i8 %i.dv to i16
  %i.ed = zext i8 %i.dc to i16
  %i.ee = insertelement <2 x i16> poison, i16 %i.eb, i64 0
  %i.ef = insertelement <2 x i16> %i.ee, i16 %i.ea, i64 1
  %i.eg = shl nuw <2 x i16> %i.ef, <i16 3, i16 8>
  %i.eh = and <2 x i16> %i.eg, <i16 2016, i16 -2048>
  %i.ei = insertelement <2 x i16> poison, i16 %i.ed, i64 0
  %i.ej = insertelement <2 x i16> %i.ei, i16 %i.ec, i64 1
  %i.ek = shl nuw <2 x i16> %i.ej, <i16 8, i16 3>
  %i.el = and <2 x i16> %i.ek, <i16 -2048, i16 2016>
  %i.em = or disjoint <2 x i16> %i.el, %i.eh
  %6 = insertelement <2 x i8> poison, i8 %i.dk, i64 0
  %i.en = insertelement <2 x i8> %6, i8 %i.dz, i64 1
  %7 = lshr <2 x i8> %i.en, splat (i8 3)
  %i.eo = zext nneg <2 x i8> %7 to <2 x i16>
  %i.ep = or disjoint <2 x i16> %i.em, %i.eo
  store <2 x i16> %i.ep, ptr %.0137.i9, align 2, !tbaa !79
  %i.eq = getelementptr inbounds nuw i8, ptr %.0137.i9, i64 4 ; 2 uses
  %i.er = add nsw i32 %.0.i14, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.er, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0138.i.lcssa = phi ptr [ %i.ae, %bb.a ], [ %i.cv, %.lr.ph ]
  %.0137.i.lcssa = phi ptr [ %i.ag, %bb.a ], [ %i.eq, %.lr.ph ]
  %.0136.i.lcssa = phi ptr [ %i.q, %bb.a ], [ %i.bq, %.lr.ph ]
  %.0135.i.lcssa = phi ptr [ %i.u, %bb.a ], [ %i.dl, %.lr.ph ]
  %.0134.i.lcssa = phi ptr [ %i.z, %bb.a ], [ %i.ak, %.lr.ph ]
  %.0133.i.lcssa = phi ptr [ %i.ad, %bb.a ], [ %i.am, %.lr.ph ]
  %i.es = and i32 %i.ai, 1
  %.not139.i = icmp eq i32 %i.es, 0
  br i1 %.not139.i, label %h2v2_merged_upsample_565_le.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.et = load i8, ptr %.0134.i.lcssa, align 1, !tbaa !36
  %i.eu = load i8, ptr %.0133.i.lcssa, align 1, !tbaa !36
  %i.ev = zext i8 %i.eu to i64                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3  ; 2 uses
  %i.ey = zext i8 %i.et to i64                    ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ev
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !62
  %i.fd = add nsw i64 %i.fc, %i.fa
  %i.fe = lshr i64 %i.fd, 16
  %i.ff = trunc i64 %i.fe to i32                  ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ey
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3  ; 2 uses
  %i.fi = load i8, ptr %.0136.i.lcssa, align 1, !tbaa !36
  %i.fj = zext i8 %i.fi to i32                    ; 3 uses
  %i.fk = add nsw i32 %i.ex, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.d, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !36
  %i.fo = zext i8 %i.fn to i16
  %i.fp = add nsw i32 %i.fj, %i.ff
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.d, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !36
  %i.ft = zext i8 %i.fs to i16
  %i.fu = add nsw i32 %i.fh, %i.fj
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.d, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !36
  %i.fy = shl nuw i16 %i.fo, 8
  %i.fz = and i16 %i.fy, -2048
  %i.ga = shl nuw nsw i16 %i.ft, 3
  %i.gb = and i16 %i.ga, 2016
  %i.gc = or disjoint i16 %i.gb, %i.fz
  %i.gd = lshr i8 %i.fx, 3
  %i.ge = zext nneg i8 %i.gd to i16
  %i.gf = or disjoint i16 %i.gc, %i.ge
  store i16 %i.gf, ptr %.0138.i.lcssa, align 2, !tbaa !79
  %i.gg = load i8, ptr %.0135.i.lcssa, align 1, !tbaa !36
  %i.gh = zext i8 %i.gg to i32                    ; 3 uses
  %i.gi = add nsw i32 %i.ex, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.d, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !36
  %i.gm = zext i8 %i.gl to i16
  %i.gn = add nsw i32 %i.gh, %i.ff
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.d, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !36
  %i.gr = zext i8 %i.gq to i16
  %i.gs = add nsw i32 %i.fh, %i.gh
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.d, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !36
  %i.gw = shl nuw i16 %i.gm, 8
  %i.gx = and i16 %i.gw, -2048
  %i.gy = shl nuw nsw i16 %i.gr, 3
  %i.gz = and i16 %i.gy, 2016
  %i.ha = or disjoint i16 %i.gz, %i.gx
  %i.hb = lshr i8 %i.gv, 3
  %i.hc = zext nneg i8 %i.hb to i16
  %i.hd = or disjoint i16 %i.ha, %i.hc
  store i16 %i.hd, ptr %.0137.i.lcssa, align 2, !tbaa !79
  br label %h2v2_merged_upsample_565_le.exit

h2v2_merged_upsample_565_le.exit:                 ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merged_1v_upsample(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, i32 %3, ptr noundef %4, ptr noundef captures(none) %5, i32 %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = load i32, ptr %5, align 4, !tbaa !3
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g
  tail call void %i.d(ptr noundef %0, ptr noundef %1, i32 noundef %i.e, ptr noundef %i.h) #6
  %i.i = load i32, ptr %5, align 4, !tbaa !3
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %5, align 4, !tbaa !3
  %i.k = load i32, ptr %2, align 4, !tbaa !3
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_merged_upsample(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 63 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 14 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !70
  %i.p = zext i32 %2 to i64                       ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68   ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68   ; 14 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.p
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68   ; 14 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !68    ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47 ; 8 uses
  %i.ad = lshr i32 %i.ac, 1                       ; 8 uses
  %.not.i64140 = icmp eq i32 %i.ad, 0             ; 7 uses
  switch i32 %i.b, label %bb.n [
    i32 6, label %bb.b
    i32 7, label %bb.d
    i32 12, label %bb.d
    i32 8, label %bb.f
    i32 9, label %bb.h
    i32 13, label %bb.h
    i32 10, label %bb.j
    i32 14, label %bb.j
    i32 11, label %bb.l
    i32 15, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i64140, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.b, %.lr.ph134
  %.0.i132 = phi i32 [ %i.cf, %.lr.ph134 ], [ %i.ad, %bb.b ]
  %.077.i131 = phi ptr [ %i.ag, %.lr.ph134 ], [ %i.z, %bb.b ] ; 2 uses
  %.078.i130 = phi ptr [ %i.ae, %.lr.ph134 ], [ %i.v, %bb.b ] ; 2 uses
  %.079.i129 = phi ptr [ %i.bn, %.lr.ph134 ], [ %i.r, %bb.b ] ; 3 uses
  %.080.i128 = phi ptr [ %i.ce, %.lr.ph134 ], [ %i.aa, %bb.b ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.078.i130, i64 1 ; 2 uses
  %i.af = load i8, ptr %.078.i130, align 1, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %.077.i131, i64 1 ; 2 uses
  %i.ah = load i8, ptr %.077.i131, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = zext i8 %i.af to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !62
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.al
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i129, i64 1
  %i.aw = load i8, ptr %.079.i129, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i32                    ; 3 uses
  %i.ay = add nsw i32 %i.ak, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.f, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  store i8 %i.bb, ptr %.080.i128, align 1, !tbaa !36
  %i.bc = add nsw i32 %i.ax, %i.as
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.f, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %.080.i128, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !36
  %i.bh = add nsw i32 %i.au, %i.ax
  %i.bi = sext i32 %i.bh to i64
end_hunk_0
begin_hunk_1_@h2v1_merged_upsample:bb.a
  %i.wd = zext i8 %i.wc to i32                    ; 3 uses
  %i.we = add nsw i32 %i.uy, %i.wd
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds i8, ptr %i.f, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !36
  store i8 %i.wh, ptr %i.wa, align 1, !tbaa !36
  %i.wi = add nsw i32 %i.wd, %i.vg
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds i8, ptr %i.f, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !36
  %i.wm = getelementptr inbounds nuw i8, ptr %.080.i59141, i64 4
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !36
  %i.wn = add nsw i32 %i.vi, %i.wd
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds i8, ptr %i.f, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !36
  %i.wr = getelementptr inbounds nuw i8, ptr %.080.i59141, i64 5
  store i8 %i.wq, ptr %i.wr, align 1, !tbaa !36
  %i.ws = getelementptr inbounds nuw i8, ptr %.080.i59141, i64 6 ; 2 uses
  %i.wt = add nsw i32 %.0.i63145, -1              ; 2 uses
  %.not.i64 = icmp eq i32 %i.wt, 0
  br i1 %.not.i64, label %._crit_edge148.loopexit, label %.lr.ph147, !llvm.loop !88

._crit_edge148.loopexit:                          ; preds = %.lr.ph147
  %.pre185 = load i32, ptr %i.ab, align 8, !tbaa !47
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %._crit_edge148.loopexit, %bb.n
  %i.wu = phi i32 [ %i.ac, %bb.n ], [ %.pre185, %._crit_edge148.loopexit ]
  %.080.i59.lcssa = phi ptr [ %i.aa, %bb.n ], [ %i.ws, %._crit_edge148.loopexit ] ; 3 uses
  %.079.i60.lcssa = phi ptr [ %i.r, %bb.n ], [ %i.wb, %._crit_edge148.loopexit ]
  %.078.i61.lcssa = phi ptr [ %i.v, %bb.n ], [ %i.us, %._crit_edge148.loopexit ]
  %.077.i62.lcssa = phi ptr [ %i.z, %bb.n ], [ %i.uu, %._crit_edge148.loopexit ]
  %i.wv = and i32 %i.wu, 1
  %.not81.i65 = icmp eq i32 %i.wv, 0
  br i1 %.not81.i65, label %extrgb_h2v1_merged_upsample_internal.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge148
  %i.ww = load i8, ptr %.078.i61.lcssa, align 1, !tbaa !36
  %i.wx = load i8, ptr %.077.i62.lcssa, align 1, !tbaa !36
  %i.wy = zext i8 %i.wx to i64                    ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !3
  %i.xb = zext i8 %i.ww to i64                    ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.xb
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !62
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.wy
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !62
  %i.xg = add nsw i64 %i.xf, %i.xd
  %i.xh = lshr i64 %i.xg, 16
  %i.xi = trunc i64 %i.xh to i32
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.xb
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !3
  %i.xl = load i8, ptr %.079.i60.lcssa, align 1, !tbaa !36
  %i.xm = zext i8 %i.xl to i32                    ; 3 uses
  %i.xn = add nsw i32 %i.xa, %i.xm
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr inbounds i8, ptr %i.f, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !36
  store i8 %i.xq, ptr %.080.i59.lcssa, align 1, !tbaa !36
  %i.xr = add nsw i32 %i.xm, %i.xi
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds i8, ptr %i.f, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !36
  %i.xv = getelementptr inbounds nuw i8, ptr %.080.i59.lcssa, i64 1
  store i8 %i.xu, ptr %i.xv, align 1, !tbaa !36
  %i.xw = add nsw i32 %i.xk, %i.xm
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds i8, ptr %i.f, i64 %i.xx
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !36
  %i.ya = getelementptr inbounds nuw i8, ptr %.080.i59.lcssa, i64 2
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !36
  br label %extrgb_h2v1_merged_upsample_internal.exit

extrgb_h2v1_merged_upsample_internal.exit:        ; preds = %bb.o, %._crit_edge148, %bb.m, %._crit_edge, %bb.k, %._crit_edge83, %bb.i, %._crit_edge96, %bb.g, %._crit_edge109, %bb.e, %._crit_edge122, %bb.c, %._crit_edge135
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_merged_upsample_565D(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load i32, ptr %i.m, align 8, !tbaa !78
  %i.o = and i32 %i.n, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !70
  %i.t = zext i32 %2 to i64                       ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.t
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.t
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.ah = lshr i32 %i.ag, 1                       ; 2 uses
  %.not.i7 = icmp eq i32 %i.ah, 0
  br i1 %.not.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i13 = phi i64 [ %i.cr, %.lr.ph ], [ %i.r, %bb.a ] ; 2 uses
  %.097.i12 = phi i32 [ %i.dj, %.lr.ph ], [ %i.ah, %bb.a ]
  %.098.i11 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ad, %bb.a ] ; 2 uses
  %.099.i10 = phi ptr [ %i.ai, %.lr.ph ], [ %i.z, %bb.a ] ; 2 uses
  %.0100.i9 = phi ptr [ %i.bw, %.lr.ph ], [ %i.v, %bb.a ] ; 3 uses
  %.0101.i8 = phi ptr [ %i.di, %.lr.ph ], [ %i.ae, %bb.a ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.099.i10, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.099.i10, align 1, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %.098.i11, i64 1 ; 2 uses
  %i.al = load i8, ptr %.098.i11, align 1, !tbaa !36
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3  ; 2 uses
  %i.ap = zext i8 %i.aj to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.am
  %i.at = load i64, ptr %i.as, align 8, !tbaa !62
  %i.au = add nsw i64 %i.at, %i.ar
  %i.av = lshr i64 %i.au, 16
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0100.i9, i64 1
  %i.ba = load i8, ptr %.0100.i9, align 1, !tbaa !36
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = add nsw i32 %i.ao, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = and i64 %.0.i13, 255                    ; 3 uses
  %i.bf = getelementptr i8, ptr %i.d, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bi = add nsw i32 %i.bb, %i.aw
  %i.bj = sext i32 %i.bi to i64
  %i.bk = lshr i64 %i.be, 1
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !36
  %i.bo = add nsw i32 %i.ay, %i.bb
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bf, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.bs = shl nuw nsw i64 %i.be, 24
  %i.bt = lshr i64 %.0.i13, 8                     ; 2 uses
  %i.bu = and i64 %i.bt, 16776960
  %i.bv = or disjoint i64 %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.0100.i9, i64 2 ; 2 uses
  %i.bx = load i8, ptr %i.az, align 1, !tbaa !36
  %i.by = zext i8 %i.bx to i32                    ; 3 uses
  %i.bz = add nsw i32 %i.ao, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = and i64 %i.bt, 255                      ; 3 uses
  %i.cc = getelementptr i8, ptr %i.d, i64 %i.cb   ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.ca
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !36
  %i.cf = add nsw i32 %i.by, %i.aw
  %i.cg = sext i32 %i.cf to i64
  %i.ch = lshr i64 %i.cb, 1
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cg
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !36
  %i.cl = add nsw i32 %i.ay, %i.by
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !36
  %i.cp = shl nuw nsw i64 %i.cb, 24
  %i.cq = lshr exact i64 %i.bv, 8
  %i.cr = or disjoint i64 %i.cq, %i.cp            ; 2 uses
  %i.cs = zext i8 %i.ce to i16
  %i.ct = zext i8 %i.bn to i16
  %i.cu = zext i8 %i.ck to i16
  %i.cv = zext i8 %i.bh to i16
  %i.cw = insertelement <2 x i16> poison, i16 %i.ct, i64 0
  %i.cx = insertelement <2 x i16> %i.cw, i16 %i.cs, i64 1
  %i.cy = shl nuw <2 x i16> %i.cx, <i16 3, i16 8>
  %i.cz = and <2 x i16> %i.cy, <i16 2016, i16 -2048>
  %i.da = insertelement <2 x i16> poison, i16 %i.cv, i64 0
  %i.db = insertelement <2 x i16> %i.da, i16 %i.cu, i64 1
  %i.dc = shl nuw <2 x i16> %i.db, <i16 8, i16 3>
  %i.dd = and <2 x i16> %i.dc, <i16 -2048, i16 2016>
  %i.de = or disjoint <2 x i16> %i.dd, %i.cz
  %4 = insertelement <2 x i8> poison, i8 %i.br, i64 0
  %i.df = insertelement <2 x i8> %4, i8 %i.co, i64 1
  %5 = lshr <2 x i8> %i.df, splat (i8 3)
  %i.dg = zext nneg <2 x i8> %5 to <2 x i16>
  %i.dh = or disjoint <2 x i16> %i.de, %i.dg
  store <2 x i16> %i.dh, ptr %.0101.i8, align 2, !tbaa !79
  %i.di = getelementptr inbounds nuw i8, ptr %.0101.i8, i64 4 ; 2 uses
  %i.dj = add nsw i32 %.097.i12, -1               ; 2 uses
  %.not.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0101.i.lcssa = phi ptr [ %i.ae, %bb.a ], [ %i.di, %.lr.ph ]
  %.0100.i.lcssa = phi ptr [ %i.v, %bb.a ], [ %i.bw, %.lr.ph ]
  %.099.i.lcssa = phi ptr [ %i.z, %bb.a ], [ %i.ai, %.lr.ph ]
  %.098.i.lcssa = phi ptr [ %i.ad, %bb.a ], [ %i.ak, %.lr.ph ]
  %.0.i.lcssa = phi i64 [ %i.r, %bb.a ], [ %i.cr, %.lr.ph ]
  %i.dk = and i32 %i.ag, 1
  %.not102.i = icmp eq i32 %i.dk, 0
  br i1 %.not102.i, label %h2v1_merged_upsample_565D_le.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.dl = load i8, ptr %.099.i.lcssa, align 1, !tbaa !36
  %i.dm = load i8, ptr %.098.i.lcssa, align 1, !tbaa !36
  %i.dn = zext i8 %i.dm to i64                    ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i8 %i.dl to i64                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !62
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dn
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !62
  %i.dv = add nsw i64 %i.du, %i.ds
  %i.dw = lshr i64 %i.dv, 16
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dq
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = load i8, ptr %.0100.i.lcssa, align 1, !tbaa !36
  %i.eb = zext i8 %i.ea to i32                    ; 3 uses
  %i.ec = add nsw i32 %i.dp, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = and i64 %.0.i.lcssa, 255                ; 2 uses
  %i.ef = getelementptr i8, ptr %i.d, i64 %i.ee   ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.ed
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !36
  %i.ei = zext i8 %i.eh to i16
  %i.ej = add nsw i32 %i.eb, %i.dx
  %i.ek = sext i32 %i.ej to i64
  %i.el = lshr i64 %i.ee, 1
  %i.em = getelementptr i8, ptr %i.d, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ek
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !36
  %i.ep = zext i8 %i.eo to i16
  %i.eq = add nsw i32 %i.dz, %i.eb
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.ef, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !36
  %i.eu = shl nuw i16 %i.ei, 8
  %i.ev = and i16 %i.eu, -2048
  %i.ew = shl nuw nsw i16 %i.ep, 3
  %i.ex = and i16 %i.ew, 2016
  %i.ey = or disjoint i16 %i.ex, %i.ev
  %i.ez = lshr i8 %i.et, 3
  %i.fa = zext nneg i8 %i.ez to i16
  %i.fb = or disjoint i16 %i.ey, %i.fa
  store i16 %i.fb, ptr %.0101.i.lcssa, align 2, !tbaa !79
  br label %h2v1_merged_upsample_565D_le.exit

h2v1_merged_upsample_565D_le.exit:                ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_merged_upsample_565(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !70
  %i.n = zext i32 %2 to i64                       ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.n
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.n
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !68     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %.not.i7 = icmp eq i32 %i.ab, 0
  br i1 %.not.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i12 = phi i32 [ %i.co, %.lr.ph ], [ %i.ab, %bb.a ]
  %.083.i11 = phi ptr [ %i.ae, %.lr.ph ], [ %i.x, %bb.a ] ; 2 uses
  %.084.i10 = phi ptr [ %i.ac, %.lr.ph ], [ %i.t, %bb.a ] ; 2 uses
  %.085.i9 = phi ptr [ %i.bi, %.lr.ph ], [ %i.p, %bb.a ] ; 3 uses
  %.086.i8 = phi ptr [ %i.cn, %.lr.ph ], [ %i.y, %bb.a ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.084.i10, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.084.i10, align 1, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %.083.i11, i64 1 ; 2 uses
  %i.af = load i8, ptr %.083.i11, align 1, !tbaa !36
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = zext i8 %i.ad to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ag
  %i.an = load i64, ptr %i.am, align 8, !tbaa !62
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aj
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.085.i9, i64 1
  %i.au = load i8, ptr %.085.i9, align 1, !tbaa !36
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add nsw i32 %i.ai, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.d, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = add nsw i32 %i.av, %i.aq
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.d, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.be = add nsw i32 %i.as, %i.av
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.d, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %.085.i9, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.at, align 1, !tbaa !36
  %i.bk = zext i8 %i.bj to i32                    ; 3 uses
  %i.bl = add nsw i32 %i.ai, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.d, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !36
  %i.bp = add nsw i32 %i.bk, %i.aq
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.d, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = add nsw i32 %i.as, %i.bk
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.d, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !36
  %i.bx = zext i8 %i.bo to i16
  %i.by = zext i8 %i.bd to i16
  %i.bz = zext i8 %i.bs to i16
  %i.ca = zext i8 %i.az to i16
  %i.cb = insertelement <2 x i16> poison, i16 %i.by, i64 0
  %i.cc = insertelement <2 x i16> %i.cb, i16 %i.bx, i64 1
  %i.cd = shl nuw <2 x i16> %i.cc, <i16 3, i16 8>
  %i.ce = and <2 x i16> %i.cd, <i16 2016, i16 -2048>
  %i.cf = insertelement <2 x i16> poison, i16 %i.ca, i64 0
  %i.cg = insertelement <2 x i16> %i.cf, i16 %i.bz, i64 1
  %i.ch = shl nuw <2 x i16> %i.cg, <i16 8, i16 3>
  %i.ci = and <2 x i16> %i.ch, <i16 -2048, i16 2016>
  %i.cj = or disjoint <2 x i16> %i.ci, %i.ce
  %4 = insertelement <2 x i8> poison, i8 %i.bh, i64 0
  %i.ck = insertelement <2 x i8> %4, i8 %i.bw, i64 1
  %5 = lshr <2 x i8> %i.ck, splat (i8 3)
  %i.cl = zext nneg <2 x i8> %5 to <2 x i16>
  %i.cm = or disjoint <2 x i16> %i.cj, %i.cl
  store <2 x i16> %i.cm, ptr %.086.i8, align 2, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %.086.i8, i64 4 ; 2 uses
  %i.co = add nsw i32 %.0.i12, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.086.i.lcssa = phi ptr [ %i.y, %bb.a ], [ %i.cn, %.lr.ph ]
  %.085.i.lcssa = phi ptr [ %i.p, %bb.a ], [ %i.bi, %.lr.ph ]
  %.084.i.lcssa = phi ptr [ %i.t, %bb.a ], [ %i.ac, %.lr.ph ]
  %.083.i.lcssa = phi ptr [ %i.x, %bb.a ], [ %i.ae, %.lr.ph ]
  %i.cp = and i32 %i.aa, 1
  %.not87.i = icmp eq i32 %i.cp, 0
  br i1 %.not87.i, label %h2v1_merged_upsample_565_le.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cq = load i8, ptr %.084.i.lcssa, align 1, !tbaa !36
  %i.cr = load i8, ptr %.083.i.lcssa, align 1, !tbaa !36
  %i.cs = zext i8 %i.cr to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i8 %i.cq to i64                    ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cs
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !62
  %i.da = add nsw i64 %i.cz, %i.cx
  %i.db = lshr i64 %i.da, 16
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = load i8, ptr %.085.i.lcssa, align 1, !tbaa !36
  %i.dg = zext i8 %i.df to i32                    ; 3 uses
  %i.dh = add nsw i32 %i.cu, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.d, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = zext i8 %i.dk to i16
  %i.dm = add nsw i32 %i.dg, %i.dc
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.d, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !36
  %i.dq = zext i8 %i.dp to i16
  %i.dr = add nsw i32 %i.de, %i.dg
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.d, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !36
  %i.dv = shl nuw i16 %i.dl, 8
  %i.dw = and i16 %i.dv, -2048
  %i.dx = shl nuw nsw i16 %i.dq, 3
  %i.dy = and i16 %i.dx, 2016
  %i.dz = or disjoint i16 %i.dy, %i.dw
  %i.ea = lshr i8 %i.du, 3
  %i.eb = zext nneg i8 %i.ea to i16
  %i.ec = or disjoint i16 %i.dz, %i.eb
  store i16 %i.ec, ptr %.086.i.lcssa, align 2, !tbaa !79
  br label %h2v1_merged_upsample_565_le.exit

h2v1_merged_upsample_565_le.exit:                 ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 296}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!8, !9, i64 0}
!33 = !{!34, !4, i64 40}
!34 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !35, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!35 = !{!"long", !5, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!34, !10, i64 0}
!38 = !{!8, !11, i64 8}
!39 = !{!40, !10, i64 0}
!40 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !35, i64 88, !35, i64 96}
!41 = !{!8, !29, i64 632}
!42 = !{!43, !10, i64 0}
!43 = !{!"", !44, i64 0, !10, i64 40, !17, i64 48, !17, i64 56, !45, i64 64, !45, i64 72, !20, i64 80, !4, i64 88, !4, i64 92, !4, i64 96}
!44 = !{!"jpeg_upsampler", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!45 = !{!"p1 long", !10, i64 0}
!46 = !{!43, !4, i64 32}
!47 = !{!8, !4, i64 136}
!48 = !{!8, !4, i64 144}
!49 = !{!43, !4, i64 92}
!50 = !{!8, !4, i64 412}
!51 = !{!43, !10, i64 8}
!52 = !{!43, !10, i64 40}
!53 = !{!8, !4, i64 64}
!54 = !{!8, !4, i64 112}
!55 = !{!40, !10, i64 8}
!56 = !{!43, !20, i64 80}
!57 = distinct !{null}
!58 = !{!43, !17, i64 48}
!59 = !{!43, !17, i64 56}
!60 = !{!43, !45, i64 64}
!61 = !{!43, !45, i64 72}
!62 = !{!35, !35, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!43, !4, i64 88}
!66 = !{!8, !4, i64 140}
!67 = !{!43, !4, i64 96}
!68 = !{!20, !20, i64 0}
!69 = !{!8, !20, i64 432}
!70 = !{!15, !15, i64 0}
!71 = distinct !{!71, !64}
!72 = distinct !{!72, !64}
!73 = distinct !{!73, !64}
!74 = distinct !{!74, !64}
!75 = distinct !{!75, !64}
!76 = distinct !{!76, !64}
!77 = distinct !{!77, !64}
!78 = !{!8, !4, i64 168}
!79 = !{!18, !18, i64 0}
!80 = distinct !{!80, !64}
!81 = distinct !{!81, !64}
!82 = distinct !{!82, !64}
!83 = distinct !{!83, !64}
!84 = distinct !{!84, !64}
!85 = distinct !{!85, !64}
!86 = distinct !{!86, !64}
!87 = distinct !{!87, !64}
!88 = distinct !{!88, !64}
!89 = distinct !{!89, !64}
!90 = distinct !{!90, !64}
end_hunk_1
