Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregates?download=true
inline.NumInlined: 3981
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS_12BVHPrimitiveESaIS7_EEPSt6atomicIiERS6_INS_9PrimitiveESaISF_EE:bb.a
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef ptr %i.je(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.jb, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit unwind label %bb.ah, !inline_history !253 ; 2 uses

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit: ; preds = %bb.ab
  %i.jg = load ptr, ptr %i.hr, align 8, !tbaa !258 ; 6 uses
  %i.jh = load ptr, ptr %i.hs, align 8, !tbaa !259
  %.not.i.i75 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i.i75, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit
  store i64 %.034151, ptr %i.jg, align 8, !tbaa !54
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.ix, ptr %.sroa.6110.0..sroa_idx, align 8, !tbaa !54
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.jf, ptr %.sroa.7113.0..sroa_idx, align 8, !tbaa !106
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24 ; 2 uses
  store ptr %i.ji, ptr %i.hr, align 8, !tbaa !258
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit

bb.ad:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit
  %i.jj = load ptr, ptr %10, align 8, !tbaa !104  ; 4 uses
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 5 uses
  %i.jn = icmp eq i64 %i.jm, 9223372036854775800
  br i1 %i.jn, label %bb.ae, label %_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #31
          to label %.noexc77 unwind label %.loopexit.split-lp131

.noexc77:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.jo = sdiv exact i64 %i.jm, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jo, i64 1)
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jo ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jo
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jp, i64 384307168202282325)
  %i.js = select i1 %i.jq, i64 384307168202282325, i64 %i.jr ; 3 uses
  %.not.i.i.i.i76 = icmp ne i64 %i.js, 0
  call void @llvm.assume(i1 %.not.i.i.i.i76)
  %i.jt = mul nuw nsw i64 %i.js, 24
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #33
          to label %.noexc78 unwind label %.loopexit130 ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 %i.jm ; 4 uses
  store i64 %.034151, ptr %i.jv, align 8, !tbaa !54
  %.sroa.6110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %i.ix, ptr %.sroa.6110.0..sroa_idx111, align 8, !tbaa !54
  %.sroa.7113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store ptr %i.jf, ptr %.sroa.7113.0..sroa_idx114, align 8, !tbaa !106
  %i.jw = icmp sgt i64 %i.jm, 0
  br i1 %i.jw, label %bb.af, label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ju, ptr align 8 %i.jj, i64 %i.jm, i1 false)
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.af, %.noexc78
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.jy = load ptr, ptr %i.hs, align 8, !tbaa !259
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.ka) #35
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ju, ptr %10, align 8, !tbaa !104
  store ptr %i.jx, ptr %i.hr, align 8, !tbaa !258
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.js
  store ptr %i.kb, ptr %i.hs, align 8, !tbaa !259
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit

bb.ah:                                            ; preds = %bb.ab
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit130:                                     ; preds = %_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit132 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp131:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ac, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aa
  %i.kd = phi ptr [ %i.ik, %bb.aa ], [ %i.jx, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ji, %bb.ac ] ; 2 uses
  %.1 = phi i64 [ %.034151, %bb.aa ], [ %.0152, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.0152, %bb.ac ]
  %i.ke = add i64 %.0152, 1                       ; 2 uses
  %i.kf = load ptr, ptr %i.bo, align 8, !tbaa !257
  %i.kg = load ptr, ptr %8, align 8, !tbaa !86    ; 2 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = ashr exact i64 %i.kj, 3
  %.not = icmp ugt i64 %i.ke, %i.kk
  br i1 %.not, label %._crit_edge154.loopexit, label %bb.z, !llvm.loop !254

bb.ai:                                            ; preds = %._crit_edge154
  %i.kl = sub i64 %i.hw, %i.hv
  %i.km = sdiv exact i64 %i.kl, 24
  %i.kn = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %10, ptr %i.hz, align 16, !tbaa !108
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !110
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !91
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store ptr %8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !89
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !112
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store ptr %11, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !83
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  store ptr %i.c, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !115
  store ptr %i.hz, ptr %12, align 8, !tbaa !81
  store ptr @"_ZNSt17_Function_handlerIFvlEZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS1_12BVHPrimitiveESaIS9_EEPSt6atomicIiERS8_INS1_9PrimitiveESaISH_EEE3$_1E9_M_invokeERKSt9_Any_dataOl", ptr %i.kn, align 8, !tbaa !95
  store ptr @"_ZNSt17_Function_handlerIFvlEZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS1_12BVHPrimitiveESaIS9_EEPSt6atomicIiERS8_INS1_9PrimitiveESaISH_EEE3$_1E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation", ptr %i.hy, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.kq, align 8
  %i.kr = ptrtoint ptr %12 to i64
  store i64 %i.kr, ptr %5, align 8, !tbaa !97
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_, ptr %i.kp, align 8, !tbaa !99
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.ko, align 8, !tbaa !50
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef %i.km, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !50 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i81, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kt = invoke noundef zeroext i1 %i.ks(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.ap unwind label %bb.al     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #34
  unreachable

bb.am:                                            ; preds = %bb.ai
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kx = load ptr, ptr %i.ko, align 8, !tbaa !50 ; 2 uses
  %.not.i3.i79 = icmp eq ptr %i.kx, null
  br i1 %.not.i3.i79, label %.body83, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ky = invoke noundef zeroext i1 %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body83 unwind label %bb.ao   ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  %i.la = extractvalue { ptr, i32 } %i.kz, 0
  call void @__clang_call_terminate(ptr %i.la) #34
  unreachable

bb.ap:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.lb = load ptr, ptr %i.hy, align 8, !tbaa !50 ; 2 uses
  %.not.i86 = icmp eq ptr %i.lb, null
  br i1 %.not.i86, label %_ZNSt14_Function_baseD2Ev.exit87, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lc = invoke noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit87 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit87:                 ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.lf = load ptr, ptr %i.hx, align 8, !tbaa !258 ; 3 uses
  %i.lg = load ptr, ptr %10, align 8, !tbaa !104  ; 3 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = sdiv exact i64 %i.lj, 24                ; 3 uses
  %14 = icmp ugt i64 %i.lk, 1152921504606846975
  br i1 %14, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #31
          to label %.noexc88 unwind label %bb.aw

.noexc88:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit87
  %i.ll = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %.not209 = icmp eq ptr %i.lf, %i.lg
  br i1 %.not209, label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.at
  %i.lm = shl nuw nsw i64 %i.lk, 3
  %i.ln = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lm) #33
          to label %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.aw ; 4 uses

_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE11_M_allocateEm.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre163.pre = load ptr, ptr %i.hx, align 8, !tbaa !260
  %.pre162.pre = load ptr, ptr %10, align 8, !tbaa !260
  store ptr %i.ln, ptr %13, align 8, !tbaa !118
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !261
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lk ; 2 uses
  store ptr %i.lp, ptr %i.ll, align 8, !tbaa !262
  br label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.at
  %i.lq = phi ptr [ %i.lp, %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.at ]
  %i.lr = phi ptr [ %i.ln, %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.at ] ; 4 uses
  %i.ls = phi ptr [ %.pre163.pre, %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.lf, %bb.at ] ; 2 uses
  %i.lt = phi ptr [ %.pre162.pre, %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.lg, %bb.at ] ; 2 uses
  %.not129155 = icmp eq ptr %i.lt, %i.ls
  br i1 %.not129155, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ax

._crit_edge158:                                   ; preds = %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit
  %i.lv = phi ptr [ %i.lr, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit ], [ %i.nf, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit ]
  %i.lw = phi ptr [ %i.lr, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE7reserveEm.exit ], [ %i.nh, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit ]
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lv to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = lshr exact i64 %i.lz, 3
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.md = invoke noundef ptr @_ZNK4pbrt12BVHAggregate13buildUpperSAHEN4pstd3pmr21polymorphic_allocatorISt4byteEERSt6vectorIPNS_12BVHBuildNodeESaIS8_EEiiPSt6atomicIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0, i32 noundef %i.mb, ptr noundef %i.mc)
          to label %bb.bd unwind label %bb.aw

.body83:                                          ; preds = %bb.am, %bb.an
  %i.me = load ptr, ptr %i.hy, align 8, !tbaa !50 ; 2 uses
  %.not.i90 = icmp eq ptr %i.me, null
  br i1 %.not.i90, label %.body70, label %bb.au

bb.au:                                            ; preds = %.body83
  %i.mf = invoke noundef zeroext i1 %i.me(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body70 unwind label %bb.av   ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #34
  unreachable

bb.aw:                                            ; preds = %_ZNSt12_Vector_baseIPN4pbrt12BVHBuildNodeESaIS2_EE11_M_allocateEm.exit.i, %bb.as, %._crit_edge158
  %i.mi = landingpad { ptr, i32 }
          cleanup
  %.pre164 = load ptr, ptr %13, align 8, !tbaa !118
  br label %bb.bh

bb.ax:                                            ; preds = %.lr.ph157, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit
  %i.mj = phi ptr [ %i.lr, %.lr.ph157 ], [ %i.nf, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.mk = phi ptr [ %i.lq, %.lr.ph157 ], [ %i.ng, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.ml = phi ptr [ %i.lr, %.lr.ph157 ], [ %i.nh, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.0104.0156 = phi ptr [ %i.lt, %.lr.ph157 ], [ %i.ni, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0104.0156, i64 16 ; 2 uses
  %.not.i92 = icmp eq ptr %i.ml, %i.mk
  br i1 %.not.i92, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !106
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !106
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 2 uses
  store ptr %i.mo, ptr %i.lu, align 8, !tbaa !261
  br label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit

bb.az:                                            ; preds = %bb.ax
  %i.mp = ptrtoint ptr %i.mk to i64
  %i.mq = ptrtoint ptr %i.mj to i64
  %i.mr = sub i64 %i.mp, %i.mq                    ; 6 uses
  %i.ms = icmp eq i64 %i.mr, 9223372036854775800
  br i1 %i.ms, label %bb.ba, label %_ZNKSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #31
          to label %.noexc93 unwind label %.loopexit.split-lp

.noexc93:                                         ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.az
  %i.mt = ashr exact i64 %i.mr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mt, i64 1)
  %i.mu = add nsw i64 %.sroa.speculated.i.i.i, %i.mt ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.mt
  %i.mw = call i64 @llvm.umin.i64(i64 %i.mu, i64 1152921504606846975)
  %i.mx = select i1 %i.mv, i64 1152921504606846975, i64 %i.mw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.mx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.my = shl nuw nsw i64 %i.mx, 3
  %i.mz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.my) #33
          to label %.noexc94 unwind label %.loopexit ; 5 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 %i.mr ; 2 uses
  %i.nb = load ptr, ptr %i.mm, align 8, !tbaa !106
  store ptr %i.nb, ptr %i.na, align 8, !tbaa !106
  %i.nc = icmp sgt i64 %i.mr, 0
  br i1 %i.nc, label %bb.bb, label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.bb:                                            ; preds = %.noexc94
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mz, ptr align 8 %i.mj, i64 %i.mr, i1 false)
  br label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.bb, %.noexc94
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.mr) #35
  br label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.mz, ptr %13, align 8, !tbaa !118
  store ptr %i.nd, ptr %i.lu, align 8, !tbaa !261
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.mx ; 2 uses
  store ptr %i.ne, ptr %i.ll, align 8, !tbaa !262
  br label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ay
  %i.nf = phi ptr [ %i.mz, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mj, %bb.ay ] ; 2 uses
  %i.ng = phi ptr [ %i.ne, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mk, %bb.ay ]
  %i.nh = phi ptr [ %i.nd, %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mo, %bb.ay ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0104.0156, i64 24 ; 2 uses
  %.not129 = icmp eq ptr %i.ni, %i.ls
  br i1 %.not129, label %._crit_edge158, label %bb.ax

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bd:                                            ; preds = %._crit_edge158
  %i.nj = load ptr, ptr %13, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nk = load ptr, ptr %i.ll, align 8, !tbaa !262
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.nn) #35
  br label %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EED2Ev.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.no = load ptr, ptr %10, align 8, !tbaa !104  ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EED2Ev.exit
  %i.np = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !259
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %i.no to i64
  %i.nt = sub i64 %i.nr, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.nt) #35
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4pbrt12BVHBuildNodeESaIS2_EED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.nu = load ptr, ptr %8, align 8, !tbaa !86    ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EED2Ev.exit
  %i.nv = load ptr, ptr %i.eb, align 8, !tbaa !256
end_hunk_0
begin_hunk_1_@_ZN4pbrt8LogFatalIJRA18_KcRA7_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_:bb.a
bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcRA7_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcRA7_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !63    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #35
  br label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4pstd3pmr25monotonic_buffer_resourceEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4pstd3pmr25monotonic_buffer_resourceEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 64 dereferenceable(48) %i.d) #32, !inline_history !310
  br label %_ZSt8_DestroyISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4pstd3pmr25monotonic_buffer_resourceEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pstd3pmr25monotonic_buffer_resourceESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev(ptr noundef nonnull align 64 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pstd3pmr25monotonic_buffer_resourceE, i64 16), ptr %0, align 64, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %.06.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.e, %.noexc ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !78
  %i.i = add i64 %i.h, 24
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %.06.i, i64 noundef %i.i, i64 noundef 16)
          to label %.noexc unwind label %bb.c, !inline_history !1

.noexc:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.loopexit, label %bb.b, !llvm.loop !2

.loopexit:                                        ; preds = %.noexc, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !79
  tail call void @_ZN4pstd3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  ret void

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #34
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEE3GetEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::thread::id", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.c = tail call i64 @pthread_self() #36
  store i64 %i.c, ptr %1, align 8
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = and i64 %i.d, 4294967295
  %i.p = urem i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32
  switch i32 %i.r, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 1, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.x, ptr %i.b, align 8, !tbaa !54
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %.sroa.02.0.copyload = load i64, ptr %1, align 8
  %.rhs.trunc = trunc nuw i64 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  call void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef 72, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(8) @.str.89, ptr noundef nonnull align 1 dereferenceable(17) @.str.90, ptr noundef nonnull align 1 dereferenceable(8) @.str.89, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.90, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  unreachable

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 2 uses
  %.02546 = phi i32 [ %i.q, %.lr.ph ], [ %.4, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 3 uses
  %indvars58 = trunc i64 %indvars.iv to i32       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.z = zext i32 %.02546 to i64                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !315, !range !146, !noundef !147
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit, label %bb.f

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ae = icmp eq i64 %.sroa.03.0.copyload, %.sroa.02.0.copyload
  br i1 %i.ae, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32 ; 0 uses
  %i.ag = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32
  %i.ah = icmp eq i32 %i.ag, 35
  br i1 %i.ah, label %bb.g, label %_ZNSt12shared_mutex4lockEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit

bb.h:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @_ZSt25__throw_bad_function_callv() #31
  unreachable

_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.an = call ptr %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.ak), !inline_history !311
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !66  ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !315, !range !146, !noundef !147
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33

.preheader:                                       ; preds = %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %.rhs.trunc36 = trunc nuw i64 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.127 = phi i32 [ %i.az, %bb.k ], [ %indvars58, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.k ], [ %.02546, %.preheader ]
  %i.ay = add i32 %.1, %.127                      ; 3 uses
  %i.az = add nuw nsw i32 %.127, 1
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.ax, %i.ba
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = urem i32 %i.ay, %.rhs.trunc36           ; 2 uses
  %.pre = zext i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %i.ay, %bb.i ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !315, !range !146, !noundef !147
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33, !llvm.loop !312

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33: ; preds = %bb.k, %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit
  %.pre-phi59 = phi i64 [ %i.z, %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit ], [ %.pre-phi, %bb.k ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi59 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %1, align 8, !tbaa !54
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !119
  store i8 1, ptr %i.bh, align 8, !tbaa !315
  br label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit
  %i.bj = add i32 %.02546, %indvars58             ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %.not31 = icmp ugt i64 %i.x, %i.bk
  br i1 %.not31, label %_ZNSt12shared_mutex11lock_sharedEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = urem i32 %i.bj, %.rhs.trunc
  br label %_ZNSt12shared_mutex11lock_sharedEv.exit

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %i.bl, %bb.m ], [ %i.bj, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bm = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.x, ptr %i.b, align 8, !tbaa !54
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.e, !llvm.loop !313

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33
  %.pn = phi ptr [ %i.bg, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33 ], [ %i.aa, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit ]
  %i.bn = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32 ; 0 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt11nth_elementIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_3EvT_SN_SN_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #11 {
bb.a:
  %4 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %6 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %7 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %8 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %9 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %10 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %11 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %12 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %13 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %"_ZSt13__introselectIPN4pbrt12BVHPrimitiveElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_T1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = icmp sgt i64 %i.e, 96
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = lshr exact i64 %i.e, 5
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %"_ZSt27__unguarded_partition_pivotIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEET_SR_SR_T0_.exit.i"
  %i.k = icmp eq i64 %i.ah, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !316

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.dl
  %i.o = ashr exact i64 %i.n, 5                   ; 4 uses
  %i.p = icmp slt i64 %i.o, 2
  br i1 %i.p, label %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.q = add nsw i64 %i.o, -2
  %i.r = lshr i64 %i.q, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013.i.i.i = phi i64 [ %i.r, %bb.c ], [ %i.t, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.0..i, i64 %.013.i.i.i
  tail call fastcc void @"_ZSt13__adjust_heapIPN4pbrt12BVHPrimitiveElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_T0_SS_T1_T2_"(ptr noundef nonnull %.0..i, i64 noundef %.013.i.i.i, i64 noundef %i.o, ptr noundef nonnull byval(%"struct.pbrt::BVHPrimitive") align 8 %i.s, i32 %3)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.t = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i", label %bb.d, !llvm.loop !317

"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i": ; preds = %bb.d, %.lr.ph.i._crit_edge
  %i.u = icmp ult ptr %i.l, %..021.i
  br i1 %i.u, label %.lr.ph.i.i, label %"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i", %bb.f
  %.014.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.l, %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i" ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %.sroa.021.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.v, align 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 20
  %.sroa.011.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.w, align 4 ; 2 uses
  switch i32 %3, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i: ; preds = %.lr.ph.i.i
  %.sroa.0.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i:   ; preds = %.lr.ph.i.i
  %.sroa.222.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %.sroa.222.0.copyload.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 28
  %.sroa.212.0.copyload.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink2.in.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink1.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink2.i.i.i = fmul float %.sink2.in.i.i.i, 5.000000e-01
  %i.x = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i, 5.000000e-01
  %i.y = fadd float %i.x, %.sink2.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0..i, i64 %.sink1.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0..i, i64 %.sink.i.i.i
  %.sink.in.i.i.i.i = load float, ptr %i.z, align 4
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i = load float, ptr %i.aa, align 4
  %.sink.i.i.i.i = fmul float %.sink.in.i.i.i.i, 5.000000e-01
  %i.ab = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i, 5.000000e-01
  %i.ac = fadd float %.sink.i.i.i.i, %i.ab
  %i.ad = fcmp olt float %i.y, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0..i, i64 32, i1 false)
  tail call fastcc void @"_ZSt13__adjust_heapIPN4pbrt12BVHPrimitiveElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_T0_SS_T1_T2_"(ptr noundef nonnull %.0..i, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull byval(%"struct.pbrt::BVHPrimitive") align 8 %13, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %..021.i
  br i1 %i.af, label %.lr.ph.i.i, label %"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_.exit.i", !llvm.loop !318

"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_.exit.i": ; preds = %bb.f, %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %.0..i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0..i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %"_ZSt13__introselectIPN4pbrt12BVHPrimitiveElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_T1_.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.02369.i24 = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader ]
  %.02170.i23 = phi ptr [ %..021.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.071.i22 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.ag = phi i64 [ %i.dm, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader ]
  %i.ah = add nsw i64 %.02369.i24, -1             ; 2 uses
  %i.ai = lshr i64 %i.ag, 6
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.071.i22, i64 %i.ai ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.071.i22, i64 32 ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.02170.i23, i64 -32 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.071.i22, i64 40
  %.sroa.021.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.am, align 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.071.i22, i64 52
  %.sroa.011.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.an, align 4 ; 6 uses
  switch i32 %3, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i: ; preds = %.lr.ph
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i: ; preds = %.lr.ph
  %.sroa.0.4.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i: ; preds = %.lr.ph
  %.sroa.222.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.071.i22, i64 48
  %.sroa.222.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.071.i22, i64 60
  %.sroa.212.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink2.in.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink1.i.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink.i.i.i26.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink2.i.i.i.i = fmul float %.sink2.in.i.i.i.i, 5.000000e-01
  %i.ao = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i, 5.000000e-01
  %i.ap = fadd float %i.ao, %.sink2.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink1.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink.i.i.i26.i
  %.sink.in.i.i.i.i.i = load float, ptr %i.aq, align 4
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i = load float, ptr %i.ar, align 4
  %.sink.i.i.i.i.i = fmul float %.sink.in.i.i.i.i.i, 5.000000e-01
  %i.as = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i, 5.000000e-01
  %i.at = fadd float %.sink.i.i.i.i.i, %i.as
  %i.au = fcmp olt float %i.ap, %i.at
  br i1 %i.au, label %bb.g, label %bb.l

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.021.0.copyload.i.i.i26.i.i.i = load <2 x float>, ptr %i.av, align 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %.sroa.011.0.copyload.i.i.i27.i.i.i = load <2 x float>, ptr %i.aw, align 4 ; 2 uses
  switch i32 %3, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i
end_hunk_1
