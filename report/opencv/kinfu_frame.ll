Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/kinfu_frame?download=true
inline.NumInlined: 385
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv25buildPyramidPointsNormalsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_i:bb.a
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.body, %bb.bs
  %.pn82 = phi { ptr, i32 } [ %i.cg, %.body ], [ %i.hf, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.cg

bb.bu:                                            ; preds = %.noexc127, %_ZN2cv4Mat_INS_3VecIfLi4EEEEC2EONS_3MatE.exit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %.body131, %bb.bu
  %.pn84 = phi { ptr, i32 } [ %i.cm, %.body131 ], [ %i.hg, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
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
  %2 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %3 = load float, ptr %2, align 4, !tbaa !26, !noalias !143
  %i.as = load float, ptr %i.ar, align 4, !tbaa !26, !noalias !143 ; 3 uses
  %.fr.i = freeze float %3                        ; 3 uses
  %i.at = fcmp uno float %i.aq, 0.000000e+00
  %spec.select.i = fcmp uno float %i.as, %.fr.i
  %i.au = select i1 %i.at, i1 true, i1 %spec.select.i
  br i1 %i.au, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load float, ptr %i.av, align 4, !tbaa !26, !noalias !144 ; 2 uses
  %i.ay = load float, ptr %i.i, align 8, !tbaa !26, !noalias !145
  %i.az = fsub float %i.ay, %i.aq
  %i.ba = fpext float %i.az to double             ; 3 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double 0.000000e+00)
  %i.bc = fneg float %i.aq
  %i.bd = fneg float %i.as
  %i.be = fneg float %.fr.i
  %i.bf = fmul float %i.ax, 2.000000e+00
  %i.bg = load <2 x float>, ptr %i.aw, align 4, !tbaa !26, !noalias !144 ; 3 uses
  %i.bh = load <2 x float>, ptr %i.j, align 4, !tbaa !26, !noalias !145
  %i.bi = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %.fr.i, i64 1
  %i.bk = fsub <2 x float> %i.bh, %i.bj
  %i.bl = fpext <2 x float> %i.bk to <2 x double> ; 3 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %i.bb)
  %i.bo = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bp = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bn) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bp)
  %i.bq = fcmp une double %i.bp, 0.000000e+00
  %i.br = fdiv double 1.000000e+00, %sqrt.i.i
  %i.bs = select i1 %i.bq, double %i.br, double 0.000000e+00 ; 2 uses
  %i.bt = fmul double %i.bs, %i.ba
  %i.bu = fptrunc double %i.bt to float           ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bw, %i.bl
  %i.by = fptrunc <2 x double> %i.bx to <2 x float> ; 3 uses
  %i.bz = fmul <2 x float> %i.bg, splat (float 2.000000e+00)
  %foldExtExtBinop = fmul <2 x float> %i.bg, %i.by
  %i.ca = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.bu, float %i.ca)
  %i.cc = extractelement <2 x float> %i.bg, i64 1
  %i.cd = extractelement <2 x float> %i.by, i64 1
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cd, float %i.cb) ; 4 uses
  %i.cf = fmul float %i.bf, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bz, %i.ch
  %i.cj = fsub float %i.cf, %i.bu
  %i.ck = fsub <2 x float> %i.ci, %i.by           ; 2 uses
  %i.cl = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.cj, i64 1
  %i.cn = fpext <2 x float> %i.cm to <2 x double> ; 4 uses
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cn, <2 x double> zeroinitializer)
  %i.cp = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cr = fpext <2 x float> %i.cq to <2 x double> ; 3 uses
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cr, <2 x double> %i.co)
  %i.ct = insertelement <2 x float> %i.ck, float %i.be, i64 0
  %i.cu = fpext <2 x float> %i.ct to <2 x double> ; 4 uses
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cu, <2 x double> %i.cs) ; 2 uses
  %i.cw = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cv)
  %i.cx = fcmp une <2 x double> %i.cv, zeroinitializer
  %i.cy = fdiv <2 x double> splat (double 1.000000e+00), %i.cw
  %i.cz = select <2 x i1> %i.cx, <2 x double> %i.cy, <2 x double> zeroinitializer ; 4 uses
  %foldExtExtBinop136 = fmul <2 x double> %i.cz, %i.cn
  %i.da = extractelement <2 x double> %foldExtExtBinop136, i64 0
  %i.db = fptrunc double %i.da to float
  %foldExtExtBinop138 = fmul <2 x double> %i.cz, %i.cu
  %i.dc = extractelement <2 x double> %foldExtExtBinop138, i64 0
  %i.dd = fptrunc double %i.dc to float
  %i.de = fmul <2 x double> %i.cz, %i.cr
  %i.df = fptrunc <2 x double> %i.de to <2 x float> ; 2 uses
  %i.dg = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = shufflevector <2 x double> %i.cn, <2 x double> %i.cu, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x double> %i.dg, %i.dh
  %i.dj = fptrunc <2 x double> %i.di to <2 x float> ; 2 uses
  %i.dk = fcmp ogt float %i.ce, 0.000000e+00
  %.sroa.speculated43 = select i1 %i.dk, float %i.ce, float 0.000000e+00
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
end_hunk_0
