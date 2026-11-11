Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/normal?download=true
inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2cv3SRIIdE7computeERKNS_3MatERS2_:bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %.149111, i64 24
  store double 0.000000e+00, ptr %i.hf, align 8, !tbaa !91
  %i.hg = getelementptr inbounds nuw i8, ptr %.149111, i64 32 ; 2 uses
  %.not95 = icmp eq ptr %i.hg, %i.fa
  br i1 %.not95, label %._crit_edge114, label %.lr.ph113, !llvm.loop !327

bb.s:                                             ; preds = %._crit_edge
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  br label %bb.t

._crit_edge114:                                   ; preds = %_ZN2cv10signNormalIdEEvT_S1_S1_RNS_3VecIS1_Li4EEE.exit101, %bb.p
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %i.a) #20, !inline_history !328
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
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
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12CrossProductIfED0Ev(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !60
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIfE5cacheEv(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i8 0, ptr %i.a, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12CrossProductIfE7computeERKNS_3MatERS2_(ptr noundef nonnull align 8 dereferenceable(441) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph134, label %._crit_edge135

.lr.ph134:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph134.split, label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge, %.lr.ph134, %bb.a
  ret void

.lr.ph134.split:                                  ; preds = %.lr.ph134, %._crit_edge
  %i.k = phi i32 [ %i.ab, %._crit_edge ], [ %i.b, %.lr.ph134 ] ; 2 uses
  %i.l = phi i32 [ %i.ac, %._crit_edge ], [ %i.i, %.lr.ph134 ] ; 3 uses
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge ], [ 0, %.lr.ph134 ] ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.o = mul i64 %i.n, %indvars.iv138
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add nsw i32 %i.k, -1
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv138, %i.r
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 3 uses
  %i.t = mul i64 %i.n, %indvars.iv.next139
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = select i1 %i.s, ptr %i.u, ptr null
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.x = load i64, ptr %i.g, align 8, !tbaa !49
  %i.y = mul i64 %i.x, %indvars.iv138
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph134.split
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.lr.ph134.split ] ; 2 uses
  %i.ac = phi i32 [ %i.ch, %._crit_edge.loopexit ], [ %i.l, %.lr.ph134.split ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next139, %i.ad
  br i1 %i.ae, label %.lr.ph134.split, label %._crit_edge135, !llvm.loop !329

.lr.ph:                                           ; preds = %.lr.ph134.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph134.split ] ; 5 uses
  %i.af = phi i32 [ %i.ch, %bb.g ], [ %i.l, %.lr.ph134.split ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %4 = load float, ptr %3, align 4, !tbaa !65
  %5 = load <2 x float>, ptr %i.ag, align 4, !tbaa !65 ; 6 uses
  %.fr.i = freeze float %4                        ; 2 uses
  %i.ah = add nsw i32 %i.af, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv, %i.ai
  br i1 %i.aj, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !52
  %i.al = add nsw i32 %i.ak, -1
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv138, %i.am
  br i1 %i.an, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ao = extractelement <2 x float> %5, i64 0
  %i.ap = fcmp uno float %i.ao, 0.000000e+00
  %i.aq = extractelement <2 x float> %5, i64 1
  %spec.select.i = fcmp uno float %i.aq, %.fr.i
  %i.ar = select i1 %i.ap, i1 true, i1 %spec.select.i
  br i1 %i.ar, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.av = load float, ptr %i.au, align 4, !tbaa !65
  %.fr.i68 = freeze float %i.av                   ; 2 uses
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !65 ; 4 uses
  %i.ax = load float, ptr %i.at, align 4, !tbaa !65
  %i.ay = load <2 x float>, ptr %6, align 4, !tbaa !65 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load float, ptr %7, align 4, !tbaa !65
  %.fr.i72 = freeze float %8                      ; 2 uses
  %i.az = extractelement <2 x float> %i.aw, i64 0
  %i.ba = fcmp uno float %i.az, 0.000000e+00
  %spec.select.i69 = fcmp uno float %i.ax, %.fr.i68
  %i.bb = select i1 %i.ba, i1 true, i1 %spec.select.i69
  br i1 %i.bb, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = extractelement <2 x float> %i.ay, i64 0
  %i.bd = fcmp uno float %i.bc, 0.000000e+00
  %i.be = extractelement <2 x float> %i.ay, i64 1
  %spec.select.i73 = fcmp uno float %i.be, %.fr.i72
  %i.bf = select i1 %i.bd, i1 true, i1 %spec.select.i73
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %9 = shufflevector <2 x float> %i.aw, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %10 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fsub <2 x float> %9, %10
  %11 = fsub <2 x float> %i.ay, %5                ; 2 uses
  %12 = insertelement <2 x float> %i.aw, float %.fr.i72, i64 0
  %13 = insertelement <2 x float> %5, float %.fr.i, i64 0 ; 2 uses
  %i.bh = fsub <2 x float> %12, %13               ; 3 uses
  %14 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x float> %14, float %.fr.i68, i64 0
  %16 = shufflevector <2 x float> %13, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %i.bi = fsub <2 x float> %15, %16               ; 2 uses
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  %i.bk = fneg float %i.bj
  %i.bl = extractelement <2 x float> %i.bh, i64 0
  %i.bm = fmul float %i.bl, %i.bk
  %i.bn = extractelement <2 x float> %11, i64 1
  %i.bo = extractelement <2 x float> %i.bi, i64 0
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bo, float %i.bm)
  %i.bq = fpext float %i.bp to double             ; 3 uses
  %17 = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double 0.000000e+00)
  %i.br = fneg <2 x float> %i.bi
  %i.bs = fmul <2 x float> %11, %i.br
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.bs)
  %i.bu = fpext <2 x float> %i.bt to <2 x double> ; 3 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %17)
  %i.bx = extractelement <2 x double> %i.bu, i64 1 ; 2 uses
  %i.by = tail call noundef double @llvm.fmuladd.f64(double %i.bx, double %i.bx, double %i.bw) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.by)
  %i.bz = fcmp une double %i.by, 0.000000e+00
  %i.ca = fdiv double 1.000000e+00, %sqrt.i.i
  %i.cb = select i1 %i.bz, double %i.ca, double 0.000000e+00 ; 2 uses
  %18 = fmul double %i.cb, %i.bq
  %19 = fptrunc double %18 to float
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cd, %i.bu
  %i.cf = fptrunc <2 x double> %i.ce to <2 x float> ; 2 uses
  %.sroa.0114.0.vec.insert117 = insertelement <2 x float> poison, float %19, i64 0
  %20 = shufflevector <2 x float> %.sroa.0114.0.vec.insert117, <2 x float> %i.cf, <2 x i32> <i32 0, i32 2>
  %21 = extractelement <2 x float> %i.cf, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %.lr.ph
  %.sroa.0114.1 = phi <2 x float> [ splat (float +qnan), %bb.c ], [ splat (float +qnan), %.lr.ph ], [ splat (float +qnan), %bb.b ], [ splat (float +qnan), %bb.d ], [ splat (float +qnan), %bb.e ], [ %20, %bb.f ]
  %.sroa.7.1 = phi float [ +qnan, %bb.c ], [ +qnan, %.lr.ph ], [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +qnan, %bb.e ], [ %21, %bb.f ]
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  store <2 x float> %.sroa.0114.1, ptr %i.cg, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store float %.sroa.7.1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.h, align 4, !tbaa !53  ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !330
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(441) dereferenceable(441) %i.a) #20, !inline_history !331
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
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
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIdEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12CrossProductIdED0Ev(ptr noundef nonnull align 8 dereferenceable(441) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIdEE, i64 16), ptr %0, align 8, !tbaa !26
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
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.o = mul i64 %i.n, %indvars.iv98
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = add nsw i32 %i.k, -1
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv98, %i.r
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 3 uses
  %i.t = mul i64 %i.n, %indvars.iv.next99
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = select i1 %i.s, ptr %i.u, ptr null
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.x = load i64, ptr %i.g, align 8, !tbaa !49
  %i.y = mul i64 %i.x, %indvars.iv98
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = icmp sgt i32 %i.l, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph94.split
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.lr.ph94.split ] ; 2 uses
  %i.ac = phi i32 [ %i.cr, %._crit_edge.loopexit ], [ %i.l, %.lr.ph94.split ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next99, %i.ad
  br i1 %i.ae, label %.lr.ph94.split, label %._crit_edge95, !llvm.loop !332

.lr.ph:                                           ; preds = %.lr.ph94.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph94.split ] ; 5 uses
  %i.af = phi i32 [ %i.cr, %bb.g ], [ %i.l, %.lr.ph94.split ]
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ah = load double, ptr %3, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load double, ptr %i.ag, align 8, !tbaa !91 ; 3 uses
  %.fr.i = freeze double %i.ah                    ; 3 uses
  %i.ak = load double, ptr %i.ai, align 8, !tbaa !91 ; 2 uses
  %i.al = add nsw i32 %i.af, -1
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv, %i.am
  br i1 %i.an, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !85
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv98, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %or.cond.i = fcmp uno double %i.aj, %.fr.i
  %i.as = fcmp uno double %i.ak, 0.000000e+00
  %i.at = select i1 %or.cond.i, i1 true, i1 %i.as
  br i1 %i.at, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.av = load double, ptr %i.au, align 8, !tbaa !91 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !91
  %4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.fr.i22 = freeze double %i.ax                  ; 2 uses
  %i.ay = load double, ptr %4, align 8, !tbaa !91 ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv ; 3 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !91 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !91
  %.fr.i24 = freeze double %i.bc                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !91 ; 2 uses
  %or.cond.i23 = fcmp uno double %i.av, %.fr.i22
  %i.bf = fcmp uno double %i.ay, 0.000000e+00
  %i.bg = select i1 %or.cond.i23, i1 true, i1 %i.bf
  br i1 %i.bg, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i25 = fcmp uno double %i.ba, %.fr.i24
  %i.bh = fcmp uno double %i.be, 0.000000e+00
  %i.bi = select i1 %or.cond.i25, i1 true, i1 %i.bh
  br i1 %i.bi, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = fsub double %i.ba, %i.aj                ; 2 uses
  %i.bk = fsub double %.fr.i24, %.fr.i            ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.be, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fsub <2 x double> %i.bm, %i.bo          ; 2 uses
  %i.bq = fsub double %i.av, %i.aj                ; 2 uses
  %i.br = fsub double %.fr.i22, %.fr.i            ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 0
  %i.bu = fneg <2 x double> %i.bt
  %i.bv = insertelement <2 x double> %i.bs, double %i.bj, i64 1
  %i.bw = fmul <2 x double> %i.bv, %i.bu
  %i.bx = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bq, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.by, <2 x double> %i.bw) ; 3 uses
  %i.ca = fneg double %i.bq
  %i.cb = fmul double %i.bk, %i.ca
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.br, double %i.cb) ; 3 uses
  %i.cd = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cd, double 0.000000e+00)
  %i.cf = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.ce)
  %i.ch = tail call noundef double @llvm.fmuladd.f64(double %i.cc, double %i.cc, double %i.cg) ; 2 uses
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.ch)
  %i.ci = fcmp une double %i.ch, 0.000000e+00
  %i.cj = fdiv double 1.000000e+00, %sqrt.i.i
  %i.ck = select i1 %i.ci, double %i.cj, double 0.000000e+00 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %i.bz, %i.cm
  %i.co = fmul double %i.cc, %i.ck
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %.lr.ph
  %.sroa.763.1 = phi double [ +qnan, %bb.c ], [ +qnan, %.lr.ph ], [ +qnan, %bb.b ], [ +qnan, %bb.d ], [ +qnan, %bb.e ], [ %i.co, %bb.f ]
  %i.cp = phi <2 x double> [ splat (double +qnan), %bb.c ], [ splat (double +qnan), %.lr.ph ], [ splat (double +qnan), %bb.b ], [ splat (double +qnan), %bb.d ], [ splat (double +qnan), %bb.e ], [ %i.cn, %bb.f ]
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv ; 3 uses
  store <2 x double> %i.cp, ptr %i.cq, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store double %.sroa.763.1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.h, align 4, !tbaa !86  ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !333
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !66}
!1 = distinct !{null}
!2 = distinct !{!2, !66}
!3 = distinct !{!3, !66}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !8, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"_ZTSN2cv5Size_IiEE", !9, i64 0, !9, i64 4}
!20 = !{!"_ZTSN2cv11_InputArrayE", !9, i64 0, !12, i64 8, !19, i64 16}
!21 = !{!20, !12, i64 8}
!22 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!23 = !{!22, !9, i64 8}
!24 = !{!22, !9, i64 12}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!28 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!29 = !{!"_ZTSN2cv10DataLayoutE", !8, i64 0}
!30 = !{!"_ZTSN2cv8MatShapeE", !9, i64 0, !29, i64 4, !9, i64 8, !8, i64 12}
!31 = !{!"_ZTSN2cv7MatStepE", !8, i64 0}
!32 = !{!"_ZTSN2cv3MatE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !27, i64 56, !28, i64 64, !30, i64 72, !31, i64 128}
!33 = !{!32, !9, i64 0}
!34 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!35 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0}
!36 = !{!9, !9, i64 0}
!37 = !{!35, !34, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"_ZTSN2cv11RgbdNormalsE"}
!40 = !{!"_ZTSN2cv11RgbdNormals17RgbdNormalsMethodE", !8, i64 0}
!41 = !{!"bool", !8, i64 0}
!42 = !{!"_ZTSN2cv15RgbdNormalsImplIfEE", !39, i64 0, !9, i64 8, !9, i64 12, !32, i64 16, !32, i64 224, !9, i64 432, !40, i64 436, !41, i64 440}
!43 = !{!"double", !8, i64 0}
!44 = !{!"_ZTSN2cv7LINEMODIfEE", !42, i64 0, !43, i64 448}
!45 = !{!44, !43, i64 448}
!46 = !{!"_ZTSN2cv15RgbdNormalsImplIdEE", !39, i64 0, !9, i64 8, !9, i64 12, !32, i64 16, !32, i64 224, !9, i64 432, !40, i64 436, !41, i64 440}
!47 = !{!"_ZTSN2cv7LINEMODIdEE", !46, i64 0, !43, i64 448}
!48 = !{!47, !43, i64 448}
!49 = !{!15, !15, i64 0}
!50 = !{!"_ZTSSt9type_info", !13, i64 8}
!51 = !{!50, !13, i64 8}
!52 = !{!42, !9, i64 8}
!53 = !{!42, !9, i64 12}
!54 = !{!42, !9, i64 432}
!55 = !{!42, !40, i64 436}
!56 = !{!42, !41, i64 440}
!57 = !{!32, !9, i64 12}
!58 = !{!32, !9, i64 8}
!59 = !{!20, !9, i64 0}
!60 = !{ptr @_ZN2cv15RgbdNormalsImplIfED2Ev}
!61 = !{!32, !9, i64 4}
!62 = !{!30, !9, i64 0}
!63 = !{!32, !13, i64 24}
!64 = !{!"float", !8, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !71, i64 16}
!75 = !{!72, !71, i64 8}
!76 = !{!19, !9, i64 0}
!77 = !{!19, !9, i64 4}
!78 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!79 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !8, i64 0}
!80 = !{!"_ZTSN2cv3VecIdLi4EEE", !79, i64 0}
!81 = !{!"_ZTSN2cv7Scalar_IdEE", !80, i64 0}
end_hunk_0
