Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/normal?download=true
inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK2cv3SRIIdE7computeERKNS_3MatERS2_:bb.a

bb.t:                                             ; preds = %bb.s, %bb.k
  %.pn87.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hh, %bb.s ], [ %i.cc, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j, %bb.i
  %.pn87.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn, %bb.t ], [ %i.cb, %bb.j ], [ %i.ca, %bb.i ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.h
  %.pn87.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn, %bb.u ], [ %i.bz, %bb.h ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %i.a) #20, !inline_history !278
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15RgbdNormalsImplIfED2Ev(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12CrossProductIfED0Ev(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !62
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIfE5cacheEv(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 0, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIfE7computeERKNS_3MatERS2_(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph134.split, label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge, %.lr.ph134, %bb.a
  ret void

.lr.ph134.split:                                  ; preds = %.lr.ph134, %._crit_edge
  %i.k = phi i32 [ %i.ab, %._crit_edge ], [ %i.b, %.lr.ph134 ] ; 2 uses
  %i.l = phi i32 [ %i.ac, %._crit_edge ], [ %i.i, %.lr.ph134 ] ; 3 uses
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge ], [ 0, %.lr.ph134 ] ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.o = mul i64 %i.n, %indvars.iv138
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add nsw i32 %i.k, -1
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv138, %i.r
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.t = mul i64 %i.n, %indvars.iv.next139
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = select i1 %i.s, ptr %i.u, ptr null
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.x = load i64, ptr %i.g, align 8, !tbaa !51
  %i.y = mul i64 %i.x, %indvars.iv138
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph134.split
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.lr.ph134.split ] ; 2 uses
  %i.ac = phi i32 [ %i.dd, %._crit_edge.loopexit ], [ %i.l, %.lr.ph134.split ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next139, %i.ad
  br i1 %i.ae, label %.lr.ph134.split, label %._crit_edge135, !llvm.loop !279

.lr.ph:                                           ; preds = %.lr.ph134.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph134.split ] ; 5 uses
  %i.af = phi i32 [ %i.dd, %bb.g ], [ %i.l, %.lr.ph134.split ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 5 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !67 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !67
  %.fr.i = freeze float %i.aj                     ; 3 uses
  %i.ak = add nsw i32 %i.af, -1
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv, %i.al
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.an = load i32, ptr %i.a, align 8, !tbaa !54
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv138, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = extractelement <2 x float> %i.ah, i64 0
  %i.as = fcmp uno float %i.ar, 0.000000e+00
  %i.at = extractelement <2 x float> %i.ah, i64 1
  %spec.select.i = fcmp uno float %i.at, %.fr.i
  %i.au = select i1 %i.as, i1 true, i1 %spec.select.i
  br i1 %i.au, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !67
  %.fr.i68 = freeze float %i.ay                   ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !67
  %.fr.i72 = freeze float %i.bb                   ; 2 uses
  %i.bc = load <2 x float>, ptr %i.av, align 4, !tbaa !67 ; 3 uses
  %i.bd = load float, ptr %i.aw, align 4, !tbaa !67
  %i.be = load <2 x float>, ptr %i.az, align 4, !tbaa !67 ; 3 uses
  %i.bf = insertelement <2 x float> poison, float %.fr.i68, i64 0 ; 2 uses
  %i.bg = insertelement <2 x float> %i.bf, float %.fr.i72, i64 1 ; 2 uses
  %i.bh = extractelement <2 x float> %i.bc, i64 0
  %i.bi = fcmp uno float %i.bh, 0.000000e+00
  %spec.select.i69 = fcmp uno float %i.bd, %.fr.i68
  %i.bj = select i1 %i.bi, i1 true, i1 %spec.select.i69
  br i1 %i.bj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !67
  %i.bm = extractelement <2 x float> %i.be, i64 0
  %i.bn = fcmp uno float %i.bm, 0.000000e+00
  %spec.select.i73 = fcmp uno float %i.bl, %.fr.i72
  %i.bo = select i1 %i.bn, i1 true, i1 %spec.select.i73
  br i1 %i.bo, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = insertelement <2 x float> %i.ah, float %.fr.i, i64 1 ; 2 uses
  %i.bq = shufflevector <2 x float> %i.be, <2 x float> %i.bg, <2 x i32> <i32 3, i32 0>
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = fsub <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bc, <2 x float> %i.be, <2 x i32> <i32 3, i32 0>
  %i.bu = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = fsub <2 x float> %i.bt, %i.bu           ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fsub <2 x float> %i.bg, %i.bw
  %i.by = shufflevector <2 x float> %i.bc, <2 x float> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bz = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = insertelement <2 x float> %i.bz, float %.fr.i, i64 1
  %i.cb = fsub <2 x float> %i.by, %i.ca           ; 2 uses
  %i.cc = extractelement <2 x float> %i.bv, i64 1
  %i.cd = fneg float %i.cc
  %i.ce = extractelement <2 x float> %i.bv, i64 0
  %i.cf = fmul float %i.ce, %i.cd
  %i.cg = extractelement <2 x float> %i.bs, i64 1
  %i.ch = extractelement <2 x float> %i.cb, i64 0
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ch, float %i.cf)
  %i.cj = fpext float %i.ci to double             ; 3 uses
  %i.ck = fneg <2 x float> %i.cb
  %i.cl = fmul <2 x float> %i.bs, %i.ck
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bv, <2 x float> %i.cl)
  %i.cn = fpext <2 x float> %i.cm to <2 x double> ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.co, double 0.000000e+00)
  %i.cq = extractelement <2 x double> %i.cn, i64 1 ; 2 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cp)
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %i.cr) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.cs)
  %i.ct = fcmp une double %i.cs, 0.000000e+00
  %i.cu = fdiv double 1.000000e+00, %sqrt.i.i
  %i.cv = select i1 %i.ct, double %i.cu, double 0.000000e+00 ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cx, %i.cn
  %i.cz = fptrunc <2 x double> %i.cy to <2 x float>
  %i.da = fmul double %i.cv, %i.cj
  %i.db = fptrunc double %i.da to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %.lr.ph
  %.sroa.0114.1 = phi <2 x float> [ splat (float +qnan), %bb.c ], [ splat (float +qnan), %.lr.ph ], [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %bb.d ], [ splat (float +qnan), %bb.e ], [ %i.cz, %bb.f ]
  %.sroa.7.1 = phi float [ +qnan, %bb.c ], [ +qnan, %.lr.ph ], [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +qnan, %bb.e ], [ %i.db, %bb.f ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  store <2 x float> %.sroa.0114.1, ptr %i.dc, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store float %.sroa.7.1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !55  ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !280
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %i.a) #20, !inline_history !281
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv12CrossProductIdEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15RgbdNormalsImplIdED2Ev(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIdEE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12CrossProductIdED0Ev(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIdEE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !90
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIdE5cacheEv(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 0, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIdE7computeERKNS_3MatERS2_(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !86   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph94.split, label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge, %.lr.ph94, %bb.a
  ret void

.lr.ph94.split:                                   ; preds = %.lr.ph94, %._crit_edge
  %i.k = phi i32 [ %i.ab, %._crit_edge ], [ %i.b, %.lr.ph94 ] ; 2 uses
  %i.l = phi i32 [ %i.ac, %._crit_edge ], [ %i.i, %.lr.ph94 ] ; 3 uses
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge ], [ 0, %.lr.ph94 ] ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !51   ; 2 uses
  %i.o = mul i64 %i.n, %indvars.iv98
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add nsw i32 %i.k, -1
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv98, %i.r
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 3 uses
  %i.t = mul i64 %i.n, %indvars.iv.next99
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = select i1 %i.s, ptr %i.u, ptr null
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.x = load i64, ptr %i.g, align 8, !tbaa !51
  %i.y = mul i64 %i.x, %indvars.iv98
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph94.split
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.lr.ph94.split ] ; 2 uses
  %i.ac = phi i32 [ %i.ct, %._crit_edge.loopexit ], [ %i.l, %.lr.ph94.split ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next99, %i.ad
  br i1 %i.ae, label %.lr.ph94.split, label %._crit_edge95, !llvm.loop !282

.lr.ph:                                           ; preds = %.lr.ph94.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph94.split ] ; 5 uses
  %i.af = phi i32 [ %i.ct, %bb.g ], [ %i.l, %.lr.ph94.split ]
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv ; 6 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !91 ; 3 uses
end_hunk_0
