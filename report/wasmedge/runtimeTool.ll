Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/runtimeTool?download=true
inline.NumInlined: 5090
inline.NumDeleted: 3520
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8WasmEdge6DriverL12ToolOnModuleERNS_2VM2VMERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalINSt6chrono10time_pointINSD_3_V212system_clockENSD_8durationIlSt5ratioILl1ELl1000000000EEEEEEERNS0_17DriverToolOptionsERKNS_3AST12FunctionTypeE:bb.a
  %.sroa.0443.17 = phi ptr [ %i.iv, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.0443.09722060, %bb.cp ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i233.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i233, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.15450.09732059, %bb.cp ]
  %.sroa.36461.17 = phi ptr [ %i.iz, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRdEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.36461.09742058, %bb.cp ] ; 3 uses
  %.sroa.15450.16 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i233.pn, i64 16
  %.not.i324 = icmp eq ptr %.sroa.15.09762056, %.sroa.36.09772055
  br i1 %.not.i324, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRdEEERSD_DpOT_.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.15.09762056, i64 1
  store i8 0, ptr %i.ja, align 1, !tbaa !61
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.15.09762056, i64 4
  store i32 0, ptr %i.jb, align 4, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.15.09762056, i64 2
  store i8 124, ptr %i.jc, align 2, !tbaa !61
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.15.09762056, i64 3
  store i8 64, ptr %i.jd, align 1, !tbaa !61
  br label %.thread548

bb.cu:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRdEEERSD_DpOT_.exit.i
  %i.je = ptrtoint ptr %.sroa.36.09772055 to i64
  %i.jf = ptrtoint ptr %.sroa.0421.09752057 to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 6 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775800
  br i1 %i.jh, label %bb.cv, label %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i329

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc339 unwind label %.loopexit.split-lp614

.noexc339:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i329: ; preds = %bb.cu
  %i.ji = ashr exact i64 %i.jg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i330 = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i330, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 1152921504606846975)
  %i.jm = select i1 %i.jk, i64 1152921504606846975, i64 %i.jl ; 3 uses
  %.not.i.i.i331 = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i331)
  %i.jn = shl nuw nsw i64 %i.jm, 3
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #31
          to label %.noexc340 unwind label %.loopexit613 ; 4 uses

.noexc340:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i329
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %i.jg ; 5 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  store i8 0, ptr %i.jq, align 1, !tbaa !61
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  store i32 0, ptr %i.jr, align 4, !tbaa !61
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  store i8 124, ptr %i.js, align 2, !tbaa !61
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 3
  store i8 64, ptr %i.jt, align 1, !tbaa !61
  %i.ju = icmp sgt i64 %i.jg, 0
  br i1 %i.ju, label %bb.cw, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i336

bb.cw:                                            ; preds = %.noexc340
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jo, ptr align 4 %.sroa.0421.09752057, i64 %i.jg, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i336

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i336: ; preds = %bb.cw, %.noexc340
  %.not.i17.i.i337 = icmp eq ptr %.sroa.0421.09752057, null
  br i1 %.not.i17.i.i337, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i336
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0421.09752057, i64 noundef %i.jg) #30
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338: ; preds = %bb.cx, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i336
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jm
  br label %.thread548

.loopexit613:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i223, %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i329
  %.sroa.0443.18.ph = phi ptr [ %.sroa.0443.09722060, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i223 ], [ %.sroa.0443.17, %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i329 ]
  %.sroa.36461.18.ph = phi ptr [ %.sroa.36461.09742058, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i223 ], [ %.sroa.36461.17, %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i329 ]
  %lpad.loopexit617 = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  br label %.body.i218

.loopexit.split-lp614:                            ; preds = %bb.cr, %bb.cv
  %.sroa.0443.18.ph615 = phi ptr [ %.sroa.0443.17, %bb.cv ], [ %.sroa.0443.09722060, %bb.cr ]
  %.sroa.36461.18.ph616 = phi ptr [ %.sroa.36461.17, %bb.cv ], [ %.sroa.36461.09742058, %bb.cr ]
  %lpad.loopexit.split-lp618 = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  br label %.body.i218

.body.i218:                                       ; preds = %.loopexit613, %.loopexit.split-lp614, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i
  %.sroa.0443.19 = phi ptr [ %.sroa.0443.09722060, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i ], [ %.sroa.0443.18.ph, %.loopexit613 ], [ %.sroa.0443.18.ph615, %.loopexit.split-lp614 ]
  %.sroa.36461.19 = phi ptr [ %.sroa.36461.09742058, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i ], [ %.sroa.36461.18.ph, %.loopexit613 ], [ %.sroa.36461.18.ph616, %.loopexit.split-lp614 ]
  %eh.lpad-body.i219 = phi { ptr, i32 } [ %i.ih, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i ], [ %lpad.loopexit617, %.loopexit613 ], [ %lpad.loopexit.split-lp618, %.loopexit.split-lp614 ] ; 3 uses
  %i.jw = extractvalue { ptr, i32 } %eh.lpad-body.i219, 0 ; 2 uses
  %i.jx = extractvalue { ptr, i32 } %eh.lpad-body.i219, 1 ; 2 uses
  %i.jy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #26
  %i.jz = icmp eq i32 %i.jx, %i.jy
  br i1 %i.jz, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %.body.i218
  %i.ka = call ptr @__cxa_begin_catch(ptr %i.jw) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !63
  invoke void @_ZN6spdlog5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt17basic_string_viewIcS4_EEEEvN3fmt3v1119basic_format_stringIcJDpNSD_13type_identityIT_E4typeEEEEDpOSG_(ptr nonnull @.str.32, i64 51, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.cz unwind label %bb.de

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %.sink.split.i221

bb.da:                                            ; preds = %.body.i218
  %i.kb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #26
  %i.kc = icmp eq i32 %i.jx, %i.kb
  br i1 %i.kc, label %bb.db, label %.body

bb.db:                                            ; preds = %bb.da
  %i.kd = call ptr @__cxa_begin_catch(ptr %i.jw) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.bd, ptr %i.e, align 8, !tbaa !63
  invoke void @_ZN6spdlog5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt17basic_string_viewIcS4_EEEEvN3fmt3v1119basic_format_stringIcJDpNSD_13type_identityIT_E4typeEEEEDpOSG_(ptr nonnull @.str.31, i64 47, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %.sink.split.i221

bb.dd:                                            ; preds = %bb.db
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.df

bb.de:                                            ; preds = %bb.cy
  %i.kf = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.df

.sink.split.i221:                                 ; preds = %bb.dc, %bb.cz
  invoke void @__cxa_end_catch()
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #28
  unreachable

.thread548:                                       ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338, %bb.ct
  %.sroa.0421.8.ph = phi ptr [ %i.jo, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338 ], [ %.sroa.0421.09752057, %bb.ct ]
  %.pn = phi ptr [ %i.jp, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338 ], [ %.sroa.15.09762056, %bb.ct ]
  %.sroa.36.8.ph = phi ptr [ %i.jv, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i338 ], [ %.sroa.36.09772055, %bb.ct ]
  %.sroa.15.7.ph = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge75

bb.dg:                                            ; preds = %.sink.split.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.critedge

.critedge75:                                      ; preds = %.thread548, %.thread539, %.thread530, %.thread, %.lr.ph2061
  %.sroa.0443.1 = phi ptr [ %.sroa.0443.09722060, %.lr.ph2061 ], [ %.sroa.0443.5, %.thread ], [ %.sroa.0443.9, %.thread530 ], [ %.sroa.0443.13, %.thread539 ], [ %.sroa.0443.17, %.thread548 ] ; 3 uses
  %.sroa.15450.1 = phi ptr [ %.sroa.15450.09732059, %.lr.ph2061 ], [ %.sroa.15450.4, %.thread ], [ %.sroa.15450.8, %.thread530 ], [ %.sroa.15450.12, %.thread539 ], [ %.sroa.15450.16, %.thread548 ] ; 3 uses
  %.sroa.36461.1 = phi ptr [ %.sroa.36461.09742058, %.lr.ph2061 ], [ %.sroa.36461.5, %.thread ], [ %.sroa.36461.9, %.thread530 ], [ %.sroa.36461.13, %.thread539 ], [ %.sroa.36461.17, %.thread548 ] ; 3 uses
  %.sroa.0421.1 = phi ptr [ %.sroa.0421.09752057, %.lr.ph2061 ], [ %.sroa.0421.5.ph, %.thread ], [ %.sroa.0421.6.ph, %.thread530 ], [ %.sroa.0421.7.ph, %.thread539 ], [ %.sroa.0421.8.ph, %.thread548 ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.09762056, %.lr.ph2061 ], [ %.sroa.15.4.ph, %.thread ], [ %.sroa.15.5.ph, %.thread530 ], [ %.sroa.15.6.ph, %.thread539 ], [ %.sroa.15.7.ph, %.thread548 ] ; 3 uses
  %.sroa.36.1 = phi ptr [ %.sroa.36.09772055, %.lr.ph2061 ], [ %.sroa.36.5.ph, %.thread ], [ %.sroa.36.6.ph, %.thread530 ], [ %.sroa.36.7.ph, %.thread539 ], [ %.sroa.36.8.ph, %.thread548 ] ; 3 uses
  %i.ki = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.kj = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 3                 ; 3 uses
  %i.ko = icmp ult i64 %i.bd, %i.kn
  br i1 %i.ko, label %bb.c, label %.critedge75..critedge76.loopexit_crit_edge, !llvm.loop !435

.critedge75..critedge76.loopexit_crit_edge:       ; preds = %.critedge75
  %.pre.pre = load ptr, ptr %i.z, align 8, !tbaa !86
  %.pre1269.pre = load ptr, ptr %i.y, align 8, !tbaa !92 ; 2 uses
  %.pre1279 = ptrtoint ptr %.pre.pre to i64
  %.pre1280 = ptrtoint ptr %.pre1269.pre to i64
  %.pre1281 = sub i64 %.pre1279, %.pre1280
  %.pre1282 = ashr exact i64 %.pre1281, 5
  br label %.critedge76, !llvm.loop !435

.critedge76:                                      ; preds = %bb.c, %.lr.ph, %.critedge75..critedge76.loopexit_crit_edge, %.preheader612
  %.pre-phi1278 = phi i64 [ %i.af, %.preheader612 ], [ %.pre1282, %.critedge75..critedge76.loopexit_crit_edge ], [ %i.ar, %.lr.ph ], [ %i.ba, %bb.c ]
  %i.kp = phi ptr [ %i.ab, %.preheader612 ], [ %.pre1269.pre, %.critedge75..critedge76.loopexit_crit_edge ], [ %i.an, %.lr.ph ], [ %i.aw, %bb.c ]
  %.sroa.0443.0.lcssa = phi ptr [ null, %.preheader612 ], [ %.sroa.0443.1, %.critedge75..critedge76.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.0443.1, %bb.c ] ; 2 uses
  %.sroa.15450.0.lcssa = phi ptr [ null, %.preheader612 ], [ %.sroa.15450.1, %.critedge75..critedge76.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.15450.1, %bb.c ] ; 2 uses
  %.sroa.36461.0.lcssa = phi ptr [ null, %.preheader612 ], [ %.sroa.36461.1, %.critedge75..critedge76.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.36461.1, %bb.c ] ; 2 uses
  %.sroa.0421.0.lcssa = phi ptr [ null, %.preheader612 ], [ %.sroa.0421.1, %.critedge75..critedge76.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.0421.1, %bb.c ] ; 2 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %.preheader612 ], [ %.sroa.15.1, %.critedge75..critedge76.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.15.1, %bb.c ] ; 2 uses
  %.sroa.36.0.lcssa = phi ptr [ null, %.preheader612 ], [ %.sroa.36.1, %.critedge75..critedge76.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.36.1, %bb.c ] ; 2 uses
  %.lcssa741 = phi i64 [ 0, %.preheader612 ], [ %i.kn, %.critedge75..critedge76.loopexit_crit_edge ], [ %i.x, %.lr.ph ], [ %i.kn, %bb.c ] ; 2 uses
  %i.kq = add nsw i64 %.lcssa741, 1               ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %.pre-phi1278
  br i1 %i.kr, label %.lr.ph1003, label %.critedge78

.lr.ph1003:                                       ; preds = %.critedge76
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kt = tail call ptr @__errno_location() #32   ; 6 uses
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph1003, %bb.eh
  %i.ku = phi ptr [ %i.kp, %.lr.ph1003 ], [ %i.ne, %bb.eh ]
  %.0681002 = phi i64 [ %i.kq, %.lr.ph1003 ], [ %.068, %bb.eh ] ; 3 uses
  %.068.in1001 = phi i64 [ %.lcssa741, %.lr.ph1003 ], [ %.0681002, %bb.eh ] ; 2 uses
  %.sroa.36.21000 = phi ptr [ %.sroa.36.0.lcssa, %.lr.ph1003 ], [ %.sroa.36.9, %bb.eh ] ; 4 uses
  %.sroa.15.2999 = phi ptr [ %.sroa.15.0.lcssa, %.lr.ph1003 ], [ %.sroa.15.8, %bb.eh ] ; 6 uses
  %.sroa.0421.2998 = phi ptr [ %.sroa.0421.0.lcssa, %.lr.ph1003 ], [ %.sroa.0421.9, %bb.eh ] ; 6 uses
  %.sroa.36461.2997 = phi ptr [ %.sroa.36461.0.lcssa, %.lr.ph1003 ], [ %.sroa.36461.21, %bb.eh ] ; 8 uses
  %.sroa.15450.2996 = phi ptr [ %.sroa.15450.0.lcssa, %.lr.ph1003 ], [ %.sroa.15450.20, %bb.eh ] ; 3 uses
  %.sroa.0443.2995 = phi ptr [ %.sroa.0443.0.lcssa, %.lr.ph1003 ], [ %.sroa.0443.21, %bb.eh ] ; 9 uses
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.ku, i64 %.0681002 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 3, ptr %6, align 8
  store ptr @.str.21, ptr %i.ks, align 8
  %.val.i240 = load ptr, ptr %i.kv, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.kw = load i32, ptr %i.kt, align 4, !tbaa !73 ; 2 uses
  store i32 0, ptr %i.kt, align 4, !tbaa !73
  %i.kx = call noundef i64 @__isoc23_strtoll(ptr noundef %.val.i240, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.kz = icmp eq ptr %i.ky, %.val.i240
  br i1 %i.kz, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.34) #27
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  unreachable

bb.dk:                                            ; preds = %.critedge.i.i.i.i260, %bb.di
  %i.la = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  %i.lb = load i32, ptr %i.kt, align 4, !tbaa !73
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %bb.dl, label %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261

bb.dl:                                            ; preds = %bb.dk
  store i32 %i.kw, ptr %i.kt, align 4, !tbaa !73
  br label %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261

_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.body.i242

bb.dm:                                            ; preds = %bb.dh
  %i.ld = load i32, ptr %i.kt, align 4, !tbaa !73
  switch i32 %i.ld, label %bb.dp [
    i32 34, label %.critedge.i.i.i.i260
    i32 0, label %bb.do
  ]

.critedge.i.i.i.i260:                             ; preds = %bb.dm
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.34) #27
          to label %bb.dn unwind label %bb.dk

bb.dn:                                            ; preds = %.critedge.i.i.i.i260
  unreachable

bb.do:                                            ; preds = %bb.dm
  store i32 %i.kw, ptr %i.kt, align 4, !tbaa !73
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i.i241 = icmp eq ptr %.sroa.15450.2996, %.sroa.36461.2997
  br i1 %.not.i.i241, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i64 %i.kx, ptr %.sroa.15450.2996, align 16, !tbaa !61
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRmEEERSD_DpOT_.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.le = ptrtoint ptr %.sroa.36461.2997 to i64
  %i.lf = ptrtoint ptr %.sroa.0443.2995 to i64
  %i.lg = sub i64 %i.le, %i.lf                    ; 4 uses
  %i.lh = icmp eq i64 %i.lg, 9223372036854775792
  br i1 %i.lh, label %bb.ds, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i247

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc.i259 unwind label %.loopexit.split-lp607

.noexc.i259:                                      ; preds = %bb.ds
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i247: ; preds = %bb.dr
  %i.li = ashr exact i64 %i.lg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i248 = call i64 @llvm.umax.i64(i64 %i.li, i64 1)
  %i.lj = add nsw i64 %.sroa.speculated.i.i.i.i248, %i.li ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.li
  %i.ll = call i64 @llvm.umin.i64(i64 %i.lj, i64 576460752303423487)
  %i.lm = select i1 %i.lk, i64 576460752303423487, i64 %i.ll ; 3 uses
  %.not.i.i.i.i249 = icmp ne i64 %i.lm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249)
  %i.ln = shl nuw nsw i64 %i.lm, 4
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #31
          to label %.noexc20.i250 unwind label %.loopexit606 ; 5 uses

.noexc20.i250:                                    ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i247
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lg
  store i64 %i.kx, ptr %i.lp, align 16, !tbaa !61
  %.not10.i.i.i.i.i.i251 = icmp eq ptr %.sroa.0443.2995, %.sroa.36461.2997
  br i1 %.not10.i.i.i.i.i.i251, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i256, label %.lr.ph.i.i.i.i.i.i252

.lr.ph.i.i.i.i.i.i252:                            ; preds = %.noexc20.i250, %.lr.ph.i.i.i.i.i.i252
  %.012.i.i.i.i.i.i253 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i.i252 ], [ %i.lo, %.noexc20.i250 ] ; 2 uses
  %.0911.i.i.i.i.i.i254 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i252 ], [ %.sroa.0443.2995, %.noexc20.i250 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i253, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i254, i64 16, i1 false), !tbaa.struct !127, !alias.scope !460
  %i.lq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i254, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i253, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i255 = icmp eq ptr %i.lq, %.sroa.36461.2997
  br i1 %.not.i.i.i.i.i.i255, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i256, label %.lr.ph.i.i.i.i.i.i252, !llvm.loop !439

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i256: ; preds = %.lr.ph.i.i.i.i.i.i252, %.noexc20.i250
  %.0.lcssa.i.i.i.i.i.i257 = phi ptr [ %i.lo, %.noexc20.i250 ], [ %i.lr, %.lr.ph.i.i.i.i.i.i252 ]
  %.not.i23.i.i.i258 = icmp eq ptr %.sroa.0443.2995, null
  br i1 %.not.i23.i.i.i258, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0443.2995, i64 noundef %i.lg) #30
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.dt, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i256
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.lm
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRmEEERSD_DpOT_.exit.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRmEEERSD_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, %bb.dq
  %.sroa.0443.21 = phi ptr [ %i.lo, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.0443.2995, %bb.dq ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i257.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i257, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.15450.2996, %bb.dq ]
  %.sroa.36461.21 = phi ptr [ %i.ls, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i ], [ %.sroa.36461.2997, %bb.dq ] ; 4 uses
  %.sroa.15450.20 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i257.pn, i64 16 ; 2 uses
  %.not.i342 = icmp eq ptr %.sroa.15.2999, %.sroa.36.21000
  br i1 %.not.i342, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRmEEERSD_DpOT_.exit.i
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.15.2999, i64 1
  store i8 0, ptr %i.lt, align 1, !tbaa !61
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.15.2999, i64 4
  store i32 0, ptr %i.lu, align 4, !tbaa !61
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.15.2999, i64 2
  store i8 126, ptr %i.lv, align 2, !tbaa !61
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.15.2999, i64 3
  store i8 64, ptr %i.lw, align 1, !tbaa !61
  br label %bb.eh

bb.dv:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12emplace_backIJRmEEERSD_DpOT_.exit.i
  %i.lx = ptrtoint ptr %.sroa.36.21000 to i64
  %i.ly = ptrtoint ptr %.sroa.0421.2998 to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %bb.dw, label %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i347

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc357 unwind label %.loopexit.split-lp607

.noexc357:                                        ; preds = %bb.dw
  unreachable

_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i347: ; preds = %bb.dv
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i348 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i348, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i.i349 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i349)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #31
          to label %.noexc358 unwind label %.loopexit606 ; 4 uses

.noexc358:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i347
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  store i8 0, ptr %i.mj, align 1, !tbaa !61
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store i32 0, ptr %i.mk, align 4, !tbaa !61
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store i8 126, ptr %i.ml, align 2, !tbaa !61
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 3
  store i8 64, ptr %i.mm, align 1, !tbaa !61
  %i.mn = icmp sgt i64 %i.lz, 0
  br i1 %i.mn, label %bb.dx, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i354

bb.dx:                                            ; preds = %.noexc358
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %.sroa.0421.2998, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i354

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i354: ; preds = %bb.dx, %.noexc358
  %.not.i17.i.i355 = icmp eq ptr %.sroa.0421.2998, null
  br i1 %.not.i17.i.i355, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i354
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0421.2998, i64 noundef %i.lz) #30
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356: ; preds = %bb.dy, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i354
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf
  br label %bb.eh

.loopexit606:                                     ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i247, %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i347
  %.sroa.0443.22.ph = phi ptr [ %.sroa.0443.2995, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i247 ], [ %.sroa.0443.21, %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i347 ]
  %.sroa.36461.22.ph = phi ptr [ %.sroa.36461.2997, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i247 ], [ %.sroa.36461.21, %_ZNKSt6vectorIN8WasmEdge7ValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i347 ]
  %lpad.loopexit610 = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  br label %.body.i242

.loopexit.split-lp607:                            ; preds = %bb.ds, %bb.dw
  %.sroa.0443.22.ph608 = phi ptr [ %.sroa.0443.21, %bb.dw ], [ %.sroa.0443.2995, %bb.ds ]
  %.sroa.36461.22.ph609 = phi ptr [ %.sroa.36461.21, %bb.dw ], [ %.sroa.36461.2997, %bb.ds ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  br label %.body.i242

.body.i242:                                       ; preds = %.loopexit606, %.loopexit.split-lp607, %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261
  %.sroa.0443.23 = phi ptr [ %.sroa.0443.2995, %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261 ], [ %.sroa.0443.22.ph, %.loopexit606 ], [ %.sroa.0443.22.ph608, %.loopexit.split-lp607 ]
  %.sroa.36461.23 = phi ptr [ %.sroa.36461.2997, %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261 ], [ %.sroa.36461.22.ph, %.loopexit606 ], [ %.sroa.36461.22.ph609, %.loopexit.split-lp607 ]
  %eh.lpad-body.i243 = phi { ptr, i32 } [ %i.la, %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i261 ], [ %lpad.loopexit610, %.loopexit606 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp607 ] ; 3 uses
  %i.mp = extractvalue { ptr, i32 } %eh.lpad-body.i243, 0 ; 2 uses
  %i.mq = extractvalue { ptr, i32 } %eh.lpad-body.i243, 1 ; 2 uses
  %i.mr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #26
  %i.ms = icmp eq i32 %i.mq, %i.mr
  br i1 %i.ms, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %.body.i242
  %i.mt = call ptr @__cxa_begin_catch(ptr %i.mp) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.mu = add i64 %.068.in1001, 2
  store i64 %i.mu, ptr %i.c, align 8, !tbaa !63
  invoke void @_ZN6spdlog5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt17basic_string_viewIcS4_EEEEvN3fmt3v1119basic_format_stringIcJDpNSD_13type_identityIT_E4typeEEEEDpOSG_(ptr nonnull @.str.32, i64 51, ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ea unwind label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.sink.split.i245

bb.eb:                                            ; preds = %.body.i242
  %i.mv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #26
  %i.mw = icmp eq i32 %i.mq, %i.mv
  br i1 %i.mw, label %bb.ec, label %.body

bb.ec:                                            ; preds = %bb.eb
  %i.mx = call ptr @__cxa_begin_catch(ptr %i.mp) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.my = add i64 %.068.in1001, 2
  store i64 %i.my, ptr %i.b, align 8, !tbaa !63
  invoke void @_ZN6spdlog5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt17basic_string_viewIcS4_EEEEvN3fmt3v1119basic_format_stringIcJDpNSD_13type_identityIT_E4typeEEEEDpOSG_(ptr nonnull @.str.31, i64 47, ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.sink.split.i245

bb.ee:                                            ; preds = %bb.ec
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.eg

bb.ef:                                            ; preds = %bb.dz
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.eg

.sink.split.i245:                                 ; preds = %bb.ed, %bb.ea
  invoke void @__cxa_end_catch()
          to label %bb.ei unwind label %.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #28
  unreachable

bb.eh:                                            ; preds = %bb.du, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356
  %.sroa.0421.9 = phi ptr [ %.sroa.0421.2998, %bb.du ], [ %i.mh, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356 ] ; 2 uses
  %.sroa.15.2.pn = phi ptr [ %.sroa.15.2999, %bb.du ], [ %i.mi, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356 ]
  %.sroa.36.9 = phi ptr [ %.sroa.36.21000, %bb.du ], [ %i.mo, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EE17_M_realloc_insertIJRNS0_8TypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i356 ] ; 2 uses
  %.sroa.15.8 = getelementptr inbounds nuw i8, ptr %.sroa.15.2.pn, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.068 = add nuw i64 %.0681002, 1                ; 2 uses
  %i.nd = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ne = load ptr, ptr %i.y, align 8, !tbaa !92  ; 2 uses
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = ashr exact i64 %i.nh, 5
  %.not = icmp ult i64 %.068, %i.ni
  br i1 %.not, label %bb.dh, label %.critedge78, !llvm.loop !452

bb.ei:                                            ; preds = %.sink.split.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.critedge

.critedge78:                                      ; preds = %bb.eh, %.critedge76
  %.sroa.0443.3 = phi ptr [ %.sroa.0443.0.lcssa, %.critedge76 ], [ %.sroa.0443.21, %bb.eh ] ; 3 uses
  %.sroa.15450.3 = phi ptr [ %.sroa.15450.0.lcssa, %.critedge76 ], [ %.sroa.15450.20, %bb.eh ]
  %.sroa.36461.3 = phi ptr [ %.sroa.36461.0.lcssa, %.critedge76 ], [ %.sroa.36461.21, %bb.eh ]
  %.sroa.0421.3 = phi ptr [ %.sroa.0421.0.lcssa, %.critedge76 ], [ %.sroa.0421.9, %bb.eh ] ; 3 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.0.lcssa, %.critedge76 ], [ %.sroa.15.8, %bb.eh ]
  %.sroa.36.3 = phi ptr [ %.sroa.36.0.lcssa, %.critedge76 ], [ %.sroa.36.9, %bb.eh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.nj = load ptr, ptr %1, align 8, !tbaa !70
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !71
  %i.nm = ptrtoint ptr %.sroa.15450.3 to i64
  %i.nn = ptrtoint ptr %.sroa.0443.3 to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = ashr exact i64 %i.no, 4
  %i.nq = ptrtoint ptr %.sroa.15.3 to i64
  %i.nr = ptrtoint ptr %.sroa.0421.3 to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = ashr exact i64 %i.ns, 3
  store ptr %.sroa.0421.3, ptr %24, align 8, !tbaa !462
  %i.nu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !463
  invoke void @_ZN8WasmEdge2VM2VM12asyncExecuteESt17basic_string_viewIcSt11char_traitsIcEEN5cxx204spanIKNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEELm18446744073709551615EEENS7_IKNS_7ValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::Async") align 8 %23, ptr noundef nonnull align 8 dereferenceable(1960) %0, i64 %i.nl, ptr %i.nj, ptr %.sroa.0443.3, i64 %i.np, ptr noundef nonnull byval(%"struct.cxx20::span.416") align 8 %24)
          to label %bb.ej unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ej:                                            ; preds = %.critedge78
  %i.nv = trunc nuw i8 %3 to i1
  br i1 %i.nv, label %bb.ek, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit

bb.ek:                                            ; preds = %bb.ej
  %i.nw = load ptr, ptr %23, align 8, !tbaa !97   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i, label %bb.el, label %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #27
          to label %.noexc267 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %bb.el
  unreachable

_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i: ; preds = %bb.ek
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 6 uses
  %i.ny = load atomic i32, ptr %i.nx acquire, align 4
  %i.nz = and i32 %i.ny, 2147483647
  %i.oa = icmp eq i32 %i.nz, 1
  br i1 %i.oa, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit, label %bb.em

bb.em:                                            ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i
  %i.ob = load ptr, ptr %i.nw, align 8, !tbaa !99
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = invoke noundef zeroext i1 %i.od(ptr noundef nonnull align 8 dereferenceable(28) %i.nw)
          to label %.noexc268 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !100

.noexc268:                                        ; preds = %bb.em
  br i1 %i.oe, label %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSQ_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSQ_10time_pointIT_T0_EE.exit, label %bb.en

bb.en:                                            ; preds = %.noexc268
  %i.of = load atomic i32, ptr %i.nx acquire, align 8
  %i.og = and i32 %i.of, 2147483647               ; 2 uses
  %i.oh = icmp eq i32 %i.og, 1
  br i1 %i.oh, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.oi = sdiv i64 %2, 1000000000                 ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.oi, -1000000000
  %i.oj = add i64 %.neg.i.i.i.i.i.i, %2
  br label %_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i

_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i: ; preds = %.noexc269, %bb.eo
  %.014.us.i.i.i.i = phi i32 [ %i.og, %bb.eo ], [ %i.oo, %.noexc269 ]
  %i.ok = atomicrmw or ptr %i.nx, i32 -2147483648 monotonic, align 4 ; 0 uses
  %i.ol = or disjoint i32 %.014.us.i.i.i.i, -2147483648
  %i.om = invoke noundef zeroext i1 @_ZNSt28__atomic_futex_unsigned_base19_M_futex_wait_untilEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.nx, ptr noundef nonnull align 4 dereferenceable(4) %i.nx, i32 noundef %i.ol, i1 noundef zeroext true, i64 %i.oi, i64 %i.oj)
          to label %.noexc269 unwind label %.loopexit.split-lp.loopexit

.noexc269:                                        ; preds = %_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i
  %i.on = load atomic i32, ptr %i.nx acquire, align 8
  %i.oo = and i32 %i.on, 2147483647               ; 2 uses
  %i.op = icmp ne i32 %i.oo, 1                    ; 2 uses
  %or.cond.not.us.i.i.i.i = and i1 %i.om, %i.op
  br i1 %or.cond.not.us.i.i.i.i, label %_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i

_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i: ; preds = %.noexc269
  br i1 %i.op, label %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSQ_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSQ_10time_pointIT_T0_EE.exit, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i

_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i: ; preds = %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i, %bb.en
  %i.oq = load ptr, ptr %i.nw, align 8, !tbaa !99
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  invoke void %i.os(ptr noundef nonnull align 8 dereferenceable(28) %i.nw)
          to label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !100

_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSQ_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSQ_10time_pointIT_T0_EE.exit: ; preds = %.noexc268, %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !102
  %.not.i.i.not.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.not.i, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit, label %bb.ep

bb.ep:                                            ; preds = %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSQ_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSQ_10time_pointIT_T0_EE.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !104
  invoke void %i.ox(ptr noundef nonnull align 8 dereferenceable(32) %i.ov)
          to label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit unwind label %bb.eq, !inline_history !1

bb.eq:                                            ; preds = %bb.ep
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #28
  unreachable

_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit: ; preds = %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i, %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i, %bb.ep, %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSQ_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSQ_10time_pointIT_T0_EE.exit, %bb.ej
  %i.pa = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNKSt14__basic_futureIN5cxx208expectedISt6vectorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS4_10RefVariantEEEENS4_7ValTypeEESaISJ_EENS4_7ErrCodeEEEE13_M_get_resultEv(ptr noundef nonnull align 8 dereferenceable(56) %23)
          to label %.noexc271 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc271:                                        ; preds = %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEENS_7ValTypeEESaISJ_EENS_7ErrCodeEEEE6cancelEv.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.pc = load i8, ptr %i.pb, align 8, !tbaa !106, !range !65, !noalias !464, !noundef !66
  %i.pd = trunc nuw i8 %i.pc to i1
  br i1 %i.pd, label %bb.er, label %_ZN5cxx206detail21expected_storage_baseISt6vectorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS4_10RefVariantEEEENS4_7ValTypeEESaISJ_EENS4_7ErrCodeELb0ELb1EED2Ev.exit

bb.er:                                            ; preds = %.noexc271
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !109, !noalias !464 ; 3 uses
  %i.ph = load ptr, ptr %i.pe, align 8, !tbaa !110, !noalias !464 ; 3 uses
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pg, %i.ph
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt6vectorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS4_10RefVariantEEEENS4_7ValTypeEESaISJ_EENS4_7ErrCodeELb0ELb1EED2Ev.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pl = icmp ugt i64 %i.pk, 9223372036854775776
  br i1 %i.pl, label %.noexc.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !111

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.es
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc272 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc272:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.es
  %i.pm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pk) #31
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_ZNSt15__new_allocatorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.po, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pm, %_ZNSt15__new_allocatorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ph, %_ZNSt15__new_allocatorISt4pairIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS1_10RefVariantEEEENS1_7ValTypeEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.09.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !464
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pn, %i.pg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph1011, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

.lr.ph1011:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pp = ptrtoint ptr %i.pm to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pq, %i.pp
  %i.ps = ashr exact i64 %i.pr, 5
  %i.pt = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.pu = ptrtoint ptr %25 to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7uint128ENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i277 = zext i64 %i.pu to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i277
  br label %bb.et

bb.et:                                            ; preds = %.lr.ph1011, %bb.fh
  %.01010 = phi i64 [ 0, %.lr.ph1011 ], [ %i.qp, %bb.fh ] ; 2 uses
  %i.pv = getelementptr inbounds nuw [32 x i8], ptr %i.pm, i64 %.01010 ; 10 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 18
  %i.px = load i8, ptr %i.pw, align 2, !tbaa !61
  switch i8 %i.px, label %bb.fh [
    i8 127, label %.noexc
    i8 126, label %.noexc80
    i8 125, label %.noexc82
    i8 124, label %.noexc84
    i8 123, label %.noexc86
    i8 100, label %bb.ez
    i8 99, label %bb.fd
  ]

end_hunk_0
begin_hunk_1_@_ZN8WasmEdge6DriverL15ToolOnComponentERNS_2VM2VMERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalINSt6chrono10time_pointINSD_3_V212system_clockENSD_8durationIlSt5ratioILl1ELl1000000000EEEEEEERNS0_17DriverToolOptionsERKNS_3AST9Component8FuncTypeE:bb.a

.noexc256:                                        ; preds = %.noexc.i
  store ptr %i.mh, ptr %31, align 8, !tbaa !70
  %i.mi = load i64, ptr %i.e, align 8, !tbaa !63
  store i64 %i.mi, ptr %i.aq, align 8, !tbaa !61
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc256, %bb.ex
  %i.mj = phi ptr [ %i.mh, %.noexc256 ], [ %i.aq, %bb.ex ] ; 2 uses
  switch i64 %i.mf, label %bb.ez [
    i64 1, label %bb.ey
    i64 0, label %bb.fa
  ]

bb.ey:                                            ; preds = %._crit_edge.i.i
  %i.mk = load i8, ptr %i.md, align 1, !tbaa !61
  store i8 %i.mk, ptr %i.mj, align 1, !tbaa !61
  br label %bb.fa

bb.ez:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mj, ptr align 1 %i.md, i64 %i.mf, i1 false)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %._crit_edge.i.i
  %i.ml = load i64, ptr %i.e, align 8, !tbaa !63  ; 2 uses
  store i64 %i.ml, ptr %i.ar, align 8, !tbaa !71
  %i.mm = load ptr, ptr %31, align 8, !tbaa !70
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.ml
  store i8 0, ptr %i.mn, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.mo = load ptr, ptr %i.as, align 8, !tbaa !139 ; 9 uses
  %i.mp = load ptr, ptr %i.at, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.mo, %i.mp
  br i1 %.not.i, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 3 uses
  store ptr %i.mq, ptr %i.mo, align 8, !tbaa !74
  %i.mr = load ptr, ptr %31, align 8, !tbaa !70   ; 2 uses
  %i.ms = load i64, ptr %i.ar, align 8, !tbaa !71 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %i.ms, ptr %i.d, align 8, !tbaa !63
  %i.mt = icmp ugt i64 %i.ms, 15
  br i1 %i.mt, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fb
  %i.mu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 16 dereferenceable(33) %i.mo, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc257 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc257:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.mu, ptr %i.mo, align 8, !tbaa !70
  %i.mv = load i64, ptr %i.d, align 8, !tbaa !63
  store i64 %i.mv, ptr %i.mq, align 8, !tbaa !61
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc257, %bb.fb
  %i.mw = phi ptr [ %i.mu, %.noexc257 ], [ %i.mq, %bb.fb ] ; 2 uses
  switch i64 %i.ms, label %bb.fd [
    i64 1, label %bb.fc
    i64 0, label %_ZNSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEEC2IRKS5_vvS5_vEEOT_.exit.i
  ]

bb.fc:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mx = load i8, ptr %i.mr, align 1, !tbaa !61
  store i8 %i.mx, ptr %i.mw, align 1, !tbaa !61
  br label %_ZNSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEEC2IRKS5_vvS5_vEEOT_.exit.i

bb.fd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mw, ptr align 1 %i.mr, i64 %i.ms, i1 false)
  br label %_ZNSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEEC2IRKS5_vvS5_vEEOT_.exit.i

_ZNSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEEC2IRKS5_vvS5_vEEOT_.exit.i: ; preds = %bb.fd, %bb.fc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.my = load i64, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !71
  %i.na = load ptr, ptr %i.mo, align 8, !tbaa !70
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.my
  store i8 0, ptr %i.nb, align 1, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  store i8 11, ptr %i.nc, align 16, !tbaa !142
  %i.nd = load ptr, ptr %i.as, align 8, !tbaa !139
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  store ptr %i.ne, ptr %i.as, align 8, !tbaa !139
  br label %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRKS6_EEERSL_DpOT_.exit

bb.fe:                                            ; preds = %bb.fa
  invoke void @_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPSL_SN_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr %i.mo, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRKS6_EEERSL_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRKS6_EEERSL_DpOT_.exit: ; preds = %bb.fe, %_ZNSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS6_10RefVariantEEEEEEC2IRKS5_vvS5_vEEOT_.exit.i
  %.not.i259 = icmp eq ptr %.sroa.21.08221781, %.sroa.54.08231780
  br i1 %.not.i259, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRKS6_EEERSL_DpOT_.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.21.08221781, i64 3
  store i8 115, ptr %i.nf, align 1, !tbaa !61
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.21.08221781, i64 4
  store i32 0, ptr %i.ng, align 4, !tbaa !61
  br label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12emplace_backIJRKNS0_17ComponentTypeCodeEEEERS1_DpOT_.exit

bb.fg:                                            ; preds = %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRKS6_EEERSL_DpOT_.exit
  %i.nh = ptrtoint ptr %.sroa.54.08231780 to i64
  %i.ni = ptrtoint ptr %.sroa.0381.08211782 to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 6 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %bb.fh, label %_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.fh:                                            ; preds = %bb.fg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc260 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc260:                                        ; preds = %bb.fh
  unreachable

_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fg
  %i.nl = ashr exact i64 %i.nj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i.i, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 1152921504606846975)
  %i.np = select i1 %i.nn, i64 1152921504606846975, i64 %i.no ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #31
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc261:                                        ; preds = %_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nj ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  store i8 115, ptr %i.nt, align 1, !tbaa !61
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store i32 0, ptr %i.nu, align 4, !tbaa !61
  %i.nv = icmp sgt i64 %i.nj, 0
  br i1 %i.nv, label %bb.fi, label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.fi:                                            ; preds = %.noexc261
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nr, ptr align 4 %.sroa.0381.08211782, i64 %i.nj, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.fi, %.noexc261
  %.not.i17.i.i = icmp eq ptr %.sroa.0381.08211782, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.08211782, i64 noundef %i.nj) #30
  br label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.fj, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.np
  br label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12emplace_backIJRKNS0_17ComponentTypeCodeEEEERS1_DpOT_.exit

_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12emplace_backIJRKNS0_17ComponentTypeCodeEEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ff
  %.sroa.0381.18 = phi ptr [ %i.nr, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0381.08211782, %bb.ff ]
  %.pn494 = phi ptr [ %i.ns, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.21.08221781, %bb.ff ]
  %.sroa.54.18 = phi ptr [ %i.nw, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRKNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.54.08231780, %bb.ff ]
  %.sroa.21.16 = getelementptr inbounds nuw i8, ptr %.pn494, i64 8
  %i.nx = load ptr, ptr %31, align 8, !tbaa !70   ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.aq
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12emplace_backIJRKNS0_17ComponentTypeCodeEEEERS1_DpOT_.exit
  %i.nz = load i64, ptr %i.aq, align 8, !tbaa !61
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12emplace_backIJRKNS0_17ComponentTypeCodeEEEERS1_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %.critedge73

.critedge73:                                      ; preds = %bb.ew, %bb.dx, %bb.cy, %bb.bz, %bb.ba, %bb.ab, %.lr.ph1783, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0381.1 = phi ptr [ %.sroa.0381.08211782, %.lr.ph1783 ], [ %.sroa.0381.6, %bb.ab ], [ %.sroa.0381.8, %bb.ba ], [ %.sroa.0381.10, %bb.bz ], [ %.sroa.0381.12, %bb.cy ], [ %.sroa.0381.14, %bb.dx ], [ %.sroa.0381.16, %bb.ew ], [ %.sroa.0381.18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.08221781, %.lr.ph1783 ], [ %.sroa.21.4, %bb.ab ], [ %.sroa.21.6, %bb.ba ], [ %.sroa.21.8, %bb.bz ], [ %.sroa.21.10, %bb.cy ], [ %.sroa.21.12, %bb.dx ], [ %.sroa.21.14, %bb.ew ], [ %.sroa.21.16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.sroa.54.1 = phi ptr [ %.sroa.54.08231780, %.lr.ph1783 ], [ %.sroa.54.6, %bb.ab ], [ %.sroa.54.8, %bb.ba ], [ %.sroa.54.10, %bb.bz ], [ %.sroa.54.12, %bb.cy ], [ %.sroa.54.14, %bb.dx ], [ %.sroa.54.16, %bb.ew ], [ %.sroa.54.18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.ob = load ptr, ptr %5, align 8, !tbaa !135   ; 2 uses
  %i.oc = load ptr, ptr %i.aa, align 8, !tbaa !136
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = sub i64 %i.od, %i.oe
  %i.og = sdiv exact i64 %i.of, 40                ; 3 uses
  %i.oh = icmp ult i64 %i.br, %i.og
  br i1 %i.oh, label %bb.c, label %.critedge73..critedge.loopexit_crit_edge, !llvm.loop !473

.critedge73..critedge.loopexit_crit_edge:         ; preds = %.critedge73
  %.pre.pre = load ptr, ptr %i.ah, align 8, !tbaa !86
  %.pre1053.pre = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %.pre1064 = ptrtoint ptr %.pre.pre to i64
  %.pre1065 = ptrtoint ptr %.pre1053.pre to i64
  %.pre1066 = sub i64 %.pre1064, %.pre1065
  %.pre1067 = ashr exact i64 %.pre1066, 5
  br label %.critedge, !llvm.loop !473

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.critedge73..critedge.loopexit_crit_edge, %.preheader509
  %.pre-phi1063 = phi i64 [ %i.an, %.preheader509 ], [ %.pre1067, %.critedge73..critedge.loopexit_crit_edge ], [ %i.bf, %.lr.ph ], [ %i.bo, %bb.c ]
  %i.oi = phi ptr [ %i.aj, %.preheader509 ], [ %.pre1053.pre, %.critedge73..critedge.loopexit_crit_edge ], [ %i.bb, %.lr.ph ], [ %i.bk, %bb.c ]
  %.sroa.0381.0.lcssa = phi ptr [ null, %.preheader509 ], [ %.sroa.0381.1, %.critedge73..critedge.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.0381.1, %bb.c ] ; 2 uses
  %.sroa.21.0.lcssa = phi ptr [ null, %.preheader509 ], [ %.sroa.21.1, %.critedge73..critedge.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.21.1, %bb.c ] ; 2 uses
  %.sroa.54.0.lcssa = phi ptr [ null, %.preheader509 ], [ %.sroa.54.1, %.critedge73..critedge.loopexit_crit_edge ], [ null, %.lr.ph ], [ %.sroa.54.1, %bb.c ] ; 2 uses
  %.lcssa620 = phi i64 [ 0, %.preheader509 ], [ %i.og, %.critedge73..critedge.loopexit_crit_edge ], [ %i.af, %.lr.ph ], [ %i.og, %bb.c ] ; 2 uses
  %i.oj = add nsw i64 %.lcssa620, 1               ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %.pre-phi1063
  br i1 %i.ok, label %.lr.ph840, label %.critedge77

.lr.ph840:                                        ; preds = %.critedge
  %i.ol = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.om = tail call ptr @__errno_location() #32   ; 6 uses
  %i.on = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %30, i64 16
  br label %bb.fk

bb.fk:                                            ; preds = %.lr.ph840, %bb.gi
  %i.op = phi ptr [ %i.oi, %.lr.ph840 ], [ %i.ql, %bb.gi ]
  %.070839 = phi i64 [ %i.oj, %.lr.ph840 ], [ %.070, %bb.gi ] ; 3 uses
  %.070.in838 = phi i64 [ %.lcssa620, %.lr.ph840 ], [ %.070839, %bb.gi ] ; 2 uses
  %.sroa.54.3837 = phi ptr [ %.sroa.54.0.lcssa, %.lr.ph840 ], [ %.sroa.54.19, %bb.gi ] ; 4 uses
  %.sroa.21.2836 = phi ptr [ %.sroa.21.0.lcssa, %.lr.ph840 ], [ %.sroa.21.17, %bb.gi ] ; 4 uses
  %.sroa.0381.3835 = phi ptr [ %.sroa.0381.0.lcssa, %.lr.ph840 ], [ %.sroa.0381.19, %bb.gi ] ; 6 uses
  %i.oq = getelementptr inbounds nuw [32 x i8], ptr %i.op, i64 %.070839 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 3, ptr %8, align 8
  store ptr @.str.62, ptr %i.ol, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %.val.i266 = load ptr, ptr %i.oq, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.or = load i32, ptr %i.om, align 4, !tbaa !73 ; 2 uses
  store i32 0, ptr %i.om, align 4, !tbaa !73
  %i.os = call noundef i64 @__isoc23_strtoll(ptr noundef %.val.i266, ptr noundef nonnull %i.a, i32 noundef 10)
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !126
  %i.ou = icmp eq ptr %i.ot, %.val.i266
  br i1 %i.ou, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.34) #27
          to label %bb.fm unwind label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  unreachable

bb.fn:                                            ; preds = %.critedge.i.i.i.i284, %bb.fl
  %i.ov = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  %i.ow = load i32, ptr %i.om, align 4, !tbaa !73
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %bb.fo, label %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i285

bb.fo:                                            ; preds = %bb.fn
  store i32 %i.or, ptr %i.om, align 4, !tbaa !73
  br label %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i285

_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i285: ; preds = %bb.fo, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.body.i276

bb.fp:                                            ; preds = %bb.fk
  %i.oy = load i32, ptr %i.om, align 4, !tbaa !73
  switch i32 %i.oy, label %bb.fs [
    i32 34, label %.critedge.i.i.i.i284
    i32 0, label %bb.fr
  ]

.critedge.i.i.i.i284:                             ; preds = %bb.fp
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.34) #27
          to label %bb.fq unwind label %bb.fn

bb.fq:                                            ; preds = %.critedge.i.i.i.i284
  unreachable

bb.fr:                                            ; preds = %bb.fp
  store i32 %i.or, ptr %i.om, align 4, !tbaa !73
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.sroa.0.0.insert.ext.i.i267 = zext i64 %i.os to i128
  store i128 %.sroa.0.0.insert.ext.i.i267, ptr %9, align 16
  %i.oz = load ptr, ptr %i.on, align 8, !tbaa !139 ; 4 uses
  %i.pa = load ptr, ptr %i.oo, align 8, !tbaa !140
  %.not.i.i268 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not.i.i268, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %i.oz, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !127
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  store i8 12, ptr %i.pb, align 16, !tbaa !142
  %i.pc = load ptr, ptr %i.on, align 8, !tbaa !139
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 48
  store ptr %i.pd, ptr %i.on, align 8, !tbaa !139
  br label %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRSK_EEERSL_DpOT_.exit.i269

bb.fu:                                            ; preds = %bb.fs
  invoke void @_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE17_M_realloc_insertIJRSK_EEEvN9__gnu_cxx17__normal_iteratorIPSL_SN_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr %i.oz, ptr noundef nonnull align 16 dereferenceable(16) %9)
          to label %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRSK_EEERSL_DpOT_.exit.i269 unwind label %.loopexit505

_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRSK_EEERSL_DpOT_.exit.i269: ; preds = %bb.fu, %bb.ft
  %.not.i20.i270 = icmp eq ptr %.sroa.21.2836, %.sroa.54.3837
  br i1 %.not.i20.i270, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRSK_EEERSL_DpOT_.exit.i269
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.21.2836, i64 3
  store i8 119, ptr %i.pe, align 1, !tbaa !61
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.21.2836, i64 4
  store i32 0, ptr %i.pf, align 4, !tbaa !61
  br label %bb.gi

bb.fw:                                            ; preds = %_ZNSt6vectorISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS7_10RefVariantEEEEEESaISL_EE12emplace_backIJRSK_EEERSL_DpOT_.exit.i269
  %i.pg = ptrtoint ptr %.sroa.54.3837 to i64
  %i.ph = ptrtoint ptr %.sroa.0381.3835 to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 6 uses
  %i.pj = icmp eq i64 %i.pi, 9223372036854775800
  br i1 %i.pj, label %bb.fx, label %_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i273

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc21.i283 unwind label %.loopexit.split-lp506

.noexc21.i283:                                    ; preds = %bb.fx
  unreachable

_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i273: ; preds = %bb.fw
  %i.pk = ashr exact i64 %i.pi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i274 = call i64 @llvm.umax.i64(i64 %i.pk, i64 1)
  %i.pl = add nsw i64 %.sroa.speculated.i.i.i.i274, %i.pk ; 2 uses
  %i.pm = icmp ult i64 %i.pl, %i.pk
  %i.pn = call i64 @llvm.umin.i64(i64 %i.pl, i64 1152921504606846975)
  %i.po = select i1 %i.pm, i64 1152921504606846975, i64 %i.pn ; 3 uses
  %.not.i.i.i.i275 = icmp ne i64 %i.po, 0
  call void @llvm.assume(i1 %.not.i.i.i.i275)
  %i.pp = shl nuw nsw i64 %i.po, 3
  %i.pq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pp) #31
          to label %.noexc22.i279 unwind label %.loopexit505 ; 4 uses

.noexc22.i279:                                    ; preds = %_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i273
  %i.pr = getelementptr inbounds i8, ptr %i.pq, i64 %i.pi ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 3
  store i8 119, ptr %i.ps, align 1, !tbaa !61
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store i32 0, ptr %i.pt, align 4, !tbaa !61
  %i.pu = icmp sgt i64 %i.pi, 0
  br i1 %i.pu, label %bb.fy, label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i280

bb.fy:                                            ; preds = %.noexc22.i279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pq, ptr align 4 %.sroa.0381.3835, i64 %i.pi, i1 false)
  br label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i280

_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i280: ; preds = %bb.fy, %.noexc22.i279
  %.not.i17.i.i.i281 = icmp eq ptr %.sroa.0381.3835, null
  br i1 %.not.i17.i.i.i281, label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i280
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0381.3835, i64 noundef %i.pi) #30
  br label %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282

_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282: ; preds = %bb.fz, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i280
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.po
  br label %bb.gi

.loopexit505:                                     ; preds = %bb.fu, %_ZNKSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i273
  %lpad.loopexit507 = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  br label %.body.i276

.loopexit.split-lp506:                            ; preds = %bb.fx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt16invalid_argument
          catch ptr @_ZTISt12out_of_range
          catch ptr null
  br label %.body.i276

.body.i276:                                       ; preds = %.loopexit505, %.loopexit.split-lp506, %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i285
  %eh.lpad-body.i277 = phi { ptr, i32 } [ %i.ov, %_ZZN9__gnu_cxx6__stoaIxxcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i.i285 ], [ %lpad.loopexit507, %.loopexit505 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp506 ] ; 3 uses
  %i.pw = extractvalue { ptr, i32 } %eh.lpad-body.i277, 0 ; 2 uses
  %i.px = extractvalue { ptr, i32 } %eh.lpad-body.i277, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.py = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #26
  %i.pz = icmp eq i32 %i.px, %i.py
  br i1 %i.pz, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %.body.i276
  %i.qa = call ptr @__cxa_begin_catch(ptr %i.pw) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.qb = add i64 %.070.in838, 2
  store i64 %i.qb, ptr %i.c, align 8, !tbaa !63
  invoke void @_ZN6spdlog5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt17basic_string_viewIcS4_EEEEvN3fmt3v1119basic_format_stringIcJDpNSD_13type_identityIT_E4typeEEEEDpOSG_(ptr nonnull @.str.32, i64 51, ptr noundef nonnull align 8 dereferenceable(32) %i.oq, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.gb unwind label %bb.gg

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.invoke1455

.invoke1455:                                      ; preds = %bb.ge, %bb.gb
  invoke void @__cxa_end_catch()
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gc:                                            ; preds = %.body.i276
  %i.qc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #26
  %i.qd = icmp eq i32 %i.px, %i.qc
  br i1 %i.qd, label %bb.gd, label %.body

bb.gd:                                            ; preds = %bb.gc
  %i.qe = call ptr @__cxa_begin_catch(ptr %i.pw) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.qf = add i64 %.070.in838, 2
  store i64 %i.qf, ptr %i.b, align 8, !tbaa !63
  invoke void @_ZN6spdlog5errorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRSt17basic_string_viewIcS4_EEEEvN3fmt3v1119basic_format_stringIcJDpNSD_13type_identityIT_E4typeEEEEDpOSG_(ptr nonnull @.str.31, i64 47, ptr noundef nonnull align 8 dereferenceable(32) %i.oq, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ge unwind label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.invoke1455

bb.gf:                                            ; preds = %bb.gd
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.gh

bb.gg:                                            ; preds = %bb.ga
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.qi = landingpad { ptr, i32 }
          catch ptr null
  %i.qj = extractvalue { ptr, i32 } %i.qi, 0
  call void @__clang_call_terminate(ptr %i.qj) #28
  unreachable

bb.gi:                                            ; preds = %bb.fv, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282
  %.sroa.0381.19 = phi ptr [ %i.pq, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282 ], [ %.sroa.0381.3835, %bb.fv ] ; 2 uses
  %.pn = phi ptr [ %i.pr, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282 ], [ %.sroa.21.2836, %bb.fv ]
  %.sroa.54.19 = phi ptr [ %i.pv, %_ZNSt6vectorIN8WasmEdge16ComponentValTypeESaIS1_EE17_M_realloc_insertIJRNS0_17ComponentTypeCodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i282 ], [ %.sroa.54.3837, %bb.fv ] ; 2 uses
  %.sroa.21.17 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.070 = add nuw i64 %.070839, 1                 ; 2 uses
  %i.qk = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.ql = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = ashr exact i64 %i.qo, 5
  %.not = icmp ult i64 %.070, %i.qp
  br i1 %.not, label %bb.fk, label %.critedge77, !llvm.loop !474

bb.gj:                                            ; preds = %.invoke1455
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.critedge75

.critedge77:                                      ; preds = %bb.gi, %.critedge
  %.sroa.0381.4 = phi ptr [ %.sroa.0381.0.lcssa, %.critedge ], [ %.sroa.0381.19, %bb.gi ] ; 3 uses
  %.sroa.21.3 = phi ptr [ %.sroa.21.0.lcssa, %.critedge ], [ %.sroa.21.17, %bb.gi ]
  %.sroa.54.4 = phi ptr [ %.sroa.54.0.lcssa, %.critedge ], [ %.sroa.54.19, %bb.gi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.qq = load ptr, ptr %1, align 8, !tbaa !70
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !71
  %i.qt = load ptr, ptr %30, align 8, !tbaa !143  ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !139
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = sdiv exact i64 %i.qy, 48
  %i.ra = ptrtoint ptr %.sroa.21.3 to i64
  %i.rb = ptrtoint ptr %.sroa.0381.4 to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 3
  store ptr %.sroa.0381.4, ptr %33, align 8, !tbaa !478
  %i.re = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.rd, ptr %i.re, align 8, !tbaa !479
  invoke void @_ZN8WasmEdge2VM2VM21asyncExecuteComponentESt17basic_string_viewIcSt11char_traitsIcEEN5cxx204spanIKSt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcS4_SaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEELm18446744073709551615EEENS7_IKNS_16ComponentValTypeELm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::Async.637") align 8 %32, ptr noundef nonnull align 8 dereferenceable(1960) %0, i64 %i.qs, ptr %i.qq, ptr %i.qt, i64 %i.qz, ptr noundef nonnull byval(%"struct.cxx20::span.642") align 8 %33)
          to label %bb.gk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gk:                                            ; preds = %.critedge77
  %i.rf = trunc nuw i8 %3 to i1
  br i1 %i.rf, label %bb.gl, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit

bb.gl:                                            ; preds = %bb.gk
  %i.rg = load ptr, ptr %32, align 8, !tbaa !97   ; 6 uses
  %.not.i.i.i292 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i292, label %bb.gm, label %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #27
          to label %.noexc293 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc293:                                        ; preds = %bb.gm
  unreachable

_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i: ; preds = %bb.gl
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16 ; 6 uses
  %i.ri = load atomic i32, ptr %i.rh acquire, align 4
  %i.rj = and i32 %i.ri, 2147483647
  %i.rk = icmp eq i32 %i.rj, 1
  br i1 %i.rk, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i
  %i.rl = load ptr, ptr %i.rg, align 8, !tbaa !99
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = invoke noundef zeroext i1 %i.rn(ptr noundef nonnull align 8 dereferenceable(28) %i.rg)
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !475

.noexc294:                                        ; preds = %bb.gn
  br i1 %i.ro, label %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSY_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSY_10time_pointIT_T0_EE.exit, label %bb.go

bb.go:                                            ; preds = %.noexc294
  %i.rp = load atomic i32, ptr %i.rh acquire, align 8
  %i.rq = and i32 %i.rp, 2147483647               ; 2 uses
  %i.rr = icmp eq i32 %i.rq, 1
  br i1 %i.rr, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.rs = sdiv i64 %2, 1000000000                 ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.rs, -1000000000
  %i.rt = add i64 %.neg.i.i.i.i.i.i, %2
  br label %_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i

_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i: ; preds = %.noexc295, %bb.gp
  %.014.us.i.i.i.i = phi i32 [ %i.rq, %bb.gp ], [ %i.ry, %.noexc295 ]
  %i.ru = atomicrmw or ptr %i.rh, i32 -2147483648 monotonic, align 4 ; 0 uses
  %i.rv = or disjoint i32 %.014.us.i.i.i.i, -2147483648
  %i.rw = invoke noundef zeroext i1 @_ZNSt28__atomic_futex_unsigned_base19_M_futex_wait_untilEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE(ptr noundef nonnull align 4 dereferenceable(4) %i.rh, ptr noundef nonnull align 4 dereferenceable(4) %i.rh, i32 noundef %i.rv, i1 noundef zeroext true, i64 %i.rs, i64 %i.rt)
          to label %.noexc295 unwind label %.loopexit.split-lp.loopexit

.noexc295:                                        ; preds = %_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i
  %i.rx = load atomic i32, ptr %i.rh acquire, align 8
  %i.ry = and i32 %i.rx, 2147483647               ; 2 uses
  %i.rz = icmp ne i32 %i.ry, 1                    ; 2 uses
  %or.cond.not.us.i.i.i.i = and i1 %i.rw, %i.rz
  br i1 %or.cond.not.us.i.i.i.i, label %_ZNKSt13__atomic_baseIjE4loadESt12memory_order.exit.us.i.i.i.i, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i

_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i: ; preds = %.noexc295
  br i1 %i.rz, label %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSY_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSY_10time_pointIT_T0_EE.exit, label %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i

_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i: ; preds = %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i, %bb.go
  %i.sa = load ptr, ptr %i.rg, align 8, !tbaa !99
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8
  invoke void %i.sc(ptr noundef nonnull align 8 dereferenceable(28) %i.rg)
          to label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !475

_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSY_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSY_10time_pointIT_T0_EE.exit: ; preds = %.noexc294, %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.i.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !102
  %.not.i.i.not.i = icmp eq ptr %i.se, null
  br i1 %.not.i.i.not.i, label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSY_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSY_10time_pointIT_T0_EE.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.sg = getelementptr inbounds nuw i8, ptr %32, i64 48
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !104
  invoke void %i.sh(ptr noundef nonnull align 8 dereferenceable(32) %i.sf)
          to label %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit unwind label %bb.gr, !inline_history !1

bb.gr:                                            ; preds = %bb.gq
  %i.si = landingpad { ptr, i32 }
          catch ptr null
  %i.sj = extractvalue { ptr, i32 } %i.si, 0
  call void @__clang_call_terminate(ptr %i.sj) #28
  unreachable

_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit: ; preds = %_ZNSt23__atomic_futex_unsignedILj2147483648EE24_M_load_when_equal_untilINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEbjSt12memory_orderRKNS2_10time_pointINS2_3_V212system_clockET_EE.exit.thread.i.i.i, %_ZNSt13__future_base13_State_baseV28_S_checkIS0_EEvRKSt10shared_ptrIT_E.exit.i.i, %bb.gq, %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE9waitUntilINSt6chrono3_V212system_clockENSY_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNSY_10time_pointIT_T0_EE.exit, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  %i.sk = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNKSt14__basic_futureIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEENSB_16ComponentValTypeEESaISR_EENSB_7ErrCodeEEEE13_M_get_resultEv(ptr noundef nonnull align 8 dereferenceable(56) %32)
          to label %.noexc297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc297:                                        ; preds = %_ZN8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE6cancelEv.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  invoke void @_ZN5cxx206detail18expected_copy_baseISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEENSB_16ComponentValTypeEESaISR_EENSB_7ErrCodeELb0EEC2ERKSV_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.sl)
          to label %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE3getEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE3getEv.exit: ; preds = %.noexc297
  %i.sm = load i8, ptr %34, align 8, !tbaa !146, !range !65, !noundef !66
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.gs, label %_ZN5cxx206detail21expected_storage_baseISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNSB_10RefVariantEEEEEENSB_16ComponentValTypeEESaISR_EENSB_7ErrCodeELb0ELb1EED2Ev.exit

bb.gs:                                            ; preds = %_ZNK8WasmEdge5AsyncIN5cxx208expectedISt6vectorISt4pairISt7variantIJhtjmasilfdbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEENS_16ComponentValTypeEESaISR_EENS_7ErrCodeEEEE3getEv.exit
  %i.so = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !148 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !148 ; 2 uses
  %.not493844 = icmp eq ptr %i.sp, %i.sr
  br i1 %.not493844, label %.loopexit.thread, label %.lr.ph846

.lr.ph846:                                        ; preds = %bb.gs, %bb.hh
  %.sroa.0355.0845 = phi ptr [ %i.tu, %bb.hh ], [ %i.sp, %bb.gs ] ; 17 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0355.0845, i64 51
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !61
  switch i8 %i.st, label %bb.hh [
    i8 122, label %bb.gt
    i8 121, label %bb.gv
    i8 120, label %bb.gx
    i8 119, label %bb.gz
    i8 118, label %bb.hb
    i8 117, label %bb.hd
    i8 115, label %bb.hf
  ]

bb.gt:                                            ; preds = %.lr.ph846
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0355.0845, i64 32
  %i.sv = load i8, ptr %i.su, align 16, !tbaa !142
  %.not.i.i299 = icmp eq i8 %i.sv, 12
  br i1 %.not.i.i299, label %.noexc, label %.invoke1456

.invoke1456:                                      ; preds = %bb.gt, %bb.hf, %bb.hd, %bb.hb, %bb.gz, %bb.gx, %bb.gv
  %i.sw = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.sw, align 8, !tbaa !99
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr @.str.64, ptr %i.sx, align 8, !tbaa !151
  invoke void @__cxa_throw(ptr nonnull %i.sw, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke1456
  unreachable

.noexc:                                           ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.sy = load i32, ptr %.sroa.0355.0845, align 16, !tbaa !73
  %.sroa.01.0.insert.ext.i = zext i32 %i.sy to i128
  store i128 %.sroa.01.0.insert.ext.i, ptr %29, align 16
  invoke void @_ZN3fmt3v116vprintENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr nonnull @.str.24, i64 3, i64 1, ptr nonnull %29)
          to label %bb.gu unwind label %.loopexit501

bb.gu:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.hh

bb.gv:                                            ; preds = %.lr.ph846
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0355.0845, i64 32
  %i.ta = load i8, ptr %i.sz, align 16, !tbaa !142
  %.not.i.i301 = icmp eq i8 %i.ta, 12
  br i1 %.not.i.i301, label %.noexc104, label %.invoke1456

.noexc104:                                        ; preds = %bb.gv
end_hunk_1
