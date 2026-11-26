Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_ConvexVolume?download=true
inline.NumInlined: 110
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN16ConvexVolumeTool7onClickEPKfS1_b:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = fsub float %i.bu, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !46
  %i.cc = fsub float %i.bz, %i.cb                 ; 2 uses
  %i.cd = fmul float %i.bx, %i.bx
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.ce)
  %i.cg = fcmp olt float %i.cf, f0x3D23D70B
  br i1 %i.cg, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !697 ; 6 uses
  %i.cj = icmp sgt i32 %i.ci, 2
  br i1 %i.cj, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ci to i64   ; 5 uses
  %i.cl = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.o
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.p ]
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !698
  %i.cq = mul nsw i32 %i.cp, 3
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cr ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !46
  store float %i.ct, ptr %i.cn, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store float %i.cv, ptr %i.cw, align 4, !tbaa !46
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.cy, ptr %i.cz, align 8, !tbaa !46
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.1 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !698
  %i.dd = mul nsw i32 %i.dc, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.de ; 3 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !46
  store float %i.dg, ptr %i.da, align 4, !tbaa !46
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store float %i.di, ptr %i.dj, align 8, !tbaa !46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !46
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store float %i.dl, ptr %i.dm, align 4, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.unr-lcssa, label %bb.p, !llvm.loop !706

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.unr-lcssa, %bb.o
  %indvars.iv.epil.init = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.1, %.lr.ph.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod130 = trunc i32 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %.idx.epil = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.epil ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.epil.init
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !698
  %i.dq = mul nsw i32 %i.dp, 3
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dr ; 3 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !46
  store float %i.dt, ptr %i.dn, align 4, !tbaa !46
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !46
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store float %i.dv, ptr %i.dw, align 4, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !46
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.unr-lcssa, %.epil.preheader
  %xtraiter131 = and i64 %wide.trip.count, 1
  %i.ea = icmp eq i64 %i.cl, 0
  br i1 %i.ea, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter135 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv89.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next90.1, %._crit_edge.unr-lcssa ]
  %.04379.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %i.ez, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i32 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %.idx124.epil = mul nuw nsw i64 %indvars.iv89.epil.init, 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx124.epil
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !46 ; 2 uses
  %i.ee = fcmp olt float %.04379.epil.init, %i.ed
  %i.ef = select i1 %i.ee, float %.04379.epil.init, float %i.ed
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa129 = phi float [ %i.ez, %._crit_edge.unr-lcssa ], [ %i.ef, %.lr.ph.epil.preheader ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !699
  %i.ei = fsub float %.lcssa129, %i.eh            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !700
  %i.el = fadd float %i.ei, %i.ek                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.en = load float, ptr %i.em, align 4, !tbaa !732 ; 2 uses
  %i.eo = fcmp ogt float %i.en, f0x3C23D70A
  br i1 %i.eo, label %bb.q, label %bb.t

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv89 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next90.1, %.lr.ph ] ; 3 uses
  %.04379 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %i.ez, %.lr.ph ] ; 2 uses
  %niter136 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter136.next.1, %.lr.ph ]
  %.idx124 = mul nuw nsw i64 %indvars.iv89, 12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx124
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !46 ; 2 uses
  %i.es = fcmp olt float %.04379, %i.er
  %i.et = select i1 %i.es, float %.04379, float %i.er ; 2 uses
  %i.eu = mul nuw i64 %indvars.iv89, 12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !46 ; 2 uses
  %i.ey = fcmp olt float %i.et, %i.ex
  %i.ez = select i1 %i.ey, float %i.et, float %i.ex ; 3 uses
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %niter136.next.1 = add nuw nsw i64 %niter136, 2 ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !707

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.fa = call noundef i32 @_Z12rcOffsetPolyPKfifPfi(ptr noundef nonnull %i.a, i32 noundef %i.ci, float noundef %i.en, ptr noundef nonnull %i.b, i32 noundef 24) #10 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !45
  %i.fe = trunc i32 %i.fd to i8
  call void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr noundef nonnull align 8 dereferenceable(448) %i.f, ptr noundef nonnull %i.b, i32 noundef %i.fa, float noundef %i.ei, float noundef %i.el, i8 noundef zeroext %i.fe) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !45
  %i.fh = trunc i32 %i.fg to i8
  call void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr noundef nonnull align 8 dereferenceable(448) %i.f, ptr noundef nonnull %i.a, i32 noundef %i.ci, float noundef %i.ei, float noundef %i.el, i8 noundef zeroext %i.fh) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  %i.fi = load ptr, ptr %0, align 8, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(112) %0) #10, !call_target !53
  br label %._crit_edge85.thread

bb.w:                                             ; preds = %bb.m, %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !701 ; 2 uses
  %.not.i53 = icmp eq ptr %i.be, %i.fm
  br i1 %.not.i53, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = load float, ptr %2, align 4, !tbaa !46
  store float %i.fn, ptr %i.be, align 4, !tbaa !46
  %i.fo = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store ptr %i.fo, ptr %i.bd, align 8, !tbaa !702
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

bb.y:                                             ; preds = %bb.w
  %i.fp = ptrtoint ptr %i.be to i64
  %i.fq = ptrtoint ptr %i.bc to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 6 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775804
  br i1 %i.fs, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.ft = ashr exact i64 %i.fr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fu, i64 2305843009213693951)
  %i.fx = select i1 %i.fv, i64 2305843009213693951, i64 %i.fw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fy = shl nuw nsw i64 %i.fx, 2
  %i.fz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #12 ; 4 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %i.fr ; 2 uses
  %i.gb = load float, ptr %2, align 4, !tbaa !46
  store float %i.gb, ptr %i.ga, align 4, !tbaa !46
  %i.gc = icmp sgt i64 %i.fr, 0
  br i1 %i.gc, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fz, ptr align 4 %i.bc, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.fr) #13
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.fz, ptr %i.bb, align 8, !tbaa !703
  store ptr %i.gd, ptr %i.bd, align 8, !tbaa !702
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fx ; 2 uses
  store ptr %i.ge, ptr %i.fl, align 8, !tbaa !701
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.gf = phi ptr [ %i.fm, %bb.x ], [ %i.ge, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.gg = phi ptr [ %i.fo, %bb.x ], [ %i.gd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i54, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !46
  store float %i.gi, ptr %i.gg, align 4, !tbaa !46
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  store ptr %i.gj, ptr %i.bd, align 8, !tbaa !702
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  %i.gk = load ptr, ptr %i.bb, align 8, !tbaa !703 ; 4 uses
  %i.gl = ptrtoint ptr %i.gf to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775804
  br i1 %i.go, label %bb.ae, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55: ; preds = %bb.ad
  %i.gp = ashr exact i64 %i.gn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i56, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 2305843009213693951)
  %i.gt = select i1 %i.gr, i64 2305843009213693951, i64 %i.gs ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i57)
  %i.gu = shl nuw nsw i64 %i.gt, 2
  %i.gv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #12 ; 4 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gn ; 2 uses
  %i.gx = load float, ptr %i.gh, align 4, !tbaa !46
  store float %i.gx, ptr %i.gw, align 4, !tbaa !46
  %i.gy = icmp sgt i64 %i.gn, 0
  br i1 %i.gy, label %bb.af, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58

bb.af:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr align 4 %i.gk, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58: ; preds = %bb.af, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i55
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 2 uses
  %.not.i17.i.i59 = icmp eq ptr %i.gk, null
  br i1 %.not.i17.i.i59, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gn) #13
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60: ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i58
  store ptr %i.gv, ptr %i.bb, align 8, !tbaa !703
  store ptr %i.gz, ptr %i.bd, align 8, !tbaa !702
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gt ; 2 uses
  store ptr %i.ha, ptr %i.fl, align 8, !tbaa !701
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61: ; preds = %bb.ac, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60
  %i.hb = phi ptr [ %i.gf, %bb.ac ], [ %i.ha, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60 ] ; 2 uses
  %i.hc = phi ptr [ %i.gj, %bb.ac ], [ %i.gz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i60 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not.i62 = icmp eq ptr %i.hc, %i.hb
  br i1 %.not.i62, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61
  %i.he = load float, ptr %i.hd, align 4, !tbaa !46
  store float %i.he, ptr %i.hc, align 4, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  store ptr %i.hf, ptr %i.bd, align 8, !tbaa !702
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !703
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit69

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit61
  %i.hg = load ptr, ptr %i.bb, align 8, !tbaa !703 ; 4 uses
  %i.hh = ptrtoint ptr %i.hb to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 6 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775804
  br i1 %i.hk, label %bb.aj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i63

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #11
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i63: ; preds = %bb.ai
  %i.hl = ashr exact i64 %i.hj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i64 = tail call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i.i64, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = tail call i64 @llvm.umin.i64(i64 %i.hm, i64 2305843009213693951)
  %i.hp = select i1 %i.hn, i64 2305843009213693951, i64 %i.ho ; 3 uses
  %.not.i.i.i65 = icmp ne i64 %i.hp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i65)
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #12 ; 5 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 %i.hj ; 2 uses
  %i.ht = load float, ptr %i.hd, align 4, !tbaa !46
  store float %i.ht, ptr %i.hs, align 4, !tbaa !46
  %i.hu = icmp sgt i64 %i.hj, 0
  br i1 %i.hu, label %bb.ak, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i66

bb.ak:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i63
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hr, ptr align 4 %i.hg, i64 %i.hj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i66

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i66: ; preds = %bb.ak, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i63
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  %.not.i17.i.i67 = icmp eq ptr %i.hg, null
  br i1 %.not.i17.i.i67, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i68, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i66
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hj) #13
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i68

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i68: ; preds = %bb.al, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i66
  store ptr %i.hr, ptr %i.bb, align 8, !tbaa !703
  store ptr %i.hv, ptr %i.bd, align 8, !tbaa !702
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hp
  store ptr %i.hw, ptr %i.fl, align 8, !tbaa !701
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit69

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit69: ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i68
  %i.hx = phi ptr [ %.pre, %bb.ah ], [ %i.hr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i68 ] ; 6 uses
  %i.hy = phi ptr [ %i.hf, %bb.ah ], [ %i.hv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i68 ]
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = lshr exact i64 %i.ib, 2
  %i.id = trunc i64 %i.ic to i32                  ; 2 uses
  %i.ie = icmp sgt i32 %i.id, 5
  br i1 %i.ie, label %.lr.ph.preheader.i, label %bb.ar

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit69
  %i.if = udiv i32 %i.id, 3
  %wide.trip.count.i70 = zext nneg i32 %i.if to i64 ; 2 uses
  br label %.lr.ph.i71

.lr.ph46.us.i:                                    ; preds = %.lr.ph46.us.i.preheader, %._crit_edge.us.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %._crit_edge.us.i ], [ 0, %.lr.ph46.us.i.preheader ] ; 2 uses
  %.2.us.i = phi i32 [ %.1.us.i, %._crit_edge.us.i ], [ %i.jq, %.lr.ph46.us.i.preheader ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv61.i
  store i32 %.2.us.i, ptr %i.ig, align 4, !tbaa !698
  %i.ih = mul nsw i32 %.2.us.i, 3
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ii ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph46.us.i
  %indvars.iv56.i = phi i64 [ 1, %.lr.ph46.us.i ], [ %indvars.iv.next57.i, %bb.ap ] ; 3 uses
  %.02744.us.i = phi i32 [ 0, %.lr.ph46.us.i ], [ %.1.us.i, %bb.ap ] ; 3 uses
  %i.il = icmp eq i32 %.2.us.i, %.02744.us.i
  br i1 %i.il, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.im = mul nuw nsw i32 %.02744.us.i, 3
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.in ; 2 uses
  %.idx66.i = mul nuw nsw i64 %indvars.iv56.i, 12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx66.i ; 2 uses
  %.val.us.i = load float, ptr %i.ij, align 4, !tbaa !46 ; 2 uses
  %.val32.us.i = load float, ptr %i.ik, align 4, !tbaa !46 ; 2 uses
  %.val33.us.i = load float, ptr %i.io, align 4, !tbaa !46
  %i.iq = getelementptr i8, ptr %i.io, i64 8
  %.val34.us.i = load float, ptr %i.iq, align 4, !tbaa !46
  %.val35.us.i = load float, ptr %i.ip, align 4, !tbaa !46
  %i.ir = getelementptr i8, ptr %i.ip, i64 8
  %.val36.us.i = load float, ptr %i.ir, align 4, !tbaa !46
  %i.is = fsub float %.val33.us.i, %.val.us.i
  %i.it = fsub float %.val34.us.i, %.val32.us.i
  %i.iu = fsub float %.val35.us.i, %.val.us.i
  %i.iv = fsub float %.val36.us.i, %.val32.us.i
  %i.iw = fneg float %i.iu
  %i.ix = fmul float %i.it, %i.iw
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.is, float %i.iv, float %i.ix)
  %i.iz = fcmp olt float %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ja = trunc nuw nsw i64 %indvars.iv56.i to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1.us.i = phi i32 [ %i.ja, %bb.ao ], [ %.02744.us.i, %bb.an ] ; 3 uses
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count.i70
  br i1 %exitcond60.not.i, label %._crit_edge.us.i, label %bb.am, !llvm.loop !708

._crit_edge.us.i:                                 ; preds = %bb.ap
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %i.jb = load i32, ptr %i.jr, align 8, !tbaa !698
  %.not.us.i = icmp eq i32 %.1.us.i, %i.jb
  br i1 %.not.us.i, label %_ZN12_GLOBAL__N_110convexhullEPKfiPi.exit, label %.lr.ph46.us.i, !llvm.loop !709

.lr.ph.i71:                                       ; preds = %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i, %.lr.ph.preheader.i
  %indvars.iv.i72 = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i74, %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i ] ; 3 uses
  %.02942.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.jq, %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i ] ; 3 uses
  %.idx.i73 = mul nuw nsw i64 %indvars.iv.i72, 12
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx.i73 ; 2 uses
  %i.jd = mul nuw nsw i32 %.02942.i, 3
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.je ; 2 uses
  %i.jg = load float, ptr %i.jc, align 4, !tbaa !46 ; 2 uses
  %i.jh = load float, ptr %i.jf, align 4, !tbaa !46 ; 2 uses
  %i.ji = fcmp olt float %i.jg, %i.jh
  br i1 %i.ji, label %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i71
  %i.jj = fcmp ogt float %i.jg, %i.jh
  br i1 %i.jj, label %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i, label %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.i

_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.i:   ; preds = %bb.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !46
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !46
  %i.jo = fcmp olt float %i.jl, %i.jn
  %cond.fr.i = freeze i1 %i.jo
  br i1 %cond.fr.i, label %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread.i, label %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i

_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.i, %.lr.ph.i71
  %i.jp = trunc nuw nsw i64 %indvars.iv.i72 to i32
  br label %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i

_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i: ; preds = %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread.i, %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.i, %bb.aq
  %i.jq = phi i32 [ %i.jp, %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread.i ], [ %.02942.i, %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.i ], [ %.02942.i, %bb.aq ] ; 2 uses
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i70
  br i1 %exitcond.not.i75, label %.lr.ph46.us.i.preheader, label %.lr.ph.i71, !llvm.loop !710

.lr.ph46.us.i.preheader:                          ; preds = %_ZN12_GLOBAL__N_113comparePointsEPKfS1_.exit.thread39.i
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.lr.ph46.us.i

_ZN12_GLOBAL__N_110convexhullEPKfiPi.exit:        ; preds = %._crit_edge.us.i
  %i.js = trunc nuw i64 %indvars.iv.next62.i to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.js, ptr %i.jt, align 8, !tbaa !697
  br label %._crit_edge85.thread

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit69
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ju, align 8, !tbaa !697
  br label %._crit_edge85.thread

._crit_edge85.thread:                             ; preds = %bb.d, %bb.b, %._crit_edge85, %bb.k, %bb.v, %bb.ar, %_ZN12_GLOBAL__N_110convexhullEPKfiPi.exit, %bb.a
  ret void
}

declare void @_ZN9InputGeom18deleteConvexVolumeEi(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z12rcOffsetPolyPKfifPfi(ptr noundef, i32 noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16ConvexVolumeTool6renderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !694
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !703  ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = icmp sgt i32 %i.l, 2
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = udiv i32 %i.l, 3                         ; 2 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %.off = add nsw i32 %i.l, -3
  %i.o = icmp ult i32 %.off, 3
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 1073741822
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.053.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod72 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %.idx.epil = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.epil
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !46 ; 2 uses
  %i.s = fcmp olt float %.053.epil.init, %i.r
  %i.t = select i1 %i.s, float %.053.epil.init, float %i.r
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ], [ %i.t, %.lr.ph.epil.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load float, ptr %i.u, align 4, !tbaa !699
  %i.w = fsub float %.0.lcssa, %i.v               ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load float, ptr %i.x, align 8, !tbaa !700
  %i.z = fadd float %i.w, %i.y                    ; 3 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
end_hunk_0
