Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidimgproc?download=true
inline.NumInlined: 3372
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.o = icmp eq i32 %4, 1
  br i1 %i.o, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid12GFluidResize11initScratchERKNS_8GMatDescENS_5Size_IiEEddiRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2193) #29
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.m:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %12, align 8, !tbaa !37    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.m
  %i.u = load i64, ptr %i.s, align 8, !tbaa !39
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.l
  %.pn31 = phi { ptr, i32 } [ %i.p, %bb.l ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.q, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %common.resume

bb.n:                                             ; preds = %bb.h
  %i.w = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  %i.x = icmp eq i64 %.sroa.3.0.extract.shift, 0
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load <2 x i32>, ptr %i.y, align 8, !tbaa !49
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %2, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %3, i64 1
  %i.ad = fmul <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ad)
  %i.af = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.af)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.024 = phi i32 [ %i.ae, %bb.o ], [ %.sroa.0.0.extract.trunc, %bb.n ] ; 12 uses
  %.0 = phi i32 [ %i.ag, %bb.o ], [ %.sroa.3.0.extract.trunc, %bb.n ] ; 11 uses
  br i1 %i.b, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  br i1 %i.e, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.035.0.copyload.i = load i32, ptr %i.ah, align 8, !tbaa !49
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %reass.mul.i = mul i32 %.0, 6
  %reass.add = add i32 %.sroa.035.0.copyload.i, %.024
  %reass.mul = mul i32 %reass.add, 12
  %i.ai = add i32 %reass.mul, %reass.mul.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !219
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !107
  store i32 0, ptr %8, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.0108.0.insert.ext = zext i32 %i.ai to i64
  %.sroa.0108.0.insert.insert = or disjoint i64 %.sroa.0108.0.insert.ext, 4294967296
  store i64 %.sroa.0108.0.insert.insert, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.t unwind label %bb.v       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !220 ; 3 uses
  %i.ap = sitofp i32 %.024 to double
  %i.aq = sitofp i32 %i.ao to double
  %i.ar = fdiv double %i.ap, %i.aq
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = load i32, ptr %.sroa.637.0..sroa_idx.i, align 4, !tbaa !221 ; 2 uses
  %i.au = sitofp i32 %.0 to double
  %i.av = sitofp i32 %i.at to double
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = fdiv double 1.000000e+00, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !197
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !123 ; 2 uses
  %i.bc = sext i32 %.024 to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  %i.be = shl nsw i32 %.024, 2
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  %i.bi = sext i32 %.0 to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  %i.bk = icmp sgt i32 %.024, 0
  br i1 %i.bk, label %.lr.ph127, label %.preheader

.lr.ph127:                                        ; preds = %bb.t
  %i.bl = add nsw i32 %i.ao, -1
  %wide.trip.count144 = zext nneg i32 %.024 to i64
  br label %bb.w

.preheader:                                       ; preds = %bb.w, %bb.t
  %i.bm = icmp sgt i32 %.0, 0
  br i1 %i.bm, label %.lr.ph129.preheader, label %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit

.lr.ph129.preheader:                              ; preds = %.preheader
  %i.bn = zext nneg i32 %.0 to i64                ; 2 uses
  %invariant.gep162 = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bn
  br label %.lr.ph129

bb.u:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #25
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph127, %bb.w
  %indvars.iv141 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next142, %bb.w ] ; 5 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv141 to i32
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = fadd double %i.br, 5.000000e-01
  %i.bt = call double @llvm.fmuladd.f64(double %i.bs, double %i.as, double -5.000000e-01)
  %i.bu = fptrunc double %i.bt to float           ; 2 uses
  %i.bv = call float @llvm.floor.f32(float %i.bu)
  %i.bw = fptosi float %i.bv to i32               ; 4 uses
  %i.bx = sitofp i32 %i.bw to float
  %i.by = fsub float %i.bu, %i.bx                 ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.bw, i32 0) ; 2 uses
  %i.bz = fcmp une float %i.by, 0.000000e+00
  %i.ca = add nsw i32 %i.bw, 1
  %.not.i54 = icmp slt i32 %i.ca, %i.ao
  %or.cond.i = select i1 %i.bz, i1 %.not.i54, i1 false
  %i.cb = zext i1 %or.cond.i to i32
  %i.cc = add nsw i32 %i.cb, %i.bw
  %i.cd = fsub float 1.000000e+00, %i.by
  %i.ce = fmul float %i.cd, 3.276800e+04
  %i.cf = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cf)
  %i.ch = call i32 @llvm.smax.i32(i32 %i.cg, i32 -32768)
  %i.ci = call i32 @llvm.smin.i32(i32 %i.ch, i32 32767)
  %i.cj = and i32 %i.cc, 65535
  %.sroa.4.0.insert.ext.i = zext nneg i32 %i.cj to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.016.0.extract.trunc.i = trunc nsw i32 %i.ci to i16
  %.sroa.518.0.extract.trunc.i = trunc i32 %.sroa.speculated.i to i16
  %i.ck = ashr exact i64 %.sroa.4.0.insert.shift.i, 48
  %i.cl = trunc nsw i64 %i.ck to i32
  %sext = shl i32 %.sroa.speculated.i, 16
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
  %i.cr = shl nuw nsw i64 %indvars.iv141, 3
  %16 = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cr
  %i.cs = insertelement <4 x i16> poison, i16 %.059.i, i64 0
  %i.ct = shufflevector <4 x i16> %i.cs, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.ct, ptr %16, align 2, !tbaa !207
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.preheader, label %bb.w, !llvm.loop !222

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.lr.ph129
  %indvars.iv146 = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvars.iv.next147, %.lr.ph129 ] ; 5 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.cv = uitofp nneg i32 %i.cu to double
  %i.cw = fadd double %i.cv, 5.000000e-01
  %i.cx = call double @llvm.fmuladd.f64(double %i.cw, double %i.ax, double -5.000000e-01)
  %i.cy = fptrunc double %i.cx to float           ; 2 uses
  %i.cz = call float @llvm.floor.f32(float %i.cy)
  %i.da = fptosi float %i.cz to i32               ; 4 uses
  %i.db = sitofp i32 %i.da to float
  %i.dc = fsub float %i.cy, %i.db                 ; 2 uses
  %.sroa.speculated.i55 = call i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.dd = fcmp une float %i.dc, 0.000000e+00
  %i.de = add nsw i32 %i.da, 1
  %.not.i56 = icmp slt i32 %i.de, %i.at
  %or.cond.i57 = select i1 %i.dd, i1 %.not.i56, i1 false
  %i.df = zext i1 %or.cond.i57 to i32
  %i.dg = add nsw i32 %i.df, %i.da
  %i.dh = fsub float 1.000000e+00, %i.dc
  %i.di = fmul float %i.dh, 3.276800e+04
  %i.dj = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dj)
  %i.dl = call i32 @llvm.smax.i32(i32 %i.dk, i32 -32768)
  %i.dm = call i32 @llvm.smin.i32(i32 %i.dl, i32 32767)
  %.sroa.0.0.extract.trunc.i = trunc nsw i32 %i.dm to i16
  %.sroa.51.0.extract.trunc.i = trunc i32 %.sroa.speculated.i55 to i16
  %.sroa.6.0.extract.trunc.i = trunc i32 %i.dg to i16
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv146
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.dn, align 2, !tbaa !207
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv146
  store i16 %.sroa.51.0.extract.trunc.i, ptr %i.do, align 2, !tbaa !207
  %gep163 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep162, i64 %indvars.iv146
  store i16 %.sroa.6.0.extract.trunc.i, ptr %gep163, align 2, !tbaa !207
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %i.bn
  br i1 %exitcond150.not, label %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph129, !llvm.loop !223

bb.x:                                             ; preds = %bb.v, %bb.u
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %i.bo, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dp = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !146
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #27
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
  %i.dv = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i67, label %_ZN2cv8GMatDescD2Ev.exit68, label %bb.z

bb.z:                                             ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !146
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #27
  br label %_ZN2cv8GMatDescD2Ev.exit68

_ZN2cv8GMatDescD2Ev.exit68:                       ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIhNS1_6linear6MapperELi3EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aq

bb.aa:                                            ; preds = %bb.p
  %i.eb = icmp eq i32 %i.a, 5
  %i.ec = icmp eq i32 %i.d, 1
  %or.cond119 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond119, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.035.0.copyload.i42 = load i32, ptr %i.ed, align 8, !tbaa !49
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ee = mul i32 %.024, 24
  %i.ef = shl i32 %.sroa.035.0.copyload.i42, 4
  %reass.mul.i69 = mul i32 %.0, 12
  %i.eg = add i32 %reass.mul.i69, %i.ee
  %i.eh = add i32 %i.eg, %i.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.ei, align 8, !tbaa !219
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 1, ptr %i.ek, align 4, !tbaa !107
  store i32 0, ptr %6, align 8, !tbaa !99
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0116.0.insert.ext = zext i32 %i.eh to i64
  %.sroa.0116.0.insert.insert = or disjoint i64 %.sroa.0116.0.insert.ext, 4294967296
  store i64 %.sroa.0116.0.insert.insert, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.em = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.en = sitofp i32 %.024 to double
  %i.eo = sitofp i32 %.0 to double
  %i.ep = load <2 x i32>, ptr %i.ed, align 8, !tbaa !49
  %i.eq = sitofp <2 x i32> %i.ep to <2 x double>  ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = fdiv double %i.en, %i.er
  %i.et = fdiv double 1.000000e+00, %i.es
  %i.eu = extractelement <2 x double> %i.eq, i64 1
  %i.ev = fdiv double %i.eo, %i.eu
  %i.ew = fdiv double 1.000000e+00, %i.ev         ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !197
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !124
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !123 ; 3 uses
  %i.fb = sext i32 %.024 to i64                   ; 3 uses
  %i.fc = getelementptr [4 x i8], ptr %i.fa, i64 %i.fb ; 2 uses
  %i.fd = shl i32 %.024, 2
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fc, i64 %i.fe ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %i.fb ; 3 uses
  %i.fh = sext i32 %.0 to i64                     ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fg, i64 %i.fh ; 4 uses
  %i.fj = icmp sgt i32 %.024, 0
  br i1 %i.fj, label %.lr.ph.preheader, label %.preheader120

.lr.ph.preheader:                                 ; preds = %bb.ad
  %wide.trip.count = zext nneg i32 %.024 to i64
  br label %.lr.ph

.preheader120:                                    ; preds = %bb.ai, %bb.ad
  %i.fk = icmp sgt i32 %.0, 0
  br i1 %i.fk, label %.lr.ph124.preheader, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit

.lr.ph124.preheader:                              ; preds = %.preheader120
  %i.fl = zext nneg i32 %.0 to i64                ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fl ; 4 uses
  %min.iters.check = icmp ult i32 %.0, 4
  br i1 %min.iters.check, label %.lr.ph124.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.preheader
  %i.fm = add nsw i64 %i.fb, %i.fl
  %i.fn = shl nsw i64 %i.fm, 3
  %i.fo = add nsw i64 %i.fh, %i.fe
  %i.fp = shl nsw i64 %i.fo, 2
  %i.fq = getelementptr i8, ptr %i.fa, i64 %i.fp
  %scevgep = getelementptr i8, ptr %i.fq, i64 %i.fn
  %scevgep164 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep, %scevgep164
  %bound1 = icmp ult ptr %.sroa.6.0..sroa_idx.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %i.fi, %scevgep164
  %bound1166 = icmp ult ptr %.sroa.6.0..sroa_idx.i, %invariant.gep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  br i1 %conflict.rdx, label %.lr.ph124.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fl, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ew, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.fr = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !221, !alias.scope !224
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fs = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.ft = fadd <4 x double> %i.fs, splat (double 5.000000e-01)
  %i.fu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ft, <4 x double> %broadcast.splat, <4 x double> splat (double -5.000000e-01))
  %i.fv = fptrunc <4 x double> %i.fu to <4 x float> ; 2 uses
  %i.fw = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.fv)
  %i.fx = fptosi <4 x float> %i.fw to <4 x i32>   ; 4 uses
  %i.fy = sitofp <4 x i32> %i.fx to <4 x float>
  %i.fz = fsub <4 x float> %i.fv, %i.fy           ; 2 uses
  %i.ga = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fx, <4 x i32> zeroinitializer)
  %i.gb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fz)
  %i.gc = fcmp ugt <4 x float> %i.gb, splat (float f0x34000000)
  %i.gd = add nsw <4 x i32> %i.fx, splat (i32 1)
  %i.ge = icmp slt <4 x i32> %i.gd, %broadcast.splat169
  %i.gf = select <4 x i1> %i.gc, <4 x i1> %i.ge, <4 x i1> zeroinitializer
  %i.gg = zext <4 x i1> %i.gf to <4 x i32>
  %i.gh = add nsw <4 x i32> %i.gg, %i.fx
  %i.gi = fsub <4 x float> splat (float 1.000000e+00), %i.fz
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %index
  store <4 x float> %i.gi, ptr %i.gj, align 4, !tbaa !215
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index
  store <4 x i32> %i.ga, ptr %i.gk, align 4, !tbaa !49, !alias.scope !227, !noalias !224
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x i32> %i.gh, ptr %i.gl, align 4, !tbaa !49, !alias.scope !229, !noalias !224
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fl
  br i1 %cmp.n, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph124.preheader170

.lr.ph124.preheader170:                           ; preds = %vector.memcheck, %.lr.ph124.preheader, %middle.block
  %indvars.iv132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph124

bb.ae:                                            ; preds = %bb.ab
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 5 uses
  %i.gp = load i32, ptr %i.ed, align 8, !tbaa !220 ; 2 uses
  %i.gq = trunc nuw nsw i64 %indvars.iv to i32
  %i.gr = uitofp nneg i32 %i.gq to double
  %i.gs = fadd double %i.gr, 5.000000e-01
  %i.gt = call double @llvm.fmuladd.f64(double %i.gs, double %i.et, double -5.000000e-01)
  %i.gu = fptrunc double %i.gt to float           ; 2 uses
  %i.gv = call float @llvm.floor.f32(float %i.gu)
  %i.gw = fptosi float %i.gv to i32               ; 4 uses
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = fsub float %i.gu, %i.gx                 ; 2 uses
  %.sroa.speculated.i70 = call i32 @llvm.smax.i32(i32 %i.gw, i32 0) ; 5 uses
  %i.gz = call noundef float @llvm.fabs.f32(float %i.gy)
  %i.ha = fcmp ugt float %i.gz, f0x34000000
  %i.hb = add nsw i32 %i.gw, 1
  %.not.i71 = icmp slt i32 %i.hb, %i.gp
  %or.cond.i72 = select i1 %i.ha, i1 %.not.i71, i1 false
  %i.hc = zext i1 %or.cond.i72 to i32
  %i.hd = add nsw i32 %i.hc, %i.gw
  %i.he = fsub float 1.000000e+00, %i.gy
  %i.hf = add nuw nsw i32 %.sroa.speculated.i70, 1
  %.not.i48 = icmp eq i32 %i.hf, %i.hd
  br i1 %.not.i48, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.hg = add nsw i32 %i.gp, -1
  %i.hh = icmp sgt i32 %i.hg, %.sroa.speculated.i70
  br i1 %i.hh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hi = add nsw i32 %.sroa.speculated.i70, -1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.lr.ph
  %.058.i49 = phi float [ %i.he, %.lr.ph ], [ 0.000000e+00, %bb.ah ], [ 1.000000e+00, %bb.ag ] ; 2 uses
  %.057.i50 = phi i32 [ %.sroa.speculated.i70, %.lr.ph ], [ %i.hi, %bb.ah ], [ %.sroa.speculated.i70, %bb.ag ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv
  store float %.058.i49, ptr %i.hj, align 4, !tbaa !215
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv
  store i32 %.057.i50, ptr %i.hk, align 4, !tbaa !49
  %i.hl = shl nuw nsw i64 %indvars.iv, 4
  %17 = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.hl
  %i.hm = insertelement <4 x float> poison, float %.058.i49, i64 0
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.hn, ptr %17, align 4, !tbaa !215
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader120, label %.lr.ph, !llvm.loop !234

.lr.ph124:                                        ; preds = %.lr.ph124.preheader170, %.lr.ph124
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph124 ], [ %indvars.iv132.ph, %.lr.ph124.preheader170 ] ; 5 uses
  %i.ho = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !221
  %i.hp = trunc nuw nsw i64 %indvars.iv132 to i32
  %i.hq = uitofp nneg i32 %i.hp to double
  %i.hr = fadd double %i.hq, 5.000000e-01
  %i.hs = call double @llvm.fmuladd.f64(double %i.hr, double %i.ew, double -5.000000e-01)
  %i.ht = fptrunc double %i.hs to float           ; 2 uses
  %i.hu = call float @llvm.floor.f32(float %i.ht)
  %i.hv = fptosi float %i.hu to i32               ; 4 uses
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = fsub float %i.ht, %i.hw                 ; 2 uses
  %.sroa.speculated.i73 = call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hy = call noundef float @llvm.fabs.f32(float %i.hx)
  %i.hz = fcmp ugt float %i.hy, f0x34000000
  %i.ia = add nsw i32 %i.hv, 1
  %.not.i74 = icmp slt i32 %i.ia, %i.ho
  %or.cond.i75 = select i1 %i.hz, i1 %.not.i74, i1 false
  %i.ib = zext i1 %or.cond.i75 to i32
  %i.ic = add nsw i32 %i.ib, %i.hv
  %i.id = fsub float 1.000000e+00, %i.hx
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv132
  store float %i.id, ptr %i.ie, align 4, !tbaa !215
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv132
  store i32 %.sroa.speculated.i73, ptr %i.if, align 4, !tbaa !49
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  store i32 %i.ic, ptr %gep, align 4, !tbaa !49
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %i.fl
  br i1 %exitcond136.not, label %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit, label %.lr.ph124, !llvm.loop !235

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %.pn.pn.pn.pn.pn.i43 = phi { ptr, i32 } [ %i.go, %bb.af ], [ %i.gn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ig = load ptr, ptr %i.ej, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i.i84, label %_ZN2cv8GMatDescD2Ev.exit85, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !146
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #27
  br label %_ZN2cv8GMatDescD2Ev.exit85

_ZN2cv8GMatDescD2Ev.exit85:                       ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume

_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit: ; preds = %.lr.ph124, %middle.block, %.preheader120
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.im = load ptr, ptr %i.ej, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i86, label %_ZN2cv8GMatDescD2Ev.exit87, label %bb.al

bb.al:                                            ; preds = %_ZN2cv4gapi5fluid17initScratchLinearIfNS1_9linear32f6MapperELi1EEEvRKNS_8GMatDescERKNS_5Size_IiEERNS1_6BufferEi.exit
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !146
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #27
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
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.ap:                                            ; preds = %bb.am
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iu = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ap
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !39
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.ao
  %.pn33 = phi { ptr, i32 } [ %i.is, %bb.ao ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.it, %bb.ap ]
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #19

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %i.a, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN2cv4util12bad_any_castE, ptr nonnull @_ZNSt8bad_castD2Ev) #29
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util12bad_any_castD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv4util12bad_any_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi7imgproc7GResizeESt5tupleIJNS_4GMatENS_5Size_IiEEddiEES6_E15getOutMeta_implIJLi0ELi1ELi2ELi3ELi4EEEESt6vectorINS_4util7variantIJNSD_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISL_EERKSN_RKSC_INS_4GArgESaISQ_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %5 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %6 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %7 = alloca %"struct.cv::GMatDesc", align 8     ; 9 uses
  %8 = alloca %"struct.cv::GMatDesc", align 8     ; 6 uses
  %9 = alloca [1 x %"class.cv::util::variant.71"], align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.c = load ptr, ptr %2, align 8, !tbaa !68     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  %.sink79.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sink79.sroa.gep80 = getelementptr inbounds nuw i8, ptr %7, i64 40
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castINS_5Size_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_5Size_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_5Size_IiEEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_5Size_IiEEEE, i64 0) #25 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_5Size_IiEEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.d

end_hunk_0
