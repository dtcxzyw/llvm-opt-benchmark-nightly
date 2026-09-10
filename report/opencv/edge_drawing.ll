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
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %2, 4
  br i1 %i.b, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.aq, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %i.c = phi <2 x double> [ %.epil.init, %.epil.preheader ], [ %i.j, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
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
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %bb.c, !llvm.loop !500

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader.unr-lcssa
  %.lcssa207 = phi <2 x double> [ %i.aq, %.lr.ph.preheader.unr-lcssa ], [ %i.j, %bb.c ] ; 3 uses
  %i.k = uitofp nneg i32 %2 to double             ; 5 uses
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x double> %.lcssa207, %i.m       ; 3 uses
  %xtraiter210 = and i64 %wide.trip.count, 1
  %unroll_iter217 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.d ] ; 6 uses
  %i.o = phi <2 x double> [ zeroinitializer, %.new ], [ %i.aq, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
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
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %bb.d, !llvm.loop !501

.lr.ph145.preheader.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod214.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod214.not, label %.lr.ph145.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph145.preheader.unr-lcssa
  %lcmp.mod216 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod216)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next168.1
  %i.as = load double, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next168.1
  %i.au = load double, ptr %i.at, align 8, !tbaa !46
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.as, i64 1
  %i.ax = fsub <2 x double> %i.aw, %i.n           ; 2 uses
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ax, <2 x double> %i.bu)
  br label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %.lr.ph145.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa206 = phi <2 x double> [ %i.bu, %.lr.ph145.preheader.unr-lcssa ], [ %i.ay, %.lr.ph.epil.preheader ] ; 2 uses
  %i.az = extractelement <2 x double> %.lcssa206, i64 0
  %i.ba = extractelement <2 x double> %.lcssa206, i64 1
  %i.bb = fcmp olt double %i.ba, %i.az            ; 5 uses
  %. = zext i1 %i.bb to i32
  %i.bc = extractelement <2 x double> %.lcssa207, i64 0 ; 3 uses
  %i.bd = extractelement <2 x double> %.lcssa207, i64 1 ; 3 uses
  %.0115..0116 = select i1 %i.bb, double %i.bd, double %i.bc
  %.0116..0115 = select i1 %i.bb, double %i.bc, double %i.bd ; 2 uses
  %.131 = select i1 %i.bb, ptr %0, ptr %1         ; 9 uses
  %.132 = select i1 %i.bb, ptr %1, ptr %0         ; 4 uses
  store i32 %., ptr %6, align 4, !tbaa !44
  %xtraiter219 = and i64 %wide.trip.count, 1
  %unroll_iter226 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph145

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv167 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next168.1, %.lr.ph ] ; 4 uses
  %i.be = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bu, %.lr.ph ]
  %niter218 = phi i64 [ 0, %.lr.ph.preheader ], [ %niter218.next.1, %.lr.ph ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv167
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv167
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !46
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bg, i64 1
  %i.bl = fsub <2 x double> %i.bk, %i.n           ; 2 uses
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bl, <2 x double> %i.be)
  %indvars.iv.next168 = or disjoint i64 %indvars.iv167, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next168
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next168
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !46
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bo, i64 1
  %i.bt = fsub <2 x double> %i.bs, %i.n           ; 2 uses
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bt, <2 x double> %i.bm) ; 3 uses
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 3 uses
  %niter218.next.1 = add i64 %niter218, 2         ; 2 uses
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %.lr.ph145.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !502

._crit_edge146.unr-lcssa:                         ; preds = %.lr.ph145
  %lcmp.mod223.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod223.not, label %._crit_edge146, label %.lr.ph145.epil.preheader

.lr.ph145.epil.preheader:                         ; preds = %._crit_edge146.unr-lcssa
  %lcmp.mod225 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv.next173.1
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv.next173.1
  %i.by = load double, ptr %i.bx, align 8, !tbaa !46
  %i.bz = insertelement <2 x double> poison, double %i.bw, i64 0 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.dt)
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.unr-lcssa, %.lr.ph145.epil.preheader
  %.lcssa205 = phi <2 x double> [ %i.dt, %._crit_edge146.unr-lcssa ], [ %i.cc, %.lr.ph145.epil.preheader ] ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %.0116..0115, i64 1
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> %.lcssa205, <2 x i32> <i32 3, i32 1>
  %i.cf = fneg <2 x double> %i.ce
  %i.cg = insertelement <2 x double> poison, double %.0116..0115, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x double> %i.ch, %i.cf
  %i.cj = shufflevector <2 x double> %.lcssa205, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %.0115..0116, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.k, i64 1
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cl, <2 x double> %i.ci) ; 2 uses
  %i.cn = fneg double %i.bc
  %i.co = fmul double %i.bd, %i.cn
  %i.cp = extractelement <2 x double> %.lcssa205, i64 1
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.k, double %i.cp, double %i.co)
  %i.cr = insertelement <2 x double> %i.cm, double %i.cq, i64 1
  %i.cs = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fdiv <2 x double> %i.cr, %i.cs          ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1 ; 5 uses
  %i.cv = extractelement <2 x double> %i.ct, i64 0
  store double %i.cv, ptr %3, align 8, !tbaa !46
  store double %i.cu, ptr %4, align 8, !tbaa !46
  %i.cw = fcmp oeq double %i.cu, 0.000000e+00
  br i1 %i.cw, label %.lr.ph156, label %.lr.ph151

.lr.ph151:                                        ; preds = %._crit_edge146
  %i.cx = fdiv double -1.000000e+00, %i.cu        ; 2 uses
  %i.cy = fneg double %i.cx
  %i.cz = load double, ptr %3, align 8, !tbaa !46 ; 2 uses
  %i.da = fsub double %i.cx, %i.cu
  %wide.trip.count181 = zext nneg i32 %2 to i64
  br label %bb.g

.lr.ph156:                                        ; preds = %._crit_edge146
  %i.db = load double, ptr %3, align 8, !tbaa !46 ; 5 uses
  %xtraiter229 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.dc = icmp ult i32 %2, 4
  br i1 %i.dc, label %.epil.preheader228, label %.lr.ph156.new

.lr.ph156.new:                                    ; preds = %.lr.ph156
  %unroll_iter234 = and i64 %wide.trip.count, 2147483644
  br label %bb.f

.lr.ph145:                                        ; preds = %.lr.ph145, %.lr.ph145.preheader
  %indvars.iv172 = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next173.1, %.lr.ph145 ] ; 4 uses
  %i.dd = phi <2 x double> [ zeroinitializer, %.lr.ph145.preheader ], [ %i.dt, %.lr.ph145 ]
  %niter227 = phi i64 [ 0, %.lr.ph145.preheader ], [ %niter227.next.1, %.lr.ph145 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv172
  %i.df = load double, ptr %i.de, align 8, !tbaa !46
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv172
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !46
  %i.di = insertelement <2 x double> poison, double %i.df, i64 0 ; 2 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x double> %i.di, double %i.dh, i64 1
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dk, <2 x double> %i.dd)
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv.next173
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !46
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv.next173
  %i.dp = load double, ptr %i.do, align 8, !tbaa !46
  %i.dq = insertelement <2 x double> poison, double %i.dn, i64 0 ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.ds, <2 x double> %i.dl) ; 3 uses
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %niter227.next.1 = add i64 %niter227, 2         ; 2 uses
  %niter227.ncmp.1 = icmp eq i64 %niter227.next.1, %unroll_iter226
  br i1 %niter227.ncmp.1, label %._crit_edge146.unr-lcssa, label %.lr.ph145, !llvm.loop !503

._crit_edge157.unr-lcssa:                         ; preds = %bb.f
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod231.not, label %._crit_edge157, label %.epil.preheader228

.epil.preheader228:                               ; preds = %._crit_edge157.unr-lcssa, %.lr.ph156
  %indvars.iv183.epil.init = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next184.3, %._crit_edge157.unr-lcssa ]
  %.0121154.epil.init = phi double [ 0.000000e+00, %.lr.ph156 ], [ %i.ew, %._crit_edge157.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter229, 0
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader228
  %indvars.iv183.epil = phi i64 [ %indvars.iv183.epil.init, %.epil.preheader228 ], [ %indvars.iv.next184.epil, %bb.e ] ; 2 uses
  %.0121154.epil = phi double [ %.0121154.epil.init, %.epil.preheader228 ], [ %i.dy, %bb.e ]
  %epil.iter230 = phi i64 [ 0, %.epil.preheader228 ], [ %epil.iter230.next, %bb.e ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183.epil
  %i.dv = load double, ptr %i.du, align 8, !tbaa !46
  %i.dw = fsub double %i.db, %i.dv
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fadd double %.0121154.epil, %i.dx       ; 2 uses
  %indvars.iv.next184.epil = add nuw nsw i64 %indvars.iv183.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge157, label %bb.e, !llvm.loop !504

._crit_edge157:                                   ; preds = %bb.e, %._crit_edge157.unr-lcssa
  %.lcssa = phi double [ %i.ew, %._crit_edge157.unr-lcssa ], [ %i.dy, %bb.e ]
  %i.dz = fdiv double %.lcssa, %i.k
  br label %bb.h

bb.f:                                             ; preds = %bb.f, %.lr.ph156.new
  %indvars.iv183 = phi i64 [ 0, %.lr.ph156.new ], [ %indvars.iv.next184.3, %bb.f ] ; 5 uses
  %.0121154 = phi double [ 0.000000e+00, %.lr.ph156.new ], [ %i.ew, %bb.f ]
  %niter235 = phi i64 [ 0, %.lr.ph156.new ], [ %niter235.next.3, %bb.f ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !46
  %i.ec = fsub double %i.db, %i.eb
  %i.ed = tail call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fadd double %.0121154, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !46
  %i.ei = fsub double %i.db, %i.eh
  %i.ej = tail call double @llvm.fabs.f64(double %i.ei)
  %i.ek = fadd double %i.ee, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !46
  %i.eo = fsub double %i.db, %i.en
  %i.ep = tail call double @llvm.fabs.f64(double %i.eo)
  %i.eq = fadd double %i.ek, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv183
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load double, ptr %i.es, align 8, !tbaa !46
  %i.eu = fsub double %i.db, %i.et
  %i.ev = tail call double @llvm.fabs.f64(double %i.eu)
  %i.ew = fadd double %i.eq, %i.ev                ; 3 uses
  %indvars.iv.next184.3 = add nuw nsw i64 %indvars.iv183, 4 ; 2 uses
  %niter235.next.3 = add i64 %niter235, 4         ; 2 uses
  %niter235.ncmp.3 = icmp eq i64 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3, label %._crit_edge157.unr-lcssa, label %bb.f, !llvm.loop !505

._crit_edge152:                                   ; preds = %bb.g
  %i.ex = fdiv double %i.fl, %i.k
  %i.ey = tail call double @sqrt(double noundef %i.ex) #42
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph151, %bb.g
  %indvars.iv177 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next178, %bb.g ] ; 3 uses
  %.0119149 = phi double [ 0.000000e+00, %.lr.ph151 ], [ %i.fl, %bb.g ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.131, i64 %indvars.iv177
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !46 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.132, i64 %indvars.iv177
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !46 ; 2 uses
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.fc, double %i.fa)
  %i.fe = fsub double %i.cz, %i.fd
  %i.ff = fdiv double %i.fe, %i.da                ; 2 uses
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.ff, double %i.cz)
  %i.fh = fsub double %i.fc, %i.ff                ; 2 uses
  %i.fi = fsub double %i.fa, %i.fg                ; 2 uses
  %i.fj = fmul double %i.fi, %i.fi
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.fh, double %i.fj)
  %i.fl = fadd double %.0119149, %i.fk            ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge152, label %bb.g, !llvm.loop !506

bb.h:                                             ; preds = %._crit_edge152, %._crit_edge157
  %storemerge130 = phi double [ %i.ey, %._crit_edge152 ], [ %i.dz, %._crit_edge157 ]
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
end_hunk_0
