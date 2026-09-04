Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/long_range_correction?download=true
inline.NumInlined: 165
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z18ewald_LRcorrectioniRKN3gmx7MpiCommEiifNS_8ArrayRefIKdEE13EwaldGeometryfbfNS3_IKfEES8_bNS3_IKNS_11BasicVectorIfEEEEPA3_S7_SC_NS3_ISA_EEPffSG_:_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit
  %i.v = fptrunc <2 x double> %i.u to <2 x float> ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0   ; 2 uses
  store float %i.w, ptr %i.q, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.y = extractelement <2 x float> %i.v, i64 1   ; 2 uses
  store float %i.y, ptr %i.x, align 4, !tbaa !40
  %i.z = mul nsw i32 %3, %0
  %i.aa = sdiv i32 %i.z, %2                       ; 4 uses
  %i.ab = add nsw i32 %3, 1
  %i.ac = mul nsw i32 %i.ab, %0
  %i.ad = sdiv i32 %i.ac, %2                      ; 4 uses
  %i.ae = fmul float %10, %i.e
  %spec.select = select i1 %9, float %i.ae, float %i.e
  %i.af = fsub float 1.000000e+00, %19            ; 5 uses
  %i.ag = fmul float %i.a, %i.c
  %i.ah = fmul float %i.ag, %spec.select          ; 2 uses
  switch i32 %7, label %bb.d [
    i32 0, label %bb.a
    i32 1, label %.peel.begin
  ]

bb.a:                                             ; preds = %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit
  %i.ai = fcmp une float %8, 0.000000e+00
  br i1 %i.ai, label %.loopexit160.loopexit, label %.thread149

.loopexit160.loopexit:                            ; preds = %bb.a
  %i.aj = tail call float @llvm.fmuladd.f32(float %8, float 2.000000e+00, float %4)
  %i.ak = fmul float %i.aj, %i.ah
  %i.al = fpext float %i.ak to double
  %i.am = fdiv double f0x408B47A8662AAAAF, %i.al
  %i.an = fptrunc double %i.am to float           ; 2 uses
  %i.ao = fmul float %i.an, 2.000000e+00          ; 2 uses
  %i.ap = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ar = fmul <4 x float> %i.aq, %i.m
  br label %.loopexit160

.peel.begin:                                      ; preds = %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit
  %i.as = fpext float %4 to double
  %i.at = fdiv double f0x40615DEF44DEAD3D, %i.as
  %i.au = fptrunc double %i.at to float
  %i.av = fpext float %i.au to double
  %i.aw = fmul double %i.av, f0x401921FB54442D18
  %i.ax = fpext float %i.ah to double
  %i.ay = fdiv double %i.aw, %i.ax
  %i.az = fptrunc double %i.ay to float           ; 3 uses
  %i.ba = fmul float %i.az, 2.000000e+00          ; 3 uses
  %i.bb = fpext float %i.ba to double             ; 2 uses
  %i.bc = load double, ptr %5, align 8, !tbaa !42 ; 2 uses
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp ogt double %i.bd, 1.000000e-04
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.peel.begin
  %i.bf = fmul double %i.bc, %i.bb
  %i.bg = fptrunc double %i.bf to float
  store float %i.bg, ptr %22, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.peel.begin
  br i1 %13, label %.peel.newph, label %.loopexit160

.peel.newph:                                      ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !42 ; 2 uses
  %i.bj = tail call double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp ogt double %i.bj, 1.000000e-04
  %i.bl = fmul double %i.bi, %i.bb
  %i.bm = fptrunc double %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %.promoted = load float, ptr %i.bn, align 1
  %i.bo = select i1 %i.bk, float %i.bm, float %.promoted
  store float %i.bo, ptr %i.bn, align 1
  br label %.loopexit160

bb.d:                                             ; preds = %_ZNK15EwaldBoxZScaler8scaleBoxEPA3_KfPA3_f.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA76_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(76) @.str.2, i8 noundef zeroext 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(40) %26, i32 noundef 144) #14
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.h ], [ %i.bp, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.br = load ptr, ptr %24, align 8, !tbaa !14   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  resume { ptr, i32 } %.pn

.loopexit160:                                     ; preds = %bb.c, %.peel.newph, %.loopexit160.loopexit
  %.pn226 = phi float [ %i.ao, %.loopexit160.loopexit ], [ %i.ba, %.peel.newph ], [ %i.ba, %bb.c ] ; 2 uses
  %.0130 = phi float [ %i.an, %.loopexit160.loopexit ], [ %i.az, %.peel.newph ], [ %i.az, %bb.c ] ; 9 uses
  %i.bw = phi <4 x float> [ %i.ar, %.loopexit160.loopexit ], [ zeroinitializer, %.peel.newph ], [ zeroinitializer, %bb.c ] ; 6 uses
  %.sroa.9.0 = fmul float %.pn226, %i.y
  %.sroa.11.0 = fmul float %.pn226, %i.w          ; 2 uses
  %i.bx = fcmp oeq float %.0130, 0.000000e+00     ; 2 uses
  %or.cond = or i1 %13, %i.bx
  br i1 %or.cond, label %bb.n, label %.preheader158

.preheader158:                                    ; preds = %.loopexit160
  %i.by = icmp slt i32 %i.aa, %i.ad
  br i1 %i.by, label %.preheader157.lr.ph, label %.thread149

.preheader157.lr.ph:                              ; preds = %.preheader158
  %i.bz = load i64, ptr %11, align 8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 6 uses
  %i.cb = load i64, ptr %17, align 8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 6 uses
  %i.cd = load float, ptr %22, align 8, !tbaa !40 ; 5 uses
  %i.ce = fcmp une float %i.cd, 0.000000e+00      ; 4 uses
  %i.cf = load i64, ptr %14, align 8
  %i.cg = inttoptr i64 %i.cf to ptr               ; 6 uses
  %i.ch = sext i32 %i.aa to i64                   ; 8 uses
  %wide.trip.count = sext i32 %i.ad to i64        ; 6 uses
  %i.ci = extractelement <4 x float> %i.bw, i64 0
  %i.cj = fneg float %i.ci                        ; 4 uses
  %i.ck = extractelement <4 x float> %i.bw, i64 1
  %i.cl = fneg float %i.ck                        ; 4 uses
  %i.cm = fneg float %.sroa.11.0                  ; 4 uses
  %i.cn = sub nsw i64 %wide.trip.count, %i.ch     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check, label %.preheader157.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader157.lr.ph
  %i.co = mul nsw i64 %i.ch, 12                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cc, i64 %i.co ; 2 uses
  %i.cp = mul nsw i64 %wide.trip.count, 12        ; 2 uses
  %scevgep234 = getelementptr i8, ptr %i.cc, i64 %i.cp ; 2 uses
  %i.cq = shl nsw i64 %i.ch, 2
  %scevgep235 = getelementptr i8, ptr %i.ca, i64 %i.cq
  %i.cr = shl nsw i64 %wide.trip.count, 2
  %scevgep236 = getelementptr i8, ptr %i.ca, i64 %i.cr
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.co
  %scevgep237 = getelementptr i8, ptr %i.cs, i64 8
  %scevgep238 = getelementptr i8, ptr %i.cg, i64 %i.cp
  %bound0 = icmp ult ptr %scevgep, %scevgep236
  %bound1 = icmp ult ptr %scevgep235, %scevgep234
  %found.conflict = and i1 %bound0, %bound1
  %bound0239 = icmp ult ptr %scevgep, %scevgep238
  %bound1240 = icmp ult ptr %scevgep237, %scevgep234
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx = or i1 %found.conflict, %found.conflict241
  br i1 %conflict.rdx, label %.preheader157.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, -8                      ; 3 uses
  %i.ct = add nsw i64 %n.vec, %i.ch
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <8 x i1> poison, i1 %i.ce, i64 0
  %broadcast.splat243 = shufflevector <8 x i1> %broadcast.splatinsert242, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert244 = insertelement <8 x float> poison, float %i.cj, i64 0
  %broadcast.splat245 = shufflevector <8 x float> %broadcast.splatinsert244, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <8 x float> poison, float %i.cl, i64 0
  %broadcast.splat247 = shufflevector <8 x float> %broadcast.splatinsert246, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert248 = insertelement <8 x float> poison, float %i.cm, i64 0
  %broadcast.splat249 = shufflevector <8 x float> %broadcast.splatinsert248, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert250 = insertelement <8 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat251 = shufflevector <8 x i64> %broadcast.splatinsert250, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat251, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep = getelementptr [4 x i8], ptr %i.ca, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %wide.gep = getelementptr inbounds [12 x i8], ptr %i.cc, <8 x i64> %vec.ind ; 2 uses
  %i.cu = extractelement <8 x ptr> %wide.gep, i64 0 ; 2 uses
  %wide.load = load <8 x float>, ptr %gep, align 4, !tbaa !40, !alias.scope !43 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.cu, align 4, !tbaa !40, !alias.scope !44, !noalias !45 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec252 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec253 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.cv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat245, <8 x float> %wide.load, <8 x float> %strided.vec)
  %i.cw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat247, <8 x float> %wide.load, <8 x float> %strided.vec252)
  %wide.load255 = load <8 x float>, ptr %gep, align 4, !tbaa !40, !alias.scope !43
  %wide.gep256.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %i.cx = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat249, <8 x float> %wide.load255, <8 x float> %strided.vec253) ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cz = shufflevector <8 x float> %i.cx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.cy, <16 x float> %i.cz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.cu, align 4, !tbaa !40, !alias.scope !44, !noalias !45
  %wide.load257 = load <8 x float>, ptr %gep, align 4, !tbaa !40, !alias.scope !43
  %i.da = fmul <8 x float> %broadcast.splat, %wide.load257
  %wide.gep258 = getelementptr inbounds [12 x i8], ptr %i.cg, <8 x i64> %vec.ind
  %wide.gep259 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep258, i64 8
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep259, <8 x i1> %broadcast.splat243, <8 x float> poison), !tbaa !40, !alias.scope !46
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.da, <8 x float> %wide.masked.gather, <8 x float> %i.cx)
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.db, <8 x ptr> align 4 %wide.gep256.a, <8 x i1> %broadcast.splat243), !tbaa !40, !alias.scope !44, !noalias !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %.thread149, label %.preheader157.preheader

.preheader157.preheader:                          ; preds = %vector.memcheck, %.preheader157.lr.ph, %middle.block
  %indvars.iv188.ph = phi i64 [ %i.ch, %vector.memcheck ], [ %i.ch, %.preheader157.lr.ph ], [ %i.ct, %middle.block ] ; 7 uses
  %i.dd = sub nsw i64 %wide.trip.count, %indvars.iv188.ph
  %xtraiter = and i64 %i.dd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader157.prol.loopexit, label %.preheader157.prol

.preheader157.prol:                               ; preds = %.preheader157.preheader
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv188.ph ; 4 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv188.ph ; 4 uses
  %i.dg = load float, ptr %i.de, align 4, !tbaa !40
  %i.dh = load float, ptr %i.df, align 4, !tbaa !40
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.dg, float %i.dh)
  store float %i.di, ptr %i.df, align 4, !tbaa !40
  %i.dj = load float, ptr %i.de, align 4, !tbaa !40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !40
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.dj, float %i.dl)
  store float %i.dm, ptr %i.dk, align 4, !tbaa !40
  %i.dn = load float, ptr %i.de, align 4, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !40
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.dn, float %i.dp) ; 2 uses
  store float %i.dq, ptr %i.do, align 4, !tbaa !40
  br i1 %i.ce, label %bb.j, label %.preheader157.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.preheader157.prol
  %i.dr = load float, ptr %i.de, align 4, !tbaa !40
  %i.ds = fmul float %i.cd, %i.dr
  %i.dt = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv188.ph
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !40
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dv, float %i.dq)
  store float %i.dw, ptr %i.do, align 4, !tbaa !40
  br label %.preheader157.prol.loopexit.unr-lcssa

.preheader157.prol.loopexit.unr-lcssa:            ; preds = %bb.j, %.preheader157.prol
  %indvars.iv.next189.prol = add nsw i64 %indvars.iv188.ph, 1
  br label %.preheader157.prol.loopexit

.preheader157.prol.loopexit:                      ; preds = %.preheader157.prol.loopexit.unr-lcssa, %.preheader157.preheader
  %indvars.iv188.unr = phi i64 [ %indvars.iv188.ph, %.preheader157.preheader ], [ %indvars.iv.next189.prol, %.preheader157.prol.loopexit.unr-lcssa ]
  %i.dx = add nsw i64 %wide.trip.count, -1
  %i.dy = icmp eq i64 %indvars.iv188.ph, %i.dx
  br i1 %i.dy, label %.thread149, label %.preheader157

.preheader157:                                    ; preds = %.preheader157.prol.loopexit, %bb.m
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.1, %bb.m ], [ %indvars.iv188.unr, %.preheader157.prol.loopexit ] ; 5 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv188 ; 4 uses
  %i.ea = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv188 ; 4 uses
  %i.eb = load float, ptr %i.dz, align 4, !tbaa !40
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !40
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.eb, float %i.ec)
  store float %i.ed, ptr %i.ea, align 4, !tbaa !40
  %i.ee = load float, ptr %i.dz, align 4, !tbaa !40
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !40
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ee, float %i.eg)
  store float %i.eh, ptr %i.ef, align 4, !tbaa !40
  %i.ei = load float, ptr %i.dz, align 4, !tbaa !40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !40
  %i.el = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.ei, float %i.ek) ; 2 uses
  store float %i.el, ptr %i.ej, align 4, !tbaa !40
  br i1 %i.ce, label %bb.k, label %.preheader157.1

bb.k:                                             ; preds = %.preheader157
  %i.em = load float, ptr %i.dz, align 4, !tbaa !40
  %i.en = fmul float %i.cd, %i.em
  %i.eo = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv188
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !40
  %i.er = tail call float @llvm.fmuladd.f32(float %i.en, float %i.eq, float %i.el)
  store float %i.er, ptr %i.ej, align 4, !tbaa !40
  br label %.preheader157.1

.preheader157.1:                                  ; preds = %.preheader157, %bb.k
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv.next189 ; 4 uses
  %i.et = getelementptr inbounds [12 x i8], ptr %i.cc, i64 %indvars.iv.next189 ; 4 uses
  %i.eu = load float, ptr %i.es, align 4, !tbaa !40
  %i.ev = load float, ptr %i.et, align 4, !tbaa !40
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.eu, float %i.ev)
  store float %i.ew, ptr %i.et, align 4, !tbaa !40
  %i.ex = load float, ptr %i.es, align 4, !tbaa !40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !40
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ex, float %i.ez)
  store float %i.fa, ptr %i.ey, align 4, !tbaa !40
  %i.fb = load float, ptr %i.es, align 4, !tbaa !40
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !40
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.fb, float %i.fd) ; 2 uses
  store float %i.fe, ptr %i.fc, align 4, !tbaa !40
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader157.1
  %i.ff = load float, ptr %i.es, align 4, !tbaa !40
  %i.fg = fmul float %i.cd, %i.ff
  %i.fh = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %indvars.iv.next189
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !40
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fj, float %i.fe)
  store float %i.fk, ptr %i.fc, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader157.1
  %indvars.iv.next189.1 = add nsw i64 %indvars.iv188, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next189.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.thread149, label %.preheader157, !llvm.loop !26

bb.n:                                             ; preds = %.loopexit160
  br i1 %i.bx, label %.thread149, label %.preheader156

.preheader156:                                    ; preds = %bb.n
  %i.fl = icmp slt i32 %i.aa, %i.ad
  br i1 %i.fl, label %.preheader155.lr.ph, label %.thread149

.preheader155.lr.ph:                              ; preds = %.preheader156
  %i.fm = load i64, ptr %11, align 8
  %i.fn = inttoptr i64 %i.fm to ptr               ; 4 uses
  %i.fo = load i64, ptr %12, align 8
  %i.fp = inttoptr i64 %i.fo to ptr               ; 4 uses
  %i.fq = load i64, ptr %17, align 8
  %i.fr = inttoptr i64 %i.fq to ptr               ; 4 uses
  %i.fs = load float, ptr %22, align 8, !tbaa !40 ; 2 uses
  %i.ft = fcmp une float %i.fs, 0.000000e+00
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.fv = load float, ptr %i.fu, align 4          ; 2 uses
  %i.fw = fcmp une float %i.fv, 0.000000e+00
  %or.cond153 = select i1 %i.ft, i1 true, i1 %i.fw ; 2 uses
  %i.fx = fmul float %i.af, %i.fs                 ; 2 uses
  %i.fy = fmul float %19, %i.fv                   ; 2 uses
  %i.fz = load i64, ptr %14, align 8
  %i.ga = inttoptr i64 %i.fz to ptr               ; 4 uses
  %i.gb = sext i32 %i.aa to i64                   ; 8 uses
  %wide.trip.count198 = sext i32 %i.ad to i64     ; 4 uses
  %i.gc = extractelement <4 x float> %i.bw, i64 0
  %i.gd = fmul float %i.af, %i.gc                 ; 2 uses
  %i.ge = extractelement <4 x float> %i.bw, i64 2
  %i.gf = fmul float %19, %i.ge                   ; 2 uses
  %i.gg = extractelement <4 x float> %i.bw, i64 1
  %i.gh = fmul float %i.af, %i.gg                 ; 2 uses
  %i.gi = extractelement <4 x float> %i.bw, i64 3
  %i.gj = fmul float %19, %i.gi                   ; 2 uses
  %i.gk = fmul float %i.af, %.sroa.11.0           ; 2 uses
  %i.gl = fmul float %19, %.sroa.9.0              ; 2 uses
  %i.gm = sub nsw i64 %wide.trip.count198, %i.gb  ; 3 uses
  %min.iters.check281 = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check281, label %.preheader155.preheader, label %vector.memcheck260

vector.memcheck260:                               ; preds = %.preheader155.lr.ph
  %i.gn = mul nsw i64 %i.gb, 12                   ; 2 uses
  %scevgep261.a = getelementptr i8, ptr %i.fr, i64 %i.gn ; 3 uses
  %i.go = mul nsw i64 %wide.trip.count198, 12     ; 2 uses
  %scevgep262.a = getelementptr i8, ptr %i.fr, i64 %i.go ; 3 uses
  %i.gp = shl nsw i64 %i.gb, 2                    ; 2 uses
  %scevgep263.a = getelementptr i8, ptr %i.fn, i64 %i.gp
  %i.gq = shl nsw i64 %wide.trip.count198, 2      ; 2 uses
  %scevgep264.a = getelementptr i8, ptr %i.fn, i64 %i.gq
  %scevgep265.a = getelementptr i8, ptr %i.fp, i64 %i.gp
  %scevgep266.a = getelementptr i8, ptr %i.fp, i64 %i.gq
  %i.gr = getelementptr i8, ptr %i.ga, i64 %i.gn
  %scevgep267 = getelementptr i8, ptr %i.gr, i64 8
  %scevgep268 = getelementptr i8, ptr %i.ga, i64 %i.go
  %bound0269 = icmp ult ptr %scevgep261.a, %scevgep264.a
  %bound1270 = icmp ult ptr %scevgep263.a, %scevgep262.a
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %scevgep261.a, %scevgep266.a
  %bound1273 = icmp ult ptr %scevgep265.a, %scevgep262.a
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %found.conflict271, %found.conflict274
  %bound0276 = icmp ult ptr %scevgep261.a, %scevgep268
  %bound1277 = icmp ult ptr %scevgep267, %scevgep262.a
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  br i1 %conflict.rdx279, label %.preheader155.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck260
  %n.vec283 = and i64 %i.gm, -8                   ; 3 uses
  %i.gs = add nsw i64 %n.vec283, %i.gb
  %broadcast.splatinsert284.a = insertelement <8 x i1> poison, i1 %or.cond153, i64 0
  %broadcast.splat285.a = shufflevector <8 x i1> %broadcast.splatinsert284.a, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert286.a = insertelement <8 x float> poison, float %i.fx, i64 0
  %broadcast.splat287.a = shufflevector <8 x float> %broadcast.splatinsert286.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert288.a = insertelement <8 x float> poison, float %i.fy, i64 0
  %broadcast.splat289.a = shufflevector <8 x float> %broadcast.splatinsert288.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert290.a = insertelement <8 x float> poison, float %i.gd, i64 0
  %broadcast.splat291.a = shufflevector <8 x float> %broadcast.splatinsert290.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert292.a = insertelement <8 x float> poison, float %i.gf, i64 0
  %broadcast.splat293.a = shufflevector <8 x float> %broadcast.splatinsert292.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert294.a = insertelement <8 x float> poison, float %i.gh, i64 0
  %broadcast.splat295.a = shufflevector <8 x float> %broadcast.splatinsert294.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert296.a = insertelement <8 x float> poison, float %i.gj, i64 0
  %broadcast.splat297.a = shufflevector <8 x float> %broadcast.splatinsert296.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert298.a = insertelement <8 x float> poison, float %i.gk, i64 0
  %broadcast.splat299.a = shufflevector <8 x float> %broadcast.splatinsert298.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert300.a = insertelement <8 x float> poison, float %i.gl, i64 0
  %broadcast.splat301.a = shufflevector <8 x float> %broadcast.splatinsert300.a, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert302 = insertelement <8 x i64> poison, i64 %i.gb, i64 0
  %broadcast.splat303 = shufflevector <8 x i64> %broadcast.splatinsert302, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction304 = add nsw <8 x i64> %broadcast.splat303, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph282
  %index306 = phi i64 [ 0, %vector.ph282 ], [ %index.next325, %vector.body305 ] ; 2 uses
  %vec.ind307 = phi <8 x i64> [ %induction304, %vector.ph282 ], [ %vec.ind.next326, %vector.body305 ] ; 3 uses
  %i.gt = add i64 %index306, %i.gb                ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.gt ; 3 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gt ; 2 uses
  %wide.gep308 = getelementptr inbounds [12 x i8], ptr %i.fr, <8 x i64> %vec.ind307 ; 2 uses
  %i.gw = extractelement <8 x ptr> %wide.gep308, i64 0 ; 2 uses
  %wide.load309 = load <8 x float>, ptr %i.gu, align 4, !tbaa !40, !alias.scope !50
  %wide.load310 = load <8 x float>, ptr %i.gv, align 4, !tbaa !40, !alias.scope !51
  %i.gx = fmul <8 x float> %broadcast.splat293.a, %wide.load310
  %i.gy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat291.a, <8 x float> %wide.load309, <8 x float> %i.gx)
  %wide.vec311 = load <24 x float>, ptr %i.gw, align 4, !tbaa !40, !alias.scope !52, !noalias !53 ; 3 uses
  %strided.vec312.a = shufflevector <24 x float> %wide.vec311, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec313 = shufflevector <24 x float> %wide.vec311, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec314 = shufflevector <24 x float> %wide.vec311, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.gz = fsub <8 x float> %strided.vec312.a, %i.gy
  %wide.load315 = load <8 x float>, ptr %i.gu, align 4, !tbaa !40, !alias.scope !50 ; 2 uses
  %wide.load316 = load <8 x float>, ptr %i.gv, align 4, !tbaa !40, !alias.scope !51 ; 2 uses
  %i.ha = fmul <8 x float> %broadcast.splat297.a, %wide.load316
  %i.hb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat295.a, <8 x float> %wide.load315, <8 x float> %i.ha)
  %i.hc = fsub <8 x float> %strided.vec313, %i.hb
  %i.hd = fmul <8 x float> %broadcast.splat301.a, %wide.load316
  %i.he = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat299.a, <8 x float> %wide.load315, <8 x float> %i.hd)
  %wide.gep319 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep308, i64 8
  %i.hf = fsub <8 x float> %strided.vec314, %i.he ; 2 uses
  %i.hg = shufflevector <8 x float> %i.gz, <8 x float> %i.hc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hh = shufflevector <8 x float> %i.hf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec320 = shufflevector <16 x float> %i.hg, <16 x float> %i.hh, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec320, ptr %i.gw, align 4, !tbaa !40, !alias.scope !52, !noalias !53
  %wide.load321 = load <8 x float>, ptr %i.gu, align 4, !tbaa !40, !alias.scope !50
  %i.hi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat287.a, <8 x float> %wide.load321, <8 x float> %broadcast.splat289.a)
  %wide.gep322 = getelementptr inbounds [12 x i8], ptr %i.ga, <8 x i64> %vec.ind307
  %wide.gep323 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep322, i64 8
  %wide.masked.gather324 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep323, <8 x i1> %broadcast.splat285.a, <8 x float> poison), !tbaa !40, !alias.scope !54
  %i.hj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.hi, <8 x float> %wide.masked.gather324, <8 x float> %i.hf)
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.hj, <8 x ptr> align 4 %wide.gep319, <8 x i1> %broadcast.splat285.a), !tbaa !40, !alias.scope !52, !noalias !53
  %index.next325 = add nuw i64 %index306, 8       ; 2 uses
  %vec.ind.next326 = add nsw <8 x i64> %vec.ind307, splat (i64 8)
  %i.hk = icmp eq i64 %index.next325, %n.vec283
  br i1 %i.hk, label %middle.block327, label %vector.body305, !llvm.loop !32

middle.block327:                                  ; preds = %vector.body305
  %cmp.n328 = icmp eq i64 %i.gm, %n.vec283
  br i1 %cmp.n328, label %.thread149, label %.preheader155.preheader

.preheader155.preheader:                          ; preds = %vector.memcheck260, %.preheader155.lr.ph, %middle.block327
  %indvars.iv195.ph = phi i64 [ %i.gb, %vector.memcheck260 ], [ %i.gb, %.preheader155.lr.ph ], [ %i.gs, %middle.block327 ]
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.preheader, %bb.p
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %bb.p ], [ %indvars.iv195.ph, %.preheader155.preheader ] ; 5 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %indvars.iv195 ; 4 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv195 ; 3 uses
  %i.hn = getelementptr inbounds [12 x i8], ptr %i.fr, i64 %indvars.iv195 ; 4 uses
  %i.ho = load float, ptr %i.hl, align 4, !tbaa !40
  %i.hp = load float, ptr %i.hm, align 4, !tbaa !40
  %i.hq = fmul float %i.gf, %i.hp
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.ho, float %i.hq)
  %i.hs = load float, ptr %i.hn, align 4, !tbaa !40
  %i.ht = fsub float %i.hs, %i.hr
  store float %i.ht, ptr %i.hn, align 4, !tbaa !40
  %i.hu = load float, ptr %i.hl, align 4, !tbaa !40
  %i.hv = load float, ptr %i.hm, align 4, !tbaa !40
  %i.hw = fmul float %i.gj, %i.hv
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.hu, float %i.hw)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !40
  %i.ia = fsub float %i.hz, %i.hx
  store float %i.ia, ptr %i.hy, align 4, !tbaa !40
  %i.ib = load float, ptr %i.hl, align 4, !tbaa !40
  %i.ic = load float, ptr %i.hm, align 4, !tbaa !40
  %i.id = fmul float %i.gl, %i.ic
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.ib, float %i.id)
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 3 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !40
  %i.ih = fsub float %i.ig, %i.ie                 ; 2 uses
  store float %i.ih, ptr %i.if, align 4, !tbaa !40
  br i1 %or.cond153, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader155
  %i.ii = load float, ptr %i.hl, align 4, !tbaa !40
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.ii, float %i.fy)
  %i.ik = getelementptr inbounds [12 x i8], ptr %i.ga, i64 %indvars.iv195
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !40
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.im, float %i.ih)
  store float %i.in, ptr %i.if, align 4, !tbaa !40
  br label %bb.p

bb.p:                                             ; preds = %.preheader155, %bb.o
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.thread149, label %.preheader155, !llvm.loop !33

.thread149:                                       ; preds = %.preheader157.prol.loopexit, %bb.m, %bb.p, %middle.block, %middle.block327, %.preheader158, %.preheader156, %bb.a, %bb.n
  %i.io = phi i1 [ true, %bb.a ], [ false, %.preheader156 ], [ true, %bb.n ], [ false, %.preheader158 ], [ false, %middle.block327 ], [ false, %middle.block ], [ false, %bb.p ], [ false, %bb.m ], [ false, %.preheader157.prol.loopexit ]
  %.0130147 = phi float [ 0.000000e+00, %bb.a ], [ %.0130, %.preheader156 ], [ %.0130, %bb.n ], [ %.0130, %.preheader158 ], [ %.0130, %middle.block327 ], [ %.0130, %middle.block ], [ %.0130, %bb.p ], [ %.0130, %bb.m ], [ %.0130, %.preheader157.prol.loopexit ] ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !64
  %i.ir = or i32 %i.iq, %3
  %or.cond3 = icmp eq i32 %i.ir, 0
  br i1 %or.cond3, label %.preheader, label %.loopexit.split

.preheader:                                       ; preds = %.thread149
  %i.is = select i1 %13, i32 2, i32 1             ; 2 uses
  %.val = load ptr, ptr %11, align 8
  %.val154 = load ptr, ptr %12, align 8
  %i.it = icmp sgt i32 %0, 0
  %i.iu = load i64, ptr %14, align 8
  %i.iv = inttoptr i64 %i.iu to ptr               ; 9 uses
  %i.iw = fpext float %.0130147 to double
  %i.ix = fneg double %i.iw
  br i1 %i.io, label %.loopexit.split, label %.preheader.split

.preheader.split:                                 ; preds = %.preheader
  switch i32 %7, label %.loopexit.split [
    i32 0, label %.preheader.split.split.us.preheader
    i32 1, label %.preheader.split.split.us174.preheader
  ]

.preheader.split.split.us174.preheader:           ; preds = %.preheader.split
  %wide.trip.count208 = zext nneg i32 %i.is to i64
  %wide.trip.count203 = zext i32 %0 to i64        ; 2 uses
  %xtraiter352 = and i64 %wide.trip.count203, 7   ; 3 uses
  %i.iy = icmp ult i32 %0, 8
  %unroll_iter = and i64 %wide.trip.count203, 2147483640
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  %lcmp.mod355 = icmp ne i64 %xtraiter352, 0
  br label %.preheader.split.split.us174

.preheader.split.split.us.preheader:              ; preds = %.preheader.split
  %wide.trip.count213 = zext nneg i32 %i.is to i64 ; 2 uses
  br i1 %13, label %vector.ph332, label %.preheader.split.split.us

vector.ph332:                                     ; preds = %.preheader.split.split.us.preheader
  %n.vec333 = and i64 %wide.trip.count213, 2
  %broadcast.splatinsert334 = insertelement <2 x float> poison, float %.0130147, i64 0
  %broadcast.splat335 = shufflevector <2 x float> %broadcast.splatinsert334, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph332
  %index337 = phi i64 [ 0, %vector.ph332 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [12 x i8], ptr %21, i64 %index337
  %wide.vec338 = load <6 x float>, ptr %i.iz, align 8, !tbaa !40 ; 3 uses
  %strided.vec339 = shufflevector <6 x float> %wide.vec338, <6 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %strided.vec340 = shufflevector <6 x float> %wide.vec338, <6 x float> poison, <2 x i32> <i32 1, i32 4> ; 2 uses
  %strided.vec341 = shufflevector <6 x float> %wide.vec338, <6 x float> poison, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.ja = fmul <2 x float> %strided.vec340, %strided.vec340
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %strided.vec339, <2 x float> %strided.vec339, <2 x float> %i.ja)
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %strided.vec341, <2 x float> %strided.vec341, <2 x float> %i.jb)
  %i.jd = fmul <2 x float> %broadcast.splat335, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %index337
  store <2 x float> %i.jd, ptr %i.je, align 8, !tbaa !40
  %index.next342 = add nuw i64 %index337, 2       ; 2 uses
  %i.jf = icmp eq i64 %index.next342, %n.vec333
  br i1 %i.jf, label %.loopexit.split, label %vector.body336, !llvm.loop !34

.preheader.split.split.us:                        ; preds = %.preheader.split.split.us.preheader, %.preheader.split.split.us
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %.preheader.split.split.us ], [ 0, %.preheader.split.split.us.preheader ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %21, i64 %indvars.iv210 ; 3 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !40 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !40 ; 2 uses
  %i.jk = fmul float %i.jj, %i.jj
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.jh, float %i.jh, float %i.jk)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !40 ; 2 uses
  %i.jo = tail call noundef float @llvm.fmuladd.f32(float %i.jn, float %i.jn, float %i.jl)
  %i.jp = fmul float %.0130147, %i.jo
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %indvars.iv210
  store float %i.jp, ptr %i.jq, align 4, !tbaa !40
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %.loopexit.split, label %.preheader.split.split.us, !llvm.loop !35

.preheader.split.split.us174:                     ; preds = %.preheader.split.split.us174.preheader, %bb.r
  %indvars.iv205 = phi i64 [ 0, %.preheader.split.split.us174.preheader ], [ %indvars.iv.next206, %bb.r ] ; 6 uses
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %21, i64 %indvars.iv205
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load float, ptr %i.js, align 4, !tbaa !40 ; 2 uses
  %i.ju = fmul float %.0130147, %i.jt
  %i.jv = fmul float %i.jt, %i.ju                 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %indvars.iv205 ; 2 uses
  store float %i.jv, ptr %i.jw, align 4, !tbaa !40
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv205
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !40
  %i.jz = fcmp une float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.split.split.us174
  %i.ka = icmp eq i64 %indvars.iv205, 0
  %i.kb = select i1 %i.ka, ptr %.val, ptr %.val154 ; 9 uses
  br i1 %i.it, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.q
  br i1 %i.iy, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.7, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ] ; 10 uses
  %.0119169.us = phi float [ %i.mf, %.lr.ph.us ], [ 0.000000e+00, %.lr.ph.us.preheader ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv200
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !40
  %i.ke = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv200
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !40 ; 2 uses
  %i.kh = fmul float %i.kd, %i.kg
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.kg, float %.0119169.us)
  %indvars.iv.next201 = or disjoint i64 %indvars.iv200, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next201
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !40
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv.next201
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !40 ; 2 uses
  %i.ko = fmul float %i.kk, %i.kn
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.kn, float %i.ki)
  %indvars.iv.next201.1 = or disjoint i64 %indvars.iv200, 2 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.next201.1
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !40
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr %i.iv, i64 %indvars.iv.next201.1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !40 ; 2 uses
  %i.kv = fmul float %i.kr, %i.ku
end_hunk_0
