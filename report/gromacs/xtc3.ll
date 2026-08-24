Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@Ptngc_unpack_array_xtc3:bb.a
  %i.au = sub nsw i32 0, %i.ar
  %spec.select.i.2 = select i1 %i.at, i32 %i.au, i32 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %spec.select.i.2, ptr %i.av, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = sdiv i32 %2, 3                          ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 1            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bd = sext i32 %i.ay to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.be, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !20
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.bc, i32 noundef %i.ay, ptr noundef %i.bf) #12
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bi = phi ptr [ %i.bh, %bb.b ], [ %i.ba, %bb.a ] ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 1            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not109 = icmp eq i32 %i.bj, 0
  br i1 %.not109, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load i32, ptr %i.bl, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bp = sext i32 %i.bj to i64
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.bq, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !20
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.bo, i32 noundef %i.bj, ptr noundef %i.br) #12
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.b, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi ptr [ %i.bt, %bb.d ], [ %i.bl, %bb.c ] ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 1            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %.not110 = icmp eq i32 %i.bv, 0
  br i1 %.not110, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 5 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8, !tbaa !106
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !52
  %i.ca = icmp eq i8 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = load i32, ptr %i.by, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 9 ; 2 uses
  %i.ce = sext i32 %i.bv to i64
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.cf, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !20
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.cd, i32 noundef %i.bv, ptr noundef %i.cg) #12
  %i.ch = sext i32 %i.cc to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.ch ; 2 uses
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !106
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.bv, ptr noundef %i.cb)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !106
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.cj = phi ptr [ %i.ci, %bb.g ], [ %.pre, %bb.h ], [ %i.bx, %bb.e ] ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 1            ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %.not111 = icmp eq i32 %i.ck, 0
  br i1 %.not111, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 5 ; 2 uses
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !106
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.cp = icmp eq i8 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.cn, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 3 uses
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !106
  %i.ct = sext i32 %i.ck to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.cu, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !20
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.cs, i32 noundef %i.ck, ptr noundef %i.cv) #12
  %i.cw = sext i32 %i.cr to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.cw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.ck, ptr noundef %i.cq)
  %.pre172 = load ptr, ptr %i.b, align 8, !tbaa !106
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.cy = phi ptr [ %i.cx, %bb.k ], [ %.pre172, %bb.l ], [ %i.cm, %bb.i ] ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 1            ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !65
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %.not112 = icmp eq i32 %i.cz, 0
  br i1 %.not112, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 5 ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !106
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !52
  %i.de = icmp eq i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = load i32, ptr %i.dc, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 9 ; 3 uses
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !106
  %i.di = sext i32 %i.cz to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.dj, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !20
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.dh, i32 noundef %i.cz, ptr noundef %i.dk) #12
  %i.dl = sext i32 %i.dg to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %i.dl
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.cz, ptr noundef %i.df)
  %.pre173 = load ptr, ptr %i.b, align 8, !tbaa !106
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.dn = phi ptr [ %i.dm, %bb.o ], [ %.pre173, %bb.p ], [ %i.db, %bb.m ] ; 4 uses
  %i.do = load i32, ptr %i.dn, align 1            ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !70
  %.not113 = icmp eq i32 %i.do, 0
  br i1 %.not113, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !106
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !52
  %i.dt = icmp eq i8 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %i.dw = sext i32 %i.do to i64
  %i.dx = shl nsw i64 %i.dw, 2
  %i.dy = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.dx, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !20
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.dv, i32 noundef %i.do, ptr noundef %i.dy) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.do, ptr noundef %i.du)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.dz = load i32, ptr %i.az, align 8            ; 2 uses
  %i.ea = icmp sgt i32 %2, 2
  %i.eb = icmp sgt i32 %i.dz, 0
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.u
  %i.ed = load ptr, ptr %4, align 8, !tbaa !51
  %.old = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ek = zext nneg i32 %i.dz to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph148, %.loopexit121
  %indvars.iv169 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next170, %.loopexit121 ] ; 2 uses
  %.086146 = phi i32 [ 0, %.lr.ph148 ], [ %.389, %.loopexit121 ] ; 11 uses
  %.090145 = phi i32 [ 0, %.lr.ph148 ], [ %.292, %.loopexit121 ] ; 11 uses
  %.093144 = phi i32 [ 0, %.lr.ph148 ], [ %.194, %.loopexit121 ] ; 13 uses
  %.096142 = phi i32 [ 0, %.lr.ph148 ], [ %.197, %.loopexit121 ] ; 9 uses
  %.098141 = phi i32 [ 0, %.lr.ph148 ], [ %.199, %.loopexit121 ] ; 13 uses
  %.0100140 = phi i32 [ 0, %.lr.ph148 ], [ %.1101, %.loopexit121 ] ; 12 uses
  %.0102139 = phi i32 [ %i.ax, %.lr.ph148 ], [ %.3105, %.loopexit121 ] ; 10 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv169
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8  ; 3 uses
  %i.en = icmp eq i32 %i.em, 0                    ; 2 uses
  switch i32 %i.em, label %.fold.split [
    i32 3, label %.preheader120
    i32 0, label %bb.w
    i32 2, label %bb.w
    i32 5, label %bb.z
    i32 1, label %bb.ab
    i32 4, label %bb.ad
    i32 6, label %.loopexit121
    i32 7, label %bb.ae
    i32 8, label %bb.af
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.eo = icmp ne i32 %.0100140, 0
  %or.cond5 = select i1 %i.en, i1 %i.eo, i1 false
  %spec.store.select = zext i1 %or.cond5 to i32
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.086146, i32 noundef %spec.store.select, i32 noundef %3, i32 noundef %.096142)
  %i.ep = add nsw i32 %.0102139, -1               ; 2 uses
  %i.eq = add nsw i32 %.086146, 3                 ; 2 uses
  %.not115 = icmp eq i32 %i.em, 2
  br i1 %.not115, label %.loopexit121, label %.preheader120

.preheader120:                                    ; preds = %bb.v, %bb.w
  %.187185 = phi i32 [ %i.eq, %bb.w ], [ %.086146, %bb.v ] ; 4 uses
  %.1103184 = phi i32 [ %i.ep, %bb.w ], [ %.0102139, %bb.v ]
  %.promoted127 = load i32, ptr %i.c, align 4     ; 2 uses
  %i.er = icmp sgt i32 %.098141, 0
  br i1 %i.er, label %.lr.ph131, label %bb.y

.lr.ph131:                                        ; preds = %.preheader120
  %.promoted134 = load i32, ptr %i.ei, align 4, !tbaa !8
  %.promoted136 = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.es = sext i32 %.187185 to i64
  %i.et = sext i32 %.090145 to i64
  %wide.trip.count = zext nneg i32 %.098141 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.es
  %5 = insertelement <2 x i32> poison, i32 %.promoted127, i64 0
  %6 = insertelement <2 x i32> %5, i32 %.promoted134, i64 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph131, %bb.x
  %indvars.iv159 = phi i64 [ %i.et, %.lr.ph131 ], [ %indvars.iv.next160, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.eu = phi i32 [ %.promoted136, %.lr.ph131 ], [ %i.fd, %bb.x ]
  %i.ev = phi <2 x i32> [ %6, %.lr.ph131 ], [ %i.fm, %bb.x ]
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %indvars.iv159 ; 2 uses
  %7 = getelementptr i8, ptr %i.ew, i64 8
  %i.ex = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.ey = add nsw i32 %i.ex, 1
  %i.ez = sdiv i32 %i.ey, 2                       ; 2 uses
  %i.fa = and i32 %i.ex, 1
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = sub nsw i32 0, %i.ez
  %spec.select.i117 = select i1 %i.fb, i32 %i.fc, i32 %i.ez
  %i.fd = add nsw i32 %spec.select.i117, %i.eu    ; 3 uses
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 3 ; 2 uses
  %.idx = mul i64 %indvars.iv, 12
  %i.fe = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.ff = load <2 x i32>, ptr %i.ew, align 4, !tbaa !8 ; 2 uses
  %i.fg = add nsw <2 x i32> %i.ff, splat (i32 1)
  %i.fh = sdiv <2 x i32> %i.fg, splat (i32 2)     ; 2 uses
  %i.fi = and <2 x i32> %i.ff, splat (i32 1)
  %i.fj = icmp eq <2 x i32> %i.fi, zeroinitializer
  %i.fk = sub nsw <2 x i32> zeroinitializer, %i.fh
  %i.fl = select <2 x i1> %i.fj, <2 x i32> %i.fk, <2 x i32> %i.fh
  %i.fm = add nsw <2 x i32> %i.fl, %i.ev          ; 4 uses
  store <2 x i32> %i.fm, ptr %i.fe, align 4, !tbaa !8
  %i.fn = getelementptr i8, ptr %i.fe, i64 8
  store i32 %i.fd, ptr %i.fn, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond164.not, label %._crit_edge, label %bb.x, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.x
  %i.fo = trunc nsw i64 %indvars.iv.next160 to i32
  %8 = extractelement <2 x i32> %i.fm, i64 1
  store i32 %8, ptr %i.ei, align 4, !tbaa !8
  store i32 %i.fd, ptr %i.ej, align 4, !tbaa !8
  %9 = extractelement <2 x i32> %i.fm, i64 0
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %.preheader120
  %.lcssa128 = phi i32 [ %9, %._crit_edge ], [ %.promoted127, %.preheader120 ]
  %.191.lcssa = phi i32 [ %i.fo, %._crit_edge ], [ %.090145, %.preheader120 ]
  store i32 %.lcssa128, ptr %i.c, align 4
  %i.fp = icmp ne i32 %.0100140, 0
  %or.cond7 = select i1 %i.en, i1 %i.fp, i1 false
  br i1 %or.cond7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.y
  %i.fq = add nsw i32 %.187185, -3
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = sext i32 %.187185 to i64                ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fr ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fs ; 2 uses
  %i.fv = load <2 x i32>, ptr %i.ft, align 4, !tbaa !8
  %i.fw = load <2 x i32>, ptr %i.fu, align 4, !tbaa !8
  store <2 x i32> %i.fw, ptr %i.ft, align 4, !tbaa !8
  store <2 x i32> %i.fv, ptr %i.fu, align 4, !tbaa !8
  %i.fx = getelementptr [4 x i8], ptr %1, i64 %i.fr
  %i.fy = getelementptr i8, ptr %i.fx, i64 8      ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.ga = getelementptr [4 x i8], ptr %1, i64 %i.fs
  %i.gb = getelementptr i8, ptr %i.ga, i64 8      ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  store i32 %i.gc, ptr %i.fy, align 4, !tbaa !8
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.y
  %i.gd = sub nsw i32 %.1103184, %.098141
  %i.ge = mul nsw i32 %.098141, 3
  %i.gf = add nsw i32 %.187185, %i.ge
  br label %.loopexit121

bb.z:                                             ; preds = %bb.v
  %i.gg = icmp slt i32 %.093144, %.old
  br i1 %i.gg, label %bb.aa, label %.fold.split

bb.aa:                                            ; preds = %bb.z
  %i.gh = add nsw i32 %.093144, 1                 ; 2 uses
  %i.gi = sext i32 %.093144 to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !8  ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph, label %.loopexit121

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.3125 = phi i32 [ %i.gn, %.lr.ph ], [ 0, %bb.aa ]
  %.288124 = phi i32 [ %i.gm, %.lr.ph ], [ %.086146, %bb.aa ] ; 2 uses
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.288124, i32 noundef 0, i32 noundef %3, i32 noundef %.096142)
  %i.gm = add nsw i32 %.288124, 3                 ; 2 uses
  %i.gn = add nuw nsw i32 %.3125, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gn, %i.gk
  br i1 %exitcond.not, label %.loopexit121.loopexit, label %.lr.ph, !llvm.loop !109

bb.ab:                                            ; preds = %bb.v
  %.old116 = icmp slt i32 %.093144, %.old
  br i1 %.old116, label %bb.ac, label %.fold.split

bb.ac:                                            ; preds = %bb.ab
  %i.go = add nsw i32 %.093144, 1
  %i.gp = sext i32 %.093144 to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8
  br label %.loopexit121

bb.ad:                                            ; preds = %bb.v
  %i.gs = sub nuw nsw i32 1, %.0100140
  br label %.loopexit121

bb.ae:                                            ; preds = %bb.v
  br label %.loopexit121

bb.af:                                            ; preds = %bb.v
  br label %.loopexit121

.fold.split:                                      ; preds = %bb.z, %bb.ab, %bb.v
  br label %.loopexit121

.loopexit121.loopexit:                            ; preds = %.lr.ph
  %i.gt = sub i32 %.0102139, %i.gk
  br label %.loopexit121

.loopexit121:                                     ; preds = %.loopexit121.loopexit, %bb.aa, %bb.v, %.fold.split, %bb.ad, %bb.ae, %bb.af, %bb.ac, %bb.w, %.loopexit
  %.3105 = phi i32 [ %i.gd, %.loopexit ], [ %i.ep, %bb.w ], [ %.0102139, %.fold.split ], [ %.0102139, %bb.ac ], [ %.0102139, %bb.ad ], [ %.0102139, %bb.v ], [ %.0102139, %bb.ae ], [ %.0102139, %bb.af ], [ %.0102139, %bb.aa ], [ %i.gt, %.loopexit121.loopexit ] ; 3 uses
  %.1101 = phi i32 [ %.0100140, %.loopexit ], [ %.0100140, %bb.w ], [ %.0100140, %.fold.split ], [ %.0100140, %bb.ac ], [ %i.gs, %bb.ad ], [ %.0100140, %bb.v ], [ %.0100140, %bb.ae ], [ %.0100140, %bb.af ], [ %.0100140, %bb.aa ], [ %.0100140, %.loopexit121.loopexit ]
  %.199 = phi i32 [ %.098141, %.loopexit ], [ %.098141, %bb.w ], [ %.098141, %.fold.split ], [ %i.gr, %bb.ac ], [ %.098141, %bb.ad ], [ %.098141, %bb.v ], [ %.098141, %bb.ae ], [ %.098141, %bb.af ], [ %.098141, %bb.aa ], [ %.098141, %.loopexit121.loopexit ]
  %.197 = phi i32 [ %.096142, %.loopexit ], [ %.096142, %bb.w ], [ %.096142, %.fold.split ], [ %.096142, %bb.ac ], [ %.096142, %bb.ad ], [ 0, %bb.v ], [ 1, %bb.ae ], [ 2, %bb.af ], [ %.096142, %bb.aa ], [ %.096142, %.loopexit121.loopexit ]
  %.194 = phi i32 [ %.093144, %.loopexit ], [ %.093144, %bb.w ], [ %.093144, %.fold.split ], [ %i.go, %bb.ac ], [ %.093144, %bb.ad ], [ %.093144, %bb.v ], [ %.093144, %bb.ae ], [ %.093144, %bb.af ], [ %i.gh, %bb.aa ], [ %i.gh, %.loopexit121.loopexit ]
  %.292 = phi i32 [ %.191.lcssa, %.loopexit ], [ %.090145, %bb.w ], [ %.090145, %.fold.split ], [ %.090145, %bb.ac ], [ %.090145, %bb.ad ], [ %.090145, %bb.v ], [ %.090145, %bb.ae ], [ %.090145, %bb.af ], [ %.090145, %bb.aa ], [ %.090145, %.loopexit121.loopexit ]
  %.389 = phi i32 [ %i.gf, %.loopexit ], [ %i.eq, %bb.w ], [ %.086146, %.fold.split ], [ %.086146, %bb.ac ], [ %.086146, %bb.ad ], [ %.086146, %bb.v ], [ %.086146, %bb.ae ], [ %.086146, %bb.af ], [ %.086146, %bb.aa ], [ %i.gm, %.loopexit121.loopexit ]
  %i.gu = icmp sgt i32 %.3105, 0
  %i.gv = icmp samesign ult i64 %indvars.iv.next170, %i.ek
  %i.gw = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %i.gw, label %bb.v, label %._crit_edge149, !llvm.loop !110

._crit_edge149:                                   ; preds = %.loopexit121, %bb.u
  %.0102.lcssa = phi i32 [ %i.ax, %bb.u ], [ %.3105, %.loopexit121 ]
  %i.gx = icmp slt i32 %.0102.lcssa, 0
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge149
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gz = tail call i64 @fwrite(ptr nonnull @.str.5, i64 59, i64 1, ptr %i.gy) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.ah:                                            ; preds = %._crit_edge149
  %i.ha = load ptr, ptr %4, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.ha) #12
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.hc) #12
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.he) #12
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.hg) #12
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.hi) #12
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.hk) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompress_base_block(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 10 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  %i.c = alloca [16385 x i32], align 16           ; 10 uses
  %i.d = alloca [16385 x i32], align 16           ; 4 uses
  %i.e = alloca [16385 x i32], align 16           ; 10 uses
  %i.f = alloca [16385 x i32], align 16           ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.i, ptr %0, align 8, !tbaa !106
  %i.j = sext i32 %1 to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 1879) #12 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !20
  %i.m = load ptr, ptr %0, align 8, !tbaa !106    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.n = load i16, ptr %i.m, align 1              ; 7 uses
  %i.o = zext i16 %i.n to i32                     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i32
  %i.s = icmp ugt i16 %i.n, 16384
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.10, i32 noundef %i.o) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = sdiv i32 %1, 3
  %.off.i = add i32 %1, 2
  %.not109.i = icmp ult i32 %.off.i, 5
  %i.w = add nuw nsw i32 %i.o, 1                  ; 5 uses
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %.not102.i = icmp eq i16 %i.n, 0
  %wide.trip.count.i.i = zext nneg i16 %i.n to i64 ; 4 uses
  br i1 %.not109.i, label %base_decompress.exit, label %.lr.ph117.preheader.i

.lr.ph117.preheader.i:                            ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aa = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ab = add nuw nsw i64 %i.aa, 4
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ac = icmp eq i16 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 32766
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod16 = trunc i16 %i.n to i1
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %._crit_edge118.i, %.lr.ph117.preheader.i
  %.0120.i = phi ptr [ %i.fb, %._crit_edge118.i ], [ %i.z, %.lr.ph117.preheader.i ]
  %.059119.i = phi i32 [ %i.fk, %._crit_edge118.i ], [ 0, %.lr.ph117.preheader.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph117.i
  %.1115.i = phi ptr [ %.0120.i, %.lr.ph117.i ], [ %i.fb, %._crit_edge.i ] ; 3 uses
  %.061114.i = phi i32 [ 0, %.lr.ph117.i ], [ %.162.i, %._crit_edge.i ]
  %.063113.i = phi i32 [ 0, %.lr.ph117.i ], [ %i.bm, %._crit_edge.i ] ; 2 uses
  %.065112.i = phi i32 [ %.059119.i, %.lr.ph117.i ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %.066111.i = phi i32 [ %i.v, %.lr.ph117.i ], [ %i.fj, %._crit_edge.i ] ; 11 uses
end_hunk_0
