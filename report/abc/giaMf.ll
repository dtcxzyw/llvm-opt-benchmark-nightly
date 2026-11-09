Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMf?download=true
inline.NumInlined: 878
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@Mf_ManSetFlowRefs:bb.a
.critedge2._crit_edge:                            ; preds = %Vec_IntUpdateEntry.exit, %.critedge2.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare i32 @Gia_ObjIsMuxType(ptr noundef) local_unnamed_addr #5

declare ptr @Gia_ObjRecognizeMux(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @Mf_ManSetMapRefs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !119
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = mul nsw i32 %i.c, %i.c
  %i.e = add nuw i32 %i.d, 1
  %i.f = uitofp i32 %i.e to double
  %i.g = fdiv double 1.000000e+00, %i.f
  %i.h = fptrunc double %i.g to float             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val88 = load i32, ptr %i.m, align 4, !tbaa !37 ; 4 uses
  %i.n = icmp sgt i32 %.val88, 0
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.j, i64 32
  %.val102 = load ptr, ptr %i.o, align 8, !tbaa !74 ; 3 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val103.val = load ptr, ptr %i.p, align 8, !tbaa !36 ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 24
  %.val91 = load ptr, ptr %i.q, align 8, !tbaa !75 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val88 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i32 %.val88, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0117 = phi i32 [ 0, %.lr.ph.new ], [ %i.as, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val103.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %.val102, i64 %i.u
  %.val3.i = load i64, ptr %i.v, align 4
  %i.w = trunc i64 %.val3.i to i32
  %i.x = and i32 %i.w, 536870911
  %i.y = sub nsw i32 %i.t, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %.val91, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 65535
  %i.ae = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.0117, i32 range(i32 0, 65536) %i.ad)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val103.val, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %.val102, i64 %i.ai
  %.val3.i.1 = load i64, ptr %i.aj, align 4
  %i.ak = trunc i64 %.val3.i.1 to i32
  %i.al = and i32 %i.ak, 536870911
  %i.am = sub nsw i32 %i.ah, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %.val91, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 65535
  %i.as = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ae, i32 range(i32 0, 65536) %i.ar) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !337

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ]
  %.0117.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.as, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod171 = trunc i32 %.val88 to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val103.val, i64 %indvars.iv.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !24 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %.val102, i64 %i.av
  %.val3.i.epil = load i64, ptr %i.aw, align 4
  %i.ax = trunc i64 %.val3.i.epil to i32
  %i.ay = and i32 %i.ax, 536870911
  %i.az = sub nsw i32 %i.au, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %.val91, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 65535
  %i.bf = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.0117.epil.init, i32 range(i32 0, 65536) %i.be)
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.as, %.critedge.loopexit.unr-lcssa ], [ %i.bf, %.epil.preheader ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !81 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 52 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !120 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.c, label %.thread

bb.c:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !121 ; 2 uses
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %thread-pre-split.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c
  %i.bn = uitofp nneg i32 %.0.lcssa to float
  %i.bo = fpext nnan ninf float %i.bn to double
  %i.bp = sitofp i32 %i.bm to double
  %i.bq = fadd nnan double %i.bp, 1.000000e+02
  %i.br = fmul double %i.bq, %i.bo
  %i.bs = fdiv double %i.br, 1.000000e+02
  %i.bt = fptosi double %i.bs to i32              ; 3 uses
  store i32 %i.bt, ptr %i.bi, align 4, !tbaa !120
  %.not80 = icmp eq i32 %i.bt, -1
  br i1 %.not80, label %thread-pre-split.thread, label %.thread

.thread:                                          ; preds = %.critedge, %thread-pre-split
  %i.bu = phi i32 [ %i.bt, %thread-pre-split ], [ %i.bj, %.critedge ] ; 3 uses
  %i.bv = uitofp nneg i32 %.0.lcssa to double
  %i.bw = sitofp i32 %i.bu to double
  %i.bx = fadd double %i.bw, 1.000000e-02
  %i.by = fcmp ogt double %i.bx, %i.bv
  br i1 %i.by, label %thread-pre-split.thread, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !121
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.e, label %thread-pre-split.thread

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.bu, i32 noundef %.0.lcssa)
  %.pre = load ptr, ptr %i.bg, align 8, !tbaa !81
  %.pre146.pre = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.c, %.thread, %bb.e, %bb.d, %thread-pre-split
  %.pre146 = phi ptr [ %i.j, %thread-pre-split ], [ %.pre146.pre, %bb.e ], [ %i.j, %bb.d ], [ %i.j, %.thread ], [ %i.j, %bb.c ] ; 4 uses
  %i.cc = phi ptr [ %i.bh, %thread-pre-split ], [ %.pre, %bb.e ], [ %i.bh, %bb.d ], [ %i.bh, %.thread ], [ %i.bh, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %.0.lcssa, %thread-pre-split ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.d ], [ %i.bu, %.thread ], [ %.0.lcssa, %bb.c ]
  %i.cd = sext i32 %.1 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 168
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !122
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !123
  %.not81 = icmp eq i32 %i.cg, 0
  br i1 %.not81, label %.preheader115, label %.critedge2

.preheader115:                                    ; preds = %thread-pre-split.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre146, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %.val118 = load i32, ptr %i.cj, align 4, !tbaa !37
  %i.ck = icmp sgt i32 %.val118, 0
  br i1 %i.ck, label %.lr.ph120, label %.critedge2

.lr.ph120:                                        ; preds = %.preheader115
  %i.cl = getelementptr i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph120, %bb.f
  %indvars.iv131 = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next132, %bb.f ] ; 2 uses
  %i.cm = phi ptr [ %i.ci, %.lr.ph120 ], [ %i.de, %bb.f ]
  %i.cn = phi ptr [ %.pre146, %.lr.ph120 ], [ %i.dc, %bb.f ]
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %.val100 = load ptr, ptr %i.co, align 8, !tbaa !74
  %i.cp = getelementptr i8, ptr %i.cm, i64 8
  %.val101.val = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val101.val, i64 %indvars.iv131
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !24 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [12 x i8], ptr %.val100, i64 %i.cs
  %.val3.i108 = load i64, ptr %i.ct, align 4
  %i.cu = trunc i64 %.val3.i108 to i32
  %i.cv = and i32 %i.cu, 536870911
  %i.cw = sub nsw i32 %i.cr, %i.cv
  %.val107 = load ptr, ptr %i.cl, align 8, !tbaa !75
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %.val107, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 65536
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !57  ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val = load i32, ptr %i.df, align 4, !tbaa !37
  %i.dg = sext i32 %.val to i64
  %i.dh = icmp slt i64 %indvars.iv.next132, %i.dg
  br i1 %i.dh, label %bb.f, label %.critedge2.loopexit, !llvm.loop !338

.critedge2.loopexit:                              ; preds = %bb.f
  %.pre145 = load ptr, ptr %i.bg, align 8, !tbaa !81
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader115, %thread-pre-split.thread
  %i.di = phi ptr [ %i.dc, %.critedge2.loopexit ], [ %.pre146, %.preheader115 ], [ %.pre146, %thread-pre-split.thread ]
  %i.dj = phi ptr [ %.pre145, %.critedge2.loopexit ], [ %i.cc, %.preheader115 ], [ %i.cc, %thread-pre-split.thread ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 176
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !73 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %.lr.ph127, label %.preheader

.lr.ph127:                                        ; preds = %.critedge2
  %i.do = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.dp = getelementptr i8, ptr %0, i64 40
  %i.dq = getelementptr i8, ptr %0, i64 64
  %i.dr = zext nneg i32 %i.dm to i64
  br label %bb.g

.preheader.loopexit:                              ; preds = %bb.l
  %.pre149 = load ptr, ptr %i.i, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr i8, ptr %.pre149, i64 24
  %.val99.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.critedge2
  %i.ds = phi ptr [ %i.hp, %.preheader.loopexit ], [ %i.dj, %.critedge2 ]
  %.val99 = phi i32 [ %.val99.pre, %.preheader.loopexit ], [ %i.dm, %.critedge2 ] ; 3 uses
  %i.dt = icmp sgt i32 %.val99, 0
  br i1 %i.dt, label %.lr.ph129, label %._crit_edge

.lr.ph129:                                        ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !75 ; 5 uses
  %i.dw = fpext float %i.h to double
  %i.dx = fsub double 1.000000e+00, %i.dw         ; 2 uses
  %wide.trip.count143 = zext nneg i32 %.val99 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val99, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph129
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph129 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph129
  %i.dy = and i64 %wide.trip.count143, 3          ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = select i1 %i.dz, i64 4, i64 %i.dy
  %n.vec = sub nsw i64 %wide.trip.count143, %i.ea ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat166 = shufflevector <4 x float> %broadcast.splatinsert165, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 40 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 2 uses
  %i.ej = load float, ptr %i.ef, align 4, !tbaa !105
  %i.ek = load float, ptr %i.eg, align 4, !tbaa !105
  %i.el = load float, ptr %i.eh, align 4, !tbaa !105
  %i.em = load float, ptr %i.ei, align 4, !tbaa !105
  %i.en = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 2
  %i.eq = insertelement <4 x float> %i.ep, float %i.em, i64 3
  %i.er = fmul <4 x float> %i.eq, %broadcast.splat166
  %i.es = fpext <4 x float> %i.er to <4 x double>
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 60
  %i.ex = load i32, ptr %i.et, align 4
  %i.ey = load i32, ptr %i.eu, align 4
  %i.ez = load i32, ptr %i.ev, align 4
  %i.fa = load i32, ptr %i.ew, align 4
  %i.fb = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 1
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.ez, i64 2
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.fa, i64 3
  %i.ff = lshr <4 x i32> %i.fe, splat (i32 16)
  %i.fg = uitofp nneg <4 x i32> %i.ff to <4 x float> ; 2 uses
  %i.fh = fcmp olt <4 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = select <4 x i1> %i.fh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fg
  %i.fj = fpext <4 x float> %i.fi to <4 x double>
  %i.fk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.fj, <4 x double> %i.es)
  %i.fl = fptrunc <4 x double> %i.fk to <4 x float> ; 4 uses
  %i.fm = extractelement <4 x float> %i.fl, i64 0
  store float %i.fm, ptr %i.ef, align 4, !tbaa !105
  %i.fn = extractelement <4 x float> %i.fl, i64 1
  store float %i.fn, ptr %i.eg, align 4, !tbaa !105
  %i.fo = extractelement <4 x float> %i.fl, i64 2
  store float %i.fo, ptr %i.eh, align 4, !tbaa !105
  %i.fp = extractelement <4 x float> %i.fl, i64 3
  store float %i.fp, ptr %i.ei, align 4, !tbaa !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !339

bb.g:                                             ; preds = %.lr.ph127, %bb.l
  %i.fr = phi ptr [ %i.dj, %.lr.ph127 ], [ %i.hp, %bb.l ] ; 4 uses
  %indvars.iv137 = phi i64 [ %i.dr, %.lr.ph127 ], [ %indvars.iv.next138, %bb.l ] ; 2 uses
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, -1 ; 3 uses
  %i.fs = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.ft = getelementptr i8, ptr %i.fs, i64 32
  %.val89 = load ptr, ptr %i.ft, align 8, !tbaa !74
  %i.fu = getelementptr inbounds nuw [12 x i8], ptr %.val89, i64 %indvars.iv.next138
  %.val90 = load i64, ptr %i.fu, align 4          ; 2 uses
  %i.fv = and i64 %.val90, 2147483648
  %.not.i = icmp ne i64 %i.fv, 0
  %i.fw = and i64 %.val90, 536870911
  %i.fx = icmp eq i64 %i.fw, 536870911
  %narrow.i.not = or i1 %.not.i, %i.fx
  br i1 %narrow.i.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val92 = load ptr, ptr %i.do, align 8, !tbaa !75
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val92, i64 %indvars.iv.next138 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.ga = load i32, ptr %i.fz, align 4
  %.not83 = icmp ult i32 %i.ga, 65536
  br i1 %.not83, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val94 = load ptr, ptr %i.dp, align 8, !tbaa !76
  %i.gb = load i32, ptr %i.fy, align 4, !tbaa !78 ; 2 uses
  %i.gc = ashr i32 %i.gb, 16
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %.val94, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !79
  %i.gg = and i32 %i.gb, 65535
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 3 uses
  %i.gk = load i32, ptr %i.cf, align 8, !tbaa !123
  %.not84 = icmp eq i32 %i.gk, 0
  %.val97.pre = load i32, ptr %i.gj, align 4, !tbaa !24 ; 3 uses
  %i.gl = and i32 %.val97.pre, 31                 ; 2 uses
  br i1 %.not84, label %.preheader114, label %.loopexit

.preheader114:                                    ; preds = %bb.i
  %.not85122 = icmp eq i32 %i.gl, 0
  br i1 %.not85122, label %.loopexit, label %.lr.ph124

.lr.ph124:                                        ; preds = %.preheader114, %.lr.ph124
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.lr.ph124 ], [ 1, %.preheader114 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv134
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !24
  %.val106 = load ptr, ptr %i.do, align 8, !tbaa !75
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [16 x i8], ptr %.val106, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = add i32 %i.gr, 65536
  store i32 %i.gs, ptr %i.gq, align 4
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %.val98 = load i32, ptr %i.gj, align 4, !tbaa !24 ; 2 uses
  %i.gt = and i32 %.val98, 31                     ; 2 uses
  %i.gu = zext nneg i32 %i.gt to i64
  %.not85.not = icmp samesign ult i64 %indvars.iv134, %i.gu
  br i1 %.not85.not, label %.lr.ph124, label %.loopexit.loopexit, !llvm.loop !340

.loopexit.loopexit:                               ; preds = %.lr.ph124
  %.pre148 = load ptr, ptr %i.bg, align 8, !tbaa !81
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.loopexit.loopexit, %.preheader114
  %.pre-phi = phi i32 [ 0, %.preheader114 ], [ %i.gt, %.loopexit.loopexit ], [ %i.gl, %bb.i ] ; 3 uses
  %i.gv = phi ptr [ %i.fr, %.preheader114 ], [ %.pre148, %.loopexit.loopexit ], [ %i.fr, %bb.i ] ; 6 uses
  %.val97 = phi i32 [ %.val97.pre, %.preheader114 ], [ %.val98, %.loopexit.loopexit ], [ %.val97.pre, %bb.i ]
  %i.gw = zext nneg i32 %.pre-phi to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 176 ; 2 uses
  %i.gy = load <2 x i64>, ptr %i.gx, align 8, !tbaa !19
  %i.gz = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.gw, i64 1
  %i.ha = add <2 x i64> %i.gy, %i.gz
  store <2 x i64> %i.ha, ptr %i.gx, align 8, !tbaa !19
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !107
  %.not86 = icmp eq i32 %i.hc, 0
  br i1 %.not86, label %bb.j, label %.thread111

bb.j:                                             ; preds = %.loopexit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 100
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !108
  %.not87 = icmp eq i32 %i.he, 0
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hf = icmp samesign ult i32 %.pre-phi, 2
  br i1 %i.hf, label %Mf_CutArea.exit, label %.thread112

.thread111:                                       ; preds = %.loopexit
  %i.hg = icmp samesign ult i32 %.pre-phi, 2
  br i1 %i.hg, label %Mf_CutArea.exit, label %.thread112

.thread112:                                       ; preds = %bb.k, %.thread111
  %i.hh = lshr i32 %.val97, 6
  %.val.i = load ptr, ptr %i.dq, align 8, !tbaa !36
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !24
  %i.hl = sext i32 %i.hk to i64
  br label %Mf_CutArea.exit

Mf_CutArea.exit:                                  ; preds = %.thread111, %bb.k, %.thread112
  %.0.i = phi i64 [ 0, %bb.k ], [ %i.hl, %.thread112 ], [ 0, %.thread111 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 192 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !124
  %i.ho = add i64 %i.hn, %.0.i
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !124
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %Mf_CutArea.exit, %bb.j, %bb.h
  %i.hp = phi ptr [ %i.fr, %bb.g ], [ %i.gv, %Mf_CutArea.exit ], [ %i.gv, %bb.j ], [ %i.fr, %bb.h ] ; 2 uses
  %i.hq = icmp samesign ugt i64 %indvars.iv137, 2
  br i1 %i.hq, label %bb.g, label %.preheader.loopexit, !llvm.loop !341

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph ], [ %indvars.iv140.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv140 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !105
  %i.hu = fmul float %i.ht, %i.h
  %i.hv = fpext float %i.hu to double
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = lshr i32 %i.hx, 16
  %i.hz = uitofp nneg i32 %i.hy to float          ; 2 uses
  %i.ia = fcmp olt float %i.hz, 1.000000e+00
  %i.ib = select i1 %i.ia, float 1.000000e+00, float %i.hz
  %i.ic = fpext float %i.ib to double
  %i.id = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.ic, double %i.hv)
  %i.ie = fptrunc double %i.id to float
  store float %i.ie, ptr %i.hs, align 4, !tbaa !105
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %scalar.ph, !llvm.loop !342

._crit_edge:                                      ; preds = %scalar.ph, %.preheader
  %i.if = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !125
  %i.ih = trunc i64 %i.ig to i32
  ret i32 %i.ih
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 noundef range(i32 0, 2) %0, ptr noundef %1, ...) unnamed_addr #11 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !24
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #30
  %.not8 = icmp eq i32 %i.b, 0
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !127
  %i.f = tail call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef 9, ptr noundef nonnull @.str.57) #30 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.g = call i32 (...) @Abc_FrameIsBridgeMode() #30
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #30 ; 3 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !127
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #32
  %i.k = trunc i64 %i.j to i32
  %i.l = call i32 @Gia_ManToBridgeText(ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull %i.h) #30 ; 0 uses
  call void @free(ptr noundef %i.h) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !127, !noalias !346
  %i.n = call i32 @vfprintf(ptr noundef %i.m, ptr noundef %1, ptr noundef nonnull %2) #30, !inline_history !345 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define ptr @Mf_ManDeriveMapping(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %.val41 = load i32, ptr %i.c, align 8, !tbaa !73 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load i64, ptr %i.f, align 8, !tbaa !128
  %i.h = trunc i64 %i.g to i32
  %i.i = add nsw i32 %.val41, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !125
  %i.l = trunc i64 %i.k to i32
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.i, %i.m                   ; 2 uses
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 12 uses
  %i.p = add i32 %i.n, -1
  %or.cond.i = icmp ult i32 %i.p, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.n ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 11 uses
  store i32 %spec.store.select.i, ptr %i.o, align 8, !tbaa !35
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit.thread, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a
  %i.r = sext i32 %spec.store.select.i to i64
  %i.s = shl nsw i64 %i.r, 2
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !36
  %.not.i.i = icmp slt i32 %spec.store.select.i, %.val41
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

Vec_IntAlloc.exit.thread:                         ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !36
  %.not.i.i61 = icmp sgt i32 %.val41, 0
  br i1 %.not.i.i61, label %.thread, label %Vec_IntFill.exit.thread

.thread:                                          ; preds = %Vec_IntAlloc.exit.thread
  %i.w = zext nneg i32 %.val41 to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  br label %bb.d

bb.b:                                             ; preds = %Vec_IntAlloc.exit
end_hunk_0
begin_hunk_1_@Mf_ManPrintQuit:bb.a
  %i.ch = fadd float %i.e, %i.k
  %i.ci = fadd float %i.ch, %i.p
  %i.cj = fadd float %i.ci, %i.av
  %i.ck = fadd float %i.am, %i.cj
  %i.cl = fpext float %i.ck to double
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, double noundef %i.cl) ; 0 uses
  %putchar42 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !81
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !84
  %.not4348 = icmp slt i32 %i.co, 0
  br i1 %.not4348, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !24
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.cs, i32 noundef %i.cr) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cu = load ptr, ptr %i.ba, align 8, !tbaa !81
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !84
  %i.cw = sext i32 %i.cv to i64
  %.not43.not = icmp slt i64 %indvars.iv, %i.cw
  br i1 %.not43.not, label %bb.h, label %._crit_edge, !llvm.loop !375

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !80  ; 2 uses
  %.not44 = icmp eq ptr %i.cx, null
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val45 = load i32, ptr %i.cy, align 4, !tbaa !40 ; 2 uses
  %i.cz = sitofp i32 %.val45 to double
  %i.da = fmul nnan double %i.cz, 1.000000e+02
  %i.db = load double, ptr %i.bl, align 8, !tbaa !113
  %i.dc = fdiv double %i.da, %i.db
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.val45, double noundef %i.dc) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.de = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #30
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %Abc_Clock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = load i64, ptr %2, align 8, !tbaa !135
  %i.dh = mul nsw i64 %i.dg, 1000000
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !136
  %i.dk = sdiv i64 %i.dj, 1000
  %i.dl = add nsw i64 %i.dk, %i.dh
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.dl, %bb.k ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !137
  %i.do = sub nsw i64 %.0.i, %i.dn
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.15)
  %i.dp = sitofp i64 %i.do to double
  %i.dq = fdiv double %i.dp, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.61, double noundef %i.dq)
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !127
  %i.ds = call i32 @fflush(ptr noundef %i.dr)     ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %Abc_Clock.exit
  ret void
}

declare double @Gia_ManMemory(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Mf_ManComputeCuts(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv
  %.val12 = load i64, ptr %i.h, align 4           ; 2 uses
  %i.i = and i64 %.val12, 2147483648
  %.not.i = icmp ne i64 %i.i, 0
  %i.j = and i64 %.val12, 536870911
  %i.k = icmp eq i64 %i.j, 536870911
  %narrow.i.not = or i1 %.not.i, %i.k
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @Mf_ObjMergeOrder(ptr noundef nonnull %0, i32 noundef %i.l)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.f, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.r = tail call i32 @Mf_ManSetMapRefs(ptr noundef nonnull %0) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i32, ptr %i.s, align 8, !tbaa !123
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.v = load i32, ptr %i.u, align 4, !tbaa !119
  %.not10 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not10, ptr @.str.40, ptr @.str.39
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ @.str.38, %._crit_edge ]
  tail call void @Mf_ManPrintStats(ptr noundef nonnull %0, ptr noundef nonnull %i.x)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Mf_CutRef_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %.val24 = load i32, ptr %1, align 4, !tbaa !24  ; 2 uses
  %i.a = and i32 %.val24, 31                      ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %Mf_CutArea.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !108
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = lshr i32 %.val24, 6
  %i.j = getelementptr i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !109
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = add nsw i32 %i.q, %i.a
  br label %.lr.ph

Mf_CutArea.exit:                                  ; preds = %bb.a
  %.not27 = icmp eq i32 %i.a, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.e, %bb.d, %Mf_CutArea.exit
  %.0.i34 = phi i32 [ 0, %Mf_CutArea.exit ], [ 1, %bb.e ], [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  %i.s = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.029 = phi i32 [ %.0.i34, %.lr.ph ], [ %.1, %bb.j ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24
  %.val25 = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %.val25, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = add i32 %i.z, 65536
  store i32 %i.aa, ptr %i.y, align 4
  %.not18 = icmp ult i32 %i.z, 65536
  br i1 %.not18, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !24
  %.val = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !78 ; 3 uses
  %.not19 = icmp eq i32 %i.ae, 0
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val21 = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.af = ashr i32 %i.ae, 16
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val21, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !79
  %i.aj = and i32 %i.ae, 65535
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = tail call i32 @Mf_CutRef_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.am)
  %i.ao = add nsw i32 %i.an, %.029
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i32 [ %.029, %bb.g ], [ %i.ao, %bb.i ], [ %.029, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val23 = load i32, ptr %1, align 4, !tbaa !24
  %i.ap = and i32 %.val23, 31
  %i.aq = zext nneg i32 %i.ap to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.aq
  br i1 %.not.not, label %bb.g, label %._crit_edge, !llvm.loop !376

._crit_edge:                                      ; preds = %bb.j, %Mf_CutArea.exit
  %.0.lcssa = phi i32 [ 0, %Mf_CutArea.exit ], [ %.1, %bb.j ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Mf_CutDeref_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %.val24 = load i32, ptr %1, align 4, !tbaa !24  ; 2 uses
  %i.a = and i32 %.val24, 31                      ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %Mf_CutArea.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !108
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = lshr i32 %.val24, 6
  %i.j = getelementptr i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !109
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = add nsw i32 %i.q, %i.a
  br label %.lr.ph

Mf_CutArea.exit:                                  ; preds = %bb.a
  %.not27 = icmp eq i32 %i.a, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.e, %bb.d, %Mf_CutArea.exit
  %.0.i34 = phi i32 [ 0, %Mf_CutArea.exit ], [ 1, %bb.e ], [ %i.r, %bb.f ], [ %i.m, %bb.d ]
  %i.s = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.029 = phi i32 [ %.0.i34, %.lr.ph ], [ %.1, %bb.j ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24
  %.val25 = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %.val25, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = lshr i32 %i.z, 16
  %i.ab = add nuw nsw i32 %i.aa, 65535
  %i.ac = and i32 %i.ab, 65535                    ; 2 uses
  %i.ad = shl nuw i32 %i.ac, 16
  %i.ae = and i32 %i.z, 65535
  %i.af = or disjoint i32 %i.ad, %i.ae
  store i32 %i.af, ptr %i.y, align 4
  %.not18 = icmp eq i32 %i.ac, 0
  br i1 %.not18, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !24
  %.val = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !78 ; 3 uses
  %.not19 = icmp eq i32 %i.aj, 0
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val21 = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.ak = ashr i32 %i.aj, 16
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val21, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.ao = and i32 %i.aj, 65535
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = tail call i32 @Mf_CutDeref_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ar)
  %i.at = add nsw i32 %i.as, %.029
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i32 [ %.029, %bb.g ], [ %i.at, %bb.i ], [ %.029, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val23 = load i32, ptr %1, align 4, !tbaa !24
  %i.au = and i32 %.val23, 31
  %i.av = zext nneg i32 %i.au to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.av
  br i1 %.not.not, label %bb.g, label %._crit_edge, !llvm.loop !377

._crit_edge:                                      ; preds = %bb.j, %Mf_CutArea.exit
  %.0.lcssa = phi i32 [ 0, %Mf_CutArea.exit ], [ %.1, %bb.j ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Mf_CutRef2_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.val34 = load i32, ptr %1, align 4, !tbaa !24  ; 2 uses
  %i.a = and i32 %.val34, 31                      ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %Mf_CutArea.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !108
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = lshr i32 %.val34, 6
  %i.j = getelementptr i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %Mf_CutArea.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !109
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %Mf_CutArea.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = add nsw i32 %i.q, %i.a
  br label %Mf_CutArea.exit

Mf_CutArea.exit:                                  ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ %i.r, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.s = icmp eq i32 %3, 0
  %.not37 = icmp eq i32 %i.a, 0
  %or.cond = or i1 %i.s, %.not37
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %Mf_CutArea.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 40
  %i.x = add nsw i32 %3, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.039 = phi i32 [ %.0.i, %.lr.ph ], [ %.1, %bb.r ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !37  ; 7 uses
  %i.ab = load i32, ptr %2, align 8, !tbaa !35
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp slt i32 %i.aa, 16
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ah = icmp samesign ult i32 %i.aa, 1073741823
  %i.ai = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  %.pre41 = load ptr, ptr %i.u, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre41, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call ptr @realloc(ptr noundef nonnull %.pre41, i64 noundef %i.ak) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %i.af, %bb.j ], [ %i.al, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.an, ptr %i.u, align 8, !tbaa !36
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !35
  %.pre42 = load i32, ptr %i.t, align 4, !tbaa !37
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ao = phi i32 [ %i.aa, %.Vec_IntPush.exit_crit_edge ], [ %i.aa, %bb.l ], [ %.pre42, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre41, %bb.l ], [ %i.an, %Vec_IntGrow.exit11.sink.split.i ]
  %i.aq = add nsw i32 %i.ao, 1
  store i32 %i.aq, ptr %i.t, align 4, !tbaa !37
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 %i.z, ptr %i.as, align 4, !tbaa !24
  %i.at = load i32, ptr %i.y, align 4, !tbaa !24
  %.val35 = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %.val35, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = add i32 %i.ax, 65536
  store i32 %i.ay, ptr %i.aw, align 4
  %.not28 = icmp ult i32 %i.ax, 65536
  br i1 %.not28, label %bb.p, label %bb.r

bb.p:                                             ; preds = %Vec_IntPush.exit
  %i.az = load i32, ptr %i.y, align 4, !tbaa !24
  %.val = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !78 ; 3 uses
  %.not29 = icmp eq i32 %i.bc, 0
  br i1 %.not29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val31 = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.bd = ashr i32 %i.bc, 16
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val31, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !79
  %i.bh = and i32 %i.bc, 65535
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = tail call i32 @Mf_CutRef2_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %2, i32 noundef %i.x)
  %i.bm = add nsw i32 %i.bl, %.039
  br label %bb.r

bb.r:                                             ; preds = %Vec_IntPush.exit, %bb.p, %bb.q
  %.1 = phi i32 [ %.039, %Vec_IntPush.exit ], [ %i.bm, %bb.q ], [ %.039, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val33 = load i32, ptr %1, align 4, !tbaa !24
  %i.bn = and i32 %.val33, 31
  %i.bo = zext nneg i32 %i.bn to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.bo
  br i1 %.not.not, label %bb.g, label %.loopexit, !llvm.loop !378

.loopexit:                                        ; preds = %bb.r, %Mf_CutArea.exit
  %.026 = phi i32 [ %.0.i, %Mf_CutArea.exit ], [ %.1, %bb.r ]
  ret i32 %.026
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Mf_CutDeref2_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.val34 = load i32, ptr %1, align 4, !tbaa !24  ; 2 uses
  %i.a = and i32 %.val34, 31                      ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %Mf_CutArea.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !108
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = lshr i32 %.val34, 6
  %i.j = getelementptr i8, ptr %0, i64 64
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  br label %Mf_CutArea.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.o = load i32, ptr %i.n, align 8, !tbaa !109
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %Mf_CutArea.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !110
  %i.r = add nsw i32 %i.q, %i.a
  br label %Mf_CutArea.exit

Mf_CutArea.exit:                                  ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ %i.r, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.s = icmp eq i32 %3, 0
  %.not37 = icmp eq i32 %i.a, 0
  %or.cond = or i1 %i.s, %.not37
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %Mf_CutArea.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 40
  %i.x = add nsw i32 %3, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.039 = phi i32 [ %.0.i, %.lr.ph ], [ %.1, %bb.r ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !37  ; 7 uses
  %i.ab = load i32, ptr %2, align 8, !tbaa !35
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp slt i32 %i.aa, 16
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.ah = icmp samesign ult i32 %i.aa, 1073741823
  %i.ai = shl nuw nsw i32 %i.aa, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.aa, %spec.select.i
  %.pre41 = load ptr, ptr %i.u, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre41, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call ptr @realloc(ptr noundef nonnull %.pre41, i64 noundef %i.ak) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.an = phi ptr [ %i.ag, %bb.k ], [ %i.af, %bb.j ], [ %i.al, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.an, ptr %i.u, align 8, !tbaa !36
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !35
  %.pre42 = load i32, ptr %i.t, align 4, !tbaa !37
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.ao = phi i32 [ %i.aa, %.Vec_IntPush.exit_crit_edge ], [ %i.aa, %bb.l ], [ %.pre42, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre41, %bb.l ], [ %i.an, %Vec_IntGrow.exit11.sink.split.i ]
  %i.aq = add nsw i32 %i.ao, 1
  store i32 %i.aq, ptr %i.t, align 4, !tbaa !37
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 %i.z, ptr %i.as, align 4, !tbaa !24
  %i.at = load i32, ptr %i.y, align 4, !tbaa !24
  %.val35 = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %.val35, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = lshr i32 %i.ax, 16
  %i.az = add nuw nsw i32 %i.ay, 65535
  %i.ba = and i32 %i.az, 65535                    ; 2 uses
  %i.bb = shl nuw i32 %i.ba, 16
  %i.bc = and i32 %i.ax, 65535
  %i.bd = or disjoint i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %i.aw, align 4
  %.not28 = icmp eq i32 %i.ba, 0
  br i1 %.not28, label %bb.p, label %bb.r

bb.p:                                             ; preds = %Vec_IntPush.exit
  %i.be = load i32, ptr %i.y, align 4, !tbaa !24
  %.val = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78 ; 3 uses
  %.not29 = icmp eq i32 %i.bh, 0
  br i1 %.not29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val31 = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.bi = ashr i32 %i.bh, 16
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.val31, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.bm = and i32 %i.bh, 65535
  %i.bn = zext nneg i32 %i.bm to i64
end_hunk_1
begin_hunk_2_@Mf_ManPrintMfccStats:bb.a
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = sext i32 %i.w to i64
  %i.aa = shl nsw i64 %i.z, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.y, i64 %i.aa
  %i.ab = sub i32 %1, %i.w
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ae, i1 false), !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.c, ptr %i.d, align 4, !tbaa !37
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i
  %i.af = getelementptr i8, ptr %.val8, i64 8
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ag = sext i32 %1 to i64                      ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !24
  %i.aj = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ag ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not.i = icmp ult i32 %i.am, 65536
  %i.an = getelementptr i8, ptr %0, i64 40
  %.val8.i = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !78 ; 2 uses
  %i.ap = ashr i32 %i.ao, 16
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val8.i, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.at = and i32 %i.ao, 65535
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 4 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Gia_ObjLevelId.exit
  %i.ax = tail call i32 @Mf_CutDeref_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.aw)
  %i.ay = tail call i32 @Mf_CutRef_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.aw) ; 0 uses
  br label %Mf_CutAreaMffc.exit

bb.o:                                             ; preds = %Gia_ObjLevelId.exit
  %i.az = tail call i32 @Mf_CutRef_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.aw)
  %i.ba = tail call i32 @Mf_CutDeref_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.aw) ; 0 uses
  br label %Mf_CutAreaMffc.exit

Mf_CutAreaMffc.exit:                              ; preds = %bb.n, %bb.o
  %i.bb = phi i32 [ %i.ax, %bb.n ], [ %i.az, %bb.o ] ; 2 uses
  %i.bc = lshr i32 %i.am, 16
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %1, i32 noundef %i.ai, i32 noundef %i.bc, i32 noundef %i.bb) ; 0 uses
  ret i32 %i.bb
}

; Function Attrs: nounwind uwtable
define void @Mf_ManOptimizationOne(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !96     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = getelementptr i8, ptr %i.b, i64 248      ; 6 uses
  %.val83 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.d = getelementptr i8, ptr %.val83, i64 8
  %.val83.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = sext i32 %1 to i64                       ; 11 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %.val83.val, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 256
  %.val89 = load ptr, ptr %i.i, align 8, !tbaa !396
  %i.j = getelementptr i8, ptr %.val89, i64 8
  %.val89.val = load ptr, ptr %i.j, align 8, !tbaa !36 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val89.val, i64 %i.e
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.n = sext i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.g to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.val89.val, i64 %i.n
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.preheader, label %bb.c, !llvm.loop !389

.critedge.preheader:                              ; preds = %bb.b, %bb.a
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %1) ; 0 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47) ; 0 uses
  %i.q = tail call i32 @Mf_ManPrintMfccStats(ptr noundef nonnull %0, i32 noundef %1) ; 0 uses
  %.val81102 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.r = getelementptr i8, ptr %.val81102, i64 8
  %.val81.val103 = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds [4 x i8], ptr %.val81.val103, i64 %i.e
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph106, label %.critedge8.thread

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.v = load i32, ptr %gep, align 4, !tbaa !24
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.w
  %.val90 = load i64, ptr %i.x, align 4           ; 2 uses
  %i.y = and i64 %.val90, 2147483648
  %.not.i = icmp eq i64 %i.y, 0
  %i.z = and i64 %.val90, 536870911
  %i.aa = icmp eq i64 %i.z, 536870911
  %narrow.i.not = or i1 %.not.i, %i.aa
  br i1 %narrow.i.not, label %bb.b, label %.loopexit

.lr.ph106:                                        ; preds = %.critedge.preheader
  %i.ab = getelementptr i8, ptr %i.b, i64 256
  br label %bb.d

.critedge4.preheader:                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.as, 0
  br i1 %i.ac, label %.lr.ph111, label %.critedge8.thread

.lr.ph111:                                        ; preds = %.critedge4.preheader
  %i.ad = getelementptr i8, ptr %i.b, i64 256
  %i.ae = getelementptr i8, ptr %0, i64 24
  br label %.critedge4

bb.d:                                             ; preds = %.lr.ph106, %bb.d
  %.0105 = phi i32 [ 0, %.lr.ph106 ], [ %i.ao, %bb.d ]
  %.2104 = phi i32 [ 0, %.lr.ph106 ], [ %i.ap, %bb.d ] ; 2 uses
  %.val87 = load ptr, ptr %i.ab, align 8, !tbaa !396
  %i.af = getelementptr i8, ptr %.val87, i64 8
  %.val87.val = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val87.val, i64 %i.e
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ai = add nsw i32 %i.ah, %.2104
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val87.val, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48) ; 0 uses
  %i.an = tail call i32 @Mf_ManPrintMfccStats(ptr noundef nonnull %0, i32 noundef %i.al)
  %i.ao = add nsw i32 %i.an, %.0105               ; 5 uses
  %i.ap = add nuw nsw i32 %.2104, 1               ; 2 uses
  %.val81 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.aq = getelementptr i8, ptr %.val81, i64 8
  %.val81.val = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val81.val, i64 %i.e
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24 ; 2 uses
  %i.at = icmp slt i32 %i.ap, %i.as
  br i1 %i.at, label %bb.d, label %.critedge4.preheader, !llvm.loop !390

.critedge6.preheader:                             ; preds = %.critedge4
  %i.au = icmp sgt i32 %i.bs, 0
  br i1 %i.au, label %.lr.ph115, label %.critedge8.thread

.lr.ph115:                                        ; preds = %.critedge6.preheader
  %i.av = getelementptr i8, ptr %i.b, i64 256
  %.val85 = load ptr, ptr %i.av, align 8, !tbaa !396
  %i.aw = getelementptr i8, ptr %.val85, i64 8
  %.val85.val = load ptr, ptr %i.aw, align 8, !tbaa !36 ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %.val85.val, i64 %i.e
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = getelementptr i8, ptr %0, i64 24
  %.val74 = load ptr, ptr %i.az, align 8, !tbaa !75 ; 3 uses
  %i.ba = getelementptr i8, ptr %0, i64 40
  %.val75 = load ptr, ptr %i.ba, align 8, !tbaa !76 ; 3 uses
  %i.bb = sext i32 %i.ay to i64
  %wide.trip.count130 = zext nneg i32 %i.bs to i64 ; 2 uses
  %invariant.gep150 = getelementptr [4 x i8], ptr %.val85.val, i64 %i.bb ; 3 uses
  %xtraiter = and i64 %wide.trip.count130, 1
  %i.bc = icmp eq i32 %i.bs, 1
  br i1 %i.bc, label %.critedge6.epil.preheader, label %.lr.ph115.new

.lr.ph115.new:                                    ; preds = %.lr.ph115
  %unroll_iter = and i64 %wide.trip.count130, 2147483646
  br label %.critedge6

.critedge4:                                       ; preds = %.lr.ph111, %.critedge4
  %.3110 = phi i32 [ 0, %.lr.ph111 ], [ %i.bp, %.critedge4 ] ; 2 uses
  %.val86 = load ptr, ptr %i.ad, align 8, !tbaa !396
  %i.bd = getelementptr i8, ptr %.val86, i64 8
  %.val86.val = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %.val86.val, i64 %i.e
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !24
  %i.bg = add nsw i32 %i.bf, %.3110
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val86.val, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !24
  %.val76 = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %.val76, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = add i32 %i.bn, 65536
  store i32 %i.bo, ptr %i.bm, align 4
  %i.bp = add nuw nsw i32 %.3110, 1               ; 2 uses
  %.val80 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.bq = getelementptr i8, ptr %.val80, i64 8
  %.val80.val = load ptr, ptr %i.bq, align 8, !tbaa !36
  %i.br = getelementptr inbounds [4 x i8], ptr %.val80.val, i64 %i.e
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !24 ; 6 uses
  %i.bt = icmp slt i32 %i.bp, %i.bs
  br i1 %i.bt, label %.critedge4, label %.critedge6.preheader, !llvm.loop !391

.critedge6:                                       ; preds = %.critedge6, %.lr.ph115.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph115.new ], [ %indvars.iv.next126.1, %.critedge6 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph115.new ], [ %niter.next.1, %.critedge6 ]
  %gep151 = getelementptr [4 x i8], ptr %invariant.gep150, i64 %indvars.iv125
  %i.bu = load i32, ptr %gep151, align 4, !tbaa !24
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %.val74, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !78 ; 2 uses
  %i.by = ashr i32 %i.bx, 16
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %.val75, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !79
  %i.cc = and i32 %i.bx, 65535
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv125
  store ptr %i.cf, ptr %i.cg, align 16, !tbaa !94
  %gep151.1 = getelementptr [4 x i8], ptr %invariant.gep150, i64 %indvars.iv.next126
  %i.ch = load i32, ptr %gep151.1, align 4, !tbaa !24
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %.val74, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.cl = ashr i32 %i.ck, 16
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %.val75, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  %i.cp = and i32 %i.ck, 65535
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next126
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !94
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.unr-lcssa, label %.critedge6, !llvm.loop !392

.critedge8.thread:                                ; preds = %.critedge6.preheader, %.critedge4.preheader, %.critedge.preheader
  %.0.lcssa139142.ph = phi i32 [ %i.ao, %.critedge6.preheader ], [ %i.ao, %.critedge4.preheader ], [ 0, %.critedge.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.cu, align 4, !tbaa !37
  br label %Mf_CutAreaRefed2Multi.exit

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.critedge6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.critedge6.epil.preheader

.critedge6.epil.preheader:                        ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph115
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next126.1, %.lr.ph.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod158 = trunc i32 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %gep151.epil = getelementptr [4 x i8], ptr %invariant.gep150, i64 %indvars.iv125.epil.init
  %i.cv = load i32, ptr %gep151.epil, align 4, !tbaa !24
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr %.val74, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !78 ; 2 uses
  %i.cz = ashr i32 %i.cy, 16
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %.val75, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !79
  %i.dd = and i32 %i.cy, 65535
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv125.epil.init
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !94
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.unr-lcssa, %.critedge6.epil.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 0, ptr %i.dj, align 4, !tbaa !37
  %wide.trip.count.i = zext nneg i32 %i.bs to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.val21.pre.i = load i32, ptr %i.dj, align 4, !tbaa !37
  %i.dk = icmp sgt i32 %.val21.pre.i, 0
  br i1 %i.dk, label %.lr.ph23.i, label %Mf_CutAreaRefed2Multi.exit

.lr.ph23.i:                                       ; preds = %.preheader.i
  %i.dl = getelementptr i8, ptr %0, i64 96
  %i.dm = getelementptr i8, ptr %0, i64 24
  br label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.01619.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.dq, %.lr.ph.i ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !94
  %i.dp = tail call i32 @Mf_CutDeref2_rec(ptr noundef nonnull %0, ptr noundef %i.do, ptr noundef nonnull %i.di, i32 noundef 1000000000)
  %i.dq = add nsw i32 %i.dp, %.01619.i            ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !393

bb.e:                                             ; preds = %bb.e, %.lr.ph23.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next26.i, %bb.e ] ; 2 uses
  %.val17.i = load ptr, ptr %i.dl, align 8, !tbaa !36
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv25.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !24
  %.val18.i = load ptr, ptr %i.dm, align 8, !tbaa !75
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %.val18.i, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = add i32 %i.dw, 65536
  store i32 %i.dx, ptr %i.dv, align 4
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.dj, align 4, !tbaa !37
  %i.dy = sext i32 %.val.i to i64
  %i.dz = icmp slt i64 %indvars.iv.next26.i, %i.dy
  br i1 %i.dz, label %bb.e, label %Mf_CutAreaRefed2Multi.exit, !llvm.loop !394

Mf_CutAreaRefed2Multi.exit:                       ; preds = %bb.e, %.critedge8.thread, %.preheader.i
  %.0.lcssa139142146 = phi i32 [ %.0.lcssa139142.ph, %.critedge8.thread ], [ %i.ao, %.preheader.i ], [ %i.ao, %bb.e ]
  %.016.lcssa31.i = phi i32 [ 0, %.critedge8.thread ], [ %i.dq, %.preheader.i ], [ %i.dq, %bb.e ]
  %.val78117 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.ea = getelementptr i8, ptr %.val78117, i64 8
  %.val78.val118 = load ptr, ptr %i.ea, align 8, !tbaa !36
  %i.eb = getelementptr inbounds [4 x i8], ptr %.val78.val118, i64 %i.e
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !24
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph120, label %.critedge10

.lr.ph120:                                        ; preds = %Mf_CutAreaRefed2Multi.exit
  %i.ee = getelementptr i8, ptr %i.b, i64 256
  %i.ef = getelementptr i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph120, %bb.f
  %.5119 = phi i32 [ 0, %.lr.ph120 ], [ %i.es, %bb.f ] ; 2 uses
  %.val84 = load ptr, ptr %i.ee, align 8, !tbaa !396
  %i.eg = getelementptr i8, ptr %.val84, i64 8
  %.val84.val = load ptr, ptr %i.eg, align 8, !tbaa !36 ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %.val84.val, i64 %i.e
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !24
  %i.ej = add nsw i32 %i.ei, %.5119
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.val84.val, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !24
  %.val77 = load ptr, ptr %i.ef, align 8, !tbaa !75
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [16 x i8], ptr %.val77, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = add i32 %i.eq, -65536
  store i32 %i.er, ptr %i.ep, align 4
  %i.es = add nuw nsw i32 %.5119, 1               ; 2 uses
  %.val78 = load ptr, ptr %i.c, align 8, !tbaa !147
  %i.et = getelementptr i8, ptr %.val78, i64 8
  %.val78.val = load ptr, ptr %i.et, align 8, !tbaa !36
  %i.eu = getelementptr inbounds [4 x i8], ptr %.val78.val, i64 %i.e
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !24
  %i.ew = icmp slt i32 %i.es, %i.ev
  br i1 %i.ew, label %bb.f, label %.critedge10, !llvm.loop !395

.critedge10:                                      ; preds = %bb.f, %Mf_CutAreaRefed2Multi.exit
  %i.ex = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %.0.lcssa139142146) ; 0 uses
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %.016.lcssa31.i) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nounwind uwtable
define void @Mf_ManOptimization(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 6 uses
  %i.b = tail call i32 @Mf_ManMappingFromMapping(ptr noundef nonnull %0)
  %i.c = tail call i32 @Gia_ManLevelNum(ptr noundef %i.a) #30 ; 0 uses
  tail call void @Gia_ManStaticMappingFanoutStart(ptr noundef %i.a, ptr noundef null) #30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  tail call void @Mf_ManPrintFanoutProfile(ptr noundef nonnull %0, ptr noundef %i.e)
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.b) ; 0 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val26 = load i32, ptr %i.h, align 4, !tbaa !37
  %i.i = icmp sgt i32 %.val26, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val21 = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  %i.o = and i32 %i.n, -2
  %or.cond = icmp eq i32 %i.o, 2
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val22 = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %.val22, i64 %indvars.iv
  %.val23 = load i64, ptr %i.p, align 4           ; 2 uses
  %i.q = and i64 %.val23, 2147483648
  %.not.i = icmp ne i64 %i.q, 0
  %i.r = and i64 %.val23, 536870911
  %i.s = icmp eq i64 %i.r, 536870911
  %narrow.i.not = or i1 %.not.i, %i.s
  br i1 %narrow.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @Mf_ManOptimizationOne(ptr noundef nonnull %0, i32 noundef %i.t)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !147
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.u = phi ptr [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val = load i32, ptr %i.v, align 4, !tbaa !37
  %i.w = sext i32 %.val to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %.critedge, !llvm.loop !397

.critedge:                                        ; preds = %bb.e, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @Gia_ManStaticFanoutStop(ptr noundef nonnull %i.a) #30
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %Vec_IntFreeP.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ac, null
  br i1 %.not.i24, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ac) #30
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !47  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  %i.af = phi ptr [ %i.ad, %.thread.i ], [ %i.z, %bb.f ]
  tail call void @free(ptr noundef nonnull %i.af) #30
  store ptr null, ptr %i.y, align 8, !tbaa !47
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %.critedge, %bb.g
  ret void
}

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #5

declare void @Gia_ManStaticMappingFanoutStart(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Gia_ManStaticFanoutStop(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Mf_ManComputeMapping(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [192 x i32], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Mf_ObjComputeBestCut.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Mf_ObjComputeBestCut.exit ] ; 4 uses
  %i.o = phi ptr [ %i.c, %.lr.ph ], [ %i.fu, %Mf_ObjComputeBestCut.exit ]
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %.val = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv
  %.val12 = load i64, ptr %i.q, align 4           ; 2 uses
  %i.r = and i64 %.val12, 2147483648
  %.not.i = icmp ne i64 %i.r, 0
  %i.s = and i64 %.val12, 536870911
  %i.t = icmp eq i64 %i.s, 536870911
  %narrow.i.not = or i1 %.not.i, %i.t
  br i1 %narrow.i.not, label %Mf_ObjComputeBestCut.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val51.i = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.val51.i, i64 %indvars.iv ; 4 uses
  %.val53.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78   ; 2 uses
  %i.w = ashr i32 %i.v, 16
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.val53.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.aa = and i32 %i.v, 65535
end_hunk_2
