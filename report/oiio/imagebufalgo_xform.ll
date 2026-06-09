inline.NumInlined: 5677
inline.NumDeleted: 1666
begin_hunk_0_@_ZNK9Imath_3_18Matrix33IfE7inverseEv:bb.a
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = fdiv <4 x float> %i.an, %i.ca
  %i.cc = fdiv <4 x float> %i.az, %i.ca
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cf = load <2 x float>, ptr %1, align 4, !tbaa !77 ; 2 uses
  %i.cg = load float, ptr %i.ce, align 4, !tbaa !77
  %i.ch = fneg float %i.cg                        ; 2 uses
  %i.ci = load <2 x float>, ptr %i.d, align 4, !tbaa !77 ; 3 uses
  %i.cj = load float, ptr %i.cd, align 4, !tbaa !77
  %i.ck = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.cl = fneg float %i.ck
  %i.cm = fmul float %i.ck, %i.ch
  %i.cn = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cj, float %i.cm) ; 5 uses
  %i.cp = fcmp ogt float %i.co, 0.000000e+00
  %i.cq = fneg float %i.co
  %i.cr = select i1 %i.cp, float %i.co, float %i.cq ; 2 uses
  %i.cs = fcmp ult float %i.cr, 1.000000e+00
  br i1 %i.cs, label %.preheader67, label %.critedge63

.preheader67:                                     ; preds = %bb.e
  %i.ct = fmul float %i.cr, f0x7E800000
  %i.cu = shufflevector <2 x float> %i.ci, <2 x float> %i.cf, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.cv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cu)
  %i.cw = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = fcmp ogt <4 x float> %i.cx, %i.cv
  %i.cz = freeze <4 x i1> %i.cy
  %i.da = bitcast <4 x i1> %i.cz to i4
  %i.db = icmp eq i4 %i.da, -1
  br i1 %i.db, label %.critedge63, label %bb.f

.critedge63:                                      ; preds = %.preheader67, %bb.e
  %i.dc = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dd = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %i.dc, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.de = insertelement <4 x float> %i.dd, float %i.ch, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.cl, i64 3
  %i.dg = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.co, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.di = fdiv <4 x float> %i.df, %i.dh           ; 3 uses
  %.sroa.22.0 = fdiv float %i.cn, %i.co           ; 2 uses
  %i.dj = load float, ptr %i.h, align 4, !tbaa !77
  %i.dk = fneg float %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !77
  %i.dn = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.do = insertelement <2 x float> %i.dn, float %.sroa.22.0, i64 1
  %i.dp = fneg <2 x float> %i.do
  %i.dq = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dr, %i.dp
  %i.dt = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.ds)
  %i.dx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.22.0, i64 0
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.f

bb.f:                                             ; preds = %.preheader67, %.preheader, %.critedge63, %.critedge59
  %.sink = phi float [ 1.000000e+00, %.critedge63 ], [ 1.000000e+00, %.preheader ], [ %.sroa.50.0, %.critedge59 ], [ 1.000000e+00, %.preheader67 ]
  %i.ea = phi <4 x float> [ %i.di, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cb, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  %i.eb = phi <4 x float> [ %i.dz, %.critedge63 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.cc, %.critedge59 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader67 ]
  store <4 x float> %i.ea, ptr %0, align 4, !tbaa !77
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.eb, ptr %i.ec, align 4, !tbaa !77
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink, ptr %i.ed, align 4, !tbaa !77
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIfEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 16 uses
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 2 uses
  %i.b = tail call float @llvm.fabs.f32(float %5) ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = select i1 %i.c, float %i.b, float %i.a   ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %.sroa.speculated125 = select i1 %i.e, float %i.d, float 1.000000e+00 ; 2 uses
  %i.f = tail call float @llvm.fabs.f32(float %4) ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %6) ; 2 uses
  %i.h = fcmp olt float %i.f, %i.g
  %i.i = select i1 %i.h, float %i.g, float %i.f   ; 2 uses
  %i.j = fcmp ogt float %i.i, 1.000000e+00
  %.sroa.speculated = select i1 %i.j, float %i.i, float 1.000000e+00 ; 2 uses
  %i.k = fdiv float 1.000000e+00, %.sroa.speculated125
  %i.l = fdiv float 1.000000e+00, %.sroa.speculated
  %i.m = fmul nnan float %.sroa.speculated125, 5.000000e-01
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !876 ; 2 uses
  %i.p = fmul float %i.m, %i.o                    ; 2 uses
  %i.q = fmul nnan float %.sroa.speculated, 5.000000e-01
  %i.r = fmul float %i.q, %i.o                    ; 2 uses
  %i.s = fsub float %1, %i.p
  %i.t = tail call float @llvm.floor.f32(float %i.s)
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fadd float %1, %i.p
  %i.w = tail call float @llvm.ceil.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %2, %i.r
  %i.z = tail call float @llvm.floor.f32(float %i.y)
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fadd float %2, %i.r
  %i.ac = tail call float @llvm.ceil.f32(float %i.ab)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.af = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i98 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.u)
  %.1.i99 = tail call i32 @llvm.smin.i32(i32 %spec.select.i98, i32 %i.af)
  %i.ag = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ah = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i95 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.x)
  %.1.i96 = tail call i32 @llvm.smin.i32(i32 %spec.select.i95, i32 %i.ah)
  %i.ai = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aj = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i92 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aa)
  %.1.i93 = tail call i32 @llvm.smin.i32(i32 %spec.select.i92, i32 %i.aj)
  %i.ak = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.al = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.al)
  %i.am = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fcmp olt float %1, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fcmp ult float %1, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sitofp i32 %i.au to float
  %i.aw = fcmp olt float %2, %i.av
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fcmp ult float %2, %i.ay
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ba = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph146.preheader, label %.loopexit

.lr.ph146.preheader:                              ; preds = %bb.f
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.bd, i1 false), !tbaa !77
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0130 = phi i32 [ %.1.i, %bb.e ], [ %i.ad, %bb.a ]
  %.0129 = phi i32 [ %.1.i93, %bb.e ], [ %i.aa, %bb.a ]
  %.0128 = phi i32 [ %.1.i96, %bb.e ], [ %i.x, %bb.a ]
  %.0127 = phi i32 [ %.1.i99, %bb.e ], [ %i.u, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0127, i32 noundef %.0128, i32 noundef %.0129, i32 noundef %.0130, i32 noundef 0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %i.be = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %._crit_edge164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 2 uses
  %i.bh = alloca i8, i64 %i.bg, align 16
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.h, %bb.i
  %.pre-phi167 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.h ]
  %i.bi = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.bi, i8 0, i64 %.pre-phi167, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bq = icmp sgt i32 %i.be, 0                   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 112
  %wide.trip.count = zext i32 %i.be to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.be, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge164
  %.080 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.cw, %._crit_edge ] ; 4 uses
  %i.bs = load i8, ptr %i.bj, align 8, !tbaa !220, !range !47, !noundef !48
  %i.bt = icmp eq i8 %i.bs, 0
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !223 ; 2 uses
  br i1 %i.bt, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bm, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !225
  %i.bv = icmp eq i32 %.pre, %i.bu
  %.pre163 = load i32, ptr %i.bm, align 8, !tbaa !224 ; 3 uses
  %i.bw = load i32, ptr %i.bn, align 4
  %i.bx = icmp eq i32 %.pre163, %i.bw
  %or.cond = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !226
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cb = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cc = sitofp i32 %.pre to float
  %i.cd = fadd nnan float %i.cc, 5.000000e-01
  %i.ce = fsub float %i.cd, %1
  %i.cf = fmul float %i.k, %i.ce
  %i.cg = sitofp i32 %i.cb to float
  %i.ch = fadd nnan float %i.cg, 5.000000e-01
  %i.ci = fsub float %i.ch, %2
  %i.cj = fmul float %i.l, %i.ci
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef float %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %7, float noundef %i.cf, float noundef %i.cj)
          to label %.preheader136 unwind label %bb.m ; 3 uses

.preheader136:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader136
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !874 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x float>, ptr %i.cp, align 4, !tbaa !77
  %wide.load176 = load <4 x float>, ptr %i.cq, align 4, !tbaa !77
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %wide.load177 = load <4 x float>, ptr %i.cr, align 16, !tbaa !77
  %wide.load178 = load <4 x float>, ptr %i.cs, align 16, !tbaa !77
  %i.ct = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load177)
  %i.cu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load176, <4 x float> %wide.load178)
  store <4 x float> %i.ct, ptr %i.cr, align 16, !tbaa !77
  store <4 x float> %i.cu, ptr %i.cs, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !878

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader136
  %i.cw = fadd float %.080, %i.cn
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %bb.j unwind label %bb.n, !llvm.loop !879

bb.l:                                             ; preds = %bb.g
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  %i.da = load float, ptr %i.cz, align 4, !tbaa !77
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = call float @llvm.fmuladd.f32(float %i.cn, float %i.da, float %i.dc)
  store float %i.dd, ptr %i.db, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !880

bb.n:                                             ; preds = %._crit_edge
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.df = fcmp ogt float %.080, 0.000000e+00
  br i1 %i.df, label %.preheader, label %.preheader134

.preheader134:                                    ; preds = %bb.o
  br i1 %i.bq, label %.lr.ph141.preheader, label %.loopexit133

.lr.ph141.preheader:                              ; preds = %.preheader134
  %i.dg = zext nneg i32 %i.be to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.dh, i1 false), !tbaa !77
  br label %.loopexit133

.preheader:                                       ; preds = %bb.o
  br i1 %i.bq, label %.lr.ph143.preheader, label %.loopexit133

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count157 = zext nneg i32 %i.be to i64
  %min.iters.check180 = icmp ult i32 %i.be, 4
  br i1 %min.iters.check180, label %.lr.ph143.preheader193, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph143.preheader
  %n.vec183 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %.080, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph181
  %index187 = phi i64 [ 0, %vector.ph181 ], [ %index.next189, %vector.body186 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index187
  %wide.load188 = load <4 x float>, ptr %i.di, align 16, !tbaa !77
  %i.dj = fdiv <4 x float> %wide.load188, %broadcast.splat185
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index187
  store <4 x float> %i.dj, ptr %i.dk, align 4, !tbaa !77
  %index.next189 = add nuw i64 %index187, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dl, label %middle.block190, label %vector.body186, !llvm.loop !881

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %n.vec183, %wide.trip.count
  br i1 %cmp.n191, label %.loopexit133, label %.lr.ph143.preheader193

.lr.ph143.preheader193:                           ; preds = %.lr.ph143.preheader, %middle.block190
  %indvars.iv154.ph = phi i64 [ 0, %.lr.ph143.preheader ], [ %n.vec183, %middle.block190 ]
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader193, %.lr.ph143
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %.lr.ph143 ], [ %indvars.iv154.ph, %.lr.ph143.preheader193 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv154
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !77
  %i.do = fdiv float %i.dn, %.080
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv154
  store float %i.do, ptr %i.dp, align 4, !tbaa !77
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.loopexit133, label %.lr.ph143, !llvm.loop !882

.loopexit133:                                     ; preds = %.lr.ph143, %middle.block190, %.lr.ph141.preheader, %.preheader134, %.preheader
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !230
  %.not.i103 = icmp eq ptr %i.dr, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit133
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.loopexit133, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph146.preheader, %bb.f, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.l ], [ %i.de, %bb.n ], [ %i.cy, %bb.m ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !223
  %i.c = add nsw i32 %i.b, 1                      ; 7 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !223
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !883
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !884, !range !47, !noundef !48
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !224
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !885, !range !47, !noundef !48
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !tbaa !886
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !874
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.n
  store ptr %i.q, ptr %i.o, align 8, !tbaa !874
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !887
  %.not.i = icmp slt i32 %i.c, %i.s
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !888, !range !47, !noundef !48
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !886
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !874
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.x
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !874
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !887
  %i.ad = icmp slt i32 %i.c, %i.ac                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sge i32 %i.c, %i.af
  %not..i = xor i1 %i.ad, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.ag, !prof !889
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = select i1 %or.cond.i, i1 true, i1 %i.aj, !prof !889
  br i1 %i.ak, label %bb.h, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, !prof !25

bb.h:                                             ; preds = %bb.g
  %i.al = zext i1 %i.ad to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !228
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !224
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !226
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !890
  %i.ax = tail call noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef %i.c, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i1 noundef zeroext %i.ad, i32 noundef %i.aw)
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !874
  store i8 %i.al, ptr %i.g, align 1, !tbaa !884
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.i:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !225 ; 3 uses
  store i32 %i.az, ptr %i.a, align 4, !tbaa !223
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !224
  %i.bc = add nsw i32 %i.bb, 1                    ; 3 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !224
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !891
  %.not = icmp slt i32 %i.bc, %i.be
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !892 ; 2 uses
  store i32 %i.bg, ptr %i.ba, align 8, !tbaa !224
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !226
  %i.bj = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !226
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !227
  %.not1 = icmp slt i32 %i.bj, %i.bl
  br i1 %.not1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !220
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.l:                                             ; preds = %._crit_edge, %bb.i, %bb.j
  %i.bn = phi i32 [ %i.bc, %bb.i ], [ %i.bg, %bb.j ], [ %.pre, %._crit_edge ]
  %i.bo = phi i32 [ %i.az, %bb.i ], [ %i.az, %bb.j ], [ %i.c, %._crit_edge ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !226
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %0, i32 noundef %i.bo, i32 noundef %i.bn, i32 noundef %i.bq)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.l, %bb.k
  ret void
}

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #5

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #5
end_hunk_0
begin_hunk_1_@_ZZN11OpenImageIO4v3_1L5warp_IfhEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_:bb.a

._crit_edge:                                      ; preds = %bb.i, %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.c unwind label %bb.k, !llvm.loop !900

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = load ptr, ptr %3, align 8, !tbaa !228
  %i.de = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.lr.ph
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc, %bb.h
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !874
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv
  store float %i.dc, ptr %i.dh, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.di = load i32, ptr %i.ad, align 4, !tbaa !78
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !901

bb.j:                                             ; preds = %bb.h, %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.k ], [ %i.dl, %bb.j ], [ %i.da, %bb.g ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIhEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 16 uses
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 2 uses
  %i.b = tail call float @llvm.fabs.f32(float %5) ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = select i1 %i.c, float %i.b, float %i.a   ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %.sroa.speculated125 = select i1 %i.e, float %i.d, float 1.000000e+00 ; 2 uses
  %i.f = tail call float @llvm.fabs.f32(float %4) ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %6) ; 2 uses
  %i.h = fcmp olt float %i.f, %i.g
  %i.i = select i1 %i.h, float %i.g, float %i.f   ; 2 uses
  %i.j = fcmp ogt float %i.i, 1.000000e+00
  %.sroa.speculated = select i1 %i.j, float %i.i, float 1.000000e+00 ; 2 uses
  %i.k = fdiv float 1.000000e+00, %.sroa.speculated125
  %i.l = fdiv float 1.000000e+00, %.sroa.speculated
  %i.m = fmul nnan float %.sroa.speculated125, 5.000000e-01
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !876 ; 2 uses
  %i.p = fmul float %i.m, %i.o                    ; 2 uses
  %i.q = fmul nnan float %.sroa.speculated, 5.000000e-01
  %i.r = fmul float %i.q, %i.o                    ; 2 uses
  %i.s = fsub float %1, %i.p
  %i.t = tail call float @llvm.floor.f32(float %i.s)
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fadd float %1, %i.p
  %i.w = tail call float @llvm.ceil.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %2, %i.r
  %i.z = tail call float @llvm.floor.f32(float %i.y)
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fadd float %2, %i.r
  %i.ac = tail call float @llvm.ceil.f32(float %i.ab)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.af = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i98 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.u)
  %.1.i99 = tail call i32 @llvm.smin.i32(i32 %spec.select.i98, i32 %i.af)
  %i.ag = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ah = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i95 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.x)
  %.1.i96 = tail call i32 @llvm.smin.i32(i32 %spec.select.i95, i32 %i.ah)
  %i.ai = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aj = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i92 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aa)
  %.1.i93 = tail call i32 @llvm.smin.i32(i32 %spec.select.i92, i32 %i.aj)
  %i.ak = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.al = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.al)
  %i.am = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fcmp olt float %1, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fcmp ult float %1, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sitofp i32 %i.au to float
  %i.aw = fcmp olt float %2, %i.av
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fcmp ult float %2, %i.ay
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ba = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph146.preheader, label %.loopexit

.lr.ph146.preheader:                              ; preds = %bb.f
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.bd, i1 false), !tbaa !77
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0130 = phi i32 [ %.1.i, %bb.e ], [ %i.ad, %bb.a ]
  %.0129 = phi i32 [ %.1.i93, %bb.e ], [ %i.aa, %bb.a ]
  %.0128 = phi i32 [ %.1.i96, %bb.e ], [ %i.x, %bb.a ]
  %.0127 = phi i32 [ %.1.i99, %bb.e ], [ %i.u, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0127, i32 noundef %.0128, i32 noundef %.0129, i32 noundef %.0130, i32 noundef 0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %i.be = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %._crit_edge164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 2 uses
  %i.bh = alloca i8, i64 %i.bg, align 16
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.h, %bb.i
  %.pre-phi167 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.h ]
  %i.bi = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.bi, i8 0, i64 %.pre-phi167, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bq = icmp sgt i32 %i.be, 0                   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 112
  %wide.trip.count = zext i32 %i.be to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.be, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge164
  %.080 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.da, %._crit_edge ] ; 4 uses
  %i.bs = load i8, ptr %i.bj, align 8, !tbaa !220, !range !47, !noundef !48
  %i.bt = icmp eq i8 %i.bs, 0
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !223 ; 2 uses
  br i1 %i.bt, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bm, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !225
  %i.bv = icmp eq i32 %.pre, %i.bu
  %.pre163 = load i32, ptr %i.bm, align 8, !tbaa !224 ; 3 uses
  %i.bw = load i32, ptr %i.bn, align 4
  %i.bx = icmp eq i32 %.pre163, %i.bw
  %or.cond = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !226
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cb = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cc = sitofp i32 %.pre to float
  %i.cd = fadd nnan float %i.cc, 5.000000e-01
  %i.ce = fsub float %i.cd, %1
  %i.cf = fmul float %i.k, %i.ce
  %i.cg = sitofp i32 %i.cb to float
  %i.ch = fadd nnan float %i.cg, 5.000000e-01
  %i.ci = fsub float %i.ch, %2
  %i.cj = fmul float %i.l, %i.ci
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef float %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %7, float noundef %i.cf, float noundef %i.cj)
          to label %.preheader136 unwind label %bb.m ; 3 uses

.preheader136:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader136
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !874 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %wide.load = load <4 x i8>, ptr %i.cp, align 1, !tbaa !24
  %wide.load176 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !24
  %i.cr = uitofp <4 x i8> %wide.load to <4 x float>
  %i.cs = uitofp <4 x i8> %wide.load176 to <4 x float>
  %i.ct = fmul nnan <4 x float> %i.cr, splat (float f0x3B808081)
  %i.cu = fmul nnan <4 x float> %i.cs, splat (float f0x3B808081)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load177 = load <4 x float>, ptr %i.cv, align 16, !tbaa !77
  %wide.load178 = load <4 x float>, ptr %i.cw, align 16, !tbaa !77
  %i.cx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ct, <4 x float> %wide.load177)
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cu, <4 x float> %wide.load178)
  store <4 x float> %i.cx, ptr %i.cv, align 16, !tbaa !77
  store <4 x float> %i.cy, ptr %i.cw, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !902

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader136
  %i.da = fadd float %.080, %i.cn
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %bb.j unwind label %bb.n, !llvm.loop !903

bb.l:                                             ; preds = %bb.g
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
  %i.df = uitofp i8 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x3B808081
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !77
  %i.dj = call float @llvm.fmuladd.f32(float %i.cn, float %i.dg, float %i.di)
  store float %i.dj, ptr %i.dh, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !904

bb.n:                                             ; preds = %._crit_edge
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dl = fcmp ogt float %.080, 0.000000e+00
  br i1 %i.dl, label %.preheader, label %.preheader134

.preheader134:                                    ; preds = %bb.o
  br i1 %i.bq, label %.lr.ph141.preheader, label %.loopexit133

.lr.ph141.preheader:                              ; preds = %.preheader134
  %i.dm = zext nneg i32 %i.be to i64
  %i.dn = shl nuw nsw i64 %i.dm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.dn, i1 false), !tbaa !77
  br label %.loopexit133

.preheader:                                       ; preds = %bb.o
  br i1 %i.bq, label %.lr.ph143.preheader, label %.loopexit133

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count157 = zext nneg i32 %i.be to i64
  %min.iters.check180 = icmp ult i32 %i.be, 4
  br i1 %min.iters.check180, label %.lr.ph143.preheader193, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph143.preheader
  %n.vec183 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %.080, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph181
  %index187 = phi i64 [ 0, %vector.ph181 ], [ %index.next189, %vector.body186 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index187
  %wide.load188 = load <4 x float>, ptr %i.do, align 16, !tbaa !77
  %i.dp = fdiv <4 x float> %wide.load188, %broadcast.splat185
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index187
  store <4 x float> %i.dp, ptr %i.dq, align 4, !tbaa !77
  %index.next189 = add nuw i64 %index187, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dr, label %middle.block190, label %vector.body186, !llvm.loop !905

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %n.vec183, %wide.trip.count
  br i1 %cmp.n191, label %.loopexit133, label %.lr.ph143.preheader193

.lr.ph143.preheader193:                           ; preds = %.lr.ph143.preheader, %middle.block190
  %indvars.iv154.ph = phi i64 [ 0, %.lr.ph143.preheader ], [ %n.vec183, %middle.block190 ]
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader193, %.lr.ph143
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %.lr.ph143 ], [ %indvars.iv154.ph, %.lr.ph143.preheader193 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv154
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !77
  %i.du = fdiv float %i.dt, %.080
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv154
  store float %i.du, ptr %i.dv, align 4, !tbaa !77
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.loopexit133, label %.lr.ph143, !llvm.loop !906

.loopexit133:                                     ; preds = %.lr.ph143, %middle.block190, %.lr.ph141.preheader, %.preheader134, %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !230
  %.not.i103 = icmp eq ptr %i.dx, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit133
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.loopexit133, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph146.preheader, %bb.f, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.l ], [ %i.dk, %bb.n ], [ %i.dc, %bb.m ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5warp_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_RKNS5_8Matrix33IfEEPKNS1_8Filter2DENS7_8WrapModeEbS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_RKNS2_8Matrix33IfEEPKNS0_8Filter2DENS4_8WrapModeEbNS0_3ROIEiENKUlSG_E_clESG_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5warp_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_RKNS5_8Matrix33IfEEPKNS1_8Filter2DENS7_8WrapModeEbS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_RKNS2_8Matrix33IfEEPKNS0_8Filter2DENS4_8WrapModeEbNS0_3ROIEiEUlSG_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !865
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_RKNS4_8Matrix33IfEEPKNS2_8Filter2DENS6_8WrapModeEbNS2_3ROIEiEUlSI_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_RKNS2_8Matrix33IfEEPKNS0_8Filter2DENS4_8WrapModeEbNS0_3ROIEiENKUlSG_E_clESG_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imath_3_1::Matrix33", align 4 ; 13 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !907, !nonnull !48, !align !386
  %i.b = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.e = alloca i8, i64 %i.d, align 16
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.a, %bb.b
  %.pre-phi54 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.f, i8 0, i64 %.pre-phi54, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !909, !nonnull !48, !align !367
  call void @_ZNK9Imath_3_18Matrix33IfE7inverseEv(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Matrix33") align 4 %2, ptr noundef nonnull align 4 dereferenceable(36) %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.i = load ptr, ptr %0, align 8, !tbaa !907, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %._crit_edge51
  %i.af = load i8, ptr %i.j, align 8, !tbaa !220, !range !47, !noundef !48
  %i.ag = icmp eq i8 %i.af, 0
  %.pre = load i32, ptr %i.k, align 4, !tbaa !223 ; 2 uses
  br i1 %i.ag, label %bb.d, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre49 = load i32, ptr %i.m, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !225
  %i.ai = icmp eq i32 %.pre, %i.ah
  %.pre50 = load i32, ptr %i.m, align 8, !tbaa !224 ; 3 uses
  %i.aj = load i32, ptr %i.n, align 4
  %i.ak = icmp eq i32 %.pre50, %i.aj
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.d
  %i.al = load i32, ptr %i.o, align 4, !tbaa !226
  %i.am = load i32, ptr %i.p, align 8, !tbaa !227
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.d, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ao = phi i32 [ %.pre49, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre50, %bb.d ], [ %.pre50, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ap = sitofp i32 %.pre to float
  %i.aq = fadd float %i.ap, 5.000000e-01          ; 3 uses
  %i.ar = sitofp i32 %i.ao to float
  %i.as = fadd float %i.ar, 5.000000e-01          ; 3 uses
  %i.at = load float, ptr %i.q, align 4, !tbaa !77 ; 3 uses
  %i.au = fmul float %i.aq, %i.at
  %i.av = load float, ptr %i.r, align 4, !tbaa !77 ; 3 uses
  %i.aw = fmul float %i.as, %i.av
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = load float, ptr %i.s, align 4, !tbaa !77
  %i.az = fadd float %i.ay, %i.ax                 ; 2 uses
  %i.ba = fcmp une float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.e, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bb = fmul float %i.at, 0.000000e+00
  %i.bc = fadd float %i.bb, %i.av                 ; 2 uses
  %i.bd = fmul float %i.av, 0.000000e+00
  %i.be = fadd float %i.at, %i.bd                 ; 2 uses
  %i.bf = load float, ptr %i.v, align 4, !tbaa !77
  %i.bg = load float, ptr %i.w, align 4, !tbaa !77 ; 3 uses
  %i.bh = fmul float %i.aq, %i.bg
  %i.bi = load float, ptr %i.x, align 4, !tbaa !77 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L5warp_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_RKNS2_8Matrix33IfEEPKNS0_8Filter2DENS4_8WrapModeEbNS0_3ROIEiENKUlSG_E_clESG_:bb.a

._crit_edge:                                      ; preds = %bb.i, %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.c unwind label %bb.k, !llvm.loop !914

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = load ptr, ptr %3, align 8, !tbaa !228
  %i.de = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.lr.ph
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc, %bb.h
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !874
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv
  store float %i.dc, ptr %i.dh, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.di = load i32, ptr %i.ad, align 4, !tbaa !78
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !915

bb.j:                                             ; preds = %bb.h, %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.k ], [ %i.dl, %bb.j ], [ %i.da, %bb.g ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleIN9Imath_3_14halfEEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS5_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.108", align 8 ; 16 uses
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 2 uses
  %i.b = tail call float @llvm.fabs.f32(float %5) ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = select i1 %i.c, float %i.b, float %i.a   ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %.sroa.speculated125 = select i1 %i.e, float %i.d, float 1.000000e+00 ; 2 uses
  %i.f = tail call float @llvm.fabs.f32(float %4) ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %6) ; 2 uses
  %i.h = fcmp olt float %i.f, %i.g
  %i.i = select i1 %i.h, float %i.g, float %i.f   ; 2 uses
  %i.j = fcmp ogt float %i.i, 1.000000e+00
  %.sroa.speculated = select i1 %i.j, float %i.i, float 1.000000e+00 ; 2 uses
  %i.k = fdiv float 1.000000e+00, %.sroa.speculated125
  %i.l = fdiv float 1.000000e+00, %.sroa.speculated
  %i.m = fmul nnan float %.sroa.speculated125, 5.000000e-01
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !876 ; 2 uses
  %i.p = fmul float %i.m, %i.o                    ; 2 uses
  %i.q = fmul nnan float %.sroa.speculated, 5.000000e-01
  %i.r = fmul float %i.q, %i.o                    ; 2 uses
  %i.s = fsub float %1, %i.p
  %i.t = tail call float @llvm.floor.f32(float %i.s)
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fadd float %1, %i.p
  %i.w = tail call float @llvm.ceil.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %2, %i.r
  %i.z = tail call float @llvm.floor.f32(float %i.y)
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fadd float %2, %i.r
  %i.ac = tail call float @llvm.ceil.f32(float %i.ab)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.af = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i98 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.u)
  %.1.i99 = tail call i32 @llvm.smin.i32(i32 %spec.select.i98, i32 %i.af)
  %i.ag = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ah = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i95 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.x)
  %.1.i96 = tail call i32 @llvm.smin.i32(i32 %spec.select.i95, i32 %i.ah)
  %i.ai = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aj = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i92 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aa)
  %.1.i93 = tail call i32 @llvm.smin.i32(i32 %spec.select.i92, i32 %i.aj)
  %i.ak = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.al = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.al)
  %i.am = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fcmp olt float %1, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fcmp ult float %1, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sitofp i32 %i.au to float
  %i.aw = fcmp olt float %2, %i.av
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fcmp ult float %2, %i.ay
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ba = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph146.preheader, label %.loopexit

.lr.ph146.preheader:                              ; preds = %bb.f
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.bd, i1 false), !tbaa !77
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0130 = phi i32 [ %.1.i, %bb.e ], [ %i.ad, %bb.a ]
  %.0129 = phi i32 [ %.1.i93, %bb.e ], [ %i.aa, %bb.a ]
  %.0128 = phi i32 [ %.1.i96, %bb.e ], [ %i.x, %bb.a ]
  %.0127 = phi i32 [ %.1.i99, %bb.e ], [ %i.u, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0127, i32 noundef %.0128, i32 noundef %.0129, i32 noundef %.0130, i32 noundef 0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %i.be = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %._crit_edge164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 2 uses
  %i.bh = alloca i8, i64 %i.bg, align 16
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.h, %bb.i
  %.pre-phi167 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.h ]
  %i.bi = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.bi, i8 0, i64 %.pre-phi167, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bq = icmp sgt i32 %i.be, 0                   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 112
  %wide.trip.count = zext i32 %i.be to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.be, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge164
  %.080 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.dn, %._crit_edge ] ; 4 uses
  %i.bs = load i8, ptr %i.bj, align 8, !tbaa !220, !range !47, !noundef !48
  %i.bt = icmp eq i8 %i.bs, 0
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !223 ; 2 uses
  br i1 %i.bt, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bm, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !225
  %i.bv = icmp eq i32 %.pre, %i.bu
  %.pre163 = load i32, ptr %i.bm, align 8, !tbaa !224 ; 3 uses
  %i.bw = load i32, ptr %i.bn, align 4
  %i.bx = icmp eq i32 %.pre163, %i.bw
  %or.cond = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !226
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.u, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cb = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cc = sitofp i32 %.pre to float
  %i.cd = fadd nnan float %i.cc, 5.000000e-01
  %i.ce = fsub float %i.cd, %1
  %i.cf = fmul float %i.k, %i.ce
  %i.cg = sitofp i32 %i.cb to float
  %i.ch = fadd nnan float %i.cg, 5.000000e-01
  %i.ci = fsub float %i.ch, %2
  %i.cj = fmul float %i.l, %i.ci
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef float %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %7, float noundef %i.cf, float noundef %i.cj)
          to label %.preheader136 unwind label %bb.m ; 3 uses

.preheader136:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader136
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !874 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index
  %wide.load = load <4 x i16>, ptr %i.cp, align 2, !tbaa !916 ; 2 uses
  %i.cq = zext <4 x i16> %wide.load to <4 x i32>
  %i.cr = shl nuw nsw <4 x i32> %i.cq, splat (i32 13)
  %i.cs = and <4 x i32> %i.cr, splat (i32 268427264) ; 6 uses
  %i.ct = sext <4 x i16> %wide.load to <4 x i32>
  %i.cu = and <4 x i32> %i.ct, splat (i32 -2147483648) ; 3 uses
  %i.cv = icmp eq <4 x i32> %i.cs, zeroinitializer
  %i.cw = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.cs, i1 true)
  %i.cx = add nsw <4 x i32> %i.cw, splat (i32 -8) ; 2 uses
  %i.cy = shl <4 x i32> %i.cs, %i.cx
  %i.cz = or <4 x i32> %i.cu, %i.cy
  %i.da = or <4 x i32> %i.cz, splat (i32 947912704)
  %i.db = shl nuw nsw <4 x i32> %i.cx, splat (i32 23)
  %i.dc = sub nuw <4 x i32> %i.da, %i.db
  %i.dd = or disjoint <4 x i32> %i.cs, %i.cu      ; 2 uses
  %i.de = icmp samesign ugt <4 x i32> %i.cs, splat (i32 260046847)
  %i.df = or <4 x i32> %i.dd, splat (i32 2139095040)
  %i.dg = add nsw <4 x i32> %i.cs, splat (i32 -8388608)
  %i.dh = icmp ult <4 x i32> %i.dg, splat (i32 251658240)
  %i.di = add nuw nsw <4 x i32> %i.dd, splat (i32 939524096)
  %predphi = select <4 x i1> %i.cv, <4 x i32> %i.cu, <4 x i32> %i.dc
  %predphi178 = select <4 x i1> %i.de, <4 x i32> %i.df, <4 x i32> %predphi
  %predphi179 = select <4 x i1> %i.dh, <4 x i32> %i.di, <4 x i32> %predphi178
  %i.dj = bitcast <4 x i32> %predphi179 to <4 x float>
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 2 uses
  %wide.load180 = load <4 x float>, ptr %i.dk, align 16, !tbaa !77
  %i.dl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.dj, <4 x float> %wide.load180)
  store <4 x float> %i.dl, ptr %i.dk, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !919

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.s, %middle.block, %.preheader136
  %i.dn = fadd float %.080, %i.cn
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %bb.j unwind label %bb.t, !llvm.loop !920

bb.l:                                             ; preds = %bb.g
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !916 ; 2 uses
  %i.ds = zext i16 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 13
  %i.du = and i32 %i.dt, 268427264                ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.dr to i32
  %i.dv = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.dw = icmp samesign ugt i32 %i.du, 8388607
  br i1 %i.dw, label %bb.n, label %bb.q, !prof !81

bb.n:                                             ; preds = %scalar.ph
  %i.dx = or disjoint i32 %i.du, %i.dv            ; 2 uses
  %i.dy = icmp samesign ult i32 %i.du, 260046848
  br i1 %i.dy, label %bb.o, label %bb.p, !prof !81

bb.o:                                             ; preds = %bb.n
  %i.dz = add nuw nsw i32 %i.dx, 939524096
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ea = or i32 %i.dx, 2139095040
  br label %bb.s

bb.q:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i = icmp eq i32 %i.du, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.du, i1 true)
  %i.ec = add nsw i32 %i.eb, -8                   ; 2 uses
  %i.ed = shl i32 %i.du, %i.ec
  %i.ee = or i32 %i.dv, %i.ed
  %i.ef = or i32 %i.ee, 947912704
  %i.eg = shl nuw nsw i32 %i.ec, 23
  %i.eh = sub nuw i32 %i.ef, %i.eg
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.dz, %bb.o ], [ %i.ea, %bb.p ], [ %i.eh, %bb.r ], [ %i.dv, %bb.q ]
  %i.ei = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !77
  %i.el = call float @llvm.fmuladd.f32(float %i.cn, float %i.ei, float %i.ek)
  store float %i.el, ptr %i.ej, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !921

bb.t:                                             ; preds = %._crit_edge
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.en = fcmp ogt float %.080, 0.000000e+00
  br i1 %i.en, label %.preheader, label %.preheader134

.preheader134:                                    ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph141.preheader, label %.loopexit133

.lr.ph141.preheader:                              ; preds = %.preheader134
  %i.eo = zext nneg i32 %i.be to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.ep, i1 false), !tbaa !77
  br label %.loopexit133

.preheader:                                       ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph143.preheader, label %.loopexit133

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count157 = zext nneg i32 %i.be to i64
  %min.iters.check182 = icmp ult i32 %i.be, 4
  br i1 %min.iters.check182, label %.lr.ph143.preheader195, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph143.preheader
  %n.vec185 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert186 = insertelement <4 x float> poison, float %.080, i64 0
  %broadcast.splat187 = shufflevector <4 x float> %broadcast.splatinsert186, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body188 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index189
  %wide.load190 = load <4 x float>, ptr %i.eq, align 16, !tbaa !77
  %i.er = fdiv <4 x float> %wide.load190, %broadcast.splat187
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index189
  store <4 x float> %i.er, ptr %i.es, align 4, !tbaa !77
  %index.next191 = add nuw i64 %index189, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.et, label %middle.block192, label %vector.body188, !llvm.loop !922

middle.block192:                                  ; preds = %vector.body188
  %cmp.n193 = icmp eq i64 %n.vec185, %wide.trip.count
  br i1 %cmp.n193, label %.loopexit133, label %.lr.ph143.preheader195

.lr.ph143.preheader195:                           ; preds = %.lr.ph143.preheader, %middle.block192
  %indvars.iv154.ph = phi i64 [ 0, %.lr.ph143.preheader ], [ %n.vec185, %middle.block192 ]
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader195, %.lr.ph143
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %.lr.ph143 ], [ %indvars.iv154.ph, %.lr.ph143.preheader195 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv154
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !77
  %i.ew = fdiv float %i.ev, %.080
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv154
  store float %i.ew, ptr %i.ex, align 4, !tbaa !77
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.loopexit133, label %.lr.ph143, !llvm.loop !923

.loopexit133:                                     ; preds = %.lr.ph143, %middle.block192, %.lr.ph141.preheader, %.preheader134, %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !230
  %.not.i103 = icmp eq ptr %i.ez, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit133
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.loopexit133, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph146.preheader, %bb.f, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  ret void

bb.x:                                             ; preds = %bb.t, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.l ], [ %i.em, %bb.t ], [ %i.dp, %bb.m ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5warp_IftEEbRNS1_8ImageBufERKS5_RKN9Imath_3_18Matrix33IfEEPKNS1_8Filter2DENS5_8WrapModeEbS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L5warp_IftEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5warp_IftEEbRNS1_8ImageBufERKS5_RKN9Imath_3_18Matrix33IfEEPKNS1_8Filter2DENS5_8WrapModeEbS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L5warp_IftEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiEUlSF_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !865
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IftEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L5warp_IftEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imath_3_1::Matrix33", align 4 ; 13 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !924, !nonnull !48, !align !386
  %i.b = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.e = alloca i8, i64 %i.d, align 16
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.a, %bb.b
  %.pre-phi54 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.f, i8 0, i64 %.pre-phi54, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !926, !nonnull !48, !align !367
  call void @_ZNK9Imath_3_18Matrix33IfE7inverseEv(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Matrix33") align 4 %2, ptr noundef nonnull align 4 dereferenceable(36) %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.i = load ptr, ptr %0, align 8, !tbaa !924, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %._crit_edge51
  %i.af = load i8, ptr %i.j, align 8, !tbaa !220, !range !47, !noundef !48
  %i.ag = icmp eq i8 %i.af, 0
  %.pre = load i32, ptr %i.k, align 4, !tbaa !223 ; 2 uses
  br i1 %i.ag, label %bb.d, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre49 = load i32, ptr %i.m, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !225
  %i.ai = icmp eq i32 %.pre, %i.ah
  %.pre50 = load i32, ptr %i.m, align 8, !tbaa !224 ; 3 uses
  %i.aj = load i32, ptr %i.n, align 4
  %i.ak = icmp eq i32 %.pre50, %i.aj
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.d
  %i.al = load i32, ptr %i.o, align 4, !tbaa !226
  %i.am = load i32, ptr %i.p, align 8, !tbaa !227
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.d, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ao = phi i32 [ %.pre49, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre50, %bb.d ], [ %.pre50, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ap = sitofp i32 %.pre to float
  %i.aq = fadd float %i.ap, 5.000000e-01          ; 3 uses
  %i.ar = sitofp i32 %i.ao to float
  %i.as = fadd float %i.ar, 5.000000e-01          ; 3 uses
  %i.at = load float, ptr %i.q, align 4, !tbaa !77 ; 3 uses
  %i.au = fmul float %i.aq, %i.at
  %i.av = load float, ptr %i.r, align 4, !tbaa !77 ; 3 uses
  %i.aw = fmul float %i.as, %i.av
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = load float, ptr %i.s, align 4, !tbaa !77
  %i.az = fadd float %i.ay, %i.ax                 ; 2 uses
  %i.ba = fcmp une float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.e, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bb = fmul float %i.at, 0.000000e+00
  %i.bc = fadd float %i.bb, %i.av                 ; 2 uses
  %i.bd = fmul float %i.av, 0.000000e+00
  %i.be = fadd float %i.at, %i.bd                 ; 2 uses
  %i.bf = load float, ptr %i.v, align 4, !tbaa !77
  %i.bg = load float, ptr %i.w, align 4, !tbaa !77 ; 3 uses
  %i.bh = fmul float %i.aq, %i.bg
  %i.bi = load float, ptr %i.x, align 4, !tbaa !77 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L5warp_IftEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_:bb.a

._crit_edge:                                      ; preds = %bb.i, %bb.f
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.c unwind label %bb.k, !llvm.loop !931

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = load ptr, ptr %3, align 8, !tbaa !228
  %i.de = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.lr.ph
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc, %bb.h
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !874
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv
  store float %i.dc, ptr %i.dh, align 4, !tbaa !77
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.di = load i32, ptr %i.ad, align 4, !tbaa !78
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !932

bb.j:                                             ; preds = %bb.h, %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.k ], [ %i.dl, %bb.j ], [ %i.da, %bb.g ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115filtered_sampleItEEvRKNS0_8ImageBufEffffffPKNS0_8Filter2DENS3_8WrapModeEbPf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr noundef %7, i32 noundef %8, i1 noundef zeroext %9, ptr nofree noundef writeonly captures(none) %10) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 16 uses
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 2 uses
  %i.b = tail call float @llvm.fabs.f32(float %5) ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = select i1 %i.c, float %i.b, float %i.a   ; 2 uses
  %i.e = fcmp ogt float %i.d, 1.000000e+00
  %.sroa.speculated125 = select i1 %i.e, float %i.d, float 1.000000e+00 ; 2 uses
  %i.f = tail call float @llvm.fabs.f32(float %4) ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %6) ; 2 uses
  %i.h = fcmp olt float %i.f, %i.g
  %i.i = select i1 %i.h, float %i.g, float %i.f   ; 2 uses
  %i.j = fcmp ogt float %i.i, 1.000000e+00
  %.sroa.speculated = select i1 %i.j, float %i.i, float 1.000000e+00 ; 2 uses
  %i.k = fdiv float 1.000000e+00, %.sroa.speculated125
  %i.l = fdiv float 1.000000e+00, %.sroa.speculated
  %i.m = fmul nnan float %.sroa.speculated125, 5.000000e-01
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !876 ; 2 uses
  %i.p = fmul float %i.m, %i.o                    ; 2 uses
  %i.q = fmul nnan float %.sroa.speculated, 5.000000e-01
  %i.r = fmul float %i.q, %i.o                    ; 2 uses
  %i.s = fsub float %1, %i.p
  %i.t = tail call float @llvm.floor.f32(float %i.s)
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fadd float %1, %i.p
  %i.w = tail call float @llvm.ceil.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %2, %i.r
  %i.z = tail call float @llvm.floor.f32(float %i.y)
  %i.aa = fptosi float %i.z to i32                ; 2 uses
  %i.ab = fadd float %2, %i.r
  %i.ac = tail call float @llvm.ceil.f32(float %i.ab)
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ae = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.af = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i98 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.u)
  %.1.i99 = tail call i32 @llvm.smin.i32(i32 %spec.select.i98, i32 %i.af)
  %i.ag = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ah = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i95 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.x)
  %.1.i96 = tail call i32 @llvm.smin.i32(i32 %spec.select.i95, i32 %i.ah)
  %i.ai = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.aj = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i92 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aa)
  %.1.i93 = tail call i32 @llvm.smin.i32(i32 %spec.select.i92, i32 %i.aj)
  %i.ak = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.al = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ad)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.al)
  %i.am = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.an = add nsw i32 %i.am, -1
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fcmp olt float %1, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fcmp ult float %1, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.at = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sitofp i32 %i.au to float
  %i.aw = fcmp olt float %2, %i.av
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fcmp ult float %2, %i.ay
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ba = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph146.preheader, label %.loopexit

.lr.ph146.preheader:                              ; preds = %bb.f
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.bd, i1 false), !tbaa !77
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.a
  %.0130 = phi i32 [ %.1.i, %bb.e ], [ %i.ad, %bb.a ]
  %.0129 = phi i32 [ %.1.i93, %bb.e ], [ %i.aa, %bb.a ]
  %.0128 = phi i32 [ %.1.i96, %bb.e ], [ %i.x, %bb.a ]
  %.0127 = phi i32 [ %.1.i99, %bb.e ], [ %i.u, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiiiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0127, i32 noundef %.0128, i32 noundef %.0129, i32 noundef %.0130, i32 noundef 0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %i.be = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.h unwind label %bb.l       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %._crit_edge164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 2 uses
  %i.bh = alloca i8, i64 %i.bg, align 16
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.h, %bb.i
  %.pre-phi167 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.h ]
  %i.bi = phi ptr [ %i.bh, %bb.i ], [ null, %bb.h ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.bi, i8 0, i64 %.pre-phi167, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bq = icmp sgt i32 %i.be, 0                   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 112
  %wide.trip.count = zext i32 %i.be to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.be, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge164
  %.080 = phi float [ 0.000000e+00, %._crit_edge164 ], [ %i.da, %._crit_edge ] ; 4 uses
  %i.bs = load i8, ptr %i.bj, align 8, !tbaa !220, !range !47, !noundef !48
  %i.bt = icmp eq i8 %i.bs, 0
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !223 ; 2 uses
  br i1 %i.bt, label %bb.k, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.j
  %.pre162 = load i32, ptr %i.bm, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !225
  %i.bv = icmp eq i32 %.pre, %i.bu
  %.pre163 = load i32, ptr %i.bm, align 8, !tbaa !224 ; 3 uses
  %i.bw = load i32, ptr %i.bn, align 4
  %i.bx = icmp eq i32 %.pre163, %i.bw
  %or.cond = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.k
  %i.by = load i32, ptr %i.bo, align 4, !tbaa !226
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !227
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.k, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cb = phi i32 [ %.pre162, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre163, %bb.k ], [ %.pre163, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.cc = sitofp i32 %.pre to float
  %i.cd = fadd nnan float %i.cc, 5.000000e-01
  %i.ce = fsub float %i.cd, %1
  %i.cf = fmul float %i.k, %i.ce
  %i.cg = sitofp i32 %i.cb to float
  %i.ch = fadd nnan float %i.cg, 5.000000e-01
  %i.ci = fsub float %i.ch, %2
  %i.cj = fmul float %i.l, %i.ci
  %i.ck = load ptr, ptr %7, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef float %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %7, float noundef %i.cf, float noundef %i.cj)
          to label %.preheader136 unwind label %bb.m ; 3 uses

.preheader136:                                    ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader136
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !874 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %wide.load = load <4 x i16>, ptr %i.cp, align 2, !tbaa !933
  %wide.load176 = load <4 x i16>, ptr %i.cq, align 2, !tbaa !933
  %i.cr = uitofp <4 x i16> %wide.load to <4 x float>
  %i.cs = uitofp <4 x i16> %wide.load176 to <4 x float>
  %i.ct = fmul nnan <4 x float> %i.cr, splat (float f0x37800080)
  %i.cu = fmul nnan <4 x float> %i.cs, splat (float f0x37800080)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load177 = load <4 x float>, ptr %i.cv, align 16, !tbaa !77
  %wide.load178 = load <4 x float>, ptr %i.cw, align 16, !tbaa !77
  %i.cx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ct, <4 x float> %wide.load177)
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cu, <4 x float> %wide.load178)
  store <4 x float> %i.cx, ptr %i.cv, align 16, !tbaa !77
  store <4 x float> %i.cy, ptr %i.cw, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !934

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader136
  %i.da = fadd float %.080, %i.cn
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %bb.j unwind label %bb.n, !llvm.loop !935

bb.l:                                             ; preds = %bb.g
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !933
  %i.df = uitofp i16 %i.de to float
  %i.dg = fmul nnan float %i.df, f0x37800080
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !77
  %i.dj = call float @llvm.fmuladd.f32(float %i.cn, float %i.dg, float %i.di)
  store float %i.dj, ptr %i.dh, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !936

bb.n:                                             ; preds = %._crit_edge
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.dl = fcmp ogt float %.080, 0.000000e+00
  br i1 %i.dl, label %.preheader, label %.preheader134

.preheader134:                                    ; preds = %bb.o
  br i1 %i.bq, label %.lr.ph141.preheader, label %.loopexit133

.lr.ph141.preheader:                              ; preds = %.preheader134
  %i.dm = zext nneg i32 %i.be to i64
  %i.dn = shl nuw nsw i64 %i.dm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.dn, i1 false), !tbaa !77
  br label %.loopexit133

.preheader:                                       ; preds = %bb.o
  br i1 %i.bq, label %.lr.ph143.preheader, label %.loopexit133

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count157 = zext nneg i32 %i.be to i64
  %min.iters.check180 = icmp ult i32 %i.be, 4
  br i1 %min.iters.check180, label %.lr.ph143.preheader193, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph143.preheader
  %n.vec183 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %.080, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph181
  %index187 = phi i64 [ 0, %vector.ph181 ], [ %index.next189, %vector.body186 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index187
  %wide.load188 = load <4 x float>, ptr %i.do, align 16, !tbaa !77
  %i.dp = fdiv <4 x float> %wide.load188, %broadcast.splat185
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index187
  store <4 x float> %i.dp, ptr %i.dq, align 4, !tbaa !77
  %index.next189 = add nuw i64 %index187, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dr, label %middle.block190, label %vector.body186, !llvm.loop !937

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %n.vec183, %wide.trip.count
  br i1 %cmp.n191, label %.loopexit133, label %.lr.ph143.preheader193

.lr.ph143.preheader193:                           ; preds = %.lr.ph143.preheader, %middle.block190
  %indvars.iv154.ph = phi i64 [ 0, %.lr.ph143.preheader ], [ %n.vec183, %middle.block190 ]
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader193, %.lr.ph143
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %.lr.ph143 ], [ %indvars.iv154.ph, %.lr.ph143.preheader193 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv154
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !77
  %i.du = fdiv float %i.dt, %.080
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv154
  store float %i.du, ptr %i.dv, align 4, !tbaa !77
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.loopexit133, label %.lr.ph143, !llvm.loop !938

.loopexit133:                                     ; preds = %.lr.ph143, %middle.block190, %.lr.ph141.preheader, %.preheader134, %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !230
  %.not.i103 = icmp eq ptr %i.dx, null
  br i1 %.not.i103, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.loopexit133
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %11)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.loopexit133, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph146.preheader, %bb.f, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.l ], [ %i.dk, %bb.n ], [ %i.dc, %bb.m ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5warp_IhhEEbRNS1_8ImageBufERKS5_RKN9Imath_3_18Matrix33IfEEPKNS1_8Filter2DENS5_8WrapModeEbS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L5warp_IhhEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L5warp_IhhEEbRNS1_8ImageBufERKS5_RKN9Imath_3_18Matrix33IfEEPKNS1_8Filter2DENS5_8WrapModeEbS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiEUlSF_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val6, i64 48, i1 false), !tbaa.struct !865
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 48) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L5warp_IhhEEbRNS2_8ImageBufERKS4_RKN9Imath_3_18Matrix33IfEEPKNS2_8Filter2DENS4_8WrapModeEbNS2_3ROIEiEUlSH_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L5warp_IhhEEbRNS0_8ImageBufERKS2_RKN9Imath_3_18Matrix33IfEEPKNS0_8Filter2DENS2_8WrapModeEbNS0_3ROIEiENKUlSF_E_clESF_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Imath_3_1::Matrix33", align 4 ; 13 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.116", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !939, !nonnull !48, !align !386
  %i.b = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.e = alloca i8, i64 %i.d, align 16
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.a, %bb.b
  %.pre-phi54 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.f, i8 0, i64 %.pre-phi54, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !941, !nonnull !48, !align !367
  call void @_ZNK9Imath_3_18Matrix33IfE7inverseEv(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_1::Matrix33") align 4 %2, ptr noundef nonnull align 4 dereferenceable(36) %i.h) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.i = load ptr, ptr %0, align 8, !tbaa !939, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %._crit_edge51
  %i.af = load i8, ptr %i.j, align 8, !tbaa !220, !range !47, !noundef !48
  %i.ag = icmp eq i8 %i.af, 0
  %.pre = load i32, ptr %i.k, align 4, !tbaa !223 ; 2 uses
  br i1 %i.ag, label %bb.d, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre49 = load i32, ptr %i.m, align 8, !tbaa !224
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !225
  %i.ai = icmp eq i32 %.pre, %i.ah
  %.pre50 = load i32, ptr %i.m, align 8, !tbaa !224 ; 3 uses
  %i.aj = load i32, ptr %i.n, align 4
  %i.ak = icmp eq i32 %.pre50, %i.aj
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.d
  %i.al = load i32, ptr %i.o, align 4, !tbaa !226
  %i.am = load i32, ptr %i.p, align 8, !tbaa !227
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge, %bb.d, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.ao = phi i32 [ %.pre49, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread_crit_edge ], [ %.pre50, %bb.d ], [ %.pre50, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit ]
  %i.ap = sitofp i32 %.pre to float
  %i.aq = fadd float %i.ap, 5.000000e-01          ; 3 uses
  %i.ar = sitofp i32 %i.ao to float
  %i.as = fadd float %i.ar, 5.000000e-01          ; 3 uses
  %i.at = load float, ptr %i.q, align 4, !tbaa !77 ; 3 uses
  %i.au = fmul float %i.aq, %i.at
  %i.av = load float, ptr %i.r, align 4, !tbaa !77 ; 3 uses
  %i.aw = fmul float %i.as, %i.av
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = load float, ptr %i.s, align 4, !tbaa !77
  %i.az = fadd float %i.ay, %i.ax                 ; 2 uses
  %i.ba = fcmp une float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.e, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_120robust_multVecMatrixERKN9Imath_3_18Matrix33IfEERKNS1_5Dual2ES9_RS7_SA_.exit

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.bb = fmul float %i.at, 0.000000e+00
  %i.bc = fadd float %i.bb, %i.av                 ; 2 uses
  %i.bd = fmul float %i.av, 0.000000e+00
  %i.be = fadd float %i.at, %i.bd                 ; 2 uses
  %i.bf = load float, ptr %i.v, align 4, !tbaa !77
  %i.bg = load float, ptr %i.w, align 4, !tbaa !77 ; 3 uses
  %i.bh = fmul float %i.aq, %i.bg
  %i.bi = load float, ptr %i.x, align 4, !tbaa !77 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L9resample_IffEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
.loopexit:                                        ; preds = %bb.q, %bb.l, %bb.o, %bb.i
  %i.el = add nsw i32 %.05889, 1                  ; 2 uses
  %i.em = load i32, ptr %i.ay, align 4, !tbaa !223
  %i.en = add nsw i32 %i.em, 1                    ; 7 uses
  store i32 %i.en, ptr %i.ay, align 4, !tbaa !223
  %i.eo = load i32, ptr %i.az, align 8, !tbaa !883
  %i.ep = icmp slt i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.loopexit
  %i.eq = load i8, ptr %i.bh, align 1, !tbaa !884, !range !47, !noundef !48
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !224
  %.pre = load i32, ptr %i.be, align 4, !tbaa !226
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.es = load i8, ptr %i.bi, align 1, !tbaa !885, !range !47, !noundef !48
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eu = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.ev = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.eu
  store ptr %i.ew, ptr %i.ax, align 8, !tbaa !874
  %i.ex = load i32, ptr %i.bl, align 8, !tbaa !887
  %.not.i.i = icmp slt i32 %i.en, %i.ex
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.v, !prof !81

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.ey = load i8, ptr %i.bj, align 2, !tbaa !888, !range !47, !noundef !48
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fa = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.fb = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.fa
  store ptr %i.fc, ptr %i.ax, align 8, !tbaa !874
  %i.fd = load i32, ptr %i.bl, align 8, !tbaa !887
  %i.fe = icmp slt i32 %i.en, %i.fd               ; 3 uses
  %i.ff = load i32, ptr %i.bm, align 4
  %i.fg = icmp sge i32 %i.en, %i.ff
  %not..i.i = xor i1 %i.fe, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.fg, !prof !889
  %i.fh = load ptr, ptr %i.bn, align 8
  %i.fi = icmp eq ptr %i.fh, null
  %i.fj = select i1 %or.cond.i.i, i1 true, i1 %i.fi, !prof !889
  br i1 %i.fj, label %bb.y, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, !prof !25

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %2, align 8, !tbaa !228
  %i.fl = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.fm = load i32, ptr %i.be, align 4, !tbaa !226
  %i.fn = load i32, ptr %i.bs, align 8, !tbaa !890
  %i.fo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i32 noundef %i.en, i32 noundef %i.fl, i32 noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 1 dereferenceable(1) %i.br, i1 noundef zeroext %i.fe, i32 noundef %i.fn)
          to label %.noexc75 unwind label %bb.ad

.noexc75:                                         ; preds = %bb.y
  %i.fp = zext i1 %i.fe to i8
  store ptr %i.fo, ptr %i.ax, align 8, !tbaa !874
  store i8 %i.fp, ptr %i.bh, align 1, !tbaa !884
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.z:                                             ; preds = %.loopexit
  %i.fq = load i32, ptr %i.ba, align 4, !tbaa !225 ; 3 uses
  store i32 %i.fq, ptr %i.ay, align 4, !tbaa !223
  %i.fr = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.fs = add nsw i32 %i.fr, 1                    ; 3 uses
  store i32 %i.fs, ptr %i.bb, align 8, !tbaa !224
  %i.ft = load i32, ptr %i.bc, align 8, !tbaa !891
  %.not.i73 = icmp slt i32 %i.fs, %i.ft
  %.pre100 = load i32, ptr %i.be, align 4, !tbaa !226 ; 2 uses
  br i1 %.not.i73, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = load i32, ptr %i.bd, align 4, !tbaa !892 ; 2 uses
  store i32 %i.fu, ptr %i.bb, align 8, !tbaa !224
  %i.fv = add nsw i32 %.pre100, 1                 ; 3 uses
  store i32 %i.fv, ptr %i.be, align 4, !tbaa !226
  %i.fw = load i32, ptr %i.bf, align 8, !tbaa !227
  %.not1.i = icmp slt i32 %i.fv, %i.fw
  br i1 %.not1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.bg, align 8, !tbaa !220
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i
  %i.fx = phi i32 [ %.pre100, %bb.z ], [ %i.fv, %bb.aa ], [ %.pre, %._crit_edge.i ]
  %i.fy = phi i32 [ %i.fs, %bb.z ], [ %i.fu, %bb.aa ], [ %.pre.i, %._crit_edge.i ]
  %i.fz = phi i32 [ %i.fq, %bb.z ], [ %i.fq, %bb.aa ], [ %i.en, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fz, i32 noundef %i.fy, i32 noundef %i.fx)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.ad

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %bb.ac, %bb.v, %bb.u, %bb.w, %bb.x, %.noexc75, %bb.ab
  %i.ga = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.gb = icmp slt i32 %i.el, %i.ga
  br i1 %i.gb, label %.lr.ph90, label %._crit_edge.loopexit

bb.ad:                                            ; preds = %bb.ac, %bb.y, %bb.v
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %bb.m, %bb.r, %bb.ad
  %.pn61.pn = phi { ptr, i32 } [ %i.gc, %bb.ad ], [ %i.ds, %bb.m ], [ %i.dh, %bb.j ], [ %i.ek, %bb.r ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !230
  %.not.i77 = icmp eq ptr %i.ge, null
  br i1 %.not.i77, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78: ; preds = %bb.af, %bb.ae, %bb.g
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.g ], [ %.pn61.pn, %bb.ae ], [ %.pn61.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !230
  %.not.i79 = icmp eq ptr %i.gi, null
  br i1 %.not.i79, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80, label %bb.ah

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn61.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11interppixelIfEEbRKNS0_8ImageBufERNS2_13ConstIteratorIT_fEEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(126) %1, float noundef %2, float noundef %3, ptr nofree writeonly captures(none) %4, i64 %5) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %.sroa.speculated, 2
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.j = sext i32 %.sroa.speculated to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 4 uses
  %i.l = shl nsw i32 %.sroa.speculated, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 4 uses
  %i.o = mul nsw i32 %.sroa.speculated, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.p ; 4 uses
  %i.r = fadd float %2, -5.000000e-01             ; 2 uses
  %i.s = fadd float %3, -5.000000e-01             ; 2 uses
  %i.t = tail call noundef float @llvm.floor.f32(float %i.r) ; 2 uses
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fsub float %i.r, %i.t                    ; 4 uses
  %i.w = tail call noundef float @llvm.floor.f32(float %i.s) ; 2 uses
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %i.s, %i.w                    ; 3 uses
  %i.z = add nsw i32 %i.u, 2
  %i.aa = add nsw i32 %i.x, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %1, i32 noundef %i.u, i32 noundef %i.z, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  %i.ab = icmp sgt i32 %.sroa.speculated, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  br i1 %i.ab, label %.preheader.us.preheader, label %.split36.us

.preheader.us.preheader:                          ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 14 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <4 x float>, ptr %i.ae, align 4, !tbaa !77
  %wide.load1 = load <4 x float>, ptr %i.af, align 4, !tbaa !77
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x float> %wide.load, ptr %i.ag, align 16, !tbaa !77
  store <4 x float> %wide.load1, ptr %i.ah, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !77
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.ak, ptr %i.al, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1210

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %._crit_edge.us
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load9 = load <4 x float>, ptr %i.an, align 4, !tbaa !77
  %wide.load10 = load <4 x float>, ptr %i.ao, align 4, !tbaa !77
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %wide.load9, ptr %i.ap, align 4, !tbaa !77
  store <4 x float> %wide.load10, ptr %i.aq, align 4, !tbaa !77
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.ar = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.ar, label %middle.block12, label %vector.body7, !llvm.loop !1211

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
  br i1 %cmp.n13, label %._crit_edge.us.1, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %._crit_edge.us, %middle.block12
  %indvars.iv.1.ph = phi i64 [ 0, %._crit_edge.us ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph2 ], [ %indvars.iv.1.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.1
  %i.at = load float, ptr %i.as, align 4, !tbaa !77
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.1
  store float %i.at, ptr %i.au, align 4, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %scalar.ph2, !llvm.loop !1212

._crit_edge.us.1:                                 ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check16 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %._crit_edge.us.1
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index21 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load22 = load <4 x float>, ptr %i.aw, align 4, !tbaa !77
  %wide.load23 = load <4 x float>, ptr %i.ax, align 4, !tbaa !77
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x float> %wide.load22, ptr %i.ay, align 8, !tbaa !77
  store <4 x float> %wide.load23, ptr %i.az, align 8, !tbaa !77
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.ba, label %middle.block25, label %vector.body20, !llvm.loop !1213

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
  br i1 %cmp.n26, label %._crit_edge.us.2, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %._crit_edge.us.1, %middle.block25
  %indvars.iv.2.ph = phi i64 [ 0, %._crit_edge.us.1 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph15 ], [ %indvars.iv.2.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.2
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !77
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.2
  store float %i.bc, ptr %i.bd, align 4, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %scalar.ph15, !llvm.loop !1214

._crit_edge.us.2:                                 ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check29 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %._crit_edge.us.2
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index34 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load35 = load <4 x float>, ptr %i.bf, align 4, !tbaa !77
  %wide.load36 = load <4 x float>, ptr %i.bg, align 4, !tbaa !77
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index34 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <4 x float> %wide.load35, ptr %i.bh, align 4, !tbaa !77
  store <4 x float> %wide.load36, ptr %i.bi, align 4, !tbaa !77
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.bj, label %middle.block38, label %vector.body33, !llvm.loop !1215

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
  br i1 %cmp.n39, label %.lr.ph.preheader.i, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %._crit_edge.us.2, %middle.block38
  %indvars.iv.3.ph = phi i64 [ 0, %._crit_edge.us.2 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph28 ], [ %indvars.iv.3.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.3
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !77
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.3
  store float %i.bl, ptr %i.bm, align 4, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3.not, label %.lr.ph.preheader.i, label %scalar.ph28, !llvm.loop !1216

.split36.us:                                      ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  br label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %scalar.ph28, %middle.block38
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.bn = fsub float 1.000000e+00, %i.v           ; 3 uses
  %i.bo = fsub float 1.000000e+00, %i.y           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  %min.iters.check42 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.bp, align 16, !tbaa !77
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.bq, align 4, !tbaa !77
  %i.br = fmul <4 x float> %broadcast.splat49, %wide.load55
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat, <4 x float> %i.br)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.bt, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.bu, align 4, !tbaa !77
  %i.bv = fmul <4 x float> %broadcast.splat49, %wide.load57
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat, <4 x float> %i.bv)
  %i.bx = fmul <4 x float> %broadcast.splat51, %i.bw
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat47, <4 x float> %i.bs, <4 x float> %i.bx)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index53
  store <4 x float> %i.by, ptr %i.bz, align 4, !tbaa !77
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.ca, label %middle.block59, label %vector.body52, !llvm.loop !1217

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !77
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !77
  %i.cf = fmul float %i.v, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.bn, float %i.cf)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !77
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !77
  %i.cl = fmul float %i.v, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.bn, float %i.cl)
  %i.cn = fmul float %i.y, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.cg, float %i.cn)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  store float %i.co, ptr %i.cp, align 4, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1218

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %.split36.us
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IfhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IfhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1201
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IfhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 37 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1219, !nonnull !48, !align !386
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1221, !nonnull !48, !align !386
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1219, !nonnull !48, !align !386
  %i.g = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !189
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !140
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !157
  %i.s = sitofp i32 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !189
  %i.v = sitofp i32 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !190
  %i.y = sitofp i32 %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !140
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !157
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fdiv nnan float 1.000000e+00, %i.ab
  %i.ag = fdiv nnan float 1.000000e+00, %i.ae
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = sext i32 %i.g to i64                    ; 2 uses
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = alloca i8, i64 %i.ai, align 16
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.ah, %bb.b ], [ 0, %bb.a ]
  %i.ak = phi ptr [ %i.aj, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1221, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1219, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %._crit_edge102
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !182 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !181 ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bt = load i32, ptr %1, align 8, !tbaa !71
  %i.bu = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph92.split, label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge, %.lr.ph92, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge93
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge93, %bb.c
end_hunk_4
begin_hunk_5_@_ZZN11OpenImageIO4v3_1L9resample_IfhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
.loopexit:                                        ; preds = %bb.q, %bb.l, %bb.o, %bb.i
  %i.en = add nsw i32 %.05889, 1                  ; 2 uses
  %i.eo = load i32, ptr %i.ay, align 4, !tbaa !223
  %i.ep = add nsw i32 %i.eo, 1                    ; 7 uses
  store i32 %i.ep, ptr %i.ay, align 4, !tbaa !223
  %i.eq = load i32, ptr %i.az, align 8, !tbaa !883
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.loopexit
  %i.es = load i8, ptr %i.bh, align 1, !tbaa !884, !range !47, !noundef !48
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !224
  %.pre = load i32, ptr %i.be, align 4, !tbaa !226
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.eu = load i8, ptr %i.bi, align 1, !tbaa !885, !range !47, !noundef !48
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ew = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.ex = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ew
  store ptr %i.ey, ptr %i.ax, align 8, !tbaa !874
  %i.ez = load i32, ptr %i.bl, align 8, !tbaa !887
  %.not.i.i = icmp slt i32 %i.ep, %i.ez
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.v, !prof !81

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.fa = load i8, ptr %i.bj, align 2, !tbaa !888, !range !47, !noundef !48
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.fd = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.fc
  store ptr %i.fe, ptr %i.ax, align 8, !tbaa !874
  %i.ff = load i32, ptr %i.bl, align 8, !tbaa !887
  %i.fg = icmp slt i32 %i.ep, %i.ff               ; 3 uses
  %i.fh = load i32, ptr %i.bm, align 4
  %i.fi = icmp sge i32 %i.ep, %i.fh
  %not..i.i = xor i1 %i.fg, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.fi, !prof !889
  %i.fj = load ptr, ptr %i.bn, align 8
  %i.fk = icmp eq ptr %i.fj, null
  %i.fl = select i1 %or.cond.i.i, i1 true, i1 %i.fk, !prof !889
  br i1 %i.fl, label %bb.y, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, !prof !25

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %2, align 8, !tbaa !228
  %i.fn = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.fo = load i32, ptr %i.be, align 4, !tbaa !226
  %i.fp = load i32, ptr %i.bs, align 8, !tbaa !890
  %i.fq = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i32 noundef %i.ep, i32 noundef %i.fn, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 1 dereferenceable(1) %i.br, i1 noundef zeroext %i.fg, i32 noundef %i.fp)
          to label %.noexc75 unwind label %bb.ad

.noexc75:                                         ; preds = %bb.y
  %i.fr = zext i1 %i.fg to i8
  store ptr %i.fq, ptr %i.ax, align 8, !tbaa !874
  store i8 %i.fr, ptr %i.bh, align 1, !tbaa !884
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.z:                                             ; preds = %.loopexit
  %i.fs = load i32, ptr %i.ba, align 4, !tbaa !225 ; 3 uses
  store i32 %i.fs, ptr %i.ay, align 4, !tbaa !223
  %i.ft = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.fu = add nsw i32 %i.ft, 1                    ; 3 uses
  store i32 %i.fu, ptr %i.bb, align 8, !tbaa !224
  %i.fv = load i32, ptr %i.bc, align 8, !tbaa !891
  %.not.i73 = icmp slt i32 %i.fu, %i.fv
  %.pre100 = load i32, ptr %i.be, align 4, !tbaa !226 ; 2 uses
  br i1 %.not.i73, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = load i32, ptr %i.bd, align 4, !tbaa !892 ; 2 uses
  store i32 %i.fw, ptr %i.bb, align 8, !tbaa !224
  %i.fx = add nsw i32 %.pre100, 1                 ; 3 uses
  store i32 %i.fx, ptr %i.be, align 4, !tbaa !226
  %i.fy = load i32, ptr %i.bf, align 8, !tbaa !227
  %.not1.i = icmp slt i32 %i.fx, %i.fy
  br i1 %.not1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.bg, align 8, !tbaa !220
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i
  %i.fz = phi i32 [ %.pre100, %bb.z ], [ %i.fx, %bb.aa ], [ %.pre, %._crit_edge.i ]
  %i.ga = phi i32 [ %i.fu, %bb.z ], [ %i.fw, %bb.aa ], [ %.pre.i, %._crit_edge.i ]
  %i.gb = phi i32 [ %i.fs, %bb.z ], [ %i.fs, %bb.aa ], [ %i.ep, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gb, i32 noundef %i.ga, i32 noundef %i.fz)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.ad

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %bb.ac, %bb.v, %bb.u, %bb.w, %bb.x, %.noexc75, %bb.ab
  %i.gc = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.gd = icmp slt i32 %i.en, %i.gc
  br i1 %i.gd, label %.lr.ph90, label %._crit_edge.loopexit

bb.ad:                                            ; preds = %bb.ac, %bb.y, %bb.v
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %bb.m, %bb.r, %bb.ad
  %.pn61.pn = phi { ptr, i32 } [ %i.ge, %bb.ad ], [ %i.ds, %bb.m ], [ %i.dh, %bb.j ], [ %i.em, %bb.r ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i77 = icmp eq ptr %i.gg, null
  br i1 %.not.i77, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78: ; preds = %bb.af, %bb.ae, %bb.g
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.g ], [ %.pn61.pn, %bb.ae ], [ %.pn61.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !230
  %.not.i79 = icmp eq ptr %i.gk, null
  br i1 %.not.i79, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80, label %bb.ah

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn61.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11interppixelIhEEbRKNS0_8ImageBufERNS2_13ConstIteratorIT_fEEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(126) %1, float noundef %2, float noundef %3, ptr nofree writeonly captures(none) %4, i64 %5) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %.sroa.speculated, 2
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.j = sext i32 %.sroa.speculated to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 4 uses
  %i.l = shl nsw i32 %.sroa.speculated, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 4 uses
  %i.o = mul nsw i32 %.sroa.speculated, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.p ; 4 uses
  %i.r = fadd float %2, -5.000000e-01             ; 2 uses
  %i.s = fadd float %3, -5.000000e-01             ; 2 uses
  %i.t = tail call noundef float @llvm.floor.f32(float %i.r) ; 2 uses
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fsub float %i.r, %i.t                    ; 4 uses
  %i.w = tail call noundef float @llvm.floor.f32(float %i.s) ; 2 uses
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %i.s, %i.w                    ; 3 uses
  %i.z = add nsw i32 %i.u, 2
  %i.aa = add nsw i32 %i.x, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %1, i32 noundef %i.u, i32 noundef %i.z, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  %i.ab = icmp sgt i32 %.sroa.speculated, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  br i1 %i.ab, label %.preheader.us.preheader, label %.split36.us

.preheader.us.preheader:                          ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 14 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %wide.load = load <4 x i8>, ptr %i.ae, align 1, !tbaa !24
  %wide.load1 = load <4 x i8>, ptr %i.af, align 1, !tbaa !24
  %i.ag = uitofp <4 x i8> %wide.load to <4 x float>
  %i.ah = uitofp <4 x i8> %wide.load1 to <4 x float>
  %i.ai = fmul nnan <4 x float> %i.ag, splat (float f0x3B808081)
  %i.aj = fmul nnan <4 x float> %i.ah, splat (float f0x3B808081)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> %i.ai, ptr %i.ak, align 16, !tbaa !77
  store <4 x float> %i.aj, ptr %i.al, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24
  %i.ap = uitofp i8 %i.ao to float
  %i.aq = fmul nnan float %i.ap, f0x3B808081
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.aq, ptr %i.ar, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1227

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %._crit_edge.us
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %index8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %wide.load9 = load <4 x i8>, ptr %i.at, align 1, !tbaa !24
  %wide.load10 = load <4 x i8>, ptr %i.au, align 1, !tbaa !24
  %i.av = uitofp <4 x i8> %wide.load9 to <4 x float>
  %i.aw = uitofp <4 x i8> %wide.load10 to <4 x float>
  %i.ax = fmul nnan <4 x float> %i.av, splat (float f0x3B808081)
  %i.ay = fmul nnan <4 x float> %i.aw, splat (float f0x3B808081)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x float> %i.ax, ptr %i.az, align 4, !tbaa !77
  store <4 x float> %i.ay, ptr %i.ba, align 4, !tbaa !77
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bb = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bb, label %middle.block12, label %vector.body7, !llvm.loop !1228

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
  br i1 %cmp.n13, label %._crit_edge.us.1, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %._crit_edge.us, %middle.block12
  %indvars.iv.1.ph = phi i64 [ 0, %._crit_edge.us ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph2 ], [ %indvars.iv.1.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fmul nnan float %i.be, f0x3B808081
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.1
  store float %i.bf, ptr %i.bg, align 4, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %scalar.ph2, !llvm.loop !1229

._crit_edge.us.1:                                 ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check16 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %._crit_edge.us.1
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index21 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %wide.load22 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !24
  %wide.load23 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !24
  %i.bk = uitofp <4 x i8> %wide.load22 to <4 x float>
  %i.bl = uitofp <4 x i8> %wide.load23 to <4 x float>
  %i.bm = fmul nnan <4 x float> %i.bk, splat (float f0x3B808081)
  %i.bn = fmul nnan <4 x float> %i.bl, splat (float f0x3B808081)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> %i.bm, ptr %i.bo, align 8, !tbaa !77
  store <4 x float> %i.bn, ptr %i.bp, align 8, !tbaa !77
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bq, label %middle.block25, label %vector.body20, !llvm.loop !1230

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
  br i1 %cmp.n26, label %._crit_edge.us.2, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %._crit_edge.us.1, %middle.block25
  %indvars.iv.2.ph = phi i64 [ 0, %._crit_edge.us.1 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph15 ], [ %indvars.iv.2.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x3B808081
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.2
  store float %i.bu, ptr %i.bv, align 4, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %scalar.ph15, !llvm.loop !1231

._crit_edge.us.2:                                 ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check29 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %._crit_edge.us.2
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index34 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %wide.load35 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !24
  %wide.load36 = load <4 x i8>, ptr %i.by, align 1, !tbaa !24
  %i.bz = uitofp <4 x i8> %wide.load35 to <4 x float>
  %i.ca = uitofp <4 x i8> %wide.load36 to <4 x float>
  %i.cb = fmul nnan <4 x float> %i.bz, splat (float f0x3B808081)
  %i.cc = fmul nnan <4 x float> %i.ca, splat (float f0x3B808081)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index34 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x float> %i.cb, ptr %i.cd, align 4, !tbaa !77
  store <4 x float> %i.cc, ptr %i.ce, align 4, !tbaa !77
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cf, label %middle.block38, label %vector.body33, !llvm.loop !1232

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
  br i1 %cmp.n39, label %.lr.ph.preheader.i, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %._crit_edge.us.2, %middle.block38
  %indvars.iv.3.ph = phi i64 [ 0, %._crit_edge.us.2 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph28 ], [ %indvars.iv.3.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !24
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = fmul nnan float %i.ci, f0x3B808081
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.3
  store float %i.cj, ptr %i.ck, align 4, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3.not, label %.lr.ph.preheader.i, label %scalar.ph28, !llvm.loop !1233

.split36.us:                                      ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  br label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %scalar.ph28, %middle.block38
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.cl = fsub float 1.000000e+00, %i.v           ; 3 uses
  %i.cm = fsub float 1.000000e+00, %i.y           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  %min.iters.check42 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.cm, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.cn, align 16, !tbaa !77
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.co, align 4, !tbaa !77
  %i.cp = fmul <4 x float> %broadcast.splat49, %wide.load55
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat, <4 x float> %i.cp)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.cr, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.cs, align 4, !tbaa !77
  %i.ct = fmul <4 x float> %broadcast.splat49, %wide.load57
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat, <4 x float> %i.ct)
  %i.cv = fmul <4 x float> %broadcast.splat51, %i.cu
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat47, <4 x float> %i.cq, <4 x float> %i.cv)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index53
  store <4 x float> %i.cw, ptr %i.cx, align 4, !tbaa !77
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.cy = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.cy, label %middle.block59, label %vector.body52, !llvm.loop !1234

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.da = load float, ptr %i.cz, align 4, !tbaa !77
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = fmul float %i.v, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.da, float %i.cl, float %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !77
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.di = load float, ptr %i.dh, align 4, !tbaa !77
  %i.dj = fmul float %i.v, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.cl, float %i.dj)
  %i.dl = fmul float %i.y, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.de, float %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  store float %i.dm, ptr %i.dn, align 4, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1235

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %.split36.us
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1201
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_bNS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 37 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.108", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1236, !nonnull !48, !align !386
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1238, !nonnull !48, !align !386
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1236, !nonnull !48, !align !386
  %i.g = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !189
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !140
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !157
  %i.s = sitofp i32 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !189
  %i.v = sitofp i32 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !190
  %i.y = sitofp i32 %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !140
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !157
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fdiv nnan float 1.000000e+00, %i.ab
  %i.ag = fdiv nnan float 1.000000e+00, %i.ae
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = sext i32 %i.g to i64                    ; 2 uses
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = alloca i8, i64 %i.ai, align 16
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.ah, %bb.b ], [ 0, %bb.a ]
  %i.ak = phi ptr [ %i.aj, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1238, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1236, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %._crit_edge102
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !182 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !181 ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bt = load i32, ptr %1, align 8, !tbaa !71
  %i.bu = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph92.split, label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge, %.lr.ph92, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_NS1_8WrapModeE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge93
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge93, %bb.c
end_hunk_5
begin_hunk_6_@_ZZN11OpenImageIO4v3_1L9resample_IfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_:bb.a
  br i1 %i.ff, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.loopexit
  %i.fg = load i8, ptr %i.bh, align 1, !tbaa !884, !range !47, !noundef !48
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.z, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.y
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !224
  %.pre = load i32, ptr %i.be, align 4, !tbaa !226
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.fi = load i8, ptr %i.bi, align 1, !tbaa !885, !range !47, !noundef !48
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fk = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.fl = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fk
  store ptr %i.fm, ptr %i.ax, align 8, !tbaa !874
  %i.fn = load i32, ptr %i.bl, align 8, !tbaa !887
  %.not.i.i = icmp slt i32 %i.fd, %i.fn
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.ab, !prof !81

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.aj

bb.ac:                                            ; preds = %bb.z
  %i.fo = load i8, ptr %i.bj, align 2, !tbaa !888, !range !47, !noundef !48
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.fr = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fq
  store ptr %i.fs, ptr %i.ax, align 8, !tbaa !874
  %i.ft = load i32, ptr %i.bl, align 8, !tbaa !887
  %i.fu = icmp slt i32 %i.fd, %i.ft               ; 3 uses
  %i.fv = load i32, ptr %i.bm, align 4
  %i.fw = icmp sge i32 %i.fd, %i.fv
  %not..i.i = xor i1 %i.fu, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.fw, !prof !889
  %i.fx = load ptr, ptr %i.bn, align 8
  %i.fy = icmp eq ptr %i.fx, null
  %i.fz = select i1 %or.cond.i.i, i1 true, i1 %i.fy, !prof !889
  br i1 %i.fz, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, !prof !25

bb.ae:                                            ; preds = %bb.ad
  %i.ga = load ptr, ptr %2, align 8, !tbaa !228
  %i.gb = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.gc = load i32, ptr %i.be, align 4, !tbaa !226
  %i.gd = load i32, ptr %i.bs, align 8, !tbaa !890
  %i.ge = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i32 noundef %i.fd, i32 noundef %i.gb, i32 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 1 dereferenceable(1) %i.br, i1 noundef zeroext %i.fu, i32 noundef %i.gd)
          to label %.noexc75 unwind label %bb.aj

.noexc75:                                         ; preds = %bb.ae
  %i.gf = zext i1 %i.fu to i8
  store ptr %i.ge, ptr %i.ax, align 8, !tbaa !874
  store i8 %i.gf, ptr %i.bh, align 1, !tbaa !884
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.af:                                            ; preds = %.loopexit
  %i.gg = load i32, ptr %i.ba, align 4, !tbaa !225 ; 3 uses
  store i32 %i.gg, ptr %i.ay, align 4, !tbaa !223
  %i.gh = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.gi = add nsw i32 %i.gh, 1                    ; 3 uses
  store i32 %i.gi, ptr %i.bb, align 8, !tbaa !224
  %i.gj = load i32, ptr %i.bc, align 8, !tbaa !891
  %.not.i73 = icmp slt i32 %i.gi, %i.gj
  %.pre100 = load i32, ptr %i.be, align 4, !tbaa !226 ; 2 uses
  br i1 %.not.i73, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gk = load i32, ptr %i.bd, align 4, !tbaa !892 ; 2 uses
  store i32 %i.gk, ptr %i.bb, align 8, !tbaa !224
  %i.gl = add nsw i32 %.pre100, 1                 ; 3 uses
  store i32 %i.gl, ptr %i.be, align 4, !tbaa !226
  %i.gm = load i32, ptr %i.bf, align 8, !tbaa !227
  %.not1.i = icmp slt i32 %i.gl, %i.gm
  br i1 %.not1.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.bg, align 8, !tbaa !220
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.ai:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i
  %i.gn = phi i32 [ %.pre100, %bb.af ], [ %i.gl, %bb.ag ], [ %.pre, %._crit_edge.i ]
  %i.go = phi i32 [ %i.gi, %bb.af ], [ %i.gk, %bb.ag ], [ %.pre.i, %._crit_edge.i ]
  %i.gp = phi i32 [ %i.gg, %bb.af ], [ %i.gg, %bb.ag ], [ %i.fd, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gp, i32 noundef %i.go, i32 noundef %i.gn)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.aj

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %bb.ai, %bb.ab, %bb.aa, %bb.ac, %bb.ad, %.noexc75, %bb.ah
  %i.gq = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.gr = icmp slt i32 %i.fb, %i.gq
  br i1 %i.gr, label %.lr.ph90, label %._crit_edge.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.ab
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.j, %bb.m, %bb.x, %bb.aj
  %.pn61.pn = phi { ptr, i32 } [ %i.gs, %bb.aj ], [ %i.ds, %bb.m ], [ %i.dh, %bb.j ], [ %i.fa, %bb.x ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !230
  %.not.i77 = icmp eq ptr %i.gu, null
  br i1 %.not.i77, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78: ; preds = %bb.al, %bb.ak, %bb.g
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.g ], [ %.pn61.pn, %bb.ak ], [ %.pn61.pn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !230
  %.not.i79 = icmp eq ptr %i.gy, null
  br i1 %.not.i79, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80, label %bb.an

bb.an:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn61.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11interppixelIN9Imath_3_14halfEEEbRKNS0_8ImageBufERNS4_13ConstIteratorIT_fEEffNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(126) %1, float noundef %2, float noundef %3, ptr nofree writeonly captures(none) %4, i64 %5) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.a) ; 9 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %.sroa.speculated, 2
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.j = sext i32 %.sroa.speculated to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = shl nsw i32 %.sroa.speculated, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 3 uses
  %i.o = mul nsw i32 %.sroa.speculated, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.p ; 3 uses
  %i.r = fadd float %2, -5.000000e-01             ; 2 uses
  %i.s = fadd float %3, -5.000000e-01             ; 2 uses
  %i.t = tail call noundef float @llvm.floor.f32(float %i.r) ; 2 uses
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fsub float %i.r, %i.t                    ; 4 uses
  %i.w = tail call noundef float @llvm.floor.f32(float %i.s) ; 2 uses
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %i.s, %i.w                    ; 3 uses
  %i.z = add nsw i32 %i.u, 2
  %i.aa = add nsw i32 %i.x, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %1, i32 noundef %i.u, i32 noundef %i.z, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  %i.ab = icmp sgt i32 %.sroa.speculated, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  br i1 %i.ab, label %.preheader.us.preheader, label %.split36.us.thread

.split36.us.thread:                               ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  br label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.preheader.us.preheader:                          ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !874
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us.preheader, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !916 ; 2 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 13
  %i.ai = and i32 %i.ah, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us = sext i16 %i.af to i32
  %i.aj = and i32 %.signext.i.i.i.i.i.us, -2147483648 ; 3 uses
  %i.ak = icmp samesign ugt i32 %i.ai, 8388607
  br i1 %i.ak, label %bb.g, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.us = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.us, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true)
  %i.am = add nsw i32 %i.al, -8                   ; 2 uses
  %i.an = shl i32 %i.ai, %i.am
  %i.ao = or i32 %i.aj, %i.an
  %i.ap = or i32 %i.ao, 947912704
  %i.aq = shl nuw nsw i32 %i.am, 23
  %i.ar = sub nuw i32 %i.ap, %i.aq
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us

bb.g:                                             ; preds = %bb.d
  %i.as = or disjoint i32 %i.ai, %i.aj            ; 2 uses
  %i.at = icmp samesign ult i32 %i.ai, 260046848
  br i1 %i.at, label %bb.i, label %bb.h, !prof !81

bb.h:                                             ; preds = %bb.g
  %i.au = or i32 %i.as, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us

bb.i:                                             ; preds = %bb.g
  %i.av = add nuw nsw i32 %i.as, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us: ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.us = phi i32 [ %i.av, %bb.i ], [ %i.au, %bb.h ], [ %i.ar, %bb.f ], [ %i.aj, %bb.e ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %.sroa.0.0.i.i.i.i.i.us, ptr %i.aw, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !1243

._crit_edge.us:                                   ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !874
  br label %bb.j

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1, %._crit_edge.us
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.us ], [ %indvars.iv.next.1, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv.1
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !916 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 13
  %i.bc = and i32 %i.bb, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us.1 = sext i16 %i.az to i32
  %i.bd = and i32 %.signext.i.i.i.i.i.us.1, -2147483648 ; 3 uses
  %i.be = icmp samesign ugt i32 %i.bc, 8388607
  br i1 %i.be, label %bb.m, label %bb.k, !prof !81

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i.us.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.us.1, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true)
  %i.bg = add nsw i32 %i.bf, -8                   ; 2 uses
  %i.bh = shl i32 %i.bc, %i.bg
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = or i32 %i.bi, 947912704
  %i.bk = shl nuw nsw i32 %i.bg, 23
  %i.bl = sub nuw i32 %i.bj, %i.bk
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1

bb.m:                                             ; preds = %bb.j
  %i.bm = or disjoint i32 %i.bc, %i.bd            ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bc, 260046848
  br i1 %i.bn, label %bb.o, label %bb.n, !prof !81

bb.n:                                             ; preds = %bb.m
  %i.bo = or i32 %i.bm, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1

bb.o:                                             ; preds = %bb.m
  %i.bp = add nuw nsw i32 %i.bm, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i.us.1 = phi i32 [ %i.bp, %bb.o ], [ %i.bo, %bb.n ], [ %i.bl, %bb.l ], [ %i.bd, %bb.k ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.1
  store i32 %.sroa.0.0.i.i.i.i.i.us.1, ptr %i.bq, align 4, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %bb.j, !llvm.loop !1243

._crit_edge.us.1:                                 ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.1
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !874
  br label %bb.p

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2, %._crit_edge.us.1
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.us.1 ], [ %indvars.iv.next.2, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv.2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !916 ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 13
  %i.bw = and i32 %i.bv, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us.2 = sext i16 %i.bt to i32
  %i.bx = and i32 %.signext.i.i.i.i.i.us.2, -2147483648 ; 3 uses
  %i.by = icmp samesign ugt i32 %i.bw, 8388607
  br i1 %i.by, label %bb.s, label %bb.q, !prof !81

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.us.2 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i.i.us.2, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.ca = add nsw i32 %i.bz, -8                   ; 2 uses
  %i.cb = shl i32 %i.bw, %i.ca
  %i.cc = or i32 %i.bx, %i.cb
  %i.cd = or i32 %i.cc, 947912704
  %i.ce = shl nuw nsw i32 %i.ca, 23
  %i.cf = sub nuw i32 %i.cd, %i.ce
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2

bb.s:                                             ; preds = %bb.p
  %i.cg = or disjoint i32 %i.bw, %i.bx            ; 2 uses
  %i.ch = icmp samesign ult i32 %i.bw, 260046848
  br i1 %i.ch, label %bb.u, label %bb.t, !prof !81

bb.t:                                             ; preds = %bb.s
  %i.ci = or i32 %i.cg, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2

bb.u:                                             ; preds = %bb.s
  %i.cj = add nuw nsw i32 %i.cg, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2: ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i.us.2 = phi i32 [ %i.cj, %bb.u ], [ %i.ci, %bb.t ], [ %i.cf, %bb.r ], [ %i.bx, %bb.q ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.2
  store i32 %.sroa.0.0.i.i.i.i.i.us.2, ptr %i.ck, align 4, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %bb.p, !llvm.loop !1243

._crit_edge.us.2:                                 ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !874
  br label %bb.v

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3, %._crit_edge.us.2
  %indvars.iv.3 = phi i64 [ 0, %._crit_edge.us.2 ], [ %indvars.iv.next.3, %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.3
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !916 ; 2 uses
  %i.co = zext i16 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 13
  %i.cq = and i32 %i.cp, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us.3 = sext i16 %i.cn to i32
  %i.cr = and i32 %.signext.i.i.i.i.i.us.3, -2147483648 ; 3 uses
  %i.cs = icmp samesign ugt i32 %i.cq, 8388607
  br i1 %i.cs, label %bb.y, label %bb.w, !prof !81

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i.i.us.3 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i.us.3, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cq, i1 true)
  %i.cu = add nsw i32 %i.ct, -8                   ; 2 uses
  %i.cv = shl i32 %i.cq, %i.cu
  %i.cw = or i32 %i.cr, %i.cv
  %i.cx = or i32 %i.cw, 947912704
  %i.cy = shl nuw nsw i32 %i.cu, 23
  %i.cz = sub nuw i32 %i.cx, %i.cy
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3

bb.y:                                             ; preds = %bb.v
  %i.da = or disjoint i32 %i.cq, %i.cr            ; 2 uses
  %i.db = icmp samesign ult i32 %i.cq, 260046848
  br i1 %i.db, label %bb.aa, label %bb.z, !prof !81

bb.z:                                             ; preds = %bb.y
  %i.dc = or i32 %i.da, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3

bb.aa:                                            ; preds = %bb.y
  %i.dd = add nuw nsw i32 %i.da, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3: ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i.i.us.3 = phi i32 [ %i.dd, %bb.aa ], [ %i.dc, %bb.z ], [ %i.cz, %bb.x ], [ %i.cr, %bb.w ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.3
  store i32 %.sroa.0.0.i.i.i.i.i.us.3, ptr %i.de, align 4, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3.not, label %.split36.us, label %bb.v, !llvm.loop !1243

.split36.us:                                      ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.us.3
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.df = fsub float 1.000000e+00, %i.v           ; 3 uses
  %i.dg = fsub float 1.000000e+00, %i.y           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.split36.us
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat2 = shufflevector <4 x float> %broadcast.splatinsert1, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat4 = shufflevector <4 x float> %broadcast.splatinsert3, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat6 = shufflevector <4 x float> %broadcast.splatinsert5, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.dh, align 16, !tbaa !77
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load7 = load <4 x float>, ptr %i.di, align 4, !tbaa !77
  %i.dj = fmul <4 x float> %broadcast.splat, %wide.load7
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat2, <4 x float> %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  %wide.load8 = load <4 x float>, ptr %i.dl, align 8, !tbaa !77
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  %wide.load9 = load <4 x float>, ptr %i.dm, align 4, !tbaa !77
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load9
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load8, <4 x float> %broadcast.splat2, <4 x float> %i.dn)
  %i.dp = fmul <4 x float> %broadcast.splat4, %i.do
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat6, <4 x float> %i.dk, <4 x float> %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <4 x float> %i.dq, ptr %i.dr, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split36.us, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.split36.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !77
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !77
  %i.dx = fmul float %i.v, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.du, float %i.df, float %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !77
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !77
  %i.ed = fmul float %i.v, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = fmul float %i.y, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dy, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1245

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %.split36.us.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IftEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L9resample_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1201
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IftEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 37 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1246, !nonnull !48, !align !386
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1248, !nonnull !48, !align !386
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1246, !nonnull !48, !align !386
  %i.g = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !189
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !140
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !157
  %i.s = sitofp i32 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !189
  %i.v = sitofp i32 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !190
  %i.y = sitofp i32 %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !140
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !157
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fdiv nnan float 1.000000e+00, %i.ab
  %i.ag = fdiv nnan float 1.000000e+00, %i.ae
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = sext i32 %i.g to i64                    ; 2 uses
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = alloca i8, i64 %i.ai, align 16
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.ah, %bb.b ], [ 0, %bb.a ]
  %i.ak = phi ptr [ %i.aj, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1248, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1246, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %._crit_edge102
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !182 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !181 ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bt = load i32, ptr %1, align 8, !tbaa !71
  %i.bu = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph92.split, label %._crit_edge93

._crit_edge93:                                    ; preds = %._crit_edge, %.lr.ph92, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_NS1_8WrapModeE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge93
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge93, %bb.c
end_hunk_6
begin_hunk_7_@_ZZN11OpenImageIO4v3_1L9resample_IftEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
.loopexit:                                        ; preds = %bb.q, %bb.l, %bb.o, %bb.i
  %i.en = add nsw i32 %.05889, 1                  ; 2 uses
  %i.eo = load i32, ptr %i.ay, align 4, !tbaa !223
  %i.ep = add nsw i32 %i.eo, 1                    ; 7 uses
  store i32 %i.ep, ptr %i.ay, align 4, !tbaa !223
  %i.eq = load i32, ptr %i.az, align 8, !tbaa !883
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.loopexit
  %i.es = load i8, ptr %i.bh, align 1, !tbaa !884, !range !47, !noundef !48
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load i32, ptr %i.bb, align 8, !tbaa !224
  %.pre = load i32, ptr %i.be, align 4, !tbaa !226
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.eu = load i8, ptr %i.bi, align 1, !tbaa !885, !range !47, !noundef !48
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ew = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.ex = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ew
  store ptr %i.ey, ptr %i.ax, align 8, !tbaa !874
  %i.ez = load i32, ptr %i.bl, align 8, !tbaa !887
  %.not.i.i = icmp slt i32 %i.ep, %i.ez
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.v, !prof !81

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.ad

bb.w:                                             ; preds = %bb.t
  %i.fa = load i8, ptr %i.bj, align 2, !tbaa !888, !range !47, !noundef !48
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = load i64, ptr %i.bk, align 8, !tbaa !886
  %i.fd = load ptr, ptr %i.ax, align 8, !tbaa !874
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.fc
  store ptr %i.fe, ptr %i.ax, align 8, !tbaa !874
  %i.ff = load i32, ptr %i.bl, align 8, !tbaa !887
  %i.fg = icmp slt i32 %i.ep, %i.ff               ; 3 uses
  %i.fh = load i32, ptr %i.bm, align 4
  %i.fi = icmp sge i32 %i.ep, %i.fh
  %not..i.i = xor i1 %i.fg, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.fi, !prof !889
  %i.fj = load ptr, ptr %i.bn, align 8
  %i.fk = icmp eq ptr %i.fj, null
  %i.fl = select i1 %or.cond.i.i, i1 true, i1 %i.fk, !prof !889
  br i1 %i.fl, label %bb.y, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit, !prof !25

bb.y:                                             ; preds = %bb.x
  %i.fm = load ptr, ptr %2, align 8, !tbaa !228
  %i.fn = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.fo = load i32, ptr %i.be, align 4, !tbaa !226
  %i.fp = load i32, ptr %i.bs, align 8, !tbaa !890
  %i.fq = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i32 noundef %i.ep, i32 noundef %i.fn, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 1 dereferenceable(1) %i.br, i1 noundef zeroext %i.fg, i32 noundef %i.fp)
          to label %.noexc75 unwind label %bb.ad

.noexc75:                                         ; preds = %bb.y
  %i.fr = zext i1 %i.fg to i8
  store ptr %i.fq, ptr %i.ax, align 8, !tbaa !874
  store i8 %i.fr, ptr %i.bh, align 1, !tbaa !884
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.z:                                             ; preds = %.loopexit
  %i.fs = load i32, ptr %i.ba, align 4, !tbaa !225 ; 3 uses
  store i32 %i.fs, ptr %i.ay, align 4, !tbaa !223
  %i.ft = load i32, ptr %i.bb, align 8, !tbaa !224
  %i.fu = add nsw i32 %i.ft, 1                    ; 3 uses
  store i32 %i.fu, ptr %i.bb, align 8, !tbaa !224
  %i.fv = load i32, ptr %i.bc, align 8, !tbaa !891
  %.not.i73 = icmp slt i32 %i.fu, %i.fv
  %.pre100 = load i32, ptr %i.be, align 4, !tbaa !226 ; 2 uses
  br i1 %.not.i73, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = load i32, ptr %i.bd, align 4, !tbaa !892 ; 2 uses
  store i32 %i.fw, ptr %i.bb, align 8, !tbaa !224
  %i.fx = add nsw i32 %.pre100, 1                 ; 3 uses
  store i32 %i.fx, ptr %i.be, align 4, !tbaa !226
  %i.fy = load i32, ptr %i.bf, align 8, !tbaa !227
  %.not1.i = icmp slt i32 %i.fx, %i.fy
  br i1 %.not1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.bg, align 8, !tbaa !220
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i
  %i.fz = phi i32 [ %.pre100, %bb.z ], [ %i.fx, %bb.aa ], [ %.pre, %._crit_edge.i ]
  %i.ga = phi i32 [ %i.fu, %bb.z ], [ %i.fw, %bb.aa ], [ %.pre.i, %._crit_edge.i ]
  %i.gb = phi i32 [ %i.fs, %bb.z ], [ %i.fs, %bb.aa ], [ %i.ep, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gb, i32 noundef %i.ga, i32 noundef %i.fz)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit unwind label %bb.ad

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %bb.ac, %bb.v, %bb.u, %bb.w, %bb.x, %.noexc75, %bb.ab
  %i.gc = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.gd = icmp slt i32 %i.en, %i.gc
  br i1 %i.gd, label %.lr.ph90, label %._crit_edge.loopexit

bb.ad:                                            ; preds = %bb.ac, %bb.y, %bb.v
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %bb.m, %bb.r, %bb.ad
  %.pn61.pn = phi { ptr, i32 } [ %i.ge, %bb.ad ], [ %i.ds, %bb.m ], [ %i.dh, %bb.j ], [ %i.em, %bb.r ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !230
  %.not.i77 = icmp eq ptr %i.gg, null
  br i1 %.not.i77, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78: ; preds = %bb.af, %bb.ae, %bb.g
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.g ], [ %.pn61.pn, %bb.ae ], [ %.pn61.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !230
  %.not.i79 = icmp eq ptr %i.gk, null
  br i1 %.not.i79, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80, label %bb.ah

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit80: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit78, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn61.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11interppixelItEEbRKNS0_8ImageBufERNS2_13ConstIteratorIT_fEEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(126) %1, float noundef %2, float noundef %3, ptr nofree writeonly captures(none) %4, i64 %5) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %5 to i32
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %.sroa.speculated, 2
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.j = sext i32 %.sroa.speculated to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 4 uses
  %i.l = shl nsw i32 %.sroa.speculated, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 4 uses
  %i.o = mul nsw i32 %.sroa.speculated, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.p ; 4 uses
  %i.r = fadd float %2, -5.000000e-01             ; 2 uses
  %i.s = fadd float %3, -5.000000e-01             ; 2 uses
  %i.t = tail call noundef float @llvm.floor.f32(float %i.r) ; 2 uses
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = fsub float %i.r, %i.t                    ; 4 uses
  %i.w = tail call noundef float @llvm.floor.f32(float %i.s) ; 2 uses
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  %i.y = fsub float %i.s, %i.w                    ; 3 uses
  %i.z = add nsw i32 %i.u, 2
  %i.aa = add nsw i32 %i.x, 2
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %1, i32 noundef %i.u, i32 noundef %i.z, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  %i.ab = icmp sgt i32 %.sroa.speculated, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  br i1 %i.ab, label %.preheader.us.preheader, label %.split36.us

.preheader.us.preheader:                          ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 14 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %wide.load = load <4 x i16>, ptr %i.ae, align 2, !tbaa !933
  %wide.load1 = load <4 x i16>, ptr %i.af, align 2, !tbaa !933
  %i.ag = uitofp <4 x i16> %wide.load to <4 x float>
  %i.ah = uitofp <4 x i16> %wide.load1 to <4 x float>
  %i.ai = fmul nnan <4 x float> %i.ag, splat (float f0x37800080)
  %i.aj = fmul nnan <4 x float> %i.ah, splat (float f0x37800080)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> %i.ai, ptr %i.ak, align 16, !tbaa !77
  store <4 x float> %i.aj, ptr %i.al, align 16, !tbaa !77
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !933
  %i.ap = uitofp i16 %i.ao to float
  %i.aq = fmul nnan float %i.ap, f0x37800080
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.aq, ptr %i.ar, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1254

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check3, label %scalar.ph2.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %._crit_edge.us
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body7 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %index8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load9 = load <4 x i16>, ptr %i.at, align 2, !tbaa !933
  %wide.load10 = load <4 x i16>, ptr %i.au, align 2, !tbaa !933
  %i.av = uitofp <4 x i16> %wide.load9 to <4 x float>
  %i.aw = uitofp <4 x i16> %wide.load10 to <4 x float>
  %i.ax = fmul nnan <4 x float> %i.av, splat (float f0x37800080)
  %i.ay = fmul nnan <4 x float> %i.aw, splat (float f0x37800080)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x float> %i.ax, ptr %i.az, align 4, !tbaa !77
  store <4 x float> %i.ay, ptr %i.ba, align 4, !tbaa !77
  %index.next11 = add nuw i64 %index8, 8          ; 2 uses
  %i.bb = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bb, label %middle.block12, label %vector.body7, !llvm.loop !1255

middle.block12:                                   ; preds = %vector.body7
  %cmp.n13 = icmp eq i64 %n.vec6, %wide.trip.count
  br i1 %cmp.n13, label %._crit_edge.us.1, label %scalar.ph2.preheader

scalar.ph2.preheader:                             ; preds = %._crit_edge.us, %middle.block12
  %indvars.iv.1.ph = phi i64 [ 0, %._crit_edge.us ], [ %n.vec6, %middle.block12 ]
  br label %scalar.ph2

scalar.ph2:                                       ; preds = %scalar.ph2.preheader, %scalar.ph2
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph2 ], [ %indvars.iv.1.ph, %scalar.ph2.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.1
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !933
  %i.be = uitofp i16 %i.bd to float
  %i.bf = fmul nnan float %i.be, f0x37800080
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.1
  store float %i.bf, ptr %i.bg, align 4, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %scalar.ph2, !llvm.loop !1256

._crit_edge.us.1:                                 ; preds = %scalar.ph2, %middle.block12
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check16 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check16, label %scalar.ph15.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %._crit_edge.us.1
  %n.vec19 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next24, %vector.body20 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %index21 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.load22 = load <4 x i16>, ptr %i.bi, align 2, !tbaa !933
  %wide.load23 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !933
  %i.bk = uitofp <4 x i16> %wide.load22 to <4 x float>
  %i.bl = uitofp <4 x i16> %wide.load23 to <4 x float>
  %i.bm = fmul nnan <4 x float> %i.bk, splat (float f0x37800080)
  %i.bn = fmul nnan <4 x float> %i.bl, splat (float f0x37800080)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index21 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> %i.bm, ptr %i.bo, align 8, !tbaa !77
  store <4 x float> %i.bn, ptr %i.bp, align 8, !tbaa !77
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.bq, label %middle.block25, label %vector.body20, !llvm.loop !1257

middle.block25:                                   ; preds = %vector.body20
  %cmp.n26 = icmp eq i64 %n.vec19, %wide.trip.count
  br i1 %cmp.n26, label %._crit_edge.us.2, label %scalar.ph15.preheader

scalar.ph15.preheader:                            ; preds = %._crit_edge.us.1, %middle.block25
  %indvars.iv.2.ph = phi i64 [ 0, %._crit_edge.us.1 ], [ %n.vec19, %middle.block25 ]
  br label %scalar.ph15

scalar.ph15:                                      ; preds = %scalar.ph15.preheader, %scalar.ph15
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph15 ], [ %indvars.iv.2.ph, %scalar.ph15.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !933
  %i.bt = uitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x37800080
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.2
  store float %i.bu, ptr %i.bv, align 4, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %scalar.ph15, !llvm.loop !1258

._crit_edge.us.2:                                 ; preds = %scalar.ph15, %middle.block25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.bw = load ptr, ptr %i.ac, align 8, !tbaa !874 ; 2 uses
  %min.iters.check29 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %._crit_edge.us.2
  %n.vec32 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body33 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %index34 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %wide.load35 = load <4 x i16>, ptr %i.bx, align 2, !tbaa !933
  %wide.load36 = load <4 x i16>, ptr %i.by, align 2, !tbaa !933
  %i.bz = uitofp <4 x i16> %wide.load35 to <4 x float>
  %i.ca = uitofp <4 x i16> %wide.load36 to <4 x float>
  %i.cb = fmul nnan <4 x float> %i.bz, splat (float f0x37800080)
  %i.cc = fmul nnan <4 x float> %i.ca, splat (float f0x37800080)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index34 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <4 x float> %i.cb, ptr %i.cd, align 4, !tbaa !77
  store <4 x float> %i.cc, ptr %i.ce, align 4, !tbaa !77
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.cf, label %middle.block38, label %vector.body33, !llvm.loop !1259

middle.block38:                                   ; preds = %vector.body33
  %cmp.n39 = icmp eq i64 %n.vec32, %wide.trip.count
  br i1 %cmp.n39, label %.lr.ph.preheader.i, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %._crit_edge.us.2, %middle.block38
  %indvars.iv.3.ph = phi i64 [ 0, %._crit_edge.us.2 ], [ %n.vec32, %middle.block38 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph28 ], [ %indvars.iv.3.ph, %scalar.ph28.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv.3
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !933
  %i.ci = uitofp i16 %i.ch to float
  %i.cj = fmul nnan float %i.ci, f0x37800080
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.3
  store float %i.cj, ptr %i.ck, align 4, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3.not, label %.lr.ph.preheader.i, label %scalar.ph28, !llvm.loop !1260

.split36.us:                                      ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  br label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %scalar.ph28, %middle.block38
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %1)
  %i.cl = fsub float 1.000000e+00, %i.v           ; 3 uses
  %i.cm = fsub float 1.000000e+00, %i.y           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  %min.iters.check42 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check42, label %.lr.ph.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.preheader.i
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.cm, i64 0
  %broadcast.splat47 = shufflevector <4 x float> %broadcast.splatinsert46, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat49 = shufflevector <4 x float> %broadcast.splatinsert48, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat51 = shufflevector <4 x float> %broadcast.splatinsert50, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph43
  %index53 = phi i64 [ 0, %vector.ph43 ], [ %index.next58, %vector.body52 ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index53
  %wide.load54 = load <4 x float>, ptr %i.cn, align 16, !tbaa !77
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index53
  %wide.load55 = load <4 x float>, ptr %i.co, align 4, !tbaa !77
  %i.cp = fmul <4 x float> %broadcast.splat49, %wide.load55
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load54, <4 x float> %broadcast.splat, <4 x float> %i.cp)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index53
  %wide.load56 = load <4 x float>, ptr %i.cr, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index53
  %wide.load57 = load <4 x float>, ptr %i.cs, align 4, !tbaa !77
  %i.ct = fmul <4 x float> %broadcast.splat49, %wide.load57
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load56, <4 x float> %broadcast.splat, <4 x float> %i.ct)
  %i.cv = fmul <4 x float> %broadcast.splat51, %i.cu
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat47, <4 x float> %i.cq, <4 x float> %i.cv)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index53
  store <4 x float> %i.cw, ptr %i.cx, align 4, !tbaa !77
  %index.next58 = add nuw i64 %index53, 4         ; 2 uses
  %i.cy = icmp eq i64 %index.next58, %n.vec45
  br i1 %i.cy, label %middle.block59, label %vector.body52, !llvm.loop !1261

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %n.vec45, %wide.trip.count
  br i1 %cmp.n60, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block59
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec45, %middle.block59 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.da = load float, ptr %i.cz, align 4, !tbaa !77
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !77
  %i.dd = fmul float %i.v, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.da, float %i.cl, float %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !77
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.di = load float, ptr %i.dh, align 4, !tbaa !77
  %i.dj = fmul float %i.v, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.cl, float %i.dj)
  %i.dl = fmul float %i.y, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.de, float %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  store float %i.dm, ptr %i.dn, align 4, !tbaa !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1262

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block59, %.split36.us
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !73
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IhhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L9resample_IhhEEbRNS1_8ImageBufERKS5_bS2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !862
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !16
  store ptr %.val, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !1201
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !16 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L9resample_IhhEEbRNS2_8ImageBufERKS4_bNS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L9resample_IhhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.116", align 8 ; 37 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !48, !align !386
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1265, !nonnull !48, !align !386
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !48, !align !386
  %i.g = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf9nchannelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !189
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !190
  %i.m = sitofp i32 %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !140
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !157
  %i.s = sitofp i32 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !189
  %i.v = sitofp i32 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !190
  %i.y = sitofp i32 %i.x to float
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !140
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !157
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fdiv nnan float 1.000000e+00, %i.ab
  %i.ag = fdiv nnan float 1.000000e+00, %i.ae
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge105, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = sext i32 %i.g to i64                    ; 2 uses
  %i.ai = shl nsw i64 %i.ah, 2
  %i.aj = alloca i8, i64 %i.ai, align 16
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.ah, %bb.b ], [ 0, %bb.a ]
  %i.ak = phi ptr [ %i.aj, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !1265, !nonnull !48, !align !386
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !48, !align !386
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit: ; preds = %._crit_edge105
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !182 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !181 ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bt = load i32, ptr %1, align 8, !tbaa !71
  %i.bu = load i32, ptr %i.as, align 4, !tbaa !180 ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph95.split, label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge, %.lr.ph95, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_NS1_8WrapModeE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !230
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge96
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #36
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %._crit_edge96, %bb.c
end_hunk_7
