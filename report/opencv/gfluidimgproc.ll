Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidimgproc?download=true
inline.NumInlined: 3372
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE:bb.a
  %i.cm = ashr exact i32 %sext, 16                ; 2 uses
  %i.cn = add nsw i32 %i.cm, 1
  %.not.i = icmp ne i32 %i.cn, %i.cl              ; 2 uses
  %i.co = icmp sle i32 %i.bl, %i.cm               ; 2 uses
  %spec.select = select i1 %i.co, i16 0, i16 32767
  %.059.i = select i1 %.not.i, i16 %spec.select, i16 %.sroa.016.0.extract.trunc.i ; 2 uses
  %narrow = select i1 %.not.i, i1 %i.co, i1 false
  %spec.select118 = sext i1 %narrow to i16
  %.058.i = add i16 %.sroa.518.0.extract.trunc.i, %spec.select118
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv141
  store i16 %.059.i, ptr %i.cp, align 2, !tbaa !207
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv141
  store i16 %.058.i, ptr %i.cq, align 2, !tbaa !207
  %i.cr = shl i64 %indvars.iv141, 2
  %i.cs = and i64 %i.cr, 4294967292
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cs
  %i.cu = insertelement <4 x i16> poison, i16 %.059.i, i64 0
  %i.cv = shufflevector <4 x i16> %i.cu, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.cv, ptr %i.ct, align 2, !tbaa !207
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.preheader, label %bb.w, !llvm.loop !222

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.lr.ph129
  %indvars.iv146 = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvars.iv.next147, %.lr.ph129 ] ; 5 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.cx = uitofp nneg i32 %i.cw to double
  %i.cy = fadd double %i.cx, 5.000000e-01
  %i.cz = call double @llvm.fmuladd.f64(double %i.cy, double %i.ax, double -5.000000e-01)
  %i.da = fptrunc double %i.cz to float           ; 2 uses
  %i.db = call float @llvm.floor.f32(float %i.da)
  %i.dc = fptosi float %i.db to i32               ; 4 uses
  %i.dd = sitofp i32 %i.dc to float
  %i.de = fsub float %i.da, %i.dd                 ; 2 uses
  %.sroa.speculated.i55 = call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %i.df = fcmp une float %i.de, 0.000000e+00
  %i.dg = add nsw i32 %i.dc, 1
  %.not.i56 = icmp slt i32 %i.dg, %i.at
  %or.cond.i57 = select i1 %i.df, i1 %.not.i56, i1 false
  %i.dh = zext i1 %or.cond.i57 to i32
  %i.di = add nsw i32 %i.dh, %i.dc
  %i.dj = fsub float 1.000000e+00, %i.de
  %i.dk = fmul float %i.dj, 3.276800e+04
  %i.dl = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dl)
  %i.dn = call i32 @llvm.smax.i32(i32 %i.dm, i32 -32768)
  %i.do = call i32 @llvm.smin.i32(i32 %i.dn, i32 32767)
  %.sroa.0.0.extract.trunc.i = trunc nsw i32 %i.do to i16
  %.sroa.51.0.extract.trunc.i = trunc i32 %.sroa.speculated.i55 to i16
  %.sroa.6.0.extract.trunc.i = trunc i32 %i.di to i16
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv146
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.dp, align 2, !tbaa !207
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv146
  store i16 %.sroa.51.0.extract.trunc.i, ptr %i.dq, align 2, !tbaa !207
  %gep163 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep162, i64 %indvars.iv146
  store i16 %.sroa.6.0.extract.trunc.i, ptr %gep163, align 2, !tbaa !207
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %i.bn
  br i1 %exitcond150.not, label %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph129, !llvm.loop !223

bb.x:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %i.bo, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !146
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZN2cv8GMatDescD2Ev.exit85, %_ZN2cv8GMatDescD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %_ZN2cv8GMatDescD2Ev.exit ], [ %.pn.pn.pn.pn.pn.i43, %_ZN2cv8GMatDescD2Ev.exit85 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %common.resume

_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit: ; preds = %.lr.ph129, %.preheader
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dx = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i67, label %_ZN2cv8GMatDescD2Ev.exit68, label %bb.z

bb.z:                                             ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !146
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #27
  br label %_ZN2cv8GMatDescD2Ev.exit68

_ZN2cv8GMatDescD2Ev.exit68:                       ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aq

bb.aa:                                            ; preds = %bb.p
  %i.ed = icmp eq i32 %i.a, 5
  %i.ee = icmp eq i32 %i.d, 1
  %or.cond119 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond119, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.035.0.copyload.i42 = load i32, ptr %i.ef, align 8, !tbaa !49
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.eg = mul i32 %.024, 24
  %i.eh = shl i32 %.sroa.035.0.copyload.i42, 4
  %reass.mul.i69 = mul i32 %.0, 12
  %i.ei = add i32 %reass.mul.i69, %i.eg
  %i.ej = add i32 %i.ei, %i.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.ek, align 8, !tbaa !219
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.em, align 4, !tbaa !107
  store i32 0, ptr %6, align 8, !tbaa !99
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0116.0.insert.ext = zext i32 %i.ej to i64
  %.sroa.0116.0.insert.insert = or disjoint i64 %.sroa.0116.0.insert.ext, 4294967296
  store i64 %.sroa.0116.0.insert.insert, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.eo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ep = sitofp i32 %.024 to double
  %i.eq = sitofp i32 %.0 to double
  %i.er = load <2 x i32>, ptr %i.ef, align 8, !tbaa !49
  %i.es = sitofp <2 x i32> %i.er to <2 x double>  ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = fdiv double %i.ep, %i.et
  %i.ev = fdiv double 1.000000e+00, %i.eu
  %i.ew = extractelement <2 x double> %i.es, i64 1
  %i.ex = fdiv double %i.eq, %i.ew
  %i.ey = fdiv double 1.000000e+00, %i.ex         ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !197
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !124
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !123 ; 3 uses
  %i.fd = sext i32 %.024 to i64                   ; 3 uses
  %i.fe = getelementptr [4 x i8], ptr %i.fc, i64 %i.fd ; 2 uses
  %i.ff = shl i32 %.024, 2
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.fe, i64 %i.fg ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.fd ; 3 uses
  %i.fj = sext i32 %.0 to i64                     ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.fi, i64 %i.fj ; 4 uses
  %i.fl = icmp sgt i32 %.024, 0
  br i1 %i.fl, label %.lr.ph.preheader, label %.preheader120

.lr.ph.preheader:                                 ; preds = %bb.ad
  %wide.trip.count = zext nneg i32 %.024 to i64
  br label %.lr.ph

.preheader120:                                    ; preds = %bb.ai, %bb.ad
  %i.fm = icmp sgt i32 %.0, 0
  br i1 %i.fm, label %.lr.ph124.preheader, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit

.lr.ph124.preheader:                              ; preds = %.preheader120
  %i.fn = zext nneg i32 %.0 to i64                ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fn ; 4 uses
  %min.iters.check = icmp ult i32 %.0, 4
  br i1 %min.iters.check, label %.lr.ph124.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.preheader
  %i.fo = add nsw i64 %i.fd, %i.fn
  %i.fp = shl nsw i64 %i.fo, 3
  %i.fq = add nsw i64 %i.fj, %i.fg
  %i.fr = shl nsw i64 %i.fq, 2
  %i.fs = getelementptr i8, ptr %i.fc, i64 %i.fr
  %scevgep = getelementptr i8, ptr %i.fs, i64 %i.fp
  %scevgep164 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep, %scevgep164
  %bound1 = icmp ult ptr %.sroa.6.0..sroa_idx.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %i.fk, %scevgep164
  %bound1166 = icmp ult ptr %.sroa.6.0..sroa_idx.i, %invariant.gep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  br i1 %conflict.rdx, label %.lr.ph124.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fn, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %16 = load <4 x i32>, ptr %.sroa.6.0..sroa_idx.i, align 4
  %broadcast.splat169 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ft = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.fu = fadd <4 x double> %i.ft, splat (double 5.000000e-01)
  %i.fv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fu, <4 x double> %broadcast.splat, <4 x double> splat (double -5.000000e-01))
  %i.fw = fptrunc <4 x double> %i.fv to <4 x float> ; 2 uses
  %i.fx = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.fw)
  %i.fy = fptosi <4 x float> %i.fx to <4 x i32>   ; 4 uses
  %i.fz = sitofp <4 x i32> %i.fy to <4 x float>
  %i.ga = fsub <4 x float> %i.fw, %i.fz           ; 2 uses
  %i.gb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fy, <4 x i32> zeroinitializer)
  %i.gc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ga)
  %i.gd = fcmp ugt <4 x float> %i.gc, splat (float f0x34000000)
  %i.ge = add nsw <4 x i32> %i.fy, splat (i32 1)
  %i.gf = icmp slt <4 x i32> %i.ge, %broadcast.splat169
  %i.gg = select <4 x i1> %i.gd, <4 x i1> %i.gf, <4 x i1> zeroinitializer
  %i.gh = zext <4 x i1> %i.gg to <4 x i32>
  %i.gi = add nsw <4 x i32> %i.gh, %i.fy
  %i.gj = fsub <4 x float> splat (float 1.000000e+00), %i.ga
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index
  store <4 x float> %i.gj, ptr %i.gk, align 4, !tbaa !215
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index
  store <4 x i32> %i.gb, ptr %i.gl, align 4, !tbaa !49, !alias.scope !224, !noalias !227
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x i32> %i.gi, ptr %i.gm, align 4, !tbaa !49, !alias.scope !229, !noalias !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fn
  br i1 %cmp.n, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph124.preheader170

.lr.ph124.preheader170:                           ; preds = %vector.memcheck, %.lr.ph124.preheader, %middle.block
  %indvars.iv132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph124

bb.ae:                                            ; preds = %bb.ab
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 5 uses
  %i.gq = load i32, ptr %i.ef, align 8, !tbaa !220 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv to i32
  %i.gs = uitofp nneg i32 %i.gr to double
  %i.gt = fadd double %i.gs, 5.000000e-01
  %i.gu = call double @llvm.fmuladd.f64(double %i.gt, double %i.ev, double -5.000000e-01)
  %i.gv = fptrunc double %i.gu to float           ; 2 uses
  %i.gw = call float @llvm.floor.f32(float %i.gv)
  %i.gx = fptosi float %i.gw to i32               ; 4 uses
  %i.gy = sitofp i32 %i.gx to float
  %i.gz = fsub float %i.gv, %i.gy                 ; 2 uses
  %.sroa.speculated.i70 = call i32 @llvm.smax.i32(i32 %i.gx, i32 0) ; 5 uses
  %i.ha = call noundef float @llvm.fabs.f32(float %i.gz)
  %i.hb = fcmp ugt float %i.ha, f0x34000000
  %i.hc = add nsw i32 %i.gx, 1
  %.not.i71 = icmp slt i32 %i.hc, %i.gq
  %or.cond.i72 = select i1 %i.hb, i1 %.not.i71, i1 false
  %i.hd = zext i1 %or.cond.i72 to i32
  %i.he = add nsw i32 %i.hd, %i.gx
  %i.hf = fsub float 1.000000e+00, %i.gz
  %i.hg = add nuw nsw i32 %.sroa.speculated.i70, 1
  %.not.i48 = icmp eq i32 %i.hg, %i.he
  br i1 %.not.i48, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.hh = add nsw i32 %i.gq, -1
  %i.hi = icmp sgt i32 %i.hh, %.sroa.speculated.i70
  br i1 %i.hi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hj = add nsw i32 %.sroa.speculated.i70, -1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.lr.ph
  %.058.i49 = phi float [ %i.hf, %.lr.ph ], [ 0.000000e+00, %bb.ah ], [ 1.000000e+00, %bb.ag ] ; 2 uses
  %.057.i50 = phi i32 [ %.sroa.speculated.i70, %.lr.ph ], [ %i.hj, %bb.ah ], [ %.sroa.speculated.i70, %bb.ag ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv
  store float %.058.i49, ptr %i.hk, align 4, !tbaa !215
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv
  store i32 %.057.i50, ptr %i.hl, align 4, !tbaa !49
  %i.hm = shl i64 %indvars.iv, 2
  %i.hn = and i64 %i.hm, 4294967292
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hn
  %i.hp = insertelement <4 x float> poison, float %.058.i49, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.hq, ptr %i.ho, align 4, !tbaa !215
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader120, label %.lr.ph, !llvm.loop !234

.lr.ph124:                                        ; preds = %.lr.ph124.preheader170, %.lr.ph124
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph124 ], [ %indvars.iv132.ph, %.lr.ph124.preheader170 ] ; 5 uses
  %i.hr = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !221
  %i.hs = trunc nuw nsw i64 %indvars.iv132 to i32
  %i.ht = uitofp nneg i32 %i.hs to double
  %i.hu = fadd double %i.ht, 5.000000e-01
  %i.hv = call double @llvm.fmuladd.f64(double %i.hu, double %i.ey, double -5.000000e-01)
  %i.hw = fptrunc double %i.hv to float           ; 2 uses
  %i.hx = call float @llvm.floor.f32(float %i.hw)
  %i.hy = fptosi float %i.hx to i32               ; 4 uses
  %i.hz = sitofp i32 %i.hy to float
  %i.ia = fsub float %i.hw, %i.hz                 ; 2 uses
  %.sroa.speculated.i73 = call i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = fcmp ugt float %i.ib, f0x34000000
  %i.id = add nsw i32 %i.hy, 1
  %.not.i74 = icmp slt i32 %i.id, %i.hr
  %or.cond.i75 = select i1 %i.ic, i1 %.not.i74, i1 false
  %i.ie = zext i1 %or.cond.i75 to i32
  %i.if = add nsw i32 %i.ie, %i.hy
  %i.ig = fsub float 1.000000e+00, %i.ia
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv132
  store float %i.ig, ptr %i.ih, align 4, !tbaa !215
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv132
  store i32 %.sroa.speculated.i73, ptr %i.ii, align 4, !tbaa !49
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  store i32 %i.if, ptr %gep, align 4, !tbaa !49
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %i.fn
  br i1 %exitcond136.not, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph124, !llvm.loop !235

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %.pn.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.gp, %bb.af ], [ %i.go, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ij = load ptr, ptr %i.el, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i84, label %_ZN2cv8GMatDescD2Ev.exit85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !146
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.io) #27
  br label %_ZN2cv8GMatDescD2Ev.exit85

_ZN2cv8GMatDescD2Ev.exit85:                       ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit: ; preds = %.lr.ph124, %middle.block, %.preheader120
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ip = load ptr, ptr %i.el, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i86, label %_ZN2cv8GMatDescD2Ev.exit87, label %bb.al

bb.al:                                            ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !146
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.iu) #27
  br label %_ZN2cv8GMatDescD2Ev.exit87

_ZN2cv8GMatDescD2Ev.exit87:                       ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aq

.thread:                                          ; preds = %bb.q, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2219) #29
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %.thread
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ap:                                            ; preds = %bb.am
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ap
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !39
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ao
  %.pn33 = phi { ptr, i32 } [ %i.iv, %bb.ao ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.iw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %common.resume

bb.aq:                                            ; preds = %_ZN2cv8GMatDescD2Ev.exit87, %_ZN2cv8GMatDescD2Ev.exit68
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #19

declare void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6
end_hunk_0
