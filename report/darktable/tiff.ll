Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tiff?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@write_image:bb.a
  %.0501750 = load ptr, ptr %i.q, align 8, !tbaa !84 ; 2 uses
  %.not579751 = icmp eq ptr %.0501750, null
  br i1 %.not579751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0501753 = phi ptr [ %.0501, %.lr.ph ], [ %.0501750, %bb.e ] ; 2 uses
  %.0502752 = phi i16 [ %i.w, %.lr.ph ], [ 1, %bb.e ]
  %i.r = load ptr, ptr %.0501753, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102
  %i.u = call i32 @g_hash_table_size(ptr noundef %i.t) #15
  %i.v = trunc i32 %i.u to i16
  %i.w = add i16 %.0502752, %i.v                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0501753, i64 8
  %.0501 = load ptr, ptr %i.x, align 8, !tbaa !84 ; 2 uses
  %.not579 = icmp eq ptr %.0501, null
  br i1 %.not579, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.0502.lcssa = phi i16 [ 1, %bb.e ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.y = zext i16 %.0502.lcssa to i32             ; 3 uses
  %i.z = call ptr @TIFFOpen(ptr noundef %1, ptr noundef nonnull @.str) #15 ; 6 uses
  %.not580 = icmp eq ptr %i.z, null
  br i1 %.not580, label %.thread689, label %bb.f

.thread:                                          ; preds = %bb.d
  %i.aa = call ptr @TIFFOpen(ptr noundef %1, ptr noundef nonnull @.str) #15 ; 2 uses
  %.not580626 = icmp eq ptr %i.aa, null
  br i1 %.not580626, label %.thread689, label %.thread628

bb.f:                                             ; preds = %._crit_edge
  %i.ab = icmp ugt i16 %.0502.lcssa, 1
  br i1 %i.ab, label %bb.g, label %.thread628

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.z, i32 noundef 254, i32 noundef 2) #15 ; 0 uses
  %i.ad = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  %i.ae = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.z, i32 noundef 285, ptr noundef %i.ad) #15 ; 0 uses
  %i.af = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.z, i32 noundef 297, i32 noundef 0, i32 noundef %i.y) #15 ; 0 uses
  br label %bb.h

.thread628:                                       ; preds = %.thread, %bb.f
  %.1503627631 = phi i32 [ %i.y, %bb.f ], [ 1, %.thread ]
  %i.ag = phi ptr [ %i.z, %bb.f ], [ %i.aa, %.thread ] ; 2 uses
  %i.ah = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.ag, i32 noundef 254, i32 noundef 0) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread628, %bb.g
  %i.ai = phi i1 [ false, %.thread628 ], [ true, %bb.g ]
  %.1503627630 = phi i32 [ %.1503627631, %.thread628 ], [ %i.y, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %.thread628 ], [ %i.z, %bb.g ] ; 29 uses
  %i.ak = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 269, ptr noundef %1) #15 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  switch i32 %i.am, label %bb.m [
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 259, i32 noundef 8) #15 ; 0 uses
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ao = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 259, i32 noundef 8) #15 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  switch i32 %i.aq, label %bb.l [
    i32 32, label %.sink.split
    i32 16, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21
  %.not581 = icmp eq i32 %i.as, 0
  br i1 %.not581, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.k
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.j, %bb.k, %bb.i
  %.sink.sink = phi i32 [ 1, %bb.i ], [ 2, %bb.l ], [ 3, %bb.j ], [ 3, %bb.k ]
  %i.at = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 317, i32 noundef %.sink.sink) #15 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load i32, ptr %i.au, align 8, !tbaa !22
  %i.aw = and i32 %i.av, 65535
  %i.ax = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 65557, i32 noundef %i.aw) #15 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.h
  %.not582 = icmp eq ptr %.0489, null
  br i1 %.not582, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !11
  %i.az = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 34675, i32 noundef %i.ay, ptr noundef nonnull %.0489) #15 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !23
  %.not583 = icmp eq i32 %i.bb, 0
  br i1 %.not583, label %.thread634, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !104 ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 4
  br i1 %i.be, label %bb.q, label %.thread633

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !105
  %.fr1179 = freeze i32 %i.bg                     ; 7 uses
  %i.bh = icmp sgt i32 %.fr1179, 4
  br i1 %i.bh, label %bb.r, label %.thread633

bb.r:                                             ; preds = %bb.q
  store volatile i16 1, ptr %i.c, align 2, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !20
  switch i32 %i.bj, label %.preheader738.preheader [
    i32 32, label %.preheader739.preheader
    i32 16, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !21
  %.not584 = icmp eq i32 %i.bl, 0
  br i1 %.not584, label %.preheader741.preheader, label %.preheader739.preheader

.preheader739.preheader:                          ; preds = %bb.r, %bb.s
  %smax = add nsw i32 %.fr1179, -1
  %i.bm = zext nneg i32 %.fr1179 to i64
  %smax900 = add nsw i32 %i.bd, -1
  %wide.trip.count901 = zext nneg i32 %smax900 to i64
  %wide.trip.count895 = zext nneg i32 %smax to i64
  br label %.preheader739

.preheader739:                                    ; preds = %.preheader739.preheader, %._crit_edge760
  %indvars.iv897 = phi i64 [ 1, %.preheader739.preheader ], [ %indvars.iv.next898, %._crit_edge760 ] ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv897, %i.bm
  br label %bb.t

._crit_edge760:                                   ; preds = %bb.y
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next898, %wide.trip.count901
  br i1 %exitcond902.not, label %.thread633, label %.preheader739

bb.t:                                             ; preds = %.preheader739, %bb.y
  %indvars.iv892 = phi i64 [ 1, %.preheader739 ], [ %indvars.iv.next893, %bb.y ] ; 2 uses
  %.0..0..0..0.219 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.bo = icmp eq i16 %.0..0..0..0.219, 3
  br i1 %i.bo, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add nuw nsw i64 %indvars.iv892, %i.bn
  %i.bq = shl i64 %i.bp, 2
  %i.br = and i64 %i.bq, 4294967292
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !106 ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bt, splat (float 1.000000e-03)
  %i.bv = select <2 x i1> %i.bu, <2 x float> %i.bt, <2 x float> splat (float 1.000000e-03) ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.by = fdiv reassoc nsz arcp contract afn float %i.bw, %i.bx
  %i.bz = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 1.010000e+00
  br i1 %i.ca, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !106 ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 1.000000e-03
  %i.ce = select reassoc nsz arcp contract afn i1 %i.cd, float %i.cc, float 1.000000e-03 ; 2 uses
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.bw, %i.ce
  %i.cg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, 1.010000e+00
  br i1 %i.ch, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.bx, %i.ce
  %i.cj = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp reassoc nsz arcp contract afn ogt float %i.cj, 1.010000e+00
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 1 ; 2 uses
  %exitcond896.not = icmp eq i64 %indvars.iv.next893, %wide.trip.count895
  br i1 %exitcond896.not, label %._crit_edge760, label %bb.t

.preheader741.preheader:                          ; preds = %bb.s
  %i.cl = add nsw i32 %i.bd, -1
  %i.cm = add nsw i32 %.fr1179, -1
  %i.cn = zext nneg i32 %.fr1179 to i64
  %wide.trip.count890 = zext nneg i32 %i.cl to i64
  %wide.trip.count = zext i32 %i.cm to i64
  %i.co = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.co, 1
  %unroll_iter = and i64 %i.co, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1132 = trunc i64 %i.co to i1
  br label %.preheader741

.preheader741:                                    ; preds = %.preheader741.preheader, %._crit_edge756
  %indvars.iv887 = phi i64 [ 1, %.preheader741.preheader ], [ %indvars.iv.next888, %._crit_edge756 ] ; 2 uses
  %i.cp = mul nuw nsw i64 %indvars.iv887, %i.cn   ; 3 uses
  %invariant.op = add nuw nsw i64 1, %i.cp
  br label %bb.ad

._crit_edge756.unr-lcssa:                         ; preds = %bb.an
  br i1 %lcmp.mod.not, label %._crit_edge756, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge756.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1132)
  %.0..0..0..0.220.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.cq = icmp eq i16 %.0..0..0..0.220.epil, 3
  br i1 %i.cq, label %._crit_edge756, label %bb.z

bb.z:                                             ; preds = %.epil.preheader
  %i.cr = add nuw nsw i64 %indvars.iv.next.1, %i.cp
  %i.cs = shl i64 %i.cr, 2
  %i.ct = and i64 %i.cs, 4294967292
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ct ; 3 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !103
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !103
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = add nsw i32 %i.cw, -166                 ; 2 uses
  %i.db = sub nsw i32 %i.da, %i.cz
  %i.dc = icmp ult i32 %i.db, -331
  br i1 %i.dc, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !103
  %i.df = zext i16 %i.de to i32                   ; 2 uses
  %i.dg = sub nsw i32 %i.da, %i.df
  %i.dh = icmp ult i32 %i.dg, -331
  br i1 %i.dh, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = add nsw i32 %i.cz, -166
  %i.dj = sub nsw i32 %i.di, %i.df
  %i.dk = icmp ult i32 %i.dj, -331
  br i1 %i.dk, label %bb.ac, label %._crit_edge756

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %._crit_edge756

._crit_edge756:                                   ; preds = %.epil.preheader, %bb.ab, %bb.ac, %._crit_edge756.unr-lcssa
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 1 ; 2 uses
  %exitcond891.not = icmp eq i64 %indvars.iv.next888, %wide.trip.count890
  br i1 %exitcond891.not, label %.thread633, label %.preheader741

bb.ad:                                            ; preds = %bb.an, %.preheader741
  %indvars.iv = phi i64 [ 1, %.preheader741 ], [ %indvars.iv.next.1, %bb.an ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader741 ], [ %niter.next.1, %bb.an ]
  %.0..0..0..0.220 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.dl = icmp eq i16 %.0..0..0..0.220, 3
  br i1 %i.dl, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = add nuw nsw i64 %indvars.iv, %i.cp
  %i.dn = shl i64 %i.dm, 2
  %i.do = and i64 %i.dn, 4294967292
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.do ; 3 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !103
  %i.dr = zext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !103
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = add nsw i32 %i.dr, -166                 ; 2 uses
  %i.dw = sub nsw i32 %i.dv, %i.du
  %i.dx = icmp ult i32 %i.dw, -331
  br i1 %i.dx, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !103
  %i.ea = zext i16 %i.dz to i32                   ; 2 uses
  %i.eb = sub nsw i32 %i.dv, %i.ea
  %i.ec = icmp ult i32 %i.eb, -331
  br i1 %i.ec, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = add nsw i32 %i.du, -166
  %i.ee = sub nsw i32 %i.ed, %i.ea
  %i.ef = icmp ult i32 %i.ee, -331
  br i1 %i.ef, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.ad
  %.0..0..0..0.220.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.eg = icmp eq i16 %.0..0..0..0.220.1, 3
  br i1 %i.eg, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op
  %i.eh = shl i64 %.reass, 2
  %i.ei = and i64 %i.eh, 4294967292
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ei ; 3 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !103
  %i.el = zext i16 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !103
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %i.ep = add nsw i32 %i.el, -166                 ; 2 uses
  %i.eq = sub nsw i32 %i.ep, %i.eo
  %i.er = icmp ult i32 %i.eq, -331
  br i1 %i.er, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.et = load i16, ptr %i.es, align 2, !tbaa !103
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = sub nsw i32 %i.ep, %i.eu
  %i.ew = icmp ult i32 %i.ev, -331
  br i1 %i.ew, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = add nsw i32 %i.eo, -166
  %i.ey = sub nsw i32 %i.ex, %i.eu
  %i.ez = icmp ult i32 %i.ey, -331
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ai
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge756.unr-lcssa, label %bb.ad

.preheader738.preheader:                          ; preds = %bb.r
  %smax906 = add nsw i32 %.fr1179, -1
  %i.fa = zext nneg i32 %.fr1179 to i64
  %smax912 = add nsw i32 %i.bd, -1
  %wide.trip.count913 = zext nneg i32 %smax912 to i64
  %wide.trip.count907 = zext i32 %smax906 to i64
  %i.fb = add nsw i64 %wide.trip.count907, -1     ; 3 uses
  %xtraiter1134 = and i64 %i.fb, 1
  %unroll_iter1137 = and i64 %i.fb, -2
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1134, 0
  %lcmp.mod1136 = trunc i64 %i.fb to i1
  br label %.preheader738

.preheader738:                                    ; preds = %.preheader738.preheader, %._crit_edge764
  %indvars.iv909 = phi i64 [ 1, %.preheader738.preheader ], [ %indvars.iv.next910, %._crit_edge764 ] ; 2 uses
  %i.fc = mul nuw nsw i64 %indvars.iv909, %i.fa   ; 3 uses
  %invariant.op1202 = add nuw nsw i64 1, %i.fc
  br label %bb.as

._crit_edge764.unr-lcssa:                         ; preds = %bb.bc
  br i1 %lcmp.mod1135.not, label %._crit_edge764, label %.epil.preheader1133

.epil.preheader1133:                              ; preds = %._crit_edge764.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod1136)
  %.0..0..0..0.221.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.fd = icmp eq i16 %.0..0..0..0.221.epil, 3
  br i1 %i.fd, label %._crit_edge764, label %bb.ao

bb.ao:                                            ; preds = %.epil.preheader1133
  %i.fe = add nuw nsw i64 %indvars.iv.next904.1, %i.fc
  %i.ff = shl i64 %i.fe, 2
  %i.fg = and i64 %i.ff, 4294967292
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fg ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !107
  %i.fj = zext i8 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !107
  %i.fm = zext i8 %i.fl to i32                    ; 2 uses
  %i.fn = add nsw i32 %i.fj, -3                   ; 2 uses
  %i.fo = sub nsw i32 %i.fn, %i.fm
  %i.fp = icmp ult i32 %i.fo, -5
  br i1 %i.fp, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !107
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  %i.ft = sub nsw i32 %i.fn, %i.fs
  %i.fu = icmp ult i32 %i.ft, -5
  br i1 %i.fu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = add nsw i32 %i.fm, -3
  %i.fw = sub nsw i32 %i.fv, %i.fs
  %i.fx = icmp ult i32 %i.fw, -5
  br i1 %i.fx, label %bb.ar, label %._crit_edge764

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %._crit_edge764

._crit_edge764:                                   ; preds = %.epil.preheader1133, %bb.aq, %bb.ar, %._crit_edge764.unr-lcssa
  %indvars.iv.next910 = add nuw nsw i64 %indvars.iv909, 1 ; 2 uses
  %exitcond914.not = icmp eq i64 %indvars.iv.next910, %wide.trip.count913
  br i1 %exitcond914.not, label %.thread633, label %.preheader738

bb.as:                                            ; preds = %bb.bc, %.preheader738
  %indvars.iv903 = phi i64 [ 1, %.preheader738 ], [ %indvars.iv.next904.1, %bb.bc ] ; 3 uses
  %niter1138 = phi i64 [ 0, %.preheader738 ], [ %niter1138.next.1, %bb.bc ]
  %.0..0..0..0.221 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.fy = icmp eq i16 %.0..0..0..0.221, 3
  br i1 %i.fy, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = add nuw nsw i64 %indvars.iv903, %i.fc
  %i.ga = shl i64 %i.fz, 2
  %i.gb = and i64 %i.ga, 4294967292
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 %i.gb ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !107
  %i.ge = zext i8 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !107
  %i.gh = zext i8 %i.gg to i32                    ; 2 uses
  %i.gi = add nsw i32 %i.ge, -3                   ; 2 uses
  %i.gj = sub nsw i32 %i.gi, %i.gh
  %i.gk = icmp ult i32 %i.gj, -5
  br i1 %i.gk, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !107
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = sub nsw i32 %i.gi, %i.gn
  %i.gp = icmp ult i32 %i.go, -5
  br i1 %i.gp, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gq = add nsw i32 %i.gh, -3
  %i.gr = sub nsw i32 %i.gq, %i.gn
  %i.gs = icmp ult i32 %i.gr, -5
  br i1 %i.gs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.as
  %.0..0..0..0.221.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.gt = icmp eq i16 %.0..0..0..0.221.1, 3
  br i1 %i.gt, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.reass1203 = add nuw nsw i64 %indvars.iv903, %invariant.op1202
  %i.gu = shl i64 %.reass1203, 2
  %i.gv = and i64 %i.gu, 4294967292
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %i.gv ; 3 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !107
  %i.gy = zext i8 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !107
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = add nsw i32 %i.gy, -3                   ; 2 uses
  %i.hd = sub nsw i32 %i.hc, %i.hb
  %i.he = icmp ult i32 %i.hd, -5
  br i1 %i.he, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !107
  %i.hh = zext i8 %i.hg to i32                    ; 2 uses
  %i.hi = sub nsw i32 %i.hc, %i.hh
  %i.hj = icmp ult i32 %i.hi, -5
  br i1 %i.hj, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hk = add nsw i32 %i.hb, -3
  %i.hl = sub nsw i32 %i.hk, %i.hh
  %i.hm = icmp ult i32 %i.hl, -5
  br i1 %i.hm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  store volatile i16 3, ptr %i.c, align 2, !tbaa !103
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ax
  %indvars.iv.next904.1 = add nuw nsw i64 %indvars.iv903, 2 ; 2 uses
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %._crit_edge764.unr-lcssa, label %bb.as

.thread633:                                       ; preds = %._crit_edge756, %._crit_edge760, %._crit_edge764, %bb.p, %bb.q
  %.0..0..0..0.222 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.hn = icmp eq i16 %.0..0..0..0.222, 3
  br i1 %i.hn, label %bb.bd, label %.thread634

bb.bd:                                            ; preds = %.thread633
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !108
  %i.hp = and i32 %i.ho, 262144
  %.not587 = icmp eq i32 %i.hp, 0
  br i1 %.not587, label %.thread634, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, ptr noundef %1) #15
  br label %.thread634

.thread634:                                       ; preds = %bb.o, %bb.bd, %bb.be, %.thread633
  %.0..0..0..0.223 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.hq = zext i16 %.0..0..0..0.223 to i32
  %i.hr = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 277, i32 noundef %i.hq) #15 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 8 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !20
  %i.hu = and i32 %i.ht, 65535
  %i.hv = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 258, i32 noundef %i.hu) #15 ; 0 uses
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !20
  switch i32 %i.hw, label %.fold.split [
    i32 32, label %bb.bg
    i32 16, label %bb.bf
  ]

bb.bf:                                            ; preds = %.thread634
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !21
  %.not588 = icmp eq i32 %i.hy, 0
  %i.hz = select i1 %.not588, i32 1, i32 3
  br label %bb.bg

.fold.split:                                      ; preds = %.thread634
  br label %bb.bg

bb.bg:                                            ; preds = %.thread634, %.fold.split, %bb.bf
  %i.ia = phi i32 [ 3, %.thread634 ], [ %i.hz, %bb.bf ], [ 1, %.fold.split ]
  %i.ib = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 339, i32 noundef %i.ia) #15 ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !105
  %i.ie = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 256, i32 noundef %i.id) #15 ; 0 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !104
  %i.ih = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 257, i32 noundef %i.ig) #15 ; 0 uses
  %.0..0..0..0.224 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.ii = icmp eq i16 %.0..0..0..0.224, 3
  %. = select i1 %i.ii, i32 2, i32 1
  %i.ij = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 262, i32 noundef %.) #15 ; 0 uses
  %i.ik = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 284, i32 noundef 1) #15 ; 0 uses
  %i.il = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 274, i32 noundef 1) #15 ; 0 uses
  %i.im = call i32 @TIFFDefaultStripSize(ptr noundef nonnull %i.aj, i32 noundef 0) #15
  %i.in = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 278, i32 noundef %i.im) #15 ; 0 uses
  %i.io = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.3) #15
  %i.ip = sitofp reassoc nsz arcp contract afn i32 %i.io to float
  %i.iq = fpext reassoc nsz arcp contract afn float %i.ip to double ; 4 uses
  %i.ir = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 282, double noundef %i.iq) #15 ; 0 uses
  %i.is = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 283, double noundef %i.iq) #15 ; 0 uses
  %i.it = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.aj, i32 noundef 296, i32 noundef 2) #15 ; 0 uses
  %i.iu = load i32, ptr %i.ic, align 8, !tbaa !105
  %.0..0..0..0.225 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.iv = zext i16 %.0..0..0..0.225 to i32
  %i.iw = mul nsw i32 %i.iu, %i.iv
  %i.ix = load i32, ptr %i.hs, align 4, !tbaa !20 ; 2 uses
  %i.iy = mul nsw i32 %i.iw, %i.ix
  %i.iz = sdiv i32 %i.iy, 8
  %i.ja = sext i32 %i.iz to i64
  %i.jb = call noalias ptr @malloc(i64 noundef %i.ja) #16 ; 21 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %.thread701, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  switch i32 %i.ix, label %bb.bm [
    i32 32, label %.preheader728
    i32 16, label %bb.bj
  ]

.preheader728:                                    ; preds = %bb.bh
  %i.jd = load i32, ptr %i.if, align 4, !tbaa !104
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph791, label %.thread635

bb.bi:                                            ; preds = %._crit_edge789
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.jf = load i32, ptr %i.if, align 4, !tbaa !104
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next928, %i.jg
  br i1 %i.jh, label %.lr.ph791, label %.thread635

.lr.ph791:                                        ; preds = %.preheader728, %bb.bi
  %indvars.iv927 = phi i64 [ %indvars.iv.next928, %bb.bi ], [ 0, %.preheader728 ] ; 3 uses
  %i.ji = load i32, ptr %i.ic, align 8, !tbaa !105
  %i.jj = freeze i32 %i.ji                        ; 5 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %.lr.ph788.preheader, label %._crit_edge789

.lr.ph788.preheader:                              ; preds = %.lr.ph791
  %i.jl = shl nuw nsw i64 %indvars.iv927, 2
  %i.jm = zext nneg i32 %i.jj to i64
  %i.jn = mul i64 %i.jl, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jn ; 2 uses
  %xtraiter1149 = and i32 %i.jj, 3                ; 3 uses
  %i.jp = icmp ult i32 %i.jj, 4
  br i1 %i.jp, label %.lr.ph788.epil.preheader, label %.lr.ph788.preheader.new

.lr.ph788.preheader.new:                          ; preds = %.lr.ph788.preheader
  %unroll_iter1153 = and i32 %i.jj, 2147483644
  br label %.lr.ph788

._crit_edge789.loopexit.unr-lcssa:                ; preds = %.lr.ph788
  %lcmp.mod1151.not = icmp eq i32 %xtraiter1149, 0
  br i1 %lcmp.mod1151.not, label %._crit_edge789, label %.lr.ph788.epil.preheader

.lr.ph788.epil.preheader:                         ; preds = %._crit_edge789.loopexit.unr-lcssa, %.lr.ph788.preheader
  %.0486785.epil.init = phi ptr [ %i.jb, %.lr.ph788.preheader ], [ %i.kq, %._crit_edge789.loopexit.unr-lcssa ]
  %.0487784.epil.init = phi ptr [ %i.jo, %.lr.ph788.preheader ], [ %i.ko, %._crit_edge789.loopexit.unr-lcssa ]
end_hunk_0
