Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/kdtree?download=true
inline.NumInlined: 388
inline.NumDeleted: 194
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv2ml6KDTree5buildERKNS_11_InputArrayES4_b:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.io = load double, ptr %i.in, align 8, !tbaa !103
  %i.ip = fneg double %i.im
  %i.iq = fmul double %i.im, %i.ip
  %i.ir = call double @llvm.fmuladd.f64(double %i.io, double %i.gm, double %i.iq) ; 2 uses
  %i.is = fcmp olt double %.0308, %i.ir           ; 2 uses
  %i.it = trunc nuw nsw i64 %indvars.iv325 to i32
  %.1114 = select i1 %i.is, i32 %i.it, i32 %.0113307 ; 2 uses
  %.1 = select i1 %i.is, double %i.ir, double %.0308
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge310, label %.lr.ph309, !llvm.loop !78

._crit_edge310:                                   ; preds = %.lr.ph309, %.preheader
  %.0113.lcssa = phi i32 [ -1, %.preheader ], [ %.1114, %.lr.ph309 ] ; 2 uses
  %i.iu = load ptr, ptr %0, align 8, !tbaa !31    ; 6 uses
  %i.iv = ptrtoint ptr %i.fv to i64
  %i.iw = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 3 uses
  %i.iy = ashr exact i64 %i.ix, 4                 ; 4 uses
  %i.iz = trunc i64 %i.iy to i32                  ; 3 uses
  %i.ja = add nsw i32 %i.iz, 1                    ; 2 uses
  %.not.i.i173 = icmp eq ptr %i.fv, %i.fu
  br i1 %.not.i.i173, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge310
  store i32 -1, ptr %i.fv, align 4, !tbaa !43
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 -1, ptr %.sroa.6249.0..sroa_idx, align 4, !tbaa !43
  %.sroa.7252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 -1, ptr %.sroa.7252.0..sroa_idx, align 4, !tbaa !43
  %.sroa.8255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store float 0.000000e+00, ptr %.sroa.8255.0..sroa_idx, align 4, !tbaa !51
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  store ptr %i.jb, ptr %i.v, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit188

bb.be:                                            ; preds = %._crit_edge310
  %i.jc = icmp eq i64 %i.ix, 9223372036854775792
  br i1 %i.jc, label %.invoke, label %_ZNKSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i174

.invoke:                                          ; preds = %bb.bh, %bb.be, %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #14
          to label %.cont unwind label %.body214.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i174: ; preds = %bb.be
  %.sroa.speculated.i.i.i.i175 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i.i175, %i.iy ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.iy
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jd, i64 576460752303423487)
  %i.jg = select i1 %i.je, i64 576460752303423487, i64 %i.jf ; 3 uses
  %.not.i.i.i.i176 = icmp ne i64 %i.jg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i176)
  %i.jh = shl nuw nsw i64 %i.jg, 4
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #15
          to label %.noexc187 unwind label %.body214.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc187:                                        ; preds = %_ZNKSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i174
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ix ; 4 uses
  store i32 -1, ptr %i.jj, align 4, !tbaa !43
  %.sroa.6249.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 -1, ptr %.sroa.6249.0..sroa_idx250, align 4, !tbaa !43
  %.sroa.7252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i32 -1, ptr %.sroa.7252.0..sroa_idx253, align 4, !tbaa !43
  %.sroa.8255.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store float 0.000000e+00, ptr %.sroa.8255.0..sroa_idx256, align 4, !tbaa !51
  %.not10.i.i.i.i.i.i177 = icmp eq ptr %i.iu, %i.fu
  br i1 %.not10.i.i.i.i.i.i177, label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i182, label %.lr.ph.i.i.i.i.i.i178

.lr.ph.i.i.i.i.i.i178:                            ; preds = %.noexc187, %.lr.ph.i.i.i.i.i.i178
  %.012.i.i.i.i.i.i179 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i178 ], [ %i.ji, %.noexc187 ] ; 2 uses
  %.0911.i.i.i.i.i.i180 = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i178 ], [ %i.iu, %.noexc187 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i179, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i180, i64 16, i1 false), !tbaa.struct !100, !alias.scope !111
  %i.jk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i180, i64 16 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i179, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i181 = icmp eq ptr %i.jk, %i.fu
  br i1 %.not.i.i.i.i.i.i181, label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i182, label %.lr.ph.i.i.i.i.i.i178, !llvm.loop !71

_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i182: ; preds = %.lr.ph.i.i.i.i.i.i178, %.noexc187
  %.0.lcssa.i.i.i.i.i.i183 = phi ptr [ %i.ji, %.noexc187 ], [ %i.jl, %.lr.ph.i.i.i.i.i.i178 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i183, i64 16 ; 2 uses
  %.not.i23.i.i.i184 = icmp eq ptr %i.iu, null
  br i1 %.not.i23.i.i.i184, label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i182
  %i.jn = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.jp) #13
  br label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185

_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185: ; preds = %bb.bf, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i182
  store ptr %i.ji, ptr %0, align 8, !tbaa !31
  store ptr %i.jm, ptr %i.v, align 8, !tbaa !99
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.jg ; 2 uses
  store ptr %i.jq, ptr %i.w, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit188

_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit188: ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185, %bb.bd
  %i.jr = phi ptr [ %i.ji, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185 ], [ %i.iu, %bb.bd ] ; 6 uses
  %i.js = phi ptr [ %i.jq, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185 ], [ %i.ft, %bb.bd ] ; 5 uses
  %i.jt = phi ptr [ %i.jm, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i185 ], [ %i.jb, %bb.bd ] ; 6 uses
  %.not.i.i189 = icmp eq ptr %i.jt, %i.js
  br i1 %.not.i.i189, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit188
  store i32 -1, ptr %i.jt, align 4, !tbaa !43
  %.sroa.6240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 -1, ptr %.sroa.6240.0..sroa_idx, align 4, !tbaa !43
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 -1, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !43
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !51
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  store ptr %i.ju, ptr %i.v, align 8, !tbaa !99
  br label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204

bb.bh:                                            ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit188
  %i.jv = ptrtoint ptr %i.js to i64
  %i.jw = ptrtoint ptr %i.jr to i64               ; 2 uses
  %i.jx = sub i64 %i.jv, %i.jw                    ; 3 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775792
  br i1 %i.jy, label %.invoke, label %_ZNKSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i190

_ZNKSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i190: ; preds = %bb.bh
  %i.jz = ashr exact i64 %i.jx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i191 = call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i.i191, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = call i64 @llvm.umin.i64(i64 %i.ka, i64 576460752303423487)
  %i.kd = select i1 %i.kb, i64 576460752303423487, i64 %i.kc ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.kd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #15
          to label %.noexc203 unwind label %.body214.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i190
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.jx ; 4 uses
  store i32 -1, ptr %i.kg, align 4, !tbaa !43
  %.sroa.6240.0..sroa_idx241 = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 -1, ptr %.sroa.6240.0..sroa_idx241, align 4, !tbaa !43
  %.sroa.7.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 -1, ptr %.sroa.7.0..sroa_idx243, align 4, !tbaa !43
  %.sroa.8.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx245, align 4, !tbaa !51
  %.not10.i.i.i.i.i.i193 = icmp eq ptr %i.jr, %i.js
  br i1 %.not10.i.i.i.i.i.i193, label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i194

.lr.ph.i.i.i.i.i.i194:                            ; preds = %.noexc203, %.lr.ph.i.i.i.i.i.i194
  %.012.i.i.i.i.i.i195 = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i194 ], [ %i.kf, %.noexc203 ] ; 2 uses
  %.0911.i.i.i.i.i.i196 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i194 ], [ %i.jr, %.noexc203 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i195, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i196, i64 16, i1 false), !tbaa.struct !100, !alias.scope !112
  %i.kh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i196, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i195, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i197 = icmp eq ptr %i.kh, %i.js
  br i1 %.not.i.i.i.i.i.i197, label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i198, label %.lr.ph.i.i.i.i.i.i194, !llvm.loop !71

_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i198: ; preds = %.lr.ph.i.i.i.i.i.i194, %.noexc203
  %.0.lcssa.i.i.i.i.i.i199 = phi ptr [ %i.kf, %.noexc203 ], [ %i.ki, %.lr.ph.i.i.i.i.i.i194 ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i199, i64 16 ; 2 uses
  %.not.i23.i.i.i200 = icmp eq ptr %i.jr, null
  br i1 %.not.i23.i.i.i200, label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i198
  %i.kk = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = sub i64 %i.kl, %i.jw
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.km) #13
  br label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201

_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201: ; preds = %bb.bi, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i198
  store ptr %i.kf, ptr %0, align 8, !tbaa !31
  store ptr %i.kj, ptr %i.v, align 8, !tbaa !99
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd ; 2 uses
  store ptr %i.kn, ptr %i.w, align 8, !tbaa !32
  br label %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204

_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204: ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201, %bb.bg
  %i.ko = phi ptr [ %i.kf, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201 ], [ %i.jr, %bb.bg ]
  %i.kp = phi ptr [ %i.kn, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201 ], [ %i.js, %bb.bg ] ; 2 uses
  %i.kq = phi ptr [ %i.kj, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i201 ], [ %i.ju, %bb.bg ]
  %i.kr = sext i32 %i.gf to i64
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.kr ; 4 uses
  store i32 %.0113.lcssa, ptr %i.ks, align 4, !tbaa !53
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store i32 %i.iz, ptr %i.kt, align 4, !tbaa !54
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i32 %i.ja, ptr %i.ku, align 4, !tbaa !55
  %i.kv = sext i32 %.0113.lcssa to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.kv ; 9 uses
  %i.kx = add nsw i32 %i.gb, %i.fz
  %i.ky = sdiv i32 %i.kx, 2                       ; 8 uses
  %i.kz = icmp sgt i32 %i.gb, %i.fz
  br i1 %i.kz, label %.lr.ph130.i, label %.thread.i

.lr.ph130.i:                                      ; preds = %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204, %bb.bt
  %.0100128.i = phi i32 [ %.1101.i, %bb.bt ], [ %i.fz, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204 ] ; 11 uses
  %.0103127.i = phi i32 [ %.1104.i, %bb.bt ], [ %i.gb, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204 ] ; 10 uses
  %i.la = add nsw i32 %.0103127.i, %.0100128.i
  %i.lb = sdiv i32 %i.la, 2                       ; 3 uses
  %i.lc = sext i32 %.0100128.i to i64             ; 4 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.lc
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !47 ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !51 ; 6 uses
  %i.lh = sext i32 %i.lb to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.lh
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !47 ; 3 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !51 ; 6 uses
  %i.lm = sext i32 %.0103127.i to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.lm ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !47 ; 5 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !51 ; 7 uses
  %i.lr = fcmp olt float %i.lg, %i.ll
  br i1 %i.lr, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.lr.ph130.i
  %i.ls = fcmp olt float %i.ll, %i.lq
  br i1 %i.ls, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lt = fcmp olt float %i.lg, %i.lq             ; 3 uses
  %i.lu = select i1 %i.lt, i32 %.0103127.i, i32 %.0100128.i
  %i.lv = select i1 %i.lt, i64 %i.lo, i64 %i.le
  %i.lw = select i1 %i.lt, float %i.lq, float %i.lg
  br label %bb.bo

bb.bl:                                            ; preds = %.lr.ph130.i
  %i.lx = fcmp olt float %i.lg, %i.lq
  br i1 %i.lx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ly = fcmp oeq float %i.ll, %i.lg             ; 3 uses
  %i.lz = select i1 %i.ly, i32 %.0103127.i, i32 %.0100128.i
  %i.ma = select i1 %i.ly, i64 %i.lo, i64 %i.le
  %i.mb = select i1 %i.ly, float %i.lq, float %i.lg
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.mc = fcmp olt float %i.ll, %i.lq             ; 3 uses
  %i.md = select i1 %i.mc, i32 %.0103127.i, i32 %i.lb
  %i.me = select i1 %i.mc, i64 %i.lo, i64 %i.lj
  %i.mf = select i1 %i.mc, float %i.lq, float %i.ll
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk, %bb.bj
  %i.mg = phi float [ %i.lw, %bb.bk ], [ %i.mf, %bb.bn ], [ %i.mb, %bb.bm ], [ %i.ll, %bb.bj ] ; 3 uses
  %i.mh = phi i64 [ %i.lv, %bb.bk ], [ %i.me, %bb.bn ], [ %i.ma, %bb.bm ], [ %i.lj, %bb.bj ]
  %i.mi = phi i32 [ %i.lu, %bb.bk ], [ %i.md, %bb.bn ], [ %i.lz, %bb.bm ], [ %i.lb, %bb.bj ]
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.mj
  store i64 %i.lo, ptr %i.mk, align 8, !tbaa !47
  store i64 %i.mh, ptr %i.ln, align 8, !tbaa !47
  %i.ml = add nsw i32 %.0100128.i, -1             ; 3 uses
  %.not124.i = icmp sgt i32 %.0100128.i, %.0103127.i
  br i1 %.not124.i, label %._crit_edge.i213, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bo
  %18 = add i32 %.0103127.i, 1                    ; 2 uses
  %19 = sub i32 %18, %.0100128.i
  %xtraiter457 = and i32 %19, 1
  %lcmp.mod458.not = icmp eq i32 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.mm = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.lc ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !47 ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.mn
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !51
  %i.mq = fcmp ugt float %i.mp, %i.mg
  br i1 %i.mq, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.prol
  %i.mr = sext i32 %.0100128.i to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.mr ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !47
  store i64 %i.mn, ptr %i.ms, align 8, !tbaa !47
  store i64 %i.mt, ptr %i.mm, align 8, !tbaa !47
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.bp, %.lr.ph.i.prol
  %.197.i.prol = phi i32 [ %.0100128.i, %bb.bp ], [ %i.ml, %.lr.ph.i.prol ] ; 2 uses
  %indvars.iv.next.i210.prol = add nsw i64 %i.lc, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.197.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.197.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %indvars.iv.i209.unr = phi i64 [ %i.lc, %.lr.ph.preheader.i ], [ %indvars.iv.next.i210.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.096125.i.unr = phi i32 [ %i.ml, %.lr.ph.preheader.i ], [ %.197.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.mu = icmp eq i32 %.0103127.i, %.0100128.i
  br i1 %i.mu, label %._crit_edge.i213, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.bs
  %indvars.iv.i209 = phi i64 [ %indvars.iv.next.i210.1, %bb.bs ], [ %indvars.iv.i209.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.096125.i = phi i32 [ %.197.i.1, %bb.bs ], [ %.096125.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %indvars.iv.i209 ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !47 ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.mw
  %i.my = load float, ptr %i.mx, align 4, !tbaa !51
  %i.mz = fcmp ugt float %i.my, %i.mg
  br i1 %i.mz, label %.lr.ph.i.1, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i
  %i.na = add nsw i32 %.096125.i, 1               ; 2 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.nb ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !47
  store i64 %i.mw, ptr %i.nc, align 8, !tbaa !47
  store i64 %i.nd, ptr %i.mv, align 8, !tbaa !47
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bq, %.lr.ph.i
  %.197.i = phi i32 [ %i.na, %bb.bq ], [ %.096125.i, %.lr.ph.i ] ; 2 uses
  %i.ne = getelementptr [8 x i8], ptr %.sroa.0282.0398, i64 %indvars.iv.i209
  %i.nf = getelementptr i8, ptr %i.ne, i64 8      ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !47 ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ng
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !51
  %i.nj = fcmp ugt float %i.ni, %i.mg
  br i1 %i.nj, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.1
  %i.nk = add nsw i32 %.197.i, 1                  ; 2 uses
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.nl ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !47
  store i64 %i.ng, ptr %i.nm, align 8, !tbaa !47
  store i64 %i.nn, ptr %i.nf, align 8, !tbaa !47
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph.i.1
  %.197.i.1 = phi i32 [ %i.nk, %bb.br ], [ %.197.i, %.lr.ph.i.1 ] ; 2 uses
  %indvars.iv.next.i210.1 = add nsw i64 %indvars.iv.i209, 2 ; 2 uses
  %lftr.wideiv.i211.1 = trunc i64 %indvars.iv.next.i210.1 to i32
  %exitcond.not.i212.1 = icmp eq i32 %18, %lftr.wideiv.i211.1
  br i1 %exitcond.not.i212.1, label %._crit_edge.i213, label %.lr.ph.i, !llvm.loop !85

._crit_edge.i213:                                 ; preds = %.lr.ph.i.prol.loopexit, %bb.bs, %bb.bo
  %.096.lcssa.i = phi i32 [ %i.ml, %bb.bo ], [ %.197.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.197.i.1, %bb.bs ] ; 5 uses
  %i.no = icmp eq i32 %.096.lcssa.i, %i.ky
  br i1 %i.no, label %.thread.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i213
  %i.np = icmp sgt i32 %.096.lcssa.i, %i.ky       ; 2 uses
  %i.nq = icmp eq i32 %.0103127.i, %.096.lcssa.i
  %.neg.i = sext i1 %i.nq to i32
  %i.nr = add i32 %.096.lcssa.i, %.neg.i
  %.1104.i = select i1 %i.np, i32 %i.nr, i32 %.0103127.i ; 2 uses
  %.1101.i = select i1 %i.np, i32 %.0100128.i, i32 %.096.lcssa.i ; 2 uses
  %i.ns = icmp sgt i32 %.1104.i, %.1101.i
  br i1 %i.ns, label %.lr.ph130.i, label %.thread.i

.thread.i:                                        ; preds = %bb.bt, %._crit_edge.i213, %_ZNSt6vectorIN2cv2ml6KDTree4NodeESaIS3_EE9push_backEOS3_.exit204
  %i.nt = sext i32 %i.ky to i64                   ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %i.nt
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !47
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !51 ; 3 uses
  %i.ny = icmp slt i32 %i.fz, %i.ky
  br i1 %i.ny, label %.lr.ph133.preheader.i, label %.preheader.i205

.lr.ph133.preheader.i:                            ; preds = %.thread.i
  %i.nz = sext i32 %i.fz to i64
  br label %.lr.ph133.i

bb.bu:                                            ; preds = %.lr.ph133.i
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %lftr.wideiv141.i = trunc i64 %indvars.iv.next139.i to i32
  %exitcond142.not.i = icmp eq i32 %i.ky, %lftr.wideiv141.i
  br i1 %exitcond142.not.i, label %.preheader.i205, label %.lr.ph133.i, !llvm.loop !86

.preheader.i205:                                  ; preds = %bb.bu, %.thread.i
  %i.oa = icmp sgt i32 %i.gb, %i.ky               ; 2 uses
  br i1 %i.oa, label %.lr.ph135.preheader.i, label %_ZN2cv2mlL15medianPartitionEPmiiPKf.exit

.lr.ph135.preheader.i:                            ; preds = %.preheader.i205
  %i.ob = sext i32 %i.gb to i64
  br label %.lr.ph135.i

.lr.ph133.i:                                      ; preds = %bb.bu, %.lr.ph133.preheader.i
  %indvars.iv138.i = phi i64 [ %i.nz, %.lr.ph133.preheader.i ], [ %indvars.iv.next139.i, %bb.bu ] ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %indvars.iv138.i
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !47
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.od
  %i.of = load float, ptr %i.oe, align 4, !tbaa !51
  %i.og = fcmp ugt float %i.of, %i.nx
  br i1 %i.og, label %bb.bv, label %bb.bu

bb.bv:                                            ; preds = %.lr.ph133.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv2mlL15medianPartitionEPmiiPKf, ptr noundef nonnull @.str.1, i32 noundef 125) #14
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %bb.bv
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206

bb.bz:                                            ; preds = %bb.bw
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207: ; preds = %bb.bz
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !41
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207, %bb.by
  %.pn115.i = phi { ptr, i32 } [ %i.oh, %bb.by ], [ %i.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207 ], [ %i.oi, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.body214.thread

bb.ca:                                            ; preds = %.lr.ph135.i
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, -1 ; 2 uses
  %i.oo = icmp sgt i64 %indvars.iv.next144.i, %i.nt
  br i1 %i.oo, label %.lr.ph135.i, label %_ZN2cv2mlL15medianPartitionEPmiiPKf.exit, !llvm.loop !87

.lr.ph135.i:                                      ; preds = %bb.ca, %.lr.ph135.preheader.i
  %indvars.iv143.i = phi i64 [ %i.ob, %.lr.ph135.preheader.i ], [ %indvars.iv.next144.i, %bb.ca ] ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %indvars.iv143.i
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !47
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !51
  %i.ot = fcmp ult float %i.os, %i.nx
  br i1 %i.ot, label %bb.cb, label %bb.ca

bb.cb:                                            ; preds = %.lr.ph135.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv2mlL15medianPartitionEPmiiPKf, ptr noundef nonnull @.str.1, i32 noundef 129) #14
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %bb.cb
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

bb.cf:                                            ; preds = %bb.cc
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ow = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i: ; preds = %bb.cf
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !41
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.ou, %bb.ce ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.i ], [ %i.ov, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.body214.thread

_ZN2cv2mlL15medianPartitionEPmiiPKf.exit:         ; preds = %bb.ca, %.preheader.i205
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store float %i.nx, ptr %i.pb, align 4, !tbaa !56
  %i.pc = getelementptr [8 x i8], ptr %i.gk, i64 %i.fn ; 10 uses
  %i.pd = add nsw i32 %i.ky, 1                    ; 2 uses
  %i.pe = load i32, ptr %i.em, align 4, !tbaa !44 ; 3 uses
  %i.pf = load ptr, ptr %i.bh, align 8, !tbaa !45
  %i.pg = icmp sgt i32 %i.pe, 0
  br i1 %i.pg, label %.preheader.i216, label %_ZN2cv2mlL11computeSumsERKNS_3MatEPKmiiPd.exit230

.preheader.i216:                                  ; preds = %_ZN2cv2mlL15medianPartitionEPmiiPKf.exit
  %i.ph = zext nneg i32 %i.pe to i64              ; 4 uses
  %i.pi = shl nuw nsw i64 %i.ph, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.pc, i8 0, i64 %i.pi, i1 false), !tbaa !103
  br i1 %i.oa, label %.lr.ph37.preheader.i218, label %_ZN2cv2mlL11computeSumsERKNS_3MatEPKmiiPd.exit230

.lr.ph37.preheader.i218:                          ; preds = %.preheader.i216
  %i.pj = sext i32 %i.pd to i64
  %i.pk = add i32 %i.gb, 1
  %min.iters.check437 = icmp eq i32 %i.pe, 1
  %n.vec439 = and i64 %i.ph, 2147483646           ; 3 uses
  %cmp.n449 = icmp eq i64 %n.vec439, %i.ph
  br label %.lr.ph37.i220

.lr.ph37.i220:                                    ; preds = %._crit_edge.i226, %.lr.ph37.preheader.i218
  %indvars.iv44.i221 = phi i64 [ %i.pj, %.lr.ph37.preheader.i218 ], [ %indvars.iv.next45.i227, %._crit_edge.i226 ] ; 2 uses
  %i.pl = getelementptr inbounds [8 x i8], ptr %.sroa.0282.0398, i64 %indvars.iv44.i221
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !47
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pm ; 2 uses
  br i1 %min.iters.check437, label %scalar.ph436.preheader, label %vector.body440

vector.body440:                                   ; preds = %.lr.ph37.i220, %vector.body440
  %index441 = phi i64 [ %index.next447, %vector.body440 ], [ 0, %.lr.ph37.i220 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %index441
  %wide.load442 = load <2 x float>, ptr %i.po, align 4, !tbaa !51
  %i.pp = fpext <2 x float> %wide.load442 to <2 x double> ; 3 uses
  %i.pq = shl nuw nsw i64 %index441, 4
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pq ; 2 uses
  %wide.vec443 = load <4 x double>, ptr %i.pr, align 8, !tbaa !103 ; 2 uses
  %strided.vec444 = shufflevector <4 x double> %wide.vec443, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec445 = shufflevector <4 x double> %wide.vec443, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ps = fadd <2 x double> %strided.vec444, %i.pp
  %i.pt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.pp, <2 x double> %strided.vec445)
  %interleaved.vec446 = shufflevector <2 x double> %i.ps, <2 x double> %i.pt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec446, ptr %i.pr, align 8, !tbaa !103
  %index.next447 = add nuw i64 %index441, 2       ; 2 uses
  %i.pu = icmp eq i64 %index.next447, %n.vec439
  br i1 %i.pu, label %middle.block448, label %vector.body440, !llvm.loop !88

middle.block448:                                  ; preds = %vector.body440
  br i1 %cmp.n449, label %._crit_edge.i226, label %scalar.ph436.preheader

scalar.ph436.preheader:                           ; preds = %.lr.ph37.i220, %middle.block448
  %indvars.iv.i222.ph = phi i64 [ 0, %.lr.ph37.i220 ], [ %n.vec439, %middle.block448 ]
  br label %scalar.ph436

scalar.ph436:                                     ; preds = %scalar.ph436.preheader, %scalar.ph436
  %indvars.iv.i222 = phi i64 [ %indvars.iv.next.i224, %scalar.ph436 ], [ %indvars.iv.i222.ph, %scalar.ph436.preheader ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv.i222
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !51
  %i.px = fpext float %i.pw to double             ; 3 uses
  %.idx.i223 = shl nuw nsw i64 %indvars.iv.i222, 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.idx.i223 ; 3 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !103
  %i.qa = fadd double %i.pz, %i.px
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !103
  %i.qd = call double @llvm.fmuladd.f64(double %i.px, double %i.px, double %i.qc)
  store double %i.qa, ptr %i.py, align 8, !tbaa !103
  store double %i.qd, ptr %i.qb, align 8, !tbaa !103
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i222, 1 ; 2 uses
end_hunk_0
