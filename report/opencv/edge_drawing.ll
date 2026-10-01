Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl20ValidateLineSegmentsEv:bb.a
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114, %bb.p ] ; 4 uses
  %.081107 = phi i32 [ 0, %.lr.ph ], [ %.182, %bb.p ] ; 5 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !147
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.by, i64 %indvars.iv113 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !226
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !227 ; 2 uses
  %i.cf = fdiv double 1.000000e+00, %i.ce
  %.sink = select i1 %i.cc, double %i.ce, double %i.cf
  %i.cg = tail call double @atan(double noundef %.sink) #42 ; 3 uses
  %i.ch = fcmp olt double %i.cg, 0.000000e+00
  %i.ci = fadd double %i.cg, f0x400921FB54442D18
  %.179 = select i1 %i.ch, double %i.ci, double %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !153
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !228 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 79
  br i1 %i.cr, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = icmp slt i32 %i.cq, 26
  br i1 %i.cs, label %bb.m, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %i.cq to i64
  br label %.preheader

bb.h:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !140 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !40
  %.not.i = icmp slt i32 %.1, %i.cv
  br i1 %.not.i, label %_ZN6NFALUT20checkValidationByNFAEii.exit, label %.split

.split:                                           ; preds = %bb.h
  %i.cw = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ct, i32 noundef %.1, i32 noundef %.2)
  %i.cx = fcmp ult double %i.cw, 0.000000e+00
  br i1 %i.cx, label %.split92, label %.critedge

_ZN6NFALUT20checkValidationByNFAEii.exit:         ; preds = %bb.h
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !41
  %i.cz = sext i32 %.1 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !44
  %.not93 = icmp slt i32 %.2, %i.db
  br i1 %.not93, label %.split92, label %.critedge

.preheader:                                       ; preds = %.preheader.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.074105 = phi i32 [ 0, %.preheader.preheader ], [ %.1, %bb.l ] ; 4 uses
  %.075104 = phi i32 [ 0, %.preheader.preheader ], [ %.2, %bb.l ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !195 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !194 ; 5 uses
  %i.dg = icmp slt i32 %i.dd, 1
  br i1 %i.dg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.dh = load i32, ptr %i.ba, align 4, !tbaa !168
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = icmp sge i32 %i.dd, %i.di
  %i.dk = icmp slt i32 %i.df, 1
  %or.cond = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dl = load i32, ptr %i.ay, align 8, !tbaa !169 ; 4 uses
  %i.dm = add nsw i32 %i.dl, -1
  %.not = icmp slt i32 %i.df, %i.dm
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dn = add nsw i32 %.074105, 1
  %i.do = load ptr, ptr %i.bx, align 8, !tbaa !167 ; 3 uses
  %i.dp = add nuw nsw i32 %i.dd, 1
  %i.dq = mul nuw nsw i32 %i.dl, %i.dp
  %i.dr = add nuw nsw i32 %i.dq, %i.df
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.do, i64 %i.ds  ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !59
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nsw i32 %i.dd, -1
  %i.dy = mul nuw nsw i32 %i.dl, %i.dx
  %i.dz = add nsw i32 %i.dy, %i.df
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %i.do, i64 %i.ea  ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !59
  %i.ee = zext i8 %i.ed to i32
  %i.ef = sub nsw i32 %i.dw, %i.ee                ; 2 uses
  %i.eg = getelementptr i8, ptr %i.eb, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !59
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr i8, ptr %i.dt, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !59
  %i.el = zext i8 %i.ek to i32
  %i.em = sub nsw i32 %i.ei, %i.el                ; 2 uses
  %i.en = add nsw i32 %i.em, %i.ef
  %i.eo = mul nuw nsw i32 %i.dl, %i.dd
  %i.ep = add nsw i32 %i.eo, %i.df
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr i8, ptr %i.do, i64 %i.eq  ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !59
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nsw i32 %i.en, %i.eu
  %i.ew = getelementptr i8, ptr %i.er, i64 -1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !59
  %i.ey = zext i8 %i.ex to i32
  %i.ez = sub nsw i32 %i.ev, %i.ey
  %i.fa = load i8, ptr %i.dt, align 1, !tbaa !59
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load i8, ptr %i.eb, align 1, !tbaa !59
  %i.fd = zext i8 %i.fc to i32
  %i.fe = add nsw i32 %i.ef, %i.fb
  %i.ff = sub nsw i32 %i.em, %i.fe
  %.neg = add nsw i32 %i.ff, %i.fd
  %i.fg = sitofp i32 %i.ez to float
  %i.fh = sitofp i32 %.neg to float
  %i.fi = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.fg, float noundef %i.fh) ; 2 uses
  %i.fj = fpext float %i.fi to double             ; 2 uses
  %i.fk = fcmp ogt float %i.fi, 1.800000e+02
  %i.fl = fadd nnan double %i.fj, -1.800000e+02
  %.0.i91 = select i1 %i.fk, double %i.fl, double %i.fj
  %i.fm = fdiv double %.0.i91, 1.800000e+02
  %i.fn = fmul double %i.fm, f0x400921FB54442D18
  %i.fo = fsub double %.179, %i.fn
  %i.fp = tail call double @llvm.fabs.f64(double %i.fo) ; 2 uses
  %i.fq = load double, ptr %i.a, align 8, !tbaa !225 ; 2 uses
  %i.fr = fcmp ole double %i.fp, %i.fq
  %i.fs = fsub double f0x400921FB54442D18, %i.fq
  %i.ft = fcmp oge double %i.fp, %i.fs
  %or.cond90.not = or i1 %i.fr, %i.ft
  %i.fu = zext i1 %or.cond90.not to i32
  %.176 = add nsw i32 %.075104, %i.fu
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.i, %bb.j, %bb.k
  %.2 = phi i32 [ %.176, %bb.k ], [ %.075104, %bb.j ], [ %.075104, %bb.i ], [ %.075104, %.preheader ] ; 3 uses
  %.1 = phi i32 [ %i.dn, %bb.k ], [ %.074105, %bb.j ], [ %.074105, %bb.i ], [ %.074105, %.preheader ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %.preheader, !llvm.loop !498

.split92:                                         ; preds = %.split, %_ZN6NFALUT20checkValidationByNFAEii.exit
  %i.fv = tail call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl23ValidateLineSegmentRectEPiS2_P13EDLineSegment(ptr noundef nonnull align 8 dereferenceable(2216) %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bz)
  br i1 %i.fv, label %.critedge, label %bb.p

bb.m:                                             ; preds = %bb.g
  %i.fw = tail call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl23ValidateLineSegmentRectEPiS2_P13EDLineSegment(ptr noundef nonnull align 8 dereferenceable(2216) %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bz)
  br i1 %i.fw, label %.critedge, label %bb.p

.critedge:                                        ; preds = %.split92, %.split, %bb.f, %_ZN6NFALUT20checkValidationByNFAEii.exit, %bb.m
  %i.fx = zext i32 %.081107 to i64
  %.not88 = icmp eq i64 %indvars.iv113, %i.fx
  br i1 %.not88, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.fy = load ptr, ptr %i.bv, align 8, !tbaa !147 ; 2 uses
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fy, i64 %indvars.iv113
  %i.ga = sext i32 %.081107 to i64
  %i.gb = getelementptr inbounds nuw [72 x i8], ptr %i.fy, i64 %i.ga
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.gb, ptr noundef nonnull align 8 dereferenceable(68) %i.fz, i64 68, i1 false), !tbaa.struct !222
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %i.gc = add nsw i32 %.081107, 1
  br label %bb.p

bb.p:                                             ; preds = %.split92, %bb.o, %bb.m
  %.182 = phi i32 [ %i.gc, %bb.o ], [ %.081107, %bb.m ], [ %.081107, %.split92 ] ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.gd = load i32, ptr %i.bs, align 8, !tbaa !214
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next114, %i.ge
  br i1 %i.gf, label %bb.f, label %._crit_edge, !llvm.loop !499
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl7LineFitEPdS2_iRdS3_S3_Ri(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 10 uses
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = icmp ult i32 %2, 4
  br i1 %i.c, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.as, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %i.d = phi <2 x double> [ %.epil.init, %.epil.preheader ], [ %i.k, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.f = load double, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.h = load double, ptr %i.g, align 8, !tbaa !46
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.k = fadd <2 x double> %i.d, %i.j             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %bb.c, !llvm.loop !500

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader.unr-lcssa
  %.lcssa207 = phi <2 x double> [ %i.as, %.lr.ph.preheader.unr-lcssa ], [ %i.k, %bb.c ] ; 3 uses
  %i.l = uitofp nneg i32 %2 to double             ; 5 uses
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x double> %.lcssa207, %i.n       ; 3 uses
  %xtraiter210 = and i64 %wide.trip.count, 1
  %i.p = icmp eq i64 %i.b, 0
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter217 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.d ] ; 6 uses
  %i.q = phi <2 x double> [ zeroinitializer, %.new ], [ %i.as, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.s = load double, ptr %i.r, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !46
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1
  %i.x = fadd <2 x double> %i.q, %i.w
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !46
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.z, i64 1
  %i.ae = fadd <2 x double> %i.x, %i.ad
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ag = load double, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !46
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ag, i64 1
  %i.al = fadd <2 x double> %i.ae, %i.ak
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.an = load double, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.an, i64 1
  %i.as = fadd <2 x double> %i.al, %i.ar          ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %bb.d, !llvm.loop !501

.lr.ph145.preheader.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod214.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod214.not, label %.lr.ph145.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph145.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv167.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next168.1, %.lr.ph145.preheader.unr-lcssa ] ; 2 uses
  %.epil.init213 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bx, %.lr.ph145.preheader.unr-lcssa ]
  %lcmp.mod216 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv167.epil.init
  %i.au = load double, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv167.epil.init
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 1
  %i.az = fsub <2 x double> %i.ay, %i.o           ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> %.epil.init213)
  br label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %.lr.ph145.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa206 = phi <2 x double> [ %i.bx, %.lr.ph145.preheader.unr-lcssa ], [ %i.ba, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bb = extractelement <2 x double> %.lcssa206, i64 0
  %i.bc = extractelement <2 x double> %.lcssa206, i64 1
  %i.bd = fcmp olt double %i.bc, %i.bb            ; 5 uses
  %. = zext i1 %i.bd to i32
  %i.be = extractelement <2 x double> %.lcssa207, i64 0 ; 3 uses
  %i.bf = extractelement <2 x double> %.lcssa207, i64 1 ; 3 uses
  %.0115..0116 = select i1 %i.bd, double %i.bf, double %i.be
  %.0116..0115 = select i1 %i.bd, double %i.be, double %i.bf ; 2 uses
  %.131 = select i1 %i.bd, ptr %0, ptr %1         ; 9 uses
  %.132 = select i1 %i.bd, ptr %1, ptr %0         ; 4 uses
  store i32 %., ptr %6, align 4, !tbaa !44
  %xtraiter219 = and i64 %wide.trip.count, 1
  %i.bg = icmp eq i64 %i.b, 0
  br i1 %i.bg, label %.lr.ph145.epil.preheader, label %.lr.ph145.preheader.new

.lr.ph145.preheader.new:                          ; preds = %.lr.ph145.preheader
  %unroll_iter226 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph145

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv167 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next168.1, %.lr.ph ] ; 4 uses
  %i.bh = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph ]
  %niter218 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter218.next.1, %.lr.ph ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv167
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv167
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !46
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bj, i64 1
  %i.bo = fsub <2 x double> %i.bn, %i.o           ; 2 uses
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bo, <2 x double> %i.bh)
  %indvars.iv.next168 = or disjoint i64 %indvars.iv167, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next168
  %i.br = load double, ptr %i.bq, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next168
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !46
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.br, i64 1
  %i.bw = fsub <2 x double> %i.bv, %i.o           ; 2 uses
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bw, <2 x double> %i.bp) ; 3 uses
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %niter218.next.1 = add i64 %niter218, 2         ; 2 uses
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %.lr.ph145.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !502

._crit_edge146.unr-lcssa:                         ; preds = %.lr.ph145
  %lcmp.mod223.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod223.not, label %._crit_edge146, label %.lr.ph145.epil.preheader

.lr.ph145.epil.preheader:                         ; preds = %._crit_edge146.unr-lcssa, %.lr.ph145.preheader
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next173.1, %._crit_edge146.unr-lcssa ] ; 2 uses
  %.epil.init222 = phi <2 x double> [ zeroinitializer, %.lr.ph145.preheader ], [ %i.dw, %._crit_edge146.unr-lcssa ]
  %lcmp.mod225 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv172.epil.init
  %i.bz = load double, ptr %i.by, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv172.epil.init
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !46
  %i.cc = insertelement <2 x double> poison, double %i.bz, i64 0 ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ce, <2 x double> %.epil.init222)
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.unr-lcssa, %.lr.ph145.epil.preheader
  %.lcssa205 = phi <2 x double> [ %i.dw, %._crit_edge146.unr-lcssa ], [ %i.cf, %.lr.ph145.epil.preheader ] ; 3 uses
  %i.cg = insertelement <2 x double> poison, double %.0116..0115, i64 1
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> %.lcssa205, <2 x i32> <i32 3, i32 1>
  %i.ci = fneg <2 x double> %i.ch
  %i.cj = insertelement <2 x double> poison, double %.0116..0115, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ck, %i.ci
  %i.cm = shufflevector <2 x double> %.lcssa205, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = insertelement <2 x double> poison, double %.0115..0116, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.l, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.co, <2 x double> %i.cl) ; 2 uses
  %i.cq = fneg double %i.be
  %i.cr = fmul double %i.bf, %i.cq
  %i.cs = extractelement <2 x double> %.lcssa205, i64 1
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.l, double %i.cs, double %i.cr)
  %i.cu = insertelement <2 x double> %i.cp, double %i.ct, i64 1
  %i.cv = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fdiv <2 x double> %i.cu, %i.cv          ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1 ; 5 uses
  %i.cy = extractelement <2 x double> %i.cw, i64 0
  store double %i.cy, ptr %3, align 8, !tbaa !46
  store double %i.cx, ptr %4, align 8, !tbaa !46
  %i.cz = fcmp oeq double %i.cx, 0.000000e+00
  br i1 %i.cz, label %.lr.ph156, label %.lr.ph151

.lr.ph151:                                        ; preds = %._crit_edge146
  %i.da = fdiv double -1.000000e+00, %i.cx        ; 2 uses
  %i.db = fneg double %i.da
  %i.dc = load double, ptr %3, align 8, !tbaa !46 ; 2 uses
  %i.dd = fsub double %i.da, %i.cx
  br label %bb.g

.lr.ph156:                                        ; preds = %._crit_edge146
  %i.de = load double, ptr %3, align 8, !tbaa !46 ; 5 uses
  %xtraiter229 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.df = icmp ult i32 %2, 4
  br i1 %i.df, label %.epil.preheader228, label %.lr.ph156.new

.lr.ph156.new:                                    ; preds = %.lr.ph156
  %unroll_iter234 = and i64 %wide.trip.count, 2147483644
  br label %bb.f

.lr.ph145:                                        ; preds = %.lr.ph145, %.lr.ph145.preheader.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %indvars.iv.next173.1, %.lr.ph145 ] ; 4 uses
  %i.dg = phi <2 x double> [ zeroinitializer, %.lr.ph145.preheader.new ], [ %i.dw, %.lr.ph145 ]
  %niter227 = phi i64 [ 0, %.lr.ph145.preheader.new ], [ %niter227.next.1, %.lr.ph145 ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv172
  %i.di = load double, ptr %i.dh, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv172
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !46
  %i.dl = insertelement <2 x double> poison, double %i.di, i64 0 ; 2 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x double> %i.dl, double %i.dk, i64 1
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.dg)
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv.next173
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !46
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv.next173
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !46
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0 ; 2 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x double> %i.dt, double %i.ds, i64 1
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dv, <2 x double> %i.do) ; 3 uses
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %._crit_edge146.unr-lcssa, label %.lr.ph145, !llvm.loop !503

._crit_edge157.unr-lcssa:                         ; preds = %bb.f
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod231.not, label %._crit_edge157, label %.epil.preheader228

.epil.preheader228:                               ; preds = %._crit_edge157.unr-lcssa, %.lr.ph156
  %indvars.iv183.epil.init = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next184.3, %._crit_edge157.unr-lcssa ]
  %.0121154.epil.init = phi double [ 0.000000e+00, %.lr.ph156 ], [ %i.ez, %._crit_edge157.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter229, 0
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader228
  %indvars.iv183.epil = phi i64 [ %indvars.iv183.epil.init, %.epil.preheader228 ], [ %indvars.iv.next184.epil, %bb.e ] ; 2 uses
  %.0121154.epil = phi double [ %.0121154.epil.init, %.epil.preheader228 ], [ %i.eb, %bb.e ]
  %epil.iter230 = phi i64 [ 0, %.epil.preheader228 ], [ %epil.iter230.next, %bb.e ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183.epil
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !46
  %i.dz = fsub double %i.de, %i.dy
  %i.ea = tail call double @llvm.fabs.f64(double %i.dz)
  %i.eb = fadd double %.0121154.epil, %i.ea       ; 2 uses
  %indvars.iv.next184.epil = add nuw nsw i64 %indvars.iv183.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge157, label %bb.e, !llvm.loop !504

._crit_edge157:                                   ; preds = %bb.e, %._crit_edge157.unr-lcssa
  %.lcssa = phi double [ %i.ez, %._crit_edge157.unr-lcssa ], [ %i.eb, %bb.e ]
  %i.ec = fdiv double %.lcssa, %i.l
  br label %bb.h

bb.f:                                             ; preds = %bb.f, %.lr.ph156.new
  %indvars.iv183 = phi i64 [ 0, %.lr.ph156.new ], [ %indvars.iv.next184.3, %bb.f ] ; 5 uses
  %.0121154 = phi double [ 0.000000e+00, %.lr.ph156.new ], [ %i.ez, %bb.f ]
  %niter235 = phi i64 [ 0, %.lr.ph156.new ], [ %niter235.next.3, %bb.f ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !46
  %i.ef = fsub double %i.de, %i.ee
  %i.eg = tail call double @llvm.fabs.f64(double %i.ef)
  %i.eh = fadd double %.0121154, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !46
  %i.el = fsub double %i.de, %i.ek
  %i.em = tail call double @llvm.fabs.f64(double %i.el)
  %i.en = fadd double %i.eh, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !46
  %i.er = fsub double %i.de, %i.eq
  %i.es = tail call double @llvm.fabs.f64(double %i.er)
  %i.et = fadd double %i.en, %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !46
  %i.ex = fsub double %i.de, %i.ew
  %i.ey = tail call double @llvm.fabs.f64(double %i.ex)
  %i.ez = fadd double %i.et, %i.ey                ; 3 uses
  %indvars.iv.next184.3 = add nuw nsw i64 %indvars.iv183, 4 ; 2 uses
  %niter235.next.3 = add i64 %niter235, 4         ; 2 uses
  %niter235.ncmp.3 = icmp eq i64 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3, label %._crit_edge157.unr-lcssa, label %bb.f, !llvm.loop !505

._crit_edge152:                                   ; preds = %bb.g
  %i.fa = fdiv double %i.fo, %i.l
  %i.fb = tail call double @sqrt(double noundef %i.fa) #42
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph151, %bb.g
  %indvars.iv177 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next178, %bb.g ] ; 3 uses
  %.0119149 = phi double [ 0.000000e+00, %.lr.ph151 ], [ %i.fo, %bb.g ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv177
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !46 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv177
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !46 ; 2 uses
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.db, double %i.ff, double %i.fd)
  %i.fh = fsub double %i.dc, %i.fg
  %i.fi = fdiv double %i.fh, %i.dd                ; 2 uses
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.fi, double %i.dc)
  %i.fk = fsub double %i.ff, %i.fi                ; 2 uses
  %i.fl = fsub double %i.fd, %i.fj                ; 2 uses
  %i.fm = fmul double %i.fl, %i.fl
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.fk, double %i.fm)
  %i.fo = fadd double %.0119149, %i.fn            ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count
  br i1 %exitcond182.not, label %._crit_edge152, label %bb.g, !llvm.loop !506

bb.h:                                             ; preds = %._crit_edge152, %._crit_edge157
  %storemerge130 = phi double [ %i.fb, %._crit_edge152 ], [ %i.ec, %._crit_edge157 ]
  store double %storemerge130, ptr %5, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl18ComputeMinDistanceEddddi(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = fcmp oeq double %3, 0.000000e+00         ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fdiv double -1.000000e+00, %3            ; 2 uses
  %i.d = fneg double %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double %0, double %1)
  %i.f = fsub double %2, %i.e
  %i.g = fsub double %i.c, %3
  %i.h = fdiv double %i.f, %i.g                   ; 2 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %3, double %i.h, double %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = fdiv double -1.000000e+00, %3            ; 2 uses
  %i.k = fneg double %i.j
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %1, double %0)
  %i.m = fsub double %2, %i.l
  %i.n = fsub double %i.j, %3
  %i.o = fdiv double %i.m, %i.n                   ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %3, double %i.o, double %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.c
  %.036 = phi double [ %i.o, %bb.e ], [ %i.i, %bb.c ], [ %2, %bb.b ], [ %1, %bb.d ]
  %.0 = phi double [ %i.p, %bb.e ], [ %i.h, %bb.c ], [ %0, %bb.b ], [ %2, %bb.d ]
  %i.q = fsub double %0, %.0                      ; 2 uses
  %i.r = fsub double %1, %.036                    ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.s)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.t)
  ret double %sqrt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl7LineFitEPdS2_iRdS3_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, i32 noundef %5) local_unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %2, 4
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.05156.epil.init = phi double [ 0.000000e+00, %bb.b ], [ %i.ag, %.unr-lcssa ]
  %.05255.epil.init = phi double [ 0.000000e+00, %bb.b ], [ %i.ad, %.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %.05156.epil = phi double [ %.05156.epil.init, %.epil.preheader ], [ %i.h, %bb.c ]
  %.05255.epil = phi double [ %.05255.epil.init, %.epil.preheader ], [ %i.e, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.d = load double, ptr %i.c, align 8, !tbaa !46
  %i.e = fadd double %.05255.epil, %i.d           ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.g = load double, ptr %i.f, align 8, !tbaa !46
  %i.h = fadd double %.05156.epil, %i.g           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !507

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa79 = phi double [ %i.ad, %.unr-lcssa ], [ %i.e, %bb.c ] ; 3 uses
  %.lcssa78 = phi double [ %i.ag, %.unr-lcssa ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = uitofp nneg i32 %2 to double             ; 2 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.e

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.d ] ; 6 uses
  %.05156 = phi double [ 0.000000e+00, %.new ], [ %i.ag, %bb.d ]
  %.05255 = phi double [ 0.000000e+00, %.new ], [ %i.ad, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.k = load double, ptr %i.j, align 8, !tbaa !46
  %i.l = fadd double %.05255, %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !46
  %i.o = fadd double %.05156, %i.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = fadd double %i.l, %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.t = load double, ptr %i.s, align 8, !tbaa !46
  %i.u = fadd double %i.o, %i.t
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.w = load double, ptr %i.v, align 8, !tbaa !46
  %i.x = fadd double %i.r, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = fadd double %i.u, %i.z
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !46
  %i.ad = fadd double %i.x, %i.ac                 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46
  %i.ag = fadd double %i.aa, %i.af                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !11

bb.e:                                             ; preds = %.epilog-lcssa
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epilog-lcssa, %bb.e
  %.153 = phi double [ %.lcssa78, %bb.e ], [ %.lcssa79, %.epilog-lcssa ] ; 2 uses
  %.1 = phi double [ %.lcssa79, %bb.e ], [ %.lcssa78, %.epilog-lcssa ]
  %.047 = phi ptr [ %0, %bb.e ], [ %1, %.epilog-lcssa ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.e ], [ %0, %.epilog-lcssa ] ; 3 uses
  %xtraiter83 = and i64 %wide.trip.count, 1
  %unroll_iter88 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod85.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod85.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa
  %lcmp.mod87 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv.next67.1
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.047, i64 %indvars.iv.next67.1
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !46
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ai, i64 1
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ao, <2 x double> %i.ca)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi <2 x double> [ %i.ca, %._crit_edge.unr-lcssa ], [ %i.ap, %.lr.ph.epil.preheader ] ; 3 uses
  %i.aq = insertelement <2 x double> %.lcssa, double %.153, i64 1
  %i.ar = fneg <2 x double> %i.aq
  %i.as = insertelement <2 x double> poison, double %.153, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x double> %i.at, %i.ar
  %i.av = shufflevector <2 x double> %.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = insertelement <2 x double> poison, double %.1, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.i, i64 1
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.ax, <2 x double> %i.au) ; 2 uses
  %i.az = fneg double %.lcssa79
  %i.ba = fmul double %.lcssa78, %i.az
  %i.bb = extractelement <2 x double> %.lcssa, i64 0
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.i, double %i.bb, double %i.ba)
  %i.bd = insertelement <2 x double> %i.ay, double %i.bc, i64 1
  %i.be = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fdiv <2 x double> %i.bd, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  store double %i.bg, ptr %3, align 8, !tbaa !46
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  store double %i.bh, ptr %4, align 8, !tbaa !46
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv66 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next67.1, %.lr.ph ] ; 4 uses
  %i.bi = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ca, %.lr.ph ]
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15EdgeDrawingImpl9CircleFitEPdS2_iS2_S2_S2_S2_:bb.a
  br label %.preheader

.lr.ph.preheader.unr-lcssa:                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.preheader.preheader ], [ %i.aq, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.epil ] ; 3 uses
  %i.c = phi <2 x double> [ %.epil.init, %.preheader.epil.preheader ], [ %i.j, %.preheader.epil ]
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.e = load double, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.g = load double, ptr %i.f, align 8, !tbaa !46
  %i.h = insertelement <2 x double> poison, double %i.g, i64 0
  %i.i = insertelement <2 x double> %i.h, double %i.e, i64 1
  %i.j = fadd <2 x double> %i.c, %i.i             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader.epil, !llvm.loop !541

.lr.ph.preheader:                                 ; preds = %.preheader.epil, %.lr.ph.preheader.unr-lcssa
  %.lcssa185 = phi <2 x double> [ %i.aq, %.lr.ph.preheader.unr-lcssa ], [ %i.j, %.preheader.epil ]
  %i.k = uitofp nneg i32 %2 to double             ; 3 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x double> %.lcssa185, %i.m       ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next.3, %.preheader ] ; 6 uses
  %i.o = phi <2 x double> [ zeroinitializer, %.preheader.preheader.new ], [ %i.aq, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load double, ptr %i.r, align 8, !tbaa !46
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.q, i64 1
  %i.v = fadd <2 x double> %i.o, %i.u
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.x = load double, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.z = load double, ptr %i.y, align 8, !tbaa !46
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.x, i64 1
  %i.ac = fadd <2 x double> %i.v, %i.ab
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ag = load double, ptr %i.af, align 8, !tbaa !46
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ae, i64 1
  %i.aj = fadd <2 x double> %i.ac, %i.ai
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.al = load double, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.an = load double, ptr %i.am, align 8, !tbaa !46
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.al, i64 1
  %i.aq = fadd <2 x double> %i.aj, %i.ap          ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.preheader, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph
  %i.ar = fneg double %i.bk
  %i.as = fmul double %i.bk, %i.ar
  %i.at = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.au = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.au, double %i.as) ; 2 uses
  %i.aw = fcmp une double %i.av, 0.000000e+00
  br i1 %i.aw, label %.lr.ph138, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv151 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next152, %.lr.ph ] ; 3 uses
  %.0115121 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bk, %.lr.ph ]
  %i.ax = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bl, %.lr.ph ]
  %i.ay = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bo, %.lr.ph ]
  %i.az = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.br, %.lr.ph ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv151
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv151
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !46
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = fsub <2 x double> %i.bf, %i.n           ; 6 uses
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.bi = extractelement <2 x double> %i.bg, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bg, i64 1 ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bi, double %.0115121) ; 4 uses
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bh, <2 x double> %i.ax) ; 4 uses
  %i.bm = fmul double %i.bj, %i.bi
  %i.bn = fmul <2 x double> %i.bg, %i.bg
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bg, <2 x double> %i.ay) ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bh, <2 x double> %i.az) ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count
  br i1 %exitcond155.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

.lr.ph138:                                        ; preds = %._crit_edge
  %i.bs = fadd <2 x double> %i.bo, %i.br
  %i.bt = fadd double %i.au, %i.at
  %i.bu = fdiv double %i.bt, %i.k
  %i.bv = fmul <2 x double> %i.bs, splat (double 5.000000e-01) ; 2 uses
  %i.bw = fneg <2 x double> %i.bv
  %i.bx = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ca = fmul <2 x double> %i.by, %i.bz
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bv, <2 x double> %i.ca)
  %i.cc = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x double> %i.cb, %i.cd          ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ce, %i.ce
  %i.cf = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cg = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double %i.cf)
  %i.ci = fadd double %i.bu, %i.ch
  %i.cj = tail call double @sqrt(double noundef %i.ci) #42 ; 4 uses
  %i.ck = fadd <2 x double> %i.n, %i.ce           ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  store double %i.cl, ptr %3, align 8, !tbaa !46
  %i.cm = extractelement <2 x double> %i.ck, i64 0 ; 4 uses
  store double %i.cm, ptr %4, align 8, !tbaa !46
  %i.cn = load double, ptr %3, align 8, !tbaa !46 ; 3 uses
  %xtraiter188 = and i64 %wide.trip.count, 1
  %unroll_iter193 = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge139.unr-lcssa:                         ; preds = %bb.b
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %._crit_edge139, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge139.unr-lcssa
  %lcmp.mod192 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next157.1
  %i.cp = load double, ptr %i.co, align 8, !tbaa !46
  %i.cq = fsub double %i.cp, %i.cn                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next157.1
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !46
  %i.ct = fsub double %i.cs, %i.cm                ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cu)
  %sqrt.epil = tail call double @llvm.sqrt.f64(double %i.cv)
  %i.cw = fsub double %sqrt.epil, %i.cj           ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.dt)
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.dt, %._crit_edge139.unr-lcssa ], [ %i.cx, %.epil.preheader ]
  store double %i.cj, ptr %5, align 8, !tbaa !46
  %i.cy = fdiv double %.lcssa, %i.k
  %i.cz = tail call double @sqrt(double noundef %i.cy) #42
  store double %i.cz, ptr %6, align 8, !tbaa !46
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph138
  %indvars.iv156 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next157.1, %bb.b ] ; 4 uses
  %.0106135 = phi double [ 0.000000e+00, %.lr.ph138 ], [ %i.dt, %bb.b ]
  %niter194 = phi i64 [ 0, %.lr.ph138 ], [ %niter194.next.1, %bb.b ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv156
  %i.db = load double, ptr %i.da, align 8, !tbaa !46
  %i.dc = fsub double %i.db, %i.cn                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv156
  %i.de = load double, ptr %i.dd, align 8, !tbaa !46
  %i.df = fsub double %i.de, %i.cm                ; 2 uses
  %i.dg = fmul double %i.df, %i.df
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double %i.dg)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dh)
  %i.di = fsub double %sqrt, %i.cj                ; 2 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double %.0106135)
  %indvars.iv.next157 = or disjoint i64 %indvars.iv156, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next157
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !46
  %i.dm = fsub double %i.dl, %i.cn                ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next157
  %i.do = load double, ptr %i.dn, align 8, !tbaa !46
  %i.dp = fsub double %i.do, %i.cm                ; 2 uses
  %i.dq = fmul double %i.dp, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.dq)
  %sqrt.1 = tail call double @llvm.sqrt.f64(double %i.dr)
  %i.ds = fsub double %sqrt.1, %i.cj              ; 2 uses
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.ds, double %i.dj) ; 3 uses
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 3 uses
  %niter194.next.1 = add nuw nsw i64 %niter194, 2 ; 2 uses
  %niter194.ncmp.1 = icmp eq i64 %niter194.next.1, %unroll_iter193
  br i1 %niter194.ncmp.1, label %._crit_edge139.unr-lcssa, label %bb.b, !llvm.loop !15

bb.c:                                             ; preds = %._crit_edge139, %._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %._crit_edge139 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl10EllipseFitEPdS2_iP15EllipseEquationi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %2, 1
  %i.b = zext i32 %i.a to i64                     ; 7 uses
  %i.c = icmp slt i32 %2, -1
  %i.d = shl nuw nsw i64 %i.b, 3
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 24 uses
  %i.g = icmp sgt i32 %2, -1
  br i1 %i.g, label %.lr.ph.i, label %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i8 0, i64 56, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.b
  br i1 %exitcond.not.i, label %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit, label %.lr.ph.i, !llvm.loop !16

_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 13 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false)
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  %i.n = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  %i.p = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i8 0, i64 56, i1 false)
  %i.r = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, i8 0, i64 56, i1 false)
  %i.t = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, i8 0, i64 56, i1 false)
  %i.v = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  %i.x = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 12 uses
  %i.y = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i8 0, i64 56, i1 false)
  %i.ab = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i8 0, i64 56, i1 false)
  %i.ad = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 4 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  %i.af = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 56, i1 false)
  %i.ah = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, i8 0, i64 56, i1 false)
  %i.aj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i8 0, i64 56, i1 false)
  %i.al = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 12 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  %i.an = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, i8 0, i64 56, i1 false)
  %i.ap = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 5 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i8 0, i64 56, i1 false)
  %i.ar = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 5 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i8 0, i64 56, i1 false)
  %i.at = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 5 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, i8 0, i64 56, i1 false)
  %i.av = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 5 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i8 0, i64 56, i1 false)
  %i.ax = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 5 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i8 0, i64 56, i1 false)
  %i.az = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 13 uses
  %i.ba = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i8 0, i64 56, i1 false)
  %i.bb = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bb, i8 0, i64 56, i1 false)
  %i.bd = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i8 0, i64 56, i1 false)
  %i.bf = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, i8 0, i64 56, i1 false)
  %i.bh = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 3 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i8 0, i64 56, i1 false)
  %i.bj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, i8 0, i64 56, i1 false)
  %i.bl = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 56, i1 false)
  %i.bn = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 13 uses
  %i.bo = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i8 0, i64 56, i1 false)
  %i.bp = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  %i.br = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  %i.bt = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 3 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i8 0, i64 56, i1 false)
  %i.bv = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 3 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i8 0, i64 56, i1 false)
  %i.bx = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i8 0, i64 56, i1 false)
  %i.bz = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 3 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, i8 0, i64 56, i1 false)
  %i.cb = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 13 uses
  %i.cc = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, i8 0, i64 56, i1 false)
  %i.cd = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 6 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i8 0, i64 56, i1 false)
  %i.cf = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 6 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i8 0, i64 56, i1 false)
  %i.ch = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 6 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i8 0, i64 56, i1 false)
  %i.cj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 6 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 56, i1 false)
  %i.cl = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 6 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, i8 0, i64 56, i1 false)
  %i.cn = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 6 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cn, i8 0, i64 56, i1 false)
  %i.cp = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znam(i64 noundef 56) #41 ; 10 uses
end_hunk_1
