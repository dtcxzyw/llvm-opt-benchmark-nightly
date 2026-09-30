Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvL7CCSIDFTIfEEvRKNS_13OcvDftOptionsEPKT_PS4_, ptr noundef nonnull @.str.1, i32 noundef 1362) #22
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.m:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.m
  %i.x = load i64, ptr %i.v, align 8, !tbaa !52
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.l
  %.pn236 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.t, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.af

bb.n:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !109
  %i.ab = load float, ptr %1, align 4, !tbaa !109
  store float %i.ab, ptr %i.z, align 4, !tbaa !109
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.0223 = phi float [ %i.aa, %bb.n ], [ 0.000000e+00, %bb.g ]
  %.0 = phi ptr [ %i.z, %bb.n ], [ %1, %bb.g ]    ; 14 uses
  switch i32 %i.b, label %bb.r [
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ac = load float, ptr %.0, align 4, !tbaa !109
  %i.ad = fmul float %i.ac, %i.h
  store float %i.ad, ptr %2, align 4, !tbaa !109
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.ae = load float, ptr %.0, align 4, !tbaa !109 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !109 ; 2 uses
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = fmul float %i.ah, %i.h
  %i.aj = fsub float %i.ae, %i.ag
  %i.ak = fmul float %i.aj, %i.h
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ak, ptr %i.al, align 4, !tbaa !109
  store float %i.ai, ptr %2, align 4, !tbaa !109
  br label %bb.ac

bb.r:                                             ; preds = %bb.o
  %i.am = and i32 %i.b, 1
  %.not239 = icmp eq i32 %i.am, 0
  br i1 %.not239, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds i8, ptr %.0, i64 -4 ; 3 uses
  %i.ao = load float, ptr %.0, align 4, !tbaa !109
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !109
  %i.aq = add nsw i32 %i.b, 1                     ; 2 uses
  %i.ar = ashr exact i32 %i.aq, 1                 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !139 ; 6 uses
  %i.av = sext i32 %i.b to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ar to i64
  %i.aw = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.aq, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aw, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.t ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !42
  %i.ba = sub nsw i64 %i.av, %indvars.iv
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !42
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = sext i32 %i.bc to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bh
  %i.bj = load <2 x float>, ptr %i.bd, align 4, !tbaa !109 ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  store float %i.bk, ptr %i.bf, align 4, !tbaa !136
  %i.bl = extractelement <2 x float> %i.bj, i64 1
  %i.bm = fneg float %i.bl
  store float %i.bm, ptr %i.bg, align 4, !tbaa !137
  store <2 x float> %i.bj, ptr %i.bi, align 4, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42
  %i.bp = sub nsw i64 %i.av, %indvars.iv.next
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.bt = sext i32 %i.bo to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = sext i32 %i.br to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bw
  %i.by = load <2 x float>, ptr %i.bs, align 4, !tbaa !109 ; 3 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0
  store float %i.bz, ptr %i.bu, align 4, !tbaa !136
  %i.ca = extractelement <2 x float> %i.by, i64 1
  %i.cb = fneg float %i.ca
  store float %i.cb, ptr %i.bv, align 4, !tbaa !137
  store <2 x float> %i.by, ptr %i.bx, align 4, !tbaa !109
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t, !llvm.loop !504

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod308 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.epil.init
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !42
  %i.ce = sub nsw i64 %i.av, %indvars.iv.epil.init
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !42
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.epil.init
  %i.ci = sext i32 %i.cd to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = sext i32 %i.cg to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cl
  %i.cn = load <2 x float>, ptr %i.ch, align 4, !tbaa !109 ; 3 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  store float %i.co, ptr %i.cj, align 4, !tbaa !136
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  %i.cq = fneg float %i.cp
  store float %i.cq, ptr %i.ck, align 4, !tbaa !137
  store <2 x float> %i.cn, ptr %i.cm, align 4, !tbaa !109
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !148
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 50
  store i8 0, ptr %i.cr, align 2, !tbaa !146
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 0, ptr %i.cs, align 8, !tbaa !141
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 49
  store i8 1, ptr %i.ct, align 1, !tbaa !144
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 1.000000e+00, ptr %i.cu, align 8, !tbaa !143
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 %i.b, ptr %i.cv, align 4, !tbaa !140
  call fastcc void @_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_(ptr noundef nonnull align 8 dereferenceable(65) %7, ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.cw = load float, ptr %2, align 4, !tbaa !109
  %i.cx = fmul float %i.cw, %i.h
  store float %i.cx, ptr %2, align 4, !tbaa !109
  %i.cy = icmp sgt i32 %i.b, 1
  br i1 %i.cy, label %.lr.ph248.preheader, label %._crit_edge249

.lr.ph248.preheader:                              ; preds = %._crit_edge
  %i.cz = zext nneg i32 %i.b to i64               ; 2 uses
  %i.da = add nsw i64 %i.cz, -2                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %.lr.ph248.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph248.preheader
  %i.db = lshr i64 %i.da, 1
  %9 = add nuw i64 %i.db, 1
  %i.dc = and i64 %i.da, 2
  %.not304 = icmp eq i64 %i.dc, 0
  %.neg305 = select i1 %.not304, i64 -1, i64 -2
  %n.vec = add i64 %.neg305, %9                   ; 2 uses
  %i.dd = shl i64 %n.vec, 1
  %i.de = or disjoint i64 %i.dd, 1
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.h, i64 0
  %i.df = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = shl nuw i64 %index, 1
  %i.dh = or disjoint i64 %i.dg, 1                ; 2 uses
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = shl i64 %index, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dj ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !109
  %i.do = load float, ptr %i.dm, align 4, !tbaa !109
  %i.dp = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.do, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dt = load float, ptr %i.dr, align 4, !tbaa !109
  %i.du = load float, ptr %i.ds, align 4, !tbaa !109
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.du, i64 1
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  %i.dy = shufflevector <2 x float> %i.dq, <2 x float> %i.dw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = fmul <4 x float> %i.dy, %i.df
  store <4 x float> %interleaved.vec, ptr %i.dx, align 4, !tbaa !109
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %.lr.ph248.preheader307, label %vector.body, !llvm.loop !505

.lr.ph248.preheader307:                           ; preds = %vector.body, %.lr.ph248.preheader
  %indvars.iv266.ph = phi i64 [ 1, %.lr.ph248.preheader ], [ %i.de, %vector.body ]
  %i.ea = insertelement <2 x float> poison, float %i.h, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader307, %.lr.ph248
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph248 ], [ %indvars.iv266.ph, %.lr.ph248.preheader307 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv266, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !109
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !109
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv266
  %i.eh = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ef, i64 1
  %i.ej = fmul <2 x float> %i.ei, %i.eb
  store <2 x float> %i.ej, ptr %i.eg, align 4, !tbaa !109
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 2 ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv.next267, %i.cz
  br i1 %i.ek, label %.lr.ph248, label %._crit_edge249, !llvm.loop !506

._crit_edge249:                                   ; preds = %.lr.ph248, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ac

bb.u:                                             ; preds = %bb.r
  %i.el = icmp ne ptr %.0, %2                     ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !138
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !109 ; 2 uses
  %i.eq = load float, ptr %.0, align 4, !tbaa !109 ; 2 uses
  %i.er = sext i32 %i.b to i64                    ; 4 uses
  %i.es = getelementptr [4 x i8], ptr %.0, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !109 ; 2 uses
  %i.ev = fadd float %i.eq, %i.eu
  %i.ew = fsub float %i.eu, %i.eq
  store float %i.ev, ptr %2, align 4, !tbaa !109
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ew, ptr %i.ex, align 4, !tbaa !109
  %i.ey = ashr exact i32 %i.b, 1                  ; 5 uses
  %i.ez = icmp sgt i32 %i.ey, 2
  br i1 %i.ez, label %.lr.ph256, label %._crit_edge257

.lr.ph256:                                        ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fb = zext nneg i32 %i.ey to i64              ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph256, %bb.y
  %indvars.iv269 = phi i64 [ 2, %.lr.ph256 ], [ %indvars.iv.next270, %bb.y ] ; 6 uses
  %.pn241253 = phi ptr [ %i.en, %.lr.ph256 ], [ %.0217254, %bb.y ] ; 2 uses
  %.0222252 = phi float [ %i.ep, %.lr.ph256 ], [ %i.gb, %bb.y ]
  %.0217254 = getelementptr inbounds nuw i8, ptr %.pn241253, i64 8 ; 2 uses
  %i.fc = sub nsw i64 %i.er, %indvars.iv269       ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %.0, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv269
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !109
  %i.fh = load float, ptr %.0217254, align 4, !tbaa !136
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn241253, i64 12
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !137 ; 2 uses
  %i.fk = fneg float %i.fj
  %i.fl = load <2 x float>, ptr %i.fe, align 4, !tbaa !109 ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %.0222252, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.fg, i64 1 ; 2 uses
  %i.fo = fadd <2 x float> %i.fn, %i.fl           ; 2 uses
  %i.fp = fsub <2 x float> %i.fn, %i.fl           ; 2 uses
  %i.fq = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.fr = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fj, i64 1
  %i.fv = fmul <2 x float> %i.fs, %i.fu
  %i.fw = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fx, <2 x float> %i.fv) ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv269
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !109 ; 2 uses
  %i.gc = fneg <2 x float> %i.fq
  %i.gd = shufflevector <2 x float> %i.fq, <2 x float> %i.gc, <2 x i32> <i32 0, i32 3>
  %i.ge = fsub <2 x float> %i.gd, %i.fy           ; 2 uses
  %i.gf = fadd <2 x float> %i.fq, %i.fy
  %i.gg = fsub <2 x float> %i.fq, %i.fy
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> %i.gg, <2 x i32> <i32 0, i32 3>
  br i1 %i.el, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv269
  store <2 x float> %i.ge, ptr %i.gi, align 4, !tbaa !109
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.gj = lshr exact i64 %indvars.iv269, 1        ; 2 uses
  %i.gk = load ptr, ptr %i.fa, align 8, !tbaa !139 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !42
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gn
  store <2 x float> %i.ge, ptr %i.go, align 4, !tbaa !109
  %i.gp = sub nuw nsw i64 %i.fb, %i.gj
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !42
  %i.gs = sext i32 %i.gr to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink286 = phi i64 [ %i.gs, %bb.x ], [ %i.fc, %bb.w ]
  %i.gt = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink286
  store <2 x float> %i.gh, ptr %i.gt, align 4, !tbaa !109
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 2 ; 3 uses
  %i.gu = icmp samesign ult i64 %indvars.iv.next270, %i.fb
  br i1 %i.gu, label %bb.v, label %._crit_edge257.loopexit, !llvm.loop !507

._crit_edge257.loopexit:                          ; preds = %bb.y
  %i.gv = trunc nuw nsw i64 %indvars.iv.next270 to i32
  br label %._crit_edge257

._crit_edge257:                                   ; preds = %._crit_edge257.loopexit, %bb.u
  %.2226.lcssa = phi i32 [ 2, %bb.u ], [ %i.gv, %._crit_edge257.loopexit ]
  %.0222.lcssa = phi float [ %i.ep, %bb.u ], [ %i.gb, %._crit_edge257.loopexit ]
  %.not240 = icmp sgt i32 %.2226.lcssa, %i.ey
  br i1 %.not240, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge257
  %i.gw = sext i32 %i.ey to i64                   ; 3 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !109
  %i.gz = insertelement <2 x float> poison, float %.0222.lcssa, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gy, i64 1
  %i.hb = fmul <2 x float> %i.ha, splat (float 2.000000e+00)
  br i1 %i.el, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !139
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.gw
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !42
  %i.hg = shl nsw i32 %i.hf, 1
  %i.hh = sext i32 %i.hg to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.aa
  %.sink288 = phi i64 [ %i.hh, %bb.aa ], [ %i.gw, %bb.z ]
  %i.hi = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink288
  store <2 x float> %i.hb, ptr %i.hi, align 4, !tbaa !109
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %._crit_edge257
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !145 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !42
  %i.hm = ashr i32 %i.hl, 1                       ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !148
  %i.hn = icmp eq i32 %i.hm, 1                    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !145
  %i.hq = zext i1 %i.hn to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hq
  store ptr %i.hr, ptr %i.ho, align 8, !tbaa !145
  %.neg = sext i1 %i.hn to i32
  %i.hs = load i32, ptr %8, align 8, !tbaa !22
end_hunk_0
