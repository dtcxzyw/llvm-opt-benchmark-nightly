Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hash_tsdf_functions?download=true
inline.NumInlined: 1895
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 32
begin_hunk_0_@"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE":bb.a
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa, label %bb.l, !llvm.loop !10

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa, %.lr.ph.i.i.i66.us
  %indvars.iv.i.i.i68.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i66.us ], [ %indvars.iv.next.i.i.i70.us.3, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa ]
  %.010.i.i.i69.us.epil.init = phi ptr [ %i.dq, %.lr.ph.i.i.i66.us ], [ %i.ev, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i.i.i68.us.epil = phi i64 [ %indvars.iv.i.i.i68.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i70.us.epil, %bb.m ] ; 3 uses
  %.010.i.i.i69.us.epil = phi ptr [ %.010.i.i.i69.us.epil.init, %.epil.preheader ], [ %i.fc, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i68.us.epil
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !29
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.i68.us.epil
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !28
  %i.fb = mul i64 %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %.010.i.i.i69.us.epil, i64 %i.fb ; 2 uses
  %indvars.iv.next.i.i.i70.us.epil = add nuw nsw i64 %indvars.iv.i.i.i68.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us, label %bb.m, !llvm.loop !468

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us: ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa, %bb.m, %._crit_edge.us
  %.0.lcssa.i.i.i64.us = phi ptr [ %i.dq, %._crit_edge.us ], [ %i.ev, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us.loopexit.unr-lcssa ], [ %i.fc, %bb.m ]
  br i1 %i.co, label %.lr.ph.i65.us, label %.loopexit86.us

.lr.ph.i65.us:                                    ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us, %.noexc72.us
  %.011.i.us = phi ptr [ %i.fd, %.noexc72.us ], [ %.0.lcssa.i.i.i64.us, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us ] ; 2 uses
  invoke fastcc void @"_ZZN2cv34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEiS5_RKNS_12_OutputArrayEENK3$_0clERKNS7_IfLi4EEEPKi"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %.011.i.us, ptr noundef nonnull %i.cc)
          to label %.noexc72.us unwind label %.split96.us

.noexc72.us:                                      ; preds = %.lr.ph.i65.us
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.us, i64 16
  %i.fe = load i32, ptr %i.cn, align 4, !tbaa !29
  %i.ff = add nsw i32 %i.fe, 1                    ; 2 uses
  store i32 %i.ff, ptr %i.cn, align 4, !tbaa !29
  %i.fg = icmp slt i32 %i.ff, %i.r
  br i1 %i.fg, label %.lr.ph.i65.us, label %.loopexit86.us.loopexit, !llvm.loop !469

.loopexit86.us.loopexit:                          ; preds = %.noexc72.us
  %.pre129 = load i32, ptr %i.cj, align 4, !tbaa !65
  br label %.loopexit86.us

.loopexit86.us:                                   ; preds = %.loopexit86.us.loopexit, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us
  %i.fh = phi i32 [ %.pre129, %.loopexit86.us.loopexit ], [ %i.cr, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_PKi.exit.i63.us ] ; 2 uses
  store i32 0, ptr %i.cn, align 4, !tbaa !29
  %i.fi = add nsw i32 %.03090.us, 1               ; 2 uses
  %i.fj = icmp slt i32 %i.fi, %i.fh
  br i1 %i.fj, label %.lr.ph.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !470

.split96.us:                                      ; preds = %.lr.ph.i65.us
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit86.us, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cb) #23
  br label %.loopexit

.split.us:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc43 unwind label %bb.r

.noexc43:                                         ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.10, i32 noundef 97) #22
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc43
  unreachable

bb.o:                                             ; preds = %.noexc43
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.o
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !27
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

.split94.us:                                      ; preds = %_ZN2cv8MatShapeixEm.exit53.us
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc59 unwind label %bb.r

.noexc59:                                         ; preds = %.split94.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.10, i32 noundef 97) #22
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc59
  unreachable

bb.q:                                             ; preds = %.noexc59
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.q
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !27
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

bb.r:                                             ; preds = %.split94.us, %.split.us
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit74

_ZNSt6vectorIiSaIiEED2Ev.exit74:                  ; preds = %.split96.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57
  %.pn = phi { ptr, i32 } [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57 ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41 ], [ %i.fx, %bb.r ], [ %i.fk, %.split96.us ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cb) #23
  br label %common.resume

.loopexit:                                        ; preds = %"_ZZN2cv3Mat12forEach_implINS_3VecIfLi4EEEZNS_34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS2_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISB_ESaISt4pairIKSB_SC_EEEiS9_RKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", %.lr.ph, %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN2cv34fetchNormalsFromHashTsdfVolumeUnitERKNS_14VolumeSettingsERKNS_11_InputArrayERKSt13unordered_mapINS_3VecIiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toIS8_ESaISt4pairIKS8_S9_EEEiS5_RKNS_12_OutputArrayEENK3$_0clERKNS7_IfLi4EEEPKi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %5 = alloca %"class.cv::Matx.0", align 4        ; 9 uses
  %6 = alloca %"class.cv::Point3_.4", align 8     ; 5 uses
  %7 = alloca %"class.cv::Vec.47", align 16       ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !481, !nonnull !92, !align !194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i64 64, i1 false), !tbaa !41, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !482
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833531, ptr %3, align 8, !tbaa !42, !noalias !482
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !32, !noalias !482
  store i64 17179869188, ptr %i.b, align 8, !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !482
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1040056315, ptr %4, align 8, !tbaa !42, !noalias !482
  store ptr %5, ptr %i.d, align 8, !tbaa !32, !noalias !482
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 17179869188, ptr %i.e, align 8, !noalias !482
  %i.f = call noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1), !noalias !482
  %i.g = fcmp une double %i.f, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !482
  br i1 %i.g, label %bb.b, label %_ZNK2cv7Affine3IfE3invEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load <8 x float>, ptr %5, align 4, !noalias !483 ; 4 uses
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.0.i.sroa.12.0.copyload = load float, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 4, !noalias !483
  %.sroa.0.i.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.sroa.0.i.sroa.13.0.copyload = load float, ptr %.sroa.0.i.sroa.13.0..sroa_idx, align 4, !noalias !483
  %.sroa.0.i.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.0.i.sroa.14.0.copyload = load float, ptr %.sroa.0.i.sroa.14.0..sroa_idx, align 4, !noalias !483
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !483
  %i.i = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.j = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.k = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.l = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  br label %_ZNK2cv7Affine3IfE3invEi.exit

_ZNK2cv7Affine3IfE3invEi.exit:                    ; preds = %bb.a, %bb.b
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.0.i.sroa.14.0 = phi float [ %.sroa.0.i.sroa.14.0.copyload, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.0.i.sroa.13.0 = phi float [ %.sroa.0.i.sroa.13.0.copyload, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.0.i.sroa.12.0 = phi float [ %.sroa.0.i.sroa.12.0.copyload, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.m = phi <2 x float> [ %i.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = phi <2 x float> [ %i.j, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.o = phi <2 x float> [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.p = phi <2 x float> [ %i.l, %bb.b ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !482
  %8 = load <2 x float>, ptr %1, align 4, !tbaa !41, !noalias !484 ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %9, align 4, !tbaa !41, !noalias !484
  %.fr.i = freeze float %i.q                      ; 3 uses
  %10 = extractelement <2 x float> %8, i64 0      ; 2 uses
  %11 = fcmp uno float %10, 0.000000e+00
  %12 = extractelement <2 x float> %8, i64 1      ; 2 uses
  %spec.select.i = fcmp uno float %12, %.fr.i
  %i.r = select i1 %11, i1 true, i1 %spec.select.i
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2cv7Affine3IfE3invEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %13 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x float> %i.p, %13
  %i.t = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.t, <2 x float> %i.s)
  %i.v = insertelement <2 x float> poison, float %.fr.i, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.w, <2 x float> %i.u)
  %i.y = fadd <2 x float> %i.m, %i.x
  %i.z = fmul float %.sroa.0.i.sroa.13.0, %12
  %i.aa = call float @llvm.fmuladd.f32(float %.sroa.0.i.sroa.12.0, float %10, float %i.z)
  %i.ab = call float @llvm.fmuladd.f32(float %.sroa.0.i.sroa.14.0, float %.fr.i, float %i.aa)
  %i.ac = fadd float %.sroa.0.i.sroa.15.0, %i.ab
  store <2 x float> %i.y, ptr %6, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ac, ptr %.sroa.29.0..sroa_idx, align 8
  %i.ad = load ptr, ptr %0, align 8, !tbaa !481, !nonnull !92, !align !194 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !41, !noalias !485
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !41, !noalias !485
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !41, !noalias !485
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.am = load float, ptr %i.al, align 4, !tbaa !41, !noalias !485
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !41, !noalias !485
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !486, !nonnull !92, !align !194
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !487, !nonnull !92, !align !194
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !488, !nonnull !92, !align !194
  %i.ax = load <4 x i32>, ptr %i.aw, align 4, !tbaa !29
  store <4 x i32> %i.ax, ptr %7, align 16, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !489, !nonnull !92, !align !192
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !490, !nonnull !92, !align !192
  %i.bc = load <2 x float>, ptr %i.ad, align 4, !tbaa !41, !noalias !485 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.ag, align 4, !tbaa !41, !noalias !485 ; 2 uses
  %i.be = call { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_7Point3_IfEEfiNS_3VecIiLi4EEERKNS_3MatERKSt13unordered_mapINS4_IiLi3EEENS_10VolumeUnitENS_9tsdf_hashESt8equal_toISA_ESaISt4pairIKSA_SB_EEE(ptr noundef nonnull align 4 dereferenceable(12) %6, float noundef %i.ar, i32 noundef %i.au, ptr noundef nonnull align 4 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(208) %i.az, ptr noundef nonnull align 8 dereferenceable(56) %i.bb) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.be, 0 ; 4 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.be, 1 ; 2 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 0
  %.sroa.022.4.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 1
  %i.bf = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bg = shufflevector <2 x float> %.fca.0.extract1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> zeroinitializer)
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bj = shufflevector <2 x float> %.fca.0.extract1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.ai, i64 1
  %i.bn = insertelement <2 x float> poison, float %.fca.1.extract2, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.bk)
  %i.bq = call float @llvm.fmuladd.f32(float %i.ak, float %.sroa.022.0.vec.extract, float 0.000000e+00)
  %i.br = call float @llvm.fmuladd.f32(float %i.am, float %.sroa.022.4.vec.extract, float %i.bq)
  %i.bs = call float @llvm.fmuladd.f32(float %i.ao, float %.fca.1.extract2, float %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2cv7Affine3IfE3invEi.exit
  %.sroa.7.0 = phi float [ +qnan, %_ZNK2cv7Affine3IfE3invEi.exit ], [ %i.bs, %bb.c ]
  %.sroa.027.0 = phi <2 x float> [ splat (float +qnan), %_ZNK2cv7Affine3IfE3invEi.exit ], [ %i.bp, %bb.c ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !491, !nonnull !92, !align !192 ; 3 uses
  %i.bv = load i32, ptr %2, align 4, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !100
  %i.ca = icmp slt i32 %i.bz, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !169
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = sext i32 %i.bv to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %.sink.idx.i = select i1 %i.ca, i64 0, i64 %i.cg
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sink.idx.i
  %i.ch = sext i32 %i.bx to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %.sink.i, i64 %i.ch ; 3 uses
  store <2 x float> %.sroa.027.0, ptr %i.ci, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store float %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store float 0.000000e+00, ptr %.sroa.621.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_40fetchPointsNormalsFromHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toISD_ESaISt4pairIKSD_SE_EEEiRKNS0_12_OutputArrayESR_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Vec.2", align 4         ; 8 uses
  %3 = alloca %"class.std::vector.58", align 8    ; 13 uses
  %4 = alloca %"class.std::vector.58", align 8    ; 13 uses
  %5 = alloca %"class.cv::Point3_.4", align 8     ; 6 uses
  %6 = alloca %"class.cv::Vec.47", align 16       ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !86    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = load i32, ptr %1, align 4, !tbaa !64     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !65
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph229.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv40fetchPointsNormalsFromHashTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKSt13unordered_mapINS0_3VecIiLi3EEENS0_10VolumeUnitENS0_9tsdf_hashESt8equal_toIS9_ESaISt4pairIKS9_SA_EEEiRKNS0_12_OutputArrayESN_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESU_E4typeEOSV_DpOSW_.exit"

.lr.ph229.i.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.sroa.215.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.y = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %.lr.ph229.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.y, %.lr.ph229.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.z = load ptr, ptr %.val, align 8, !tbaa !501, !nonnull !92, !align !192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  store i32 %i.ac, ptr %2, align 4, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  store i32 %i.ae, ptr %i.e, align 4, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !29
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !502, !nonnull !92, !align !192
  %i.ai = call ptr @_ZNKSt10_HashtableIN2cv3VecIiLi3EEESt4pairIKS2_NS0_10VolumeUnitEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ENS0_9tsdf_hashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 2 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !503, !nonnull !92, !align !194
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !41 ; 3 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !29
  %i.am = sitofp i32 %i.al to float
  %i.an = fmul float %i.ak, %i.am
  %i.ao = load <2 x i32>, ptr %i.e, align 4, !tbaa !29
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>   ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fmul float %i.ak, %i.aq
  %i.as = extractelement <2 x float> %i.ap, i64 1
  %i.at = fmul float %i.ak, %i.as
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !504, !nonnull !92, !align !194
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.preheader204.preheader.i.i.i, label %._crit_edge226.i.i.i

.preheader204.preheader.i.i.i:                    ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  br label %.preheader204.i.i.i

.preheader204.i.i.i:                              ; preds = %._crit_edge223.i.i.i, %.preheader204.preheader.i.i.i
  %i.ay = phi i32 [ %i.bh, %._crit_edge223.i.i.i ], [ %i.av, %.preheader204.preheader.i.i.i ] ; 4 uses
  %.050224.i.i.i = phi i32 [ %i.bi, %._crit_edge223.i.i.i ], [ 0, %.preheader204.preheader.i.i.i ] ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.preheader.i.i.i, label %._crit_edge223.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader204.i.i.i
  %i.ba = uitofp nneg i32 %.050224.i.i.i to float
  br label %.preheader.i.i.i

._crit_edge226.i.i.i:                             ; preds = %._crit_edge223.i.i.i, %bb.c
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !505, !nonnull !92, !align !192 ; 3 uses
  %i.bc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge226.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #22
          to label %.noexc.i.i.i unwind label %bb.aa

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %i.bd = phi i32 [ %i.bk, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.be = phi i32 [ %i.bl, %._crit_edge.i.i.i ], [ %i.ay, %.preheader.preheader.i.i.i ] ; 4 uses
  %.051222.i.i.i = phi i32 [ %i.bm, %._crit_edge.i.i.i ], [ 0, %.preheader.preheader.i.i.i ] ; 4 uses
  %invariant.smax.i.i.i = call i32 @llvm.smax.i32(i32 %.050224.i.i.i, i32 %.051222.i.i.i)
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

end_hunk_0
