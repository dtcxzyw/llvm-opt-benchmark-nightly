Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/kinfu_frame?download=true
inline.NumInlined: 385
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv25buildPyramidPointsNormalsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_i:bb.a
  br label %bb.cf

bb.bw:                                            ; preds = %bb.be, %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2EONS_3MatE.exit133
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bf
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body134

bb.by:                                            ; preds = %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2ERKNS_3MatE.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body136

bb.bz:                                            ; preds = %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2ERKNS_3MatE.exit138
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ca:                                            ; preds = %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2ERKS3_.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2ERKS3_.exit141
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn86 = phi { ptr, i32 } [ %i.hm, %bb.cb ], [ %i.hl, %bb.ca ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #15
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %bb.cc ], [ %i.hk, %bb.bz ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #15
  br label %.body136

.body136:                                         ; preds = %bb.by, %bb.bj, %bb.cd
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.cd ], [ %i.hj, %bb.by ], [ %i.da, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #15
  br label %.body134

.body134:                                         ; preds = %bb.bx, %bb.bh, %.body136
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %.body136 ], [ %i.hi, %bb.bx ], [ %i.cu, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.ce

bb.ce:                                            ; preds = %.body134, %bb.bw
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn, %.body134 ], [ %i.hh, %bb.bw ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bv
  %.pn86.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn, %bb.ce ], [ %.pn84, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bt
  %.pn86.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn, %bb.cf ], [ %.pn82, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bc, %bb.cg
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.bc ], [ %.pn86.pn.pn.pn.pn.pn.pn, %bb.cg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #15
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bb
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %i.by, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ba
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ci ], [ %i.bx, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.af, %bb.aa ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cj ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  resume { ptr, i32 } %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv13RenderInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv13RenderInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.h, align 4, !tbaa !139  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph123.split.preheader, label %._crit_edge124

.lr.ph123.split.preheader:                        ; preds = %.lr.ph123
  %i.m = sext i32 %i.a to i64
  br label %.lr.ph123.split

._crit_edge124:                                   ; preds = %._crit_edge, %.lr.ph123, %bb.a
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123.split.preheader, %._crit_edge
  %i.n = phi i32 [ %i.c, %.lr.ph123.split.preheader ], [ %i.al, %._crit_edge ]
  %i.o = phi i32 [ %i.k, %.lr.ph123.split.preheader ], [ %i.am, %._crit_edge ] ; 2 uses
  %indvars.iv127 = phi i64 [ %i.m, %.lr.ph123.split.preheader ], [ %indvars.iv.next128, %._crit_edge ] ; 4 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !140, !nonnull !54, !align !55 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40
  %i.u = mul i64 %i.t, %indvars.iv127
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !141, !nonnull !54, !align !55 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ab = mul i64 %i.aa, %indvars.iv127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !142, !nonnull !54, !align !55 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.ai = mul i64 %i.ah, %indvars.iv127
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = icmp sgt i32 %i.o, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph123.split
  %i.al = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.n, %.lr.ph123.split ] ; 2 uses
  %i.am = phi i32 [ %i.eb, %._crit_edge.loopexit ], [ %i.o, %.lr.ph123.split ]
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.an = sext i32 %i.al to i64
  %i.ao = icmp slt i64 %indvars.iv.next128, %i.an
  br i1 %i.ao, label %.lr.ph123.split, label %._crit_edge124, !llvm.loop !128

.lr.ph:                                           ; preds = %.lr.ph123.split, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph123.split ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !26, !noalias !143 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !26, !noalias !143 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !26, !noalias !143
  %.fr.i = freeze float %i.au                     ; 3 uses
  %i.av = fcmp uno float %i.aq, 0.000000e+00
  %spec.select.i = fcmp uno float %i.as, %.fr.i
  %i.aw = select i1 %i.av, i1 true, i1 %spec.select.i
  br i1 %i.aw, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ax, align 4, !tbaa !26, !noalias !144 ; 2 uses
  %i.ba = load float, ptr %i.i, align 8, !tbaa !26, !noalias !145
  %i.bb = fsub float %i.ba, %i.aq
  %i.bc = fpext float %i.bb to double             ; 3 uses
  %2 = fmul double %i.bc, %i.bc
  %i.bd = fneg float %i.aq
  %i.be = fneg float %i.as
  %i.bf = fneg float %.fr.i
  %i.bg = fmul float %i.az, 2.000000e+00
  %i.bh = load <2 x float>, ptr %i.ay, align 4, !tbaa !26, !noalias !144 ; 3 uses
  %i.bi = load <2 x float>, ptr %i.j, align 4, !tbaa !26, !noalias !145
  %i.bj = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %.fr.i, i64 1
  %i.bl = fsub <2 x float> %i.bi, %i.bk
  %i.bm = fpext <2 x float> %i.bl to <2 x double> ; 3 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 2 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %2)
  %i.bp = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bq = tail call noundef double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bo) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bq)
  %i.br = fcmp une double %i.bq, 0.000000e+00
  %i.bs = fdiv double 1.000000e+00, %sqrt.i.i
  %i.bt = select i1 %i.br, double %i.bs, double 0.000000e+00 ; 2 uses
  %i.bu = fmul double %i.bt, %i.bc
  %i.bv = fptrunc double %i.bu to float           ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %i.bx, %i.bm
  %i.bz = fptrunc <2 x double> %i.by to <2 x float> ; 3 uses
  %i.ca = fmul <2 x float> %i.bh, splat (float 2.000000e+00)
  %foldExtExtBinop = fmul <2 x float> %i.bh, %i.bz
  %i.cb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.az, float %i.bv, float %i.cb)
  %i.cd = extractelement <2 x float> %i.bh, i64 1
  %i.ce = extractelement <2 x float> %i.bz, i64 1
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.ce, float %i.cc) ; 4 uses
  %i.cg = fmul float %i.bg, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.ca, %i.ci
  %i.ck = fsub float %i.cg, %i.bv
  %i.cl = fsub <2 x float> %i.cj, %i.bz           ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.ck, i64 1
  %i.co = fpext <2 x float> %i.cn to <2 x double> ; 4 uses
  %3 = fmul <2 x double> %i.co, %i.co
  %i.cp = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cr = fpext <2 x float> %i.cq to <2 x double> ; 3 uses
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cr, <2 x double> %3)
  %i.ct = insertelement <2 x float> %i.cl, float %i.bf, i64 0
  %i.cu = fpext <2 x float> %i.ct to <2 x double> ; 4 uses
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cu, <2 x double> %i.cs) ; 2 uses
  %i.cw = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cv)
  %i.cx = fcmp une <2 x double> %i.cv, zeroinitializer
  %i.cy = fdiv <2 x double> splat (double 1.000000e+00), %i.cw
  %i.cz = select <2 x i1> %i.cx, <2 x double> %i.cy, <2 x double> zeroinitializer ; 4 uses
  %foldExtExtBinop136 = fmul <2 x double> %i.cz, %i.co
  %i.da = extractelement <2 x double> %foldExtExtBinop136, i64 0
  %i.db = fptrunc double %i.da to float
  %foldExtExtBinop138 = fmul <2 x double> %i.cz, %i.cu
  %i.dc = extractelement <2 x double> %foldExtExtBinop138, i64 0
  %i.dd = fptrunc double %i.dc to float
  %i.de = fmul <2 x double> %i.cz, %i.cr
  %i.df = fptrunc <2 x double> %i.de to <2 x float> ; 2 uses
  %i.dg = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = shufflevector <2 x double> %i.co, <2 x double> %i.cu, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x double> %i.dg, %i.dh
  %i.dj = fptrunc <2 x double> %i.di to <2 x float> ; 2 uses
  %i.dk = fcmp ogt float %i.cf, 0.000000e+00
  %.sroa.speculated43 = select i1 %i.dk, float %i.cf, float 0.000000e+00
  %i.dl = tail call nnan float @llvm.fmuladd.f32(float %.sroa.speculated43, float 5.000000e-01, float 3.000000e-01)
  %shift = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop140 = fmul <2 x float> %shift, %i.df
  %i.dm = extractelement <2 x float> %foldExtExtBinop140, i64 0
  %i.dn = extractelement <2 x float> %i.dj, i64 0
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.db, float %i.dm)
  %i.dp = extractelement <2 x float> %i.dj, i64 1
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.dd, float %i.do) ; 2 uses
  %i.dr = fcmp ogt float %i.dq, 0.000000e+00
  %.sroa.speculated = select i1 %i.dr, float %i.dq, float 0.000000e+00 ; 3 uses
  %i.ds = fmul float %.sroa.speculated, %.sroa.speculated ; 2 uses
  %i.dt = fmul float %i.ds, %i.ds
  %i.du = fmul float %.sroa.speculated, %i.dt     ; 2 uses
  %i.dv = fmul float %i.du, %i.du                 ; 2 uses
  %i.dw = fmul float %i.dv, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float 2.000000e-01, float %i.dl)
  %i.dy = fmul float %i.dx, 2.550000e+02
  %i.dz = fptoui float %i.dy to i8
  %.sroa.5.0.insert.ext = zext i8 %i.dz to i32
  %.sroa.0.0.insert.insert = mul nuw nsw i32 %.sroa.5.0.insert.ext, 65793
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.095.0 = phi i32 [ %.sroa.0.0.insert.insert, %bb.b ], [ 8192, %.lr.ph ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %.sroa.095.0, ptr %i.ea, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eb = load i32, ptr %i.h, align 4, !tbaa !139 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next, %i.ec
  br i1 %i.ed, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !135
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18RenderColorInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18RenderColorInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !153  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph47.split.preheader, label %._crit_edge48

.lr.ph47.split.preheader:                         ; preds = %.lr.ph47
  %i.k = sext i32 %i.a to i64
  br label %.lr.ph47.split

._crit_edge48:                                    ; preds = %._crit_edge, %.lr.ph47, %bb.a
  ret void

.lr.ph47.split:                                   ; preds = %.lr.ph47.split.preheader, %._crit_edge
  %i.l = phi i32 [ %i.c, %.lr.ph47.split.preheader ], [ %i.aj, %._crit_edge ]
  %i.m = phi i32 [ %i.i, %.lr.ph47.split.preheader ], [ %i.ak, %._crit_edge ] ; 2 uses
  %indvars.iv51 = phi i64 [ %i.k, %.lr.ph47.split.preheader ], [ %indvars.iv.next52, %._crit_edge ] ; 4 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !154, !nonnull !54, !align !55 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40
  %i.s = mul i64 %i.r, %indvars.iv51
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !155, !nonnull !54, !align !55 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %i.z = mul i64 %i.y, %indvars.iv51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !156, !nonnull !54, !align !55 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ag = mul i64 %i.af, %indvars.iv51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = icmp sgt i32 %i.m, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i32, ptr %i.b, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph47.split
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.l, %.lr.ph47.split ] ; 2 uses
  %i.ak = phi i32 [ %i.bh, %._crit_edge.loopexit ], [ %i.m, %.lr.ph47.split ]
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.al = sext i32 %i.aj to i64
  %i.am = icmp slt i64 %indvars.iv.next52, %i.al
  br i1 %i.am, label %.lr.ph47.split, label %._crit_edge48, !llvm.loop !146

.lr.ph:                                           ; preds = %.lr.ph47.split, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph47.split ] ; 4 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !26, !noalias !157
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !26, !noalias !157
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !26, !noalias !157
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv ; 3 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !26, !noalias !158 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !26, !noalias !158 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !26, !noalias !158
  %.fr.i24 = freeze float %i.ay                   ; 2 uses
  %i.az = fcmp uno float %i.ao, 0.000000e+00
  %.fr.i = freeze float %i.as
  %spec.select.i = fcmp uno float %i.aq, %.fr.i
  %i.ba = select i1 %i.az, i1 true, i1 %spec.select.i
  br i1 %i.ba, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.bb = fcmp uno float %i.au, 0.000000e+00
  %spec.select.i25 = fcmp uno float %i.aw, %.fr.i24
  %i.bc = select i1 %i.bb, i1 true, i1 %spec.select.i25
  br i1 %i.bc, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = fptoui float %i.au to i8
  %i.be = fptoui float %i.aw to i8
  %i.bf = fptoui float %.fr.i24 to i8
  %.sroa.5.0.insert.ext = zext i8 %i.bf to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.4.0.insert.ext = zext i8 %i.be to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.bd to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.030.0 = phi i32 [ %.sroa.0.0.insert.insert, %bb.c ], [ 8192, %bb.b ], [ 8192, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store i32 %.sroa.030.0, ptr %i.bg, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !151
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv27ComputePointsNormalsInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv27ComputePointsNormalsInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !161, !nonnull !54, !align !55 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !53
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph151.split.preheader, label %._crit_edge152

.lr.ph151.split.preheader:                        ; preds = %.lr.ph151
  %i.n = sext i32 %i.a to i64
  br label %.lr.ph151.split

._crit_edge152:                                   ; preds = %._crit_edge, %.lr.ph151, %bb.a
  ret void

.lr.ph151.split:                                  ; preds = %.lr.ph151.split.preheader, %._crit_edge
  %i.o = phi i32 [ %i.c, %.lr.ph151.split.preheader ], [ %i.av, %._crit_edge ]
  %i.p = phi ptr [ %i.j, %.lr.ph151.split.preheader ], [ %i.aw, %._crit_edge ] ; 5 uses
  %indvars.iv155 = phi i64 [ %i.n, %.lr.ph151.split.preheader ], [ %indvars.iv.next156, %._crit_edge ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = mul i64 %i.t, %indvars.iv155
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u ; 2 uses
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 4 uses
  %i.w = mul i64 %i.t, %indvars.iv.next156
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !162, !nonnull !54, !align !55 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.ad = mul i64 %i.ac, %indvars.iv155
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !163, !nonnull !54, !align !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.ak = mul i64 %i.aj, %indvars.iv155
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph151.split
  %i.ap = trunc nsw i64 %indvars.iv155 to i32
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = trunc nsw i64 %indvars.iv.next156 to i32
  %i.as = sitofp i32 %i.ar to float
  %i.at = insertelement <2 x float> poison, float %i.aq, i64 1
  %i.au = insertelement <2 x float> poison, float %i.as, i64 1
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.b, align 4, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph151.split
  %i.av = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %.lr.ph151.split ] ; 2 uses
  %i.aw = phi ptr [ %i.ep, %._crit_edge.loopexit ], [ %i.p, %.lr.ph151.split ]
  %i.ax = sext i32 %i.av to i64
  %i.ay = icmp slt i64 %indvars.iv.next156, %i.ax
  br i1 %i.ay, label %.lr.ph151.split, label %._crit_edge152, !llvm.loop !159

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 8 uses
  %i.az = phi i32 [ %i.an, %.lr.ph ], [ %i.er, %bb.f ]
  %i.ba = phi ptr [ %i.p, %.lr.ph ], [ %i.ep, %bb.f ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !26
  %i.bd = load float, ptr %i.h, align 8, !tbaa !46 ; 3 uses
  %i.be = fmul float %i.bc, %i.bd                 ; 3 uses
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !164, !nonnull !54, !align !165 ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  %i.bh = uitofp nneg i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load <2 x float>, ptr %i.bi, align 4, !tbaa !26 ; 2 uses
  %i.bk = insertelement <2 x float> %i.at, float %i.bh, i64 0
  %i.bl = fsub <2 x float> %i.bk, %i.bj           ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = load <2 x float>, ptr %i.bf, align 4, !tbaa !26 ; 4 uses
  %i.bq = fmul <2 x float> %i.bp, %i.bo           ; 4 uses
  %i.br = add nsw i32 %i.az, -1
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv, %i.bs
  br i1 %i.bt, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !47
  %i.bw = add nsw i32 %i.bv, -1
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv155, %i.bx
  br i1 %i.by, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bz = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !26
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !26
  %i.ce = fmul float %i.bd, %i.cb                 ; 3 uses
  %i.cf = fmul float %i.bd, %i.cd                 ; 3 uses
  %i.cg = fcmp une float %i.be, 0.000000e+00
  %i.ch = fcmp une float %i.ce, 0.000000e+00
  %or.cond = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = fcmp une float %i.cf, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 %i.ci, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cj = trunc nuw nsw i64 %i.bz to i32
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = extractelement <2 x float> %i.bp, i64 0
  %i.cm = extractelement <2 x float> %i.bp, i64 1
  %i.cn = insertelement <2 x float> %i.au, float %i.ck, i64 0
  %i.co = fsub <2 x float> %i.cn, %i.bj           ; 2 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = fmul float %i.cp, %i.ce
  %i.cr = fmul float %i.cl, %i.cq
  %i.cs = extractelement <2 x float> %i.co, i64 1
  %i.ct = fmul float %i.cs, %i.cf
  %i.cu = fmul float %i.cm, %i.ct
  %i.cv = extractelement <2 x float> %i.bq, i64 0
  %i.cw = extractelement <2 x float> %i.bq, i64 1
  %i.cx = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.ce, i64 1 ; 2 uses
  %i.cz = fmul <2 x float> %i.bl, %i.cy
  %i.da = fmul <2 x float> %i.bp, %i.cz
  %i.db = fsub float %i.cr, %i.cv                 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = fsub <2 x float> %i.dc, %i.bn           ; 3 uses
  %i.de = fsub <2 x float> %i.da, %i.bq           ; 3 uses
  %i.df = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.dg = fneg float %i.df
  %i.dh = extractelement <2 x float> %i.dd, i64 0
  %i.di = fmul float %i.dh, %i.dg
  %i.dj = extractelement <2 x float> %i.dd, i64 1
  %i.dk = fneg float %i.dj
  %i.dl = fmul float %i.db, %i.dk
  %i.dm = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.di, i64 1
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.dn)
  %i.dp = extractelement <2 x float> %i.de, i64 0
  %i.dq = fneg float %i.dp
  %i.dr = extractelement <2 x float> %i.de, i64 1
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.db, float %i.df, float %i.ds)
  %i.du = fpext <2 x float> %i.do to <2 x double> ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.du, %i.du
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.dv = extractelement <2 x double> %i.du, i64 0 ; 2 uses
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double %2)
  %i.dx = fpext float %i.dt to double             ; 3 uses
  %i.dy = tail call noundef double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.dw) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.dy)
  %i.dz = fcmp une double %i.dy, 0.000000e+00
  %i.ea = fdiv double 1.000000e+00, %sqrt.i.i
  %i.eb = select i1 %i.dz, double %i.ea, double 0.000000e+00 ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.ed, %i.du
  %i.ef = fptrunc <2 x double> %i.ee to <2 x float>
  %i.eg = fmul double %i.eb, %i.dx
  %i.eh = fptrunc double %i.eg to float
  %i.ei = fneg <2 x float> %i.ef
  %i.ej = fneg float %i.eh
  %i.ek = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.sroa.8.0 = phi float [ %i.ej, %bb.e ], [ +qnan, %bb.d ], [ +qnan, %bb.c ], [ +qnan, %bb.b ]
  %.sroa.7.0 = phi float [ %i.be, %bb.e ], [ +qnan, %bb.d ], [ +qnan, %bb.c ], [ +qnan, %bb.b ]
  %i.el = phi <2 x float> [ %i.bq, %bb.e ], [ splat (float +qnan), %bb.d ], [ splat (float +qnan), %bb.c ], [ splat (float +qnan), %bb.b ]
  %i.em = phi <2 x float> [ %i.ek, %bb.e ], [ splat (float +qnan), %bb.d ], [ splat (float +qnan), %bb.c ], [ splat (float +qnan), %bb.b ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv ; 3 uses
  store <2 x float> %i.el, ptr %i.en, align 4
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %.sroa.7.0, ptr %.sroa.5102.0..sroa_idx, align 4
  %.sroa.6103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float 0.000000e+00, ptr %.sroa.6103.0..sroa_idx, align 4
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  store <2 x float> %i.em, ptr %i.eo, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store float %.sroa.8.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store float 0.000000e+00, ptr %.sroa.696.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !161, !nonnull !54, !align !55 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !53 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !160
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv23PyrDownBilateralInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv23PyrDownBilateralInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !49
  %.fr111 = freeze float %i.b
  %i.c = fmul float %.fr111, 3.000000e+00
  %i.d = load i32, ptr %1, align 4, !tbaa !35     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.lr.ph83, label %._crit_edge84.split

.lr.ph83:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170, !nonnull !54, !align !55 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171, !nonnull !54, !align !55 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph83.split, label %._crit_edge84.split

.lr.ph83.split:                                   ; preds = %.lr.ph83
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53
  %i.z = add nsw i32 %i.y, -1
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !47
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = zext nneg i32 %i.u to i64               ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = shl i32 %i.d, 1
  %i.af = sext i32 %i.d to i64
  %wide.trip.count103 = sext i32 %i.f to i64
  br label %.lr.ph

._crit_edge84.split:                              ; preds = %._crit_edge, %.lr.ph83, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph83.split, %._crit_edge
  %indvars.iv100 = phi i64 [ %i.af, %.lr.ph83.split ], [ %indvars.iv.next101, %._crit_edge ] ; 3 uses
  %indvars.iv91 = phi i32 [ %i.ae, %.lr.ph83.split ], [ %indvars.iv.next92, %._crit_edge ] ; 2 uses
  %smax93 = tail call i32 @llvm.smax.i32(i32 %indvars.iv91, i32 2)
  %i.ag = zext nneg i32 %smax93 to i64
  %i.ah = add nsw i64 %i.ag, -2
  %i.ai = mul i64 %i.m, %indvars.iv100
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ai   ; 2 uses
  %i.ak = shl nsw i64 %indvars.iv100, 1           ; 3 uses
  %i.al = mul i64 %i.s, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.al
  %i.an = trunc nsw i64 %i.ak to i32
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.an, i32 2)
  %.sroa.speculated49 = add nsw i32 %i.ao, -2
  %i.ap = trunc i64 %i.ak to i32
  %i.aq = add i32 %i.ap, 3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.aq) ; 2 uses
  %i.ar = icmp slt i32 %.sroa.speculated49, %.sroa.speculated
  br i1 %i.ar, label %.lr.ph72.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.ad, i1 false), !tbaa !26
  br label %._crit_edge

.lr.ph72.us.preheader:                            ; preds = %.lr.ph
  %i.as = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph72.us

.lr.ph72.us:                                      ; preds = %.lr.ph72.us.preheader, %bb.c
  %indvars.iv97 = phi i64 [ 0, %.lr.ph72.us.preheader ], [ %indvars.iv.next98, %bb.c ] ; 3 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph72.us.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 2)
  %i.at = zext nneg i32 %smax to i64
  %i.au = add nsw i64 %i.at, -2
  %i.av = shl nuw nsw i64 %indvars.iv97, 1        ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !26
  %i.ay = trunc nuw nsw i64 %i.av to i32
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 2)
  %.sroa.speculated59.us = add nsw i32 %i.az, -2
  %i.ba = trunc i64 %i.av to i32
  %i.bb = add i32 %i.ba, 3
  %.sroa.speculated54.us = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.bb) ; 2 uses
  %i.bc = icmp slt i32 %.sroa.speculated59.us, %.sroa.speculated54.us
  br i1 %i.bc, label %.lr.ph.us.us.preheader, label %._crit_edge73.us.thread

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph72.us
  %i.bd = zext nneg i32 %.sroa.speculated54.us to i64
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv94 = phi i64 [ %i.ah, %.lr.ph.us.us.preheader ], [ %indvars.iv.next95, %._crit_edge.us.us ] ; 2 uses
  %.03769.us.us = phi i32 [ 0, %.lr.ph.us.us.preheader ], [ %.2.us.us, %._crit_edge.us.us ]
  %.03868.us.us = phi float [ 0.000000e+00, %.lr.ph.us.us.preheader ], [ %.240.us.us, %._crit_edge.us.us ]
  %i.be = mul i64 %i.s, %indvars.iv94
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.b ], [ %i.au, %.lr.ph.us.us ] ; 2 uses
  %.165.us.us = phi i32 [ %.2.us.us, %bb.b ], [ %.03769.us.us, %.lr.ph.us.us ]
  %.13964.us.us = phi float [ %.240.us.us, %bb.b ], [ %.03868.us.us, %.lr.ph.us.us ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv88
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !26 ; 2 uses
  %i.bi = fsub float %i.bh, %i.ax
  %i.bj = tail call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp olt float %i.bj, %i.c              ; 2 uses
  %i.bl = fadd float %.13964.us.us, %i.bh
  %.240.us.us = select i1 %i.bk, float %i.bl, float %.13964.us.us ; 3 uses
  %i.bm = zext i1 %i.bk to i32
  %.2.us.us = add i32 %.165.us.us, %i.bm          ; 4 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.bn = icmp slt i64 %indvars.iv.next89, %i.bd
  br i1 %i.bn, label %bb.b, label %._crit_edge.us.us, !llvm.loop !166

._crit_edge.us.us:                                ; preds = %bb.b
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.bo = icmp slt i64 %indvars.iv.next95, %i.as
  br i1 %i.bo, label %.lr.ph.us.us, label %._crit_edge73.us, !llvm.loop !167

._crit_edge73.us:                                 ; preds = %._crit_edge.us.us
  %i.bp = icmp eq i32 %.2.us.us, 0
  %i.bq = sitofp i32 %.2.us.us to float
  %i.br = fdiv float %.240.us.us, %i.bq
  br i1 %i.bp, label %._crit_edge73.us.thread, label %bb.c

._crit_edge73.us.thread:                          ; preds = %.lr.ph72.us, %._crit_edge73.us
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge73.us, %._crit_edge73.us.thread
  %i.bs = phi float [ 0.000000e+00, %._crit_edge73.us.thread ], [ %i.br, %._crit_edge73.us ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv97
  store float %i.bs, ptr %i.bt, align 4, !tbaa !26
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next98, %i.ac
end_hunk_0
