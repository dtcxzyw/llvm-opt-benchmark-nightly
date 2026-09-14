Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl20ValidateLineSegmentsEv:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double 1.250000e-01, ptr %i.aa, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store double %i.z, ptr %i.ab, align 8, !tbaa !43
  store i32 1, ptr %i.x, align 4, !tbaa !44
  %i.ac = load i32, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph36.i, label %_ZN6NFALUTC2Eidd.exit

.lr.ph36.i:                                       ; preds = %.noexc, %._crit_edge28.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge28.thread.i ], [ 1, %.noexc ] ; 6 uses
  %i.ae = phi i32 [ %i.au, %._crit_edge28.thread.i ], [ %i.ac, %.noexc ]
  %.02031.i = phi i32 [ %.4.i, %._crit_edge28.thread.i ], [ 1, %.noexc ] ; 5 uses
  %i.af = add nsw i32 %i.ae, 1
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !44
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.aj = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %i.ai, i32 noundef %.02031.i)
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.preheader.i, label %._crit_edge28.thread47.i

.preheader.i:                                     ; preds = %.lr.ph36.i
  %i.al = sext i32 %.02031.i to i64
  %i.am = icmp sgt i64 %indvars.iv.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge28.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = zext i32 %i.ao to i64
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.an
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.12126.i = phi i32 [ %i.ao, %bb.c ], [ %.02031.i, %.preheader.i ]
  %i.ao = add nsw i32 %.12126.i, 1                ; 6 uses
  %i.ap = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %i.ai, i32 noundef %i.ao) ; 2 uses
  %i.aq = fcmp ult double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.c, label %._crit_edge28.thread47.i, !llvm.loop !0

._crit_edge28.i:                                  ; preds = %bb.c
  %i.ar = fcmp olt double %i.ap, 0.000000e+00
  br i1 %i.ar, label %._crit_edge28.thread.i, label %._crit_edge28.thread47.i

._crit_edge28.thread47.i:                         ; preds = %.lr.ph.i, %._crit_edge28.i, %.lr.ph36.i
  %.3.i = phi i32 [ %i.ao, %._crit_edge28.i ], [ %.02031.i, %.lr.ph36.i ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  store i32 %.3.i, ptr %i.at, align 4, !tbaa !44
  br label %._crit_edge28.thread.i

._crit_edge28.thread.i:                           ; preds = %._crit_edge28.thread47.i, %._crit_edge28.i, %.preheader.i
  %.4.i = phi i32 [ %.3.i, %._crit_edge28.thread47.i ], [ %i.ao, %._crit_edge28.i ], [ %.02031.i, %.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = load i32, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.av
  br i1 %i.aw, label %.lr.ph36.i, label %_ZN6NFALUTC2Eidd.exit, !llvm.loop !1

_ZN6NFALUTC2Eidd.exit:                            ; preds = %._crit_edge28.thread.i, %.noexc
  store ptr %i.q, ptr %i.b, align 8, !tbaa !140
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 32) #43
  resume { ptr, i32 } %i.ax

bb.e:                                             ; preds = %_ZN6NFALUTC2Eidd.exit, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !169
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !168
  %i.bc = add nsw i32 %i.bb, %i.az                ; 2 uses
  %i.bd = shl nsw i32 %i.bc, 2
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i32 %i.bc, 0
  %i.bg = shl nsw i64 %i.be, 2
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #41 ; 3 uses
  %i.bj = load i32, ptr %i.ay, align 8, !tbaa !169
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !168
  %i.bl = add nsw i32 %i.bk, %i.bj                ; 2 uses
  %i.bm = shl nsw i32 %i.bl, 2
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i32 %i.bl, 0
  %i.bp = shl nsw i64 %i.bn, 2
  %i.bq = select i1 %i.bo, i64 -1, i64 %i.bp
  %i.br = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bq) #41 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !214
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.f

._crit_edge:                                      ; preds = %bb.p, %bb.e
  %.081.lcssa = phi i32 [ 0, %bb.e ], [ %.182, %bb.p ]
  store i32 %.081.lcssa, ptr %i.bs, align 8, !tbaa !214
  tail call void @_ZdaPv(ptr noundef nonnull %i.bi) #43
  tail call void @_ZdaPv(ptr noundef nonnull %i.br) #43
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
  %i.dz = add nuw nsw i32 %i.dy, %i.df
  %1 = zext nneg i32 %i.dz to i64
  %i.ea = getelementptr i8, ptr %i.do, i64 %1     ; 3 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !59
  %i.ed = zext i8 %i.ec to i32
  %i.ee = sub nsw i32 %i.dw, %i.ed                ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ea, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !59
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr i8, ptr %i.dt, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !59
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 %i.eh, %i.ek                ; 2 uses
  %i.em = add nsw i32 %i.el, %i.ee
  %i.en = mul nuw nsw i32 %i.dl, %i.dd
  %i.eo = add nuw nsw i32 %i.en, %i.df
  %2 = zext nneg i32 %i.eo to i64
  %i.ep = getelementptr i8, ptr %i.do, i64 %2     ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !59
  %i.es = zext i8 %i.er to i32
  %i.et = add nsw i32 %i.em, %i.es
  %i.eu = getelementptr i8, ptr %i.ep, i64 -1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !59
  %i.ew = zext i8 %i.ev to i32
  %i.ex = sub nsw i32 %i.et, %i.ew
  %i.ey = load i8, ptr %i.dt, align 1, !tbaa !59
  %i.ez = zext i8 %i.ey to i32
  %i.fa = load i8, ptr %i.ea, align 1, !tbaa !59
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.ee, %i.ez
  %i.fd = sub nsw i32 %i.el, %i.fc
  %.neg = add nsw i32 %i.fd, %i.fb
  %i.fe = sitofp i32 %i.ex to float
  %i.ff = sitofp i32 %.neg to float
  %i.fg = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.fe, float noundef %i.ff) ; 2 uses
  %i.fh = fpext float %i.fg to double             ; 2 uses
  %i.fi = fcmp ogt float %i.fg, 1.800000e+02
  %i.fj = fadd nnan double %i.fh, -1.800000e+02
  %.0.i91 = select i1 %i.fi, double %i.fj, double %i.fh
  %i.fk = fdiv double %.0.i91, 1.800000e+02
  %i.fl = fmul double %i.fk, f0x400921FB54442D18
  %i.fm = fsub double %.179, %i.fl
  %i.fn = tail call double @llvm.fabs.f64(double %i.fm) ; 2 uses
  %i.fo = load double, ptr %i.a, align 8, !tbaa !225 ; 2 uses
  %i.fp = fcmp ole double %i.fn, %i.fo
  %i.fq = fsub double f0x400921FB54442D18, %i.fo
  %i.fr = fcmp oge double %i.fn, %i.fq
  %or.cond90.not = or i1 %i.fp, %i.fr
  %i.fs = zext i1 %or.cond90.not to i32
  %.176 = add nsw i32 %.075104, %i.fs
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.i, %bb.j, %bb.k
  %.2 = phi i32 [ %.176, %bb.k ], [ %.075104, %bb.j ], [ %.075104, %bb.i ], [ %.075104, %.preheader ] ; 3 uses
  %.1 = phi i32 [ %i.dn, %bb.k ], [ %.074105, %bb.j ], [ %.074105, %bb.i ], [ %.074105, %.preheader ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %.preheader, !llvm.loop !498

.split92:                                         ; preds = %.split, %_ZN6NFALUT20checkValidationByNFAEii.exit
  %i.ft = tail call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl23ValidateLineSegmentRectEPiS2_P13EDLineSegment(ptr noundef nonnull align 8 dereferenceable(2216) %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bz)
  br i1 %i.ft, label %.critedge, label %bb.p

bb.m:                                             ; preds = %bb.g
  %i.fu = tail call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl23ValidateLineSegmentRectEPiS2_P13EDLineSegment(ptr noundef nonnull align 8 dereferenceable(2216) %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bz)
  br i1 %i.fu, label %.critedge, label %bb.p

.critedge:                                        ; preds = %.split92, %.split, %bb.f, %_ZN6NFALUT20checkValidationByNFAEii.exit, %bb.m
  %i.fv = zext i32 %.081107 to i64
  %.not88 = icmp eq i64 %indvars.iv113, %i.fv
  br i1 %.not88, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.fw = load ptr, ptr %i.bv, align 8, !tbaa !147 ; 2 uses
  %i.fx = getelementptr inbounds nuw [72 x i8], ptr %i.fw, i64 %indvars.iv113
  %i.fy = sext i32 %.081107 to i64
  %i.fz = getelementptr inbounds nuw [72 x i8], ptr %i.fw, i64 %i.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.fz, ptr noundef nonnull align 8 dereferenceable(68) %i.fx, i64 68, i1 false), !tbaa.struct !222
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %i.ga = add nsw i32 %.081107, 1
  br label %bb.p

bb.p:                                             ; preds = %.split92, %bb.o, %bb.m
  %.182 = phi i32 [ %i.ga, %bb.o ], [ %.081107, %bb.m ], [ %.081107, %.split92 ] ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.gb = load i32, ptr %i.bs, align 8, !tbaa !214
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next114, %i.gc
  br i1 %i.gd, label %bb.f, label %._crit_edge, !llvm.loop !499
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl7LineFitEPdS2_iRdS3_S3_Ri(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 9 uses
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
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15EdgeDrawingImpl24TryToJoinTwoLineSegmentsEP13EDLineSegmentS3_i:bb.a
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !234
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !228 ; 3 uses
  %i.ff = add i32 %i.fc, 5
  %i.fg = add i32 %i.ff, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !234 ; 2 uses
  %.not = icmp slt i32 %i.fg, %i.fi
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !228 ; 3 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fl = add nsw i32 %i.fk, %i.fe
  br label %.sink.split

bb.v:                                             ; preds = %bb.t
  %i.fm = icmp sgt i32 %i.fk, %i.fe
  br i1 %i.fm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.fi, ptr %i.fb, align 4, !tbaa !234
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.w
  %.sink = phi i32 [ %i.fk, %bb.w ], [ %i.fl, %bb.u ]
  store i32 %.sink, ptr %i.fd, align 8, !tbaa !228
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v
  %i.fn = fsub double %i.fa, %i.ez                ; 3 uses
  %i.fo = fsub double %i.ey, %i.ex                ; 3 uses
  %i.fp = tail call double @llvm.fabs.f64(double %i.fn) ; 2 uses
  %i.fq = tail call double @llvm.fabs.f64(double %i.fo) ; 2 uses
  %i.fr = fcmp ult double %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.fr, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.fs, align 8, !tbaa !226
  %i.ft = fcmp olt double %i.fq, 1.000000e-03
  br i1 %i.ft, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.fu, align 8, !tbaa !227
  %i.fv = fadd double %i.ey, %i.ex
  %i.fw = fmul double %i.fv, 5.000000e-01
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit

bb.aa:                                            ; preds = %bb.y
  %i.fx = fdiv double %i.fo, %i.fn                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.fx, ptr %i.fy, align 8, !tbaa !227
  %i.fz = fneg double %i.fx
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.ez, double %i.ex)
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit

bb.ab:                                            ; preds = %bb.x
  store i32 1, ptr %i.fs, align 8, !tbaa !226
  %i.gb = fcmp olt double %i.fp, 1.000000e-03
  br i1 %i.gb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.gc, align 8, !tbaa !227
  %i.gd = fadd double %i.fa, %i.ez
  %i.ge = fmul double %i.gd, 5.000000e-01
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit

bb.ad:                                            ; preds = %bb.ab
  %i.gf = fdiv double %i.fn, %i.fo                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.gf, ptr %i.gg, align 8, !tbaa !227
  %i.gh = fneg double %i.gf
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ex, double %i.ez)
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit

_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit: ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ad
  %.sink.i = phi double [ %i.ge, %bb.ac ], [ %i.gi, %bb.ad ], [ %i.fw, %bb.z ], [ %i.ga, %bb.aa ]
  store double %.sink.i, ptr %1, align 8, !tbaa !231
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.gk = sext i32 %3 to i64
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !147
  %i.gm = getelementptr inbounds nuw [72 x i8], ptr %i.gl, i64 %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.gm, ptr noundef nonnull align 8 dereferenceable(68) %1, i64 68, i1 false), !tbaa.struct !222
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit, %_ZN2cv8ximgproc15EdgeDrawingImpl18ComputeMinDistanceEddddi.exit134, %bb.a
  %.1118 = phi i1 [ false, %bb.a ], [ false, %_ZN2cv8ximgproc15EdgeDrawingImpl18ComputeMinDistanceEddddi.exit134 ], [ true, %_ZN2cv8ximgproc15EdgeDrawingImpl20UpdateLineParametersEP13EDLineSegment.exit ]
  ret i1 %.1118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl23ValidateLineSegmentRectEPiS2_P13EDLineSegment(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2216) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !226
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !227 ; 2 uses
  %i.g = fdiv double 1.000000e+00, %i.f
  %.sink = select i1 %i.d, double %i.f, double %i.g
  %i.h = tail call double @atan(double noundef %.sink) #42 ; 3 uses
  %i.i = fcmp olt double %i.h, 0.000000e+00
  %i.j = fadd double %i.h, f0x400921FB54442D18
  %.156 = select i1 %i.i, double %i.j, double %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !230
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !229
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !232
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !233
  call void @_ZN2cv8ximgproc15EdgeDrawingImpl19EnumerateRectPointsEddddPiS2_S2_(double noundef %i.l, double noundef %i.n, double noundef %i.p, double noundef %i.r, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.s = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ %.154, %bb.h ] ; 3 uses
  %.052.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !140  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !40
  %.not.i = icmp slt i32 %.053.lcssa, %i.ab
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ac = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i32 noundef %.053.lcssa, i32 noundef %.052.lcssa)
  %i.ad = fcmp oge double %i.ac, 0.000000e+00
  br label %_ZN6NFALUT20checkValidationByNFAEii.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.af = sext i32 %.053.lcssa to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !44
  %i.ai = icmp sge i32 %.052.lcssa, %i.ah
  br label %_ZN6NFALUT20checkValidationByNFAEii.exit

_ZN6NFALUT20checkValidationByNFAEii.exit:         ; preds = %bb.b, %bb.c
  %.0.i = phi i1 [ %i.ad, %bb.b ], [ %i.ai, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret i1 %.0.i

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.05271 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.h ] ; 4 uses
  %.05370 = phi i32 [ 0, %.lr.ph ], [ %.154, %bb.h ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44 ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !44 ; 5 uses
  %i.an = icmp slt i32 %i.ak, 1
  br i1 %i.an, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !168
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = icmp sge i32 %i.ak, %i.ap
  %i.ar = icmp slt i32 %i.am, 1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.v, align 8, !tbaa !169 ; 4 uses
  %i.at = add nsw i32 %i.as, -1
  %.not = icmp slt i32 %i.am, %i.at
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = add nsw i32 %.05370, 1
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !167 ; 3 uses
  %i.aw = add nuw nsw i32 %i.ak, 1
  %i.ax = mul nuw nsw i32 %i.as, %i.aw
  %i.ay = add nuw nsw i32 %i.ax, %i.am
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %i.av, i64 %i.az  ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.ak, -1
  %i.bf = mul nuw nsw i32 %i.as, %i.be
  %i.bg = add nuw nsw i32 %i.bf, %i.am
  %4 = zext nneg i32 %i.bg to i64
  %i.bh = getelementptr i8, ptr %i.av, i64 %4     ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !59
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 %i.bd, %i.bk                ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bh, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !59
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.ba, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !59
  %i.br = zext i8 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br                ; 2 uses
  %i.bt = add nsw i32 %i.bs, %i.bl
  %i.bu = mul nuw nsw i32 %i.as, %i.ak
  %i.bv = add nuw nsw i32 %i.bu, %i.am
  %5 = zext nneg i32 %i.bv to i64
  %i.bw = getelementptr i8, ptr %i.av, i64 %5     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !59
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bt, %i.bz
  %i.cb = getelementptr i8, ptr %i.bw, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !59
  %i.cd = zext i8 %i.cc to i32
  %i.ce = sub nsw i32 %i.ca, %i.cd
  %i.cf = load i8, ptr %i.ba, align 1, !tbaa !59
  %i.cg = zext i8 %i.cf to i32
  %i.ch = load i8, ptr %i.bh, align 1, !tbaa !59
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.bl, %i.cg
  %i.ck = sub nsw i32 %i.bs, %i.cj
  %.neg = add nsw i32 %i.ck, %i.ci
  %i.cl = sitofp i32 %i.ce to float
  %i.cm = sitofp i32 %.neg to float
  %i.cn = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.cl, float noundef %i.cm) ; 2 uses
  %i.co = fpext float %i.cn to double             ; 2 uses
  %i.cp = fcmp ogt float %i.cn, 1.800000e+02
  %i.cq = fadd nnan double %i.co, -1.800000e+02
  %.0.i63 = select i1 %i.cp, double %i.cq, double %i.co
  %i.cr = fdiv double %.0.i63, 1.800000e+02
  %i.cs = fmul double %i.cr, f0x400921FB54442D18
  %i.ct = fsub double %.156, %i.cs
  %i.cu = tail call double @llvm.fabs.f64(double %i.ct) ; 2 uses
  %i.cv = load double, ptr %i.x, align 8, !tbaa !225 ; 2 uses
  %i.cw = fcmp ole double %i.cu, %i.cv
  %i.cx = fsub double f0x400921FB54442D18, %i.cv
  %i.cy = fcmp oge double %i.cu, %i.cx
  %or.cond62.not = or i1 %i.cw, %i.cy
  %i.cz = zext i1 %or.cond62.not to i32
  %.1 = add nsw i32 %.05271, %i.cz
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.154 = phi i32 [ %i.au, %bb.g ], [ %.05370, %bb.f ], [ %.05370, %bb.e ], [ %.05370, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.g ], [ %.05271, %bb.f ], [ %.05271, %bb.e ], [ %.05271, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl19EnumerateRectPointsEddddPiS2_S2_(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #28 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 10 uses
  %i.b = alloca [4 x double], align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  %i.c = insertelement <2 x double> poison, double %2, i64 0
  %i.d = insertelement <2 x double> %i.c, double %3, i64 1
  %i.e = insertelement <2 x double> poison, double %0, i64 0
  %i.f = insertelement <2 x double> %i.e, double %1, i64 1
  %i.g = fsub <2 x double> %i.d, %i.f             ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.g, %i.g
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.i = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.h)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.j)
  %i.k = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x double> %i.g, %i.l             ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 1
  %i.o = fmul double %i.n, 2.000000e+00
  %i.p = fmul double %i.o, 5.000000e-01           ; 4 uses
  %i.q = fsub double %0, %i.p
  store double %i.q, ptr %i.a, align 16, !tbaa !46
  %i.r = extractelement <2 x double> %i.m, i64 0
  %i.s = fmul double %i.r, 2.000000e+00
  %i.t = fmul double %i.s, 5.000000e-01           ; 4 uses
  %i.u = fadd double %1, %i.t
  store double %i.u, ptr %i.b, align 16, !tbaa !46
  %i.v = fsub double %2, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = fadd double %3, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.x, ptr %i.y, align 8, !tbaa !46
  %i.z = fadd double %2, %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.z, ptr %i.aa, align 16, !tbaa !46
  %i.ab = fsub double %3, %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.ab, ptr %i.ac, align 16, !tbaa !46
  %i.ad = fadd double %0, %i.p
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ad, ptr %i.ae, align 8, !tbaa !46
  %i.af = fsub double %1, %i.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.af, ptr %i.ag, align 8, !tbaa !46
  %i.ah = fcmp uge double %0, %2
  %i.ai = fcmp ugt double %1, %3
  %or.cond = or i1 %i.ah, %i.ai
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.aj = fcmp oge double %0, %2
  %i.ak = fcmp olt double %1, %3
  %or.cond114 = and i1 %i.aj, %i.ak
  br i1 %or.cond114, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = fcmp ule double %0, %2
  %i.am = fcmp ult double %1, %3
  %or.cond115 = or i1 %i.al, %i.am
  %i.an = select i1 %or.cond115, i64 3, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.094 = phi i64 [ %i.an, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.094
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46 ; 9 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.094
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46 ; 13 uses
  %i.as = add nuw nsw i64 %.094, 1
  %i.at = and i64 %i.as, 3                        ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !46 ; 7 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.at
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !46 ; 10 uses
  %i.ay = xor i64 %.094, 2                        ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !46 ; 9 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !46 ; 8 uses
  %i.bd = add nuw nsw i64 %.094, 3
  %i.be = and i64 %i.bd, 3                        ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !46 ; 7 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !46 ; 11 uses
  %i.bj = tail call double @llvm.ceil.f64(double %i.ap)
  %i.bk = fptosi double %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = tail call double @llvm.ceil.f64(double %i.ar)
  %i.bn = fptosi double %i.bm to i32
  %i.bo = fsub double %i.bg, %i.ba
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ugt double %i.bp, 1.000000e-02
  %i.br = fcmp olt double %i.bi, %i.bc
  %i.bs = fsub double %3, %i.bi
  %i.bt = fsub double %i.ba, %i.bg                ; 2 uses
  %i.bu = fsub double %i.bc, %i.bi
  %i.bv = fsub double %i.ap, %i.bg
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ugt double %i.bw, 1.000000e-02
  %i.by = fcmp olt double %i.ar, %i.bi
  %i.bz = fsub double %i.bi, %i.ar                ; 2 uses
  %i.ca = fsub double %i.bg, %i.ap                ; 2 uses
  %i.cb = fsub double %i.av, %i.ba
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ugt double %i.cc, 1.000000e-02
  %i.ce = fcmp olt double %i.ax, %i.bc
  %i.cf = fsub double %i.bc, %i.ax                ; 2 uses
  %i.cg = fsub double %i.ba, %i.av                ; 2 uses
  %i.ch = fsub double %i.ap, %i.av
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ugt double %i.ci, 1.000000e-02
  %i.ck = fcmp olt double %i.ar, %i.ax
  %i.cl = fsub double %i.ax, %i.ar                ; 2 uses
  %i.cm = fsub double %i.av, %i.ap                ; 2 uses
  %brmerge128 = fcmp ueq double %i.bi, %i.bc
  %.mux129 = select i1 %i.br, double %i.bi, double %i.bc
  %brmerge = fcmp ueq double %i.ar, %i.bi
  %.mux = select i1 %i.by, double %i.ar, double %i.bi
  %brmerge132 = fcmp ueq double %i.ax, %i.bc
  %.mux133 = select i1 %i.ce, double %i.bc, double %i.ax
  %brmerge130 = fcmp ueq double %i.ar, %i.ax
  %.mux131 = select i1 %i.ck, double %i.ax, double %i.ar
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.d ] ; 4 uses
  %.091 = phi i32 [ %.293, %bb.x ], [ %i.bl, %bb.d ] ; 3 uses
  %.089 = phi i32 [ %.190.lcssa, %bb.x ], [ %i.bn, %bb.d ]
  %.087 = phi double [ %.1.lcssa, %bb.x ], [ f0xFFEFFFFFFFFFFFFF, %bb.d ] ; 3 uses
  %i.cn = add nsw i32 %.089, 1                    ; 3 uses
  %i.co = sitofp i32 %i.cn to double
  %i.cp = fcmp olt double %.087, %i.co
  %i.cq = sitofp i32 %.091 to double              ; 2 uses
  %i.cr = fcmp oge double %i.ba, %i.cq
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ct = add nsw i32 %.091, 1                    ; 3 uses
  %i.cu = sitofp i32 %i.ct to double              ; 3 uses
  %i.cv = fcmp olt double %i.ba, %i.cu
  br i1 %i.cv, label %._crit_edge, label %.lr.ph154

.lr.ph:                                           ; preds = %bb.w
  %i.cw = add nsw i32 %i.da, 1                    ; 3 uses
  %i.cx = sitofp i32 %i.cw to double              ; 3 uses
  %i.cy = fcmp olt double %i.ba, %i.cx
  br i1 %i.cy, label %._crit_edge, label %.lr.ph154, !llvm.loop !510

.lr.ph154:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi double [ %i.cx, %.lr.ph ], [ %i.cu, %.lr.ph.preheader ] ; 12 uses
end_hunk_1
begin_hunk_2_@_ZN2cv8ximgproc15EdgeDrawingImpl15ValidateCirclesEb:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.ba
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.12126.i = phi i32 [ %i.bb, %bb.d ], [ %.02031.i, %.preheader.i ]
  %i.bb = add nsw i32 %.12126.i, 1                ; 6 uses
  %i.bc = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.av, i32 noundef %i.bb) ; 2 uses
  %i.bd = fcmp ult double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %._crit_edge28.thread47.i, !llvm.loop !0

._crit_edge28.i:                                  ; preds = %bb.d
  %i.be = fcmp olt double %i.bc, 0.000000e+00
  br i1 %i.be, label %._crit_edge28.thread.i, label %._crit_edge28.thread47.i

._crit_edge28.thread47.i:                         ; preds = %.lr.ph.i, %._crit_edge28.i, %.lr.ph36.i
  %.3.i = phi i32 [ %i.bb, %._crit_edge28.i ], [ %.02031.i, %.lr.ph36.i ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  store i32 %.3.i, ptr %i.bg, align 4, !tbaa !44
  br label %._crit_edge28.thread.i

._crit_edge28.thread.i:                           ; preds = %._crit_edge28.thread47.i, %._crit_edge28.i, %.preheader.i
  %.4.i = phi i32 [ %.3.i, %._crit_edge28.thread47.i ], [ %i.bb, %._crit_edge28.i ], [ %.02031.i, %.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bh = load i32, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next.i, %i.bi
  br i1 %i.bj, label %.lr.ph36.i, label %_ZN6NFALUTC2Eidd.exit, !llvm.loop !1

_ZN6NFALUTC2Eidd.exit:                            ; preds = %._crit_edge28.thread.i, %.noexc
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !140
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #43
  resume { ptr, i32 } %i.bk

bb.f:                                             ; preds = %_ZN6NFALUTC2Eidd.exit, %bb.b, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !236
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2128
  br label %bb.g

._crit_edge336:                                   ; preds = %bb.bn, %bb.f
  %.0248.lcssa = phi i32 [ 0, %bb.f ], [ %.3251, %bb.bn ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2148
  store i32 %.0248.lcssa, ptr %i.bs, align 4, !tbaa !270
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #43
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #43
  ret void

bb.g:                                             ; preds = %.lr.ph335, %bb.bn
  %.0244332 = phi i32 [ 0, %.lr.ph335 ], [ %.3247, %bb.bn ] ; 6 uses
  %.0248331 = phi i32 [ 0, %.lr.ph335 ], [ %.3251, %bb.bn ] ; 8 uses
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !237
  %i.bu = sext i32 %.0244332 to i64               ; 2 uses
  %i.bv = getelementptr inbounds [152 x i8], ptr %i.bt, i64 %i.bu ; 14 uses
  %i.bw = load <2 x double>, ptr %i.bv, align 8, !tbaa !46 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !248 ; 3 uses
  %i.bz = load i32, ptr %i.b, align 8, !tbaa !169
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !168
  %. = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 %i.ca)
  %i.cb = sitofp i32 %. to double
  %i.cc = fcmp ogt double %i.by, %i.cb
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = add nsw i32 %.0244332, 1
  br label %bb.bn, !llvm.loop !589

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 64 ; 3 uses
  %i.cf = tail call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl23computeEllipsePerimeterEP15EllipseEquation(ptr noundef nonnull %i.ce)
  %i.cg = fptosi double %i.cf to i32              ; 3 uses
  %i.ch = icmp slt i32 %i.g, %i.cg
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = add nsw i32 %.0244332, 1
  br label %bb.bn, !llvm.loop !589

bb.k:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !256, !range !81, !noundef !82
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2cv8ximgproc15EdgeDrawingImpl20ComputeEllipsePointsEPdS2_S2_i(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i32 noundef %i.cg)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.by, double f0x401921FB54442D18, double 5.000000e-01)
  %i.cn = fptosi double %i.cm to i32
  %i.co = sitofp i32 %i.cn to double
  %i.cp = fdiv double f0x401921FB54442D18, %i.co
  %i.cq = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i290 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i291, %bb.n ] ; 3 uses
  %.01920.i = phi double [ 0.000000e+00, %bb.m ], [ %i.cu, %bb.n ] ; 3 uses
  %i.cs = tail call double @cos(double noundef %.01920.i) #42
  %i.ct = tail call double @sin(double noundef %.01920.i) #42
  %i.cu = fadd double %i.cp, %.01920.i            ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i290
  %i.cw = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ct, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cr, <2 x double> %i.bw)
  %i.cz = fadd <2 x double> %i.cy, splat (double 5.000000e-01)
  %i.da = fptosi <2 x double> %i.cz to <2 x i32>
  %i.db = sitofp <2 x i32> %i.da to <2 x double>  ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  store double %i.dc, ptr %i.cv, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i290
  %i.de = extractelement <2 x double> %i.db, i64 1
  store double %i.de, ptr %i.dd, align 8, !tbaa !46
  %indvars.iv.next.i291 = add nuw nsw i64 %indvars.iv.i290, 1 ; 2 uses
  %i.df = fcmp olt double %i.cu, f0x401921FB54442D18
  br i1 %i.df, label %bb.n, label %_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit, !llvm.loop !24

_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit: ; preds = %bb.n
  %i.dg = trunc nuw i64 %indvars.iv.next.i291 to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit, %bb.l
  %.0294 = phi i32 [ %i.cg, %bb.l ], [ %i.dg, %_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeCirclePointsEdddPdS2_Pi.exit ] ; 2 uses
  %i.dh = icmp sgt i32 %.0294, 0
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  %wide.trip.count = zext nneg i32 %.0294 to i64
  %i.dn = extractelement <2 x double> %i.bw, i64 0 ; 3 uses
  %i.do = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.bg, %bb.o
  %.0231.lcssa = phi i32 [ 0, %bb.o ], [ %.1232, %bb.bg ] ; 3 uses
  %.0229.lcssa = phi i32 [ 0, %bb.o ], [ %.3, %bb.bg ] ; 2 uses
  br i1 %1, label %bb.bh, label %.critedge

bb.p:                                             ; preds = %.lr.ph, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bg ] ; 3 uses
  %.0229328 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.bg ] ; 13 uses
  %.0231327 = phi i32 [ 0, %.lr.ph ], [ %.1232, %bb.bg ] ; 2 uses
  %i.dp = phi <2 x i32> [ splat (i32 -1), %.lr.ph ], [ %i.mp, %bb.bg ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !46
  %i.du = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dr, i64 1
  %i.dw = fadd <2 x double> %i.dv, splat (double 5.000000e-01)
  %i.dx = fptosi <2 x double> %i.dw to <2 x i32>  ; 12 uses
  %i.dy = extractelement <2 x i32> %i.dx, i64 1   ; 25 uses
  %i.dz = extractelement <2 x i32> %i.dx, i64 0   ; 33 uses
  %i.ea = icmp eq <2 x i32> %i.dp, %i.dx          ; 2 uses
  %i.eb = extractelement <2 x i1> %i.ea, i64 0
  %i.ec = extractelement <2 x i1> %i.ea, i64 1
  %or.cond = select i1 %i.ec, i1 %i.eb, i1 false
  br i1 %or.cond, label %bb.bg, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = add nsw i32 %.0231327, 1                ; 12 uses
  %i.ee = icmp slt i32 %i.dy, 1
  br i1 %i.ee, label %bb.bg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.d, align 4, !tbaa !168 ; 3 uses
  %i.eg = add nsw i32 %i.ef, -1                   ; 3 uses
  %.not = icmp sle i32 %i.eg, %i.dy
  %i.eh = icmp slt i32 %i.dz, 1
  %or.cond289 = select i1 %.not, i1 true, i1 %i.eh
  br i1 %or.cond289, label %bb.bg, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = load i32, ptr %i.b, align 8, !tbaa !169 ; 15 uses
  %i.ej = add nsw i32 %i.ei, -1                   ; 3 uses
  %.not278 = icmp sgt i32 %i.ej, %i.dz
  br i1 %.not278, label %bb.t, label %bb.bg

bb.t:                                             ; preds = %bb.s
  %i.ek = load ptr, ptr %i.bp, align 8, !tbaa !170 ; 17 uses
  %i.el = mul nuw nsw i32 %i.ei, %i.dy            ; 9 uses
  %i.em = add nuw nsw i32 %i.el, %i.dz
  %3 = zext nneg i32 %i.em to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !59
  %.not279 = icmp eq i8 %i.eo, -1
  br i1 %.not279, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = uitofp nneg i32 %i.dy to double
  %i.eq = fsub double %i.ep, %i.do                ; 2 uses
  %i.er = uitofp nneg i32 %i.dz to double         ; 2 uses
  %i.es = fsub double %i.eq, %i.er
  %i.et = fadd double %i.dn, %i.es
  %i.eu = fptosi double %i.et to i32
  %i.ev = fadd double %i.eq, %i.er
  %i.ew = fsub double %i.ev, %i.dn
  %i.ex = fptosi double %i.ew to i32
  %i.ey = icmp slt i32 %i.eu, 0
  %i.ez = icmp sgt i32 %i.ex, 0                   ; 2 uses
  br i1 %i.ey, label %bb.v, label %bb.am

bb.v:                                             ; preds = %bb.u
  br i1 %i.ez, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %.not283 = icmp eq i32 %i.dz, 1
  br i1 %.not283, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = add nsw i32 %i.dz, -1                   ; 2 uses
  %i.fb = add nuw nsw i32 %i.el, %i.fa
  %4 = zext nneg i32 %i.fb to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 %4
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !59
  %i.fe = icmp eq i8 %i.fd, -1
  br i1 %i.fe, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ff = add nuw nsw i32 %i.dz, 1                ; 3 uses
  %i.fg = icmp samesign ult i32 %i.ff, %i.ej
  br i1 %i.fg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fh = add nuw nsw i32 %i.el, %i.ff
  %5 = zext nneg i32 %i.fh to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 %5
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !59
  %i.fk = icmp eq i8 %i.fj, -1
  br i1 %i.fk, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fl = icmp samesign ugt i32 %i.dz, 3
  br i1 %i.fl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fm = add nsw i32 %i.dz, -2                   ; 2 uses
  %i.fn = add nuw nsw i32 %i.el, %i.fm
  %6 = zext nneg i32 %i.fn to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %6
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !59
  %i.fq = icmp eq i8 %i.fp, -1
  br i1 %i.fq, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fr = add nuw nsw i32 %i.dz, 2                ; 3 uses
  %i.fs = add nsw i32 %i.ei, -2
  %i.ft = icmp samesign ult i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.ad, label %bb.bg

bb.ad:                                            ; preds = %bb.ac
  %i.fu = add nuw nsw i32 %i.el, %i.fr
  %7 = zext nneg i32 %i.fu to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ek, i64 %7
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !59
  %i.fx = icmp eq i8 %i.fw, -1
  br i1 %i.fx, label %.thread, label %bb.bg

bb.ae:                                            ; preds = %bb.v
  %.not282 = icmp eq i32 %i.dy, 1
  br i1 %.not282, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = add nsw i32 %i.dy, -1                   ; 2 uses
  %i.fz = mul nuw nsw i32 %i.ei, %i.fy
  %i.ga = add nuw nsw i32 %i.fz, %i.dz
  %8 = zext nneg i32 %i.ga to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ek, i64 %8
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !59
  %i.gd = icmp eq i8 %i.gc, -1
  br i1 %i.gd, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ge = add nuw nsw i32 %i.dy, 1                ; 3 uses
  %i.gf = icmp samesign ult i32 %i.ge, %i.eg
  br i1 %i.gf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gg = mul nuw nsw i32 %i.ei, %i.ge
  %i.gh = add nuw nsw i32 %i.gg, %i.dz
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !59
  %i.gl = icmp eq i8 %i.gk, -1
  br i1 %i.gl, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gm = icmp samesign ugt i32 %i.dy, 3
  br i1 %i.gm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gn = add nsw i32 %i.dy, -2                   ; 2 uses
  %i.go = mul nuw nsw i32 %i.ei, %i.gn
  %i.gp = add nuw nsw i32 %i.go, %i.dz
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !59
  %i.gt = icmp eq i8 %i.gs, -1
  br i1 %i.gt, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gu = add nuw nsw i32 %i.dy, 2                ; 3 uses
  %i.gv = add nsw i32 %i.ef, -2
  %i.gw = icmp samesign ult i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.al, label %bb.bg

bb.al:                                            ; preds = %bb.ak
  %i.gx = mul nuw nsw i32 %i.ei, %i.gu
  %i.gy = add nuw nsw i32 %i.gx, %i.dz
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !59
  %i.hc = icmp eq i8 %i.hb, -1
  br i1 %i.hc, label %.thread, label %bb.bg

bb.am:                                            ; preds = %bb.u
  br i1 %i.ez, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %.not281 = icmp eq i32 %i.dy, 1
  br i1 %.not281, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hd = add nsw i32 %i.dy, -1                   ; 2 uses
  %i.he = mul nuw nsw i32 %i.ei, %i.hd
  %i.hf = add nuw nsw i32 %i.he, %i.dz
  %9 = zext nneg i32 %i.hf to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ek, i64 %9
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !59
  %i.hi = icmp eq i8 %i.hh, -1
  br i1 %i.hi, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hj = add nuw nsw i32 %i.dy, 1                ; 3 uses
  %i.hk = icmp samesign ult i32 %i.hj, %i.eg
  br i1 %i.hk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hl = mul nuw nsw i32 %i.ei, %i.hj
  %i.hm = add nuw nsw i32 %i.hl, %i.dz
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !59
  %i.hq = icmp eq i8 %i.hp, -1
  br i1 %i.hq, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hr = icmp samesign ugt i32 %i.dy, 3
  br i1 %i.hr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hs = add nsw i32 %i.dy, -2                   ; 2 uses
  %i.ht = mul nuw nsw i32 %i.ei, %i.hs
  %i.hu = add nuw nsw i32 %i.ht, %i.dz
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !59
  %i.hy = icmp eq i8 %i.hx, -1
  br i1 %i.hy, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hz = add nuw nsw i32 %i.dy, 2                ; 3 uses
  %i.ia = add nsw i32 %i.ef, -2
  %i.ib = icmp samesign ult i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.au, label %bb.bg

bb.au:                                            ; preds = %bb.at
  %i.ic = mul nuw nsw i32 %i.ei, %i.hz
  %i.id = add nuw nsw i32 %i.ic, %i.dz
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !59
  %i.ih = icmp eq i8 %i.ig, -1
  br i1 %i.ih, label %.thread, label %bb.bg

bb.av:                                            ; preds = %bb.am
  %.not280 = icmp eq i32 %i.dz, 1
  br i1 %.not280, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ii = add nsw i32 %i.dz, -1                   ; 2 uses
  %i.ij = add nuw nsw i32 %i.el, %i.ii
  %10 = zext nneg i32 %i.ij to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ek, i64 %10
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !59
  %i.im = icmp eq i8 %i.il, -1
  br i1 %i.im, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.in = add nuw nsw i32 %i.dz, 1                ; 3 uses
  %i.io = icmp samesign ult i32 %i.in, %i.ej
  br i1 %i.io, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ip = add nuw nsw i32 %i.el, %i.in
  %11 = zext nneg i32 %i.ip to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %11
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !59
  %i.is = icmp eq i8 %i.ir, -1
  br i1 %i.is, label %.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.it = icmp samesign ugt i32 %i.dz, 3
  br i1 %i.it, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iu = add nsw i32 %i.dz, -2                   ; 2 uses
  %i.iv = add nuw nsw i32 %i.el, %i.iu
  %12 = zext nneg i32 %i.iv to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ek, i64 %12
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !59
  %i.iy = icmp eq i8 %i.ix, -1
  br i1 %i.iy, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.iz = add nuw nsw i32 %i.dz, 2                ; 3 uses
  %i.ja = add nsw i32 %i.ei, -2
  %i.jb = icmp samesign ult i32 %i.iz, %i.ja
  br i1 %i.jb, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.jc = add nuw nsw i32 %i.el, %i.iz
  %13 = zext nneg i32 %i.jc to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ek, i64 %13
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !59
  %i.jf = icmp eq i8 %i.je, -1
  br i1 %i.jf, label %.thread, label %bb.bg

.thread:                                          ; preds = %bb.bc, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.ba, %bb.t
  %.1227 = phi i32 [ %i.dy, %bb.t ], [ %i.dy, %bb.bc ], [ %i.dy, %bb.ay ], [ %i.dy, %bb.aw ], [ %i.hz, %bb.au ], [ %i.hs, %bb.as ], [ %i.hj, %bb.aq ], [ %i.hd, %bb.ao ], [ %i.gu, %bb.al ], [ %i.gn, %bb.aj ], [ %i.ge, %bb.ah ], [ %i.fy, %bb.af ], [ %i.dy, %bb.ad ], [ %i.dy, %bb.ab ], [ %i.dy, %bb.z ], [ %i.dy, %bb.x ], [ %i.dy, %bb.ba ] ; 5 uses
  %.1 = phi i32 [ %i.dz, %bb.t ], [ %i.iz, %bb.bc ], [ %i.in, %bb.ay ], [ %i.ii, %bb.aw ], [ %i.dz, %bb.au ], [ %i.dz, %bb.as ], [ %i.dz, %bb.aq ], [ %i.dz, %bb.ao ], [ %i.dz, %bb.al ], [ %i.dz, %bb.aj ], [ %i.dz, %bb.ah ], [ %i.dz, %bb.af ], [ %i.fr, %bb.ad ], [ %i.fm, %bb.ab ], [ %i.ff, %bb.z ], [ %i.fa, %bb.x ], [ %i.iu, %bb.ba ] ; 5 uses
  %i.jg = load i32, ptr %i.bq, align 8, !tbaa !173
  %i.jh = and i32 %i.jg, 4064
  %.not309 = icmp eq i32 %i.jh, 0
  %i.ji = add nuw nsw i32 %.1227, 1
  %i.jj = mul nsw i32 %i.ji, %i.ei
  %i.jk = add nuw nsw i32 %i.jj, %.1
  %14 = zext nneg i32 %i.jk to i64
  %i.jl = add nsw i32 %.1227, -1
  %i.jm = mul nsw i32 %i.jl, %i.ei
  %i.jn = add nuw nsw i32 %i.jm, %.1
  %15 = zext nneg i32 %i.jn to i64
  %i.jo = mul nsw i32 %.1227, %i.ei
  %i.jp = add nuw nsw i32 %i.jo, %.1
  %16 = zext nneg i32 %i.jp to i64
  %.399.v = select i1 %.not309, i64 352, i64 1240
  %.399 = getelementptr inbounds nuw i8, ptr %0, i64 %.399.v
  %.sink395 = load ptr, ptr %.399, align 8, !tbaa !591 ; 3 uses
  %i.jq = getelementptr i8, ptr %.sink395, i64 %14 ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !59
  %i.jt = zext i8 %i.js to i32
  %i.ju = getelementptr i8, ptr %.sink395, i64 %15 ; 3 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 -1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !59
  %i.jx = zext i8 %i.jw to i32
  %i.jy = sub nsw i32 %i.jt, %i.jx                ; 2 uses
  %i.jz = getelementptr i8, ptr %i.ju, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !59
  %i.kb = zext i8 %i.ka to i32
  %i.kc = getelementptr i8, ptr %i.jq, i64 -1
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !59
  %i.ke = zext i8 %i.kd to i32
  %i.kf = sub nsw i32 %i.kb, %i.ke                ; 2 uses
  %i.kg = add nsw i32 %i.kf, %i.jy
  %i.kh = getelementptr i8, ptr %.sink395, i64 %16 ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !59
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add nsw i32 %i.kg, %i.kk
  %i.km = getelementptr i8, ptr %i.kh, i64 -1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !59
  %i.ko = zext i8 %i.kn to i32
  %i.kp = sub nsw i32 %i.kl, %i.ko
  %i.kq = load i8, ptr %i.jq, align 1, !tbaa !59
  %i.kr = zext i8 %i.kq to i32
  %i.ks = load i8, ptr %i.ju, align 1, !tbaa !59
  %i.kt = zext i8 %i.ks to i32
  %i.ku = add nsw i32 %i.jy, %i.kr
  %i.kv = sub nsw i32 %i.kf, %i.ku
  %.neg284 = add nsw i32 %i.kv, %i.kt
  %i.kw = sitofp i32 %i.kp to float
  %i.kx = sitofp i32 %.neg284 to float
  %i.ky = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.kw, float noundef %i.kx) ; 2 uses
  %i.kz = fpext float %i.ky to double             ; 2 uses
  %i.la = fcmp ogt float %i.ky, 1.800000e+02
  %i.lb = fadd nnan double %i.kz, -1.800000e+02
  %.0.i = select i1 %i.la, double %i.lb, double %i.kz
  %i.lc = fdiv double %.0.i, 1.800000e+02
  %i.ld = fmul double %i.lc, f0x400921FB54442D18
  %i.le = load i8, ptr %i.cj, align 8, !tbaa !256, !range !81, !noundef !82
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread
  %i.lg = load double, ptr %i.di, align 8, !tbaa !46
  %i.lh = fmul double %i.lg, 2.000000e+00
  %i.li = uitofp nneg i32 %.1 to double           ; 2 uses
  %i.lj = load double, ptr %i.dj, align 8, !tbaa !46 ; 2 uses
  %i.lk = uitofp nneg i32 %.1227 to double        ; 2 uses
  %i.ll = fmul double %i.lj, %i.lk
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.li, double %i.ll)
  %i.ln = load double, ptr %i.dk, align 8, !tbaa !46
  %i.lo = fadd double %i.ln, %i.lm
  %i.lp = load double, ptr %i.dl, align 8, !tbaa !46
  %i.lq = fmul double %i.lp, 2.000000e+00
  %i.lr = fmul double %i.lq, %i.lk
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.li, double %i.lr)
  %i.lt = load double, ptr %i.dm, align 8, !tbaa !46
  %i.lu = fadd double %i.lt, %i.ls
  br label %bb.bf

bb.be:                                            ; preds = %.thread
  %i.lv = uitofp nneg i32 %.1 to double
  %i.lw = fsub double %i.lv, %i.dn
  %i.lx = uitofp nneg i32 %.1227 to double
  %i.ly = fsub double %i.lx, %i.do
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0222 = phi double [ %i.lo, %bb.bd ], [ %i.lw, %bb.be ]
  %.0221 = phi double [ %i.lu, %bb.bd ], [ %i.ly, %bb.be ]
  %i.lz = fptrunc double %.0222 to float
  %i.ma = fptrunc double %.0221 to float
  %i.mb = fneg float %i.ma
  %i.mc = tail call noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.lz, float noundef %i.mb) ; 2 uses
  %i.md = fpext float %i.mc to double             ; 2 uses
  %i.me = fcmp ogt float %i.mc, 1.800000e+02
  %i.mf = fadd nnan double %i.md, -1.800000e+02
  %.0.i292 = select i1 %i.me, double %i.mf, double %i.md
  %i.mg = fdiv double %.0.i292, 1.800000e+02
  %i.mh = fmul double %i.mg, f0x400921FB54442D18
  %i.mi = fsub double %i.ld, %i.mh
  %i.mj = tail call double @llvm.fabs.f64(double %i.mi) ; 2 uses
  %i.mk = load double, ptr %i.a, align 8, !tbaa !225 ; 2 uses
  %i.ml = fcmp ole double %i.mj, %i.mk
  %i.mm = fsub double f0x400921FB54442D18, %i.mk
  %i.mn = fcmp oge double %i.mj, %i.mm
  %or.cond287.not = or i1 %i.ml, %i.mn
  %i.mo = zext i1 %or.cond287.not to i32
  %.1230 = add nsw i32 %.0229328, %i.mo
  br label %bb.bg

bb.bg:                                            ; preds = %bb.au, %bb.at, %bb.bc, %bb.bb, %bb.ad, %bb.ac, %bb.al, %bb.ak, %bb.bf, %bb.s, %bb.q, %bb.r, %bb.p
  %.1232 = phi i32 [ %i.ed, %bb.bf ], [ %.0231327, %bb.p ], [ %i.ed, %bb.q ], [ %i.ed, %bb.r ], [ %i.ed, %bb.s ], [ %i.ed, %bb.ak ], [ %i.ed, %bb.al ], [ %i.ed, %bb.ac ], [ %i.ed, %bb.ad ], [ %i.ed, %bb.bb ], [ %i.ed, %bb.bc ], [ %i.ed, %bb.at ], [ %i.ed, %bb.au ] ; 2 uses
  %.3 = phi i32 [ %.1230, %bb.bf ], [ %.0229328, %bb.p ], [ %.0229328, %bb.q ], [ %.0229328, %bb.r ], [ %.0229328, %bb.s ], [ %.0229328, %bb.ak ], [ %.0229328, %bb.al ], [ %.0229328, %bb.ac ], [ %.0229328, %bb.ad ], [ %.0229328, %bb.bb ], [ %.0229328, %bb.bc ], [ %.0229328, %bb.at ], [ %.0229328, %bb.au ] ; 2 uses
  %i.mp = phi <2 x i32> [ %i.dx, %bb.bf ], [ %i.dp, %bb.p ], [ %i.dp, %bb.q ], [ %i.dp, %bb.r ], [ %i.dp, %bb.s ], [ %i.dx, %bb.ak ], [ %i.dx, %bb.al ], [ %i.dx, %bb.ac ], [ %i.dx, %bb.ad ], [ %i.dx, %bb.bb ], [ %i.dx, %bb.bc ], [ %i.dx, %bb.at ], [ %i.dx, %bb.au ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !590

bb.bh:                                            ; preds = %._crit_edge
  %i.mq = load ptr, ptr %i.n, align 8, !tbaa !140 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !40
  %.not.i = icmp slt i32 %.0231.lcssa, %i.ms
  br i1 %.not.i, label %_ZN6NFALUT20checkValidationByNFAEii.exit, label %.split

.split:                                           ; preds = %bb.bh
  %i.mt = tail call noundef double @_ZN6NFALUT3nfaEii(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.mq, i32 noundef %.0231.lcssa, i32 noundef %.0229.lcssa)
  %i.mu = fcmp ult double %i.mt, 0.000000e+00
  br i1 %i.mu, label %bb.bi, label %.critedge

_ZN6NFALUT20checkValidationByNFAEii.exit:         ; preds = %bb.bh
  %i.mv = load ptr, ptr %i.mq, align 8, !tbaa !41
  %i.mw = sext i32 %.0231.lcssa to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !44
  %.not308 = icmp slt i32 %.0229.lcssa, %i.my
  br i1 %.not308, label %bb.bi, label %.critedge

.critedge:                                        ; preds = %.split, %._crit_edge, %_ZN6NFALUT20checkValidationByNFAEii.exit
  %i.mz = load ptr, ptr %i.bo, align 8, !tbaa !237
  %i.na = getelementptr inbounds [152 x i8], ptr %i.mz, i64 %i.bu
  %i.nb = load ptr, ptr %i.br, align 8, !tbaa !271
  %i.nc = add nsw i32 %.0248331, 1
  %i.nd = sext i32 %.0248331 to i64
  %i.ne = getelementptr inbounds [152 x i8], ptr %i.nb, i64 %i.nd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ne, ptr noundef nonnull align 8 dereferenceable(152) %i.na, i64 152, i1 false), !tbaa.struct !302
  br label %.thread301

bb.bi:                                            ; preds = %.split, %_ZN6NFALUT20checkValidationByNFAEii.exit
  %i.nf = load i8, ptr %i.cj, align 8, !tbaa !256, !range !81, !noundef !82
  %i.ng = icmp eq i8 %i.nf, 0
  br i1 %i.ng, label %bb.bj, label %.thread301

bb.bj:                                            ; preds = %bb.bi
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !250
  %i.nj = fcmp ult double %i.ni, 5.000000e-01
  br i1 %i.nj, label %.thread301, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !251
  %i.nm = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !252
  %i.no = getelementptr inbounds nuw i8, ptr %i.bv, i64 56 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8, !tbaa !253
  %i.nq = call noundef zeroext i1 @_ZN2cv8ximgproc15EdgeDrawingImpl10EllipseFitEPdS2_iP15EllipseEquationi(ptr noundef %i.nl, ptr noundef %i.nn, i32 noundef %i.np, ptr noundef nonnull %2, i32 noundef 1)
  br i1 %i.nq, label %bb.bl, label %.thread307

bb.bl:                                            ; preds = %bb.bk
  %i.nr = load ptr, ptr %i.nk, align 8, !tbaa !251
  %i.ns = load ptr, ptr %i.nm, align 8, !tbaa !252
  %i.nt = load i32, ptr %i.no, align 8, !tbaa !253
  %i.nu = call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeEllipseErrorEP15EllipseEquationPdS4_i(ptr noundef nonnull %2, ptr noundef %i.nr, ptr noundef %i.ns, i32 noundef %i.nt) ; 2 uses
  %i.nv = fcmp ugt double %i.nu, 1.500000e+00
  br i1 %i.nv, label %.thread307, label %bb.bm

.thread301:                                       ; preds = %.critedge, %bb.bj, %bb.bi
  %.1249.ph = phi i32 [ %.0248331, %bb.bi ], [ %.0248331, %bb.bj ], [ %i.nc, %.critedge ]
  %i.nw = add nsw i32 %.0244332, 1
  br label %bb.bn

.thread307:                                       ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  %i.nx = add nsw i32 %.0244332, 1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i8 1, ptr %i.cj, align 8, !tbaa !256
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store double %i.nu, ptr %i.ny, align 8, !tbaa !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !254
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %bb.bn

bb.bn:                                            ; preds = %bb.j, %.thread301, %.thread307, %bb.bm, %bb.h
  %.3251 = phi i32 [ %.0248331, %bb.h ], [ %.0248331, %bb.j ], [ %.0248331, %bb.bm ], [ %.1249.ph, %.thread301 ], [ %.0248331, %.thread307 ] ; 2 uses
  %.3247 = phi i32 [ %i.cd, %bb.h ], [ %i.ci, %bb.j ], [ %.0244332, %bb.bm ], [ %i.nw, %.thread301 ], [ %i.nx, %.thread307 ] ; 2 uses
  %i.nz = load i32, ptr %i.bl, align 8, !tbaa !236
  %i.oa = icmp slt i32 %.3247, %i.nz
  br i1 %i.oa, label %bb.g, label %._crit_edge336
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl11JoinCirclesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.Circle, align 8             ; 4 uses
  %2 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %3 = alloca %struct.EllipseEquation, align 8    ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
end_hunk_2
