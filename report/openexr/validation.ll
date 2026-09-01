Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/validation?download=true
begin_hunk_0_@validate_req_attr:bb.a
  %.5244 = phi i32 [ 0, %.thread239 ], [ %.4234, %bb.aa ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26
  %.not182 = icmp eq i32 %i.db, 25
  br i1 %.not182, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25
  %i.de = tail call i32 (ptr, i32, ptr, ...) %i.dd(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20) #5
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !38 ; 2 uses
  %.not183 = icmp eq ptr %i.dg, null
  br i1 %.not183, label %bb.ag, label %bb.aj

.thread251:                                       ; preds = %.thread245
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29
  store i64 0, ptr %i.dj, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !38 ; 2 uses
  %.not183253 = icmp eq ptr %i.dl, null
  br i1 %.not183253, label %.thread255, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not184 = icmp eq i32 %2, 0
  br i1 %.not184, label %bb.ai, label %.thread255

.thread255:                                       ; preds = %.thread251, %bb.ag
  %i.dm = phi ptr [ %i.df, %bb.ag ], [ %i.dk, %.thread251 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = tail call i32 @exr_attr_list_add_static_name(ptr noundef %0, ptr noundef nonnull %i.dn, ptr noundef nonnull @.str.21, i32 noundef 9, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.dm) #5 ; 2 uses
  %.not185 = icmp eq i32 %i.do, 0
  br i1 %.not185, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %.thread255
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store float 1.000000e+00, ptr %i.dq, align 8, !tbaa !29
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !25
  %i.dt = tail call i32 (ptr, i32, ptr, ...) %i.ds(ptr noundef %0, i32 noundef 13, ptr noundef nonnull @.str.22) #5
  br label %.critedge

bb.aj:                                            ; preds = %.thread251, %bb.af
  %i.du = phi ptr [ %i.dl, %.thread251 ], [ %i.dg, %bb.af ]
  %.6254 = phi i32 [ 0, %.thread251 ], [ %.5244, %bb.af ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26
  %.not186 = icmp eq i32 %i.dw, 9
  br i1 %.not186, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !25
  %i.dz = tail call i32 (ptr, i32, ptr, ...) %i.dy(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.23) #5
  br label %.critedge

bb.al:                                            ; preds = %bb.aj, %bb.ah
  %.7 = phi i32 [ %.6254, %bb.aj ], [ 0, %bb.ah ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !39
  %.not187 = icmp eq i8 %i.eb, 0
  br i1 %.not187, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !40
  %.not188 = icmp eq i8 %i.ed, 0
  br i1 %.not188, label %.critedge, label %.thread257

bb.an:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !41 ; 2 uses
  %.not190 = icmp eq ptr %i.ef, null
  br i1 %.not190, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !25
  %i.ei = tail call i32 (ptr, i32, ptr, ...) %i.eh(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull @.str.24) #5
  br label %.critedge

bb.ap:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !26
  %.not191 = icmp eq i32 %i.ek, 20
  br i1 %.not191, label %.thread257, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !25
  %i.en = tail call i32 (ptr, i32, ptr, ...) %i.em(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.25) #5
  br label %.critedge

.thread257:                                       ; preds = %bb.am, %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !42 ; 2 uses
  %.not192 = icmp eq ptr %i.ep, null
  br i1 %.not192, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.thread257
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !25
  %i.es = tail call i32 (ptr, i32, ptr, ...) %i.er(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull @.str.26) #5
  br label %.critedge

bb.as:                                            ; preds = %.thread257
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !26
  %.not193 = icmp eq i32 %i.eu, 20
  br i1 %.not193, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !25
  %i.ex = tail call i32 (ptr, i32, ptr, ...) %i.ew(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.27) #5
  br label %.critedge

bb.au:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !40
  %.not194 = icmp eq i8 %i.ez, 0
  br i1 %.not194, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !43
  %.not195 = icmp eq ptr %i.fb, null
  br i1 %.not195, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %.not196 = icmp eq i32 %2, 0
  br i1 %.not196, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fd = tail call i32 @exr_attr_list_add_static_name(ptr noundef nonnull %0, ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.28, i32 noundef 11, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.fa) #5
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i32 1, ptr %i.ff, align 8, !tbaa !29
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25
  %i.fi = tail call i32 (ptr, i32, ptr, ...) %i.fh(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull @.str.29) #5
  br label %.critedge

bb.az:                                            ; preds = %bb.ax, %bb.av, %bb.au
  %.8 = phi i32 [ %.7, %bb.av ], [ %i.fd, %bb.ax ], [ %.7, %bb.au ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !8
  %.not197 = icmp eq i8 %i.fk, 0
  br i1 %.not197, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !44
  %.not198 = icmp eq ptr %i.fm, null
  br i1 %.not198, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !25
  %i.fp = tail call i32 (ptr, i32, ptr, ...) %i.fo(ptr noundef nonnull %0, i32 noundef 13, ptr noundef nonnull @.str.30) #5
  br label %.critedge

.critedge:                                        ; preds = %.thread245, %.thread209, %.thread200, %bb.am, %bb.ba, %bb.az, %.thread255, %.thread235, %.thread223, %bb.c, %bb.bb, %bb.ay, %bb.at, %bb.ar, %bb.aq, %bb.ao, %bb.ak, %bb.ai, %bb.ae, %bb.ac, %bb.z, %bb.x, %bb.u, %bb.s, %bb.p, %bb.n, %bb.k, %bb.i, %bb.f, %bb.d
  %.5139 = phi i32 [ %i.l, %bb.f ], [ %i.ae, %bb.k ], [ %i.az, %bb.p ], [ %i.bt, %bb.u ], [ %i.cm, %bb.z ], [ %i.de, %bb.ae ], [ %i.dz, %bb.ak ], [ %i.en, %bb.aq ], [ %i.ex, %bb.at ], [ %i.do, %.thread255 ], [ %i.fp, %bb.bb ], [ %i.fi, %bb.ay ], [ %i.es, %bb.ar ], [ %i.ei, %bb.ao ], [ %i.cd, %.thread235 ], [ %i.dt, %bb.ai ], [ %i.aq, %.thread209 ], [ %i.cy, %bb.ac ], [ %i.bk, %.thread223 ], [ %i.cg, %bb.x ], [ %.7, %bb.am ], [ %i.bn, %bb.s ], [ %.8, %bb.az ], [ %i.at, %bb.n ], [ %i.v, %.thread200 ], [ %i.y, %bb.i ], [ %i.g, %bb.d ], [ %i.d, %bb.c ], [ %.8, %bb.ba ], [ %i.cv, %.thread245 ]
  ret i32 %.5139
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @validate_image_dimensions(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.077.0.copyload = load i32, ptr %i.a, align 8, !tbaa !33 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !33 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !33 ; 4 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 156
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !33 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8, !tbaa !33 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 164
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !33 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !33 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !33 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !29 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load float, ptr %i.m, align 8, !tbaa !29 ; 2 uses
  %i.o = sext i32 %.sroa.11.0.copyload to i64
  %i.p = sext i32 %.sroa.077.0.copyload to i64
  %i.q = sub nsw i64 %i.o, %i.p                   ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1
  %i.s = sext i32 %.sroa.15.0.copyload to i64
  %i.t = sext i32 %.sroa.7.0.copyload to i64
  %i.u = sub nsw i64 %i.s, %i.t                   ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = icmp sgt i32 %.sroa.0.0.copyload, %.sroa.9.0.copyload
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %.sroa.6.0.copyload, %.sroa.12.0.copyload
  %i.y = icmp slt i32 %.sroa.0.0.copyload, -1073741822
  %or.cond = or i1 %i.y, %i.x
  %i.z = icmp slt i32 %.sroa.6.0.copyload, -1073741822
  %or.cond9 = or i1 %i.z, %or.cond
  %i.aa = icmp sgt i32 %.sroa.9.0.copyload, 1073741822
  %or.cond14 = or i1 %i.aa, %or.cond9
  %i.ab = icmp sgt i32 %.sroa.12.0.copyload, 1073741822
  %or.cond19 = select i1 %or.cond14, i1 true, i1 %i.ab
  br i1 %or.cond19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = tail call i32 (ptr, i32, ptr, ...) %i.ad(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.31, i32 noundef %.sroa.0.0.copyload, i32 noundef %.sroa.6.0.copyload, i32 noundef %.sroa.9.0.copyload, i32 noundef %.sroa.12.0.copyload) #5
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.af = icmp sgt i32 %.sroa.077.0.copyload, %.sroa.11.0.copyload
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp sgt i32 %.sroa.7.0.copyload, %.sroa.15.0.copyload
  %i.ah = icmp slt i32 %.sroa.077.0.copyload, -1073741822
  %or.cond24 = select i1 %i.ag, i1 true, i1 %i.ah
  %i.ai = icmp slt i32 %.sroa.7.0.copyload, -1073741822
  %or.cond29 = or i1 %i.ai, %or.cond24
  %i.aj = icmp sgt i32 %.sroa.11.0.copyload, 1073741822
  %or.cond34 = select i1 %or.cond29, i1 true, i1 %i.aj
  %i.ak = icmp sgt i32 %.sroa.15.0.copyload, 1073741822
  %or.cond39 = select i1 %or.cond34, i1 true, i1 %i.ak
  br i1 %or.cond39, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.an = tail call i32 (ptr, i32, ptr, ...) %i.am(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.32, i32 noundef %.sroa.077.0.copyload, i32 noundef %.sroa.7.0.copyload, i32 noundef %.sroa.11.0.copyload, i32 noundef %.sroa.15.0.copyload) #5
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp sgt i32 %i.d, 0
  %.not = icmp slt i32 %i.d, 1
  %i.ap = zext nneg i32 %i.d to i64               ; 2 uses
  %.not123 = icmp slt i64 %i.q, %i.ap
  %or.cond127.not = select i1 %.not, i1 true, i1 %.not123
  br i1 %or.cond127.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = tail call i32 (ptr, i32, ptr, ...) %i.ar(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.33, i64 noundef %i.r, i32 noundef %i.d) #5
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %.not128 = icmp slt i32 %i.f, 1
  %i.at = zext nneg i32 %i.f to i64               ; 2 uses
  %.not124 = icmp slt i64 %i.u, %i.at
  %or.cond129.not = select i1 %.not128, i1 true, i1 %.not124
  br i1 %or.cond129.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = tail call i32 (ptr, i32, ptr, ...) %i.av(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.34, i64 noundef %i.v, i32 noundef %i.f) #5
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %2 = icmp sgt i32 %i.f, 0
  %or.cond41 = and i1 %i.ao, %2
  br i1 %or.cond41, label %bb.l, label %.thread133

bb.l:                                             ; preds = %bb.k
  %i.ax = mul nuw nsw i64 %i.at, %i.ap            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  %.not125 = icmp eq ptr %i.az, null
  br i1 %.not125, label %.thread133, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %.not126 = icmp slt i64 %i.ax, %i.bc
  br i1 %.not126, label %bb.n, label %.thread133

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  %i.bf = tail call i32 (ptr, i32, ptr, ...) %i.be(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.35, i64 noundef %i.bc, i64 noundef %i.ax) #5
  br label %bb.r

.thread133:                                       ; preds = %bb.l, %bb.m, %bb.k
  %i.bg = tail call i1 @llvm.is.fpclass.f32(float %i.j, /* (nan inf zero sub) */ i32 759)
  %i.bh = fcmp olt float %i.j, f0x358637BD
  %or.cond43 = or i1 %i.bg, %i.bh
  %i.bi = fcmp ogt float %i.j, 1.000000e+06
  %or.cond45 = or i1 %i.bi, %or.cond43
  br i1 %or.cond45, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread133
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bl = fpext float %i.j to double
  %i.bm = tail call i32 (ptr, i32, ptr, ...) %i.bk(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.36, double noundef %i.bl) #5
  br label %bb.r

bb.p:                                             ; preds = %.thread133
  %i.bn = fcmp olt float %i.n, 0.000000e+00
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !25
  %i.bq = fpext float %i.n to double
  %i.br = tail call i32 (ptr, i32, ptr, ...) %i.bp(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.37, double noundef %i.bq) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.o, %bb.j, %bb.h, %bb.f, %bb.c
  %.1 = phi i32 [ %i.ae, %bb.c ], [ %i.an, %bb.f ], [ %i.as, %bb.h ], [ %i.aw, %bb.j ], [ %i.bm, %bb.o ], [ %i.br, %bb.q ], [ %i.bf, %bb.n ], [ 0, %bb.p ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @validate_channels(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call i32 (ptr, i32, ptr, ...) %i.d(ptr noundef %0, i32 noundef 13, ptr noundef nonnull @.str.38) #5
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %.not76 = icmp eq i32 %i.g, 4
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = tail call i32 (ptr, i32, ptr, ...) %i.i(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.39) #5
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %.not77 = icmp eq ptr %i.n, null
  br i1 %.not77, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = tail call i32 %i.p(ptr noundef %0, i32 noundef 15, ptr noundef nonnull @.str.40) #5
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = tail call i32 %i.u(ptr noundef %0, i32 noundef 6, ptr noundef nonnull @.str.41) #5
  br label %.thread

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 8, !tbaa !33 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !33 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !33
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 156
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !33
  %i.x = sext i32 %.sroa.9.0.copyload to i64
  %i.y = sext i32 %.sroa.0.0.copyload to i64
  %i.z = sub nsw i64 %i.x, %i.y
  %i.aa = add nsw i64 %i.z, 1                     ; 2 uses
  %i.ab = sext i32 %.sroa.10.0.copyload to i64
  %i.ac = sext i32 %.sroa.6.0.copyload to i64
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = add nsw i64 %i.ad, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.j, !llvm.loop !53

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !55 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !57 ; 6 uses
  %i.am = icmp slt i32 %i.aj, 1
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58
  %i.ar = tail call i32 (ptr, i32, ptr, ...) %i.ao(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.42, ptr noundef %i.aq, i32 noundef %i.aj) #5
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.as = icmp slt i32 %i.al, 1
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.ax = tail call i32 (ptr, i32, ptr, ...) %i.au(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.43, ptr noundef %i.aw, i32 noundef %i.al) #5
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ay = srem i32 %.sroa.0.0.copyload, %i.aj
  %.not78 = icmp eq i32 %i.ay, 0
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !58
  %i.bd = tail call i32 (ptr, i32, ptr, ...) %i.ba(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.44, ptr noundef %i.bc, i32 noundef %.sroa.0.0.copyload, i32 noundef %i.aj) #5
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.be = srem i32 %.sroa.6.0.copyload, %i.al
  %.not79 = icmp eq i32 %i.be, 0
  br i1 %.not79, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.bj = tail call i32 (ptr, i32, ptr, ...) %i.bg(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.45, ptr noundef %i.bi, i32 noundef %.sroa.6.0.copyload, i32 noundef %i.al) #5
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.bk = zext nneg i32 %i.aj to i64
  %i.bl = srem i64 %i.aa, %i.bk
  %.not80 = icmp eq i64 %i.bl, 0
  br i1 %.not80, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.bq = tail call i32 (ptr, i32, ptr, ...) %i.bn(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.46, ptr noundef %i.bp, i64 noundef %i.aa, i32 noundef %i.aj) #5
end_hunk_0
