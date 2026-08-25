Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpegr?download=true
inline.NumInlined: 1677
inline.NumDeleted: 807
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv":bb.a
  br i1 %.not.i23.i, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bo) #30
  br label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, %bb.n
  store ptr %i.bw, ptr %7, align 8, !tbaa !143
  store ptr %i.cq, ptr %i.ay, align 8, !tbaa !136
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cr, ptr %i.az, align 8, !tbaa !139
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %8, align 8, !tbaa !142
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.pr, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  call void @_ZSt9terminatev() #32
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit
  %i.cs = phi ptr [ %i.bh, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread ], [ %i.bw, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit ]
  %i.ct = phi ptr [ %i.bi, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread ], [ %i.cr, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %i.cu = phi ptr [ %i.bl, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit.thread ], [ %i.cq, %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.cv = add nuw nsw i32 %.060264, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %i.aw
  br i1 %exitcond.not, label %.preheader248, label %bb.j, !llvm.loop !279

bb.p:                                             ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6threadD2Ev.exit77

.loopexit249:                                     ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit251 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp250:                            ; preds = %bb.m
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp250, %.loopexit249
  %lpad.phi253 = phi { ptr, i32 } [ %lpad.loopexit251, %.loopexit249 ], [ %lpad.loopexit.split-lp252, %.loopexit.split-lp250 ]
  %.sroa.0.0.copyload.i.i75 = load i64, ptr %8, align 8, !tbaa !142
  %.not.i76 = icmp eq i64 %.sroa.0.0.copyload.i.i75, 0
  br i1 %.not.i76, label %_ZNSt6threadD2Ev.exit77, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #32
  unreachable

_ZNSt6threadD2Ev.exit77:                          ; preds = %bb.q, %bb.p
  %.pn68 = phi { ptr, i32 } [ %i.cw, %bb.p ], [ %lpad.phi253, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body82

._crit_edge:                                      ; preds = %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit, %.preheader248
  %i.cx = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cx) #29
          to label %.noexc78 unwind label %.loopexit.split-lp244

.noexc78:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.lr.ph266, %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit
  %i.cy = phi i32 [ %i.bc, %.lr.ph266 ], [ %i.dj, %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit ]
  %.059265 = phi i32 [ 0, %.lr.ph266 ], [ %.sroa.speculated212, %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit ] ; 3 uses
  %i.cz = add i32 %.059265, %i.t
  %.sroa.speculated212 = call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.cz) ; 4 uses
  %i.da = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 2 uses
  %.not.i.i.i.i80 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i80, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.da) #29
          to label %.noexc81 unwind label %bb.x

.noexc81:                                         ; preds = %bb.u
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i32 %.sroa.speculated212, ptr %2, align 4, !tbaa !46, !alias.scope !280
  store i32 %.059265, ptr %i.bd, align 4, !tbaa !51, !alias.scope !280
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !53 ; 4 uses
  %i.dc = load ptr, ptr %i.bf, align 8, !tbaa !54
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %.not.i.i.i = icmp eq ptr %i.db, %i.dd
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  store i32 %.sroa.speculated212, ptr %i.db, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.059265, ptr %i.de, align 4, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.be, align 8, !tbaa !53
  br label %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit

bb.w:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  invoke void @_ZNSt5dequeISt5tupleIJjjEESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit7.i

_ZNSt11unique_lockISt5mutexED2Ev.exit7.i:         ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.dh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 0 uses
  br label %.body82

_ZN8ultrahdr8JobQueue10enqueueJobEjj.exit:        ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 0 uses
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #28
  %i.dj = load i32, ptr %i.g, align 4, !tbaa !203 ; 2 uses
  %i.dk = icmp ult i32 %.sroa.speculated212, %i.dj
  br i1 %i.dk, label %bb.t, label %._crit_edge

bb.x:                                             ; preds = %bb.u
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.y:                                             ; preds = %._crit_edge
  store i8 1, ptr %5, align 8, !tbaa !13
  %i.dm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 0 uses
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #28
  %i.dn = load ptr, ptr %i.ao, align 8, !tbaa !162
  %.not.i.i84 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i84, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc85 unwind label %.loopexit.split-lp244

.noexc85:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.do = load ptr, ptr %i.av, align 8, !tbaa !164
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp244, !inline_history !166

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.aa
  %i.dp = load ptr, ptr %7, align 8, !tbaa !167   ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %.not4.i = icmp eq ptr %i.dp, %i.bb             ; 2 uses
  br i1 %.not4.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageSB_PNS8_25uhdr_gainmap_metadata_extERSt10unique_ptrINS8_18uhdr_raw_image_extESt14default_deleteISF_EEbbENK3$_1clEvEUlRS2_E_ET0_T_SO_SN_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %.noexc88
  %.sroa.01.05.i = phi ptr [ %i.dr, %.noexc88 ], [ %i.dp, %_ZNKSt8functionIFvvEEclEv.exit ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.05.i)
          to label %.noexc88 unwind label %.loopexit243

.noexc88:                                         ; preds = %.lr.ph.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %.not.i87 = icmp eq ptr %i.dr, %i.bb
  br i1 %.not.i87, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageSB_PNS8_25uhdr_gainmap_metadata_extERSt10unique_ptrINS8_18uhdr_raw_image_extESt14default_deleteISF_EEbbENK3$_1clEvEUlRS2_E_ET0_T_SO_SN_.exit", label %.lr.ph.i, !llvm.loop !283

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageSB_PNS8_25uhdr_gainmap_metadata_extERSt10unique_ptrINS8_18uhdr_raw_image_extESt14default_deleteISF_EEbbENK3$_1clEvEUlRS2_E_ET0_T_SO_SN_.exit": ; preds = %.noexc88, %_ZNKSt8functionIFvvEEclEv.exit
  %i.ds = load i8, ptr %i.k, align 8, !tbaa !67, !range !25, !noundef !26
  %i.dt = trunc nuw i8 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.pre = load float, ptr %i.du, align 8, !tbaa !71 ; 2 uses
  %i.dw = fcmp contract une float %.pre, f0x7F7FFFFF
  br label %.cont

bb.ab:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.dx = load i32, ptr %i.d, align 8, !tbaa !202
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false), !tbaa !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa !236
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.eb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31
          to label %bb.al unwind label %bb.ai     ; 8 uses

.loopexit243:                                     ; preds = %.lr.ph.i
  %lpad.loopexit245 = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.loopexit.split-lp244:                            ; preds = %bb.s, %bb.z, %bb.aa
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.cont:                                            ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageSB_PNS8_25uhdr_gainmap_metadata_extERSt10unique_ptrINS8_18uhdr_raw_image_extESt14default_deleteISF_EEbbENK3$_1clEvEUlRS2_E_ET0_T_SO_SN_.exit", %bb.ah
  %indvars.iv = phi i64 [ 0, %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageSB_PNS8_25uhdr_gainmap_metadata_extERSt10unique_ptrINS8_18uhdr_raw_image_extESt14default_deleteISF_EEbbENK3$_1clEvEUlRS2_E_ET0_T_SO_SN_.exit" ], [ %indvars.iv.next, %bb.ah ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !236 ; 3 uses
  %i.ee = fcmp contract olt float %i.ed, -1.430000e+01
  %11 = fcmp contract ogt float %i.ed, 1.560000e+01
  %.mux = select i1 %i.ee, float -1.430000e+01, float %i.ed
  %i.ef = select i1 %11, float 1.560000e+01, float %.mux ; 4 uses
  store float %i.ef, ptr %i.ec, align 4, !tbaa !236
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !236 ; 3 uses
  %i.ei = fcmp contract olt float %i.eh, -1.430000e+01
  %12 = fcmp contract ogt float %i.eh, 1.560000e+01
  %.mux230 = select i1 %i.ei, float -1.430000e+01, float %i.eh
  %i.ej = select i1 %12, float 1.560000e+01, float %.mux230 ; 4 uses
  store float %i.ej, ptr %i.eg, align 4, !tbaa !236
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.cont
  %i.ek = call contract noundef float @log2f(float noundef %.pre) #28, !tbaa !3 ; 2 uses
  %i.el = fcmp contract olt float %i.ek, %i.ej
  %.sroa.speculated200 = select i1 %i.el, float %i.ek, float %i.ej ; 2 uses
  store float %.sroa.speculated200, ptr %i.eg, align 4, !tbaa !236
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.cont
  %i.em = phi float [ %.sroa.speculated200, %bb.ac ], [ %i.ej, %.cont ] ; 2 uses
  %i.en = load float, ptr %i.dv, align 4, !tbaa !70 ; 2 uses
  %i.eo = fcmp contract une float %i.en, f0x00800000
  br i1 %i.eo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ep = call contract noundef float @log2f(float noundef %i.en) #28, !tbaa !3 ; 2 uses
  %i.eq = fcmp contract olt float %i.ef, %i.ep
  %.sroa.speculated196 = select i1 %i.eq, float %i.ep, float %i.ef ; 2 uses
  store float %.sroa.speculated196, ptr %i.ec, align 4, !tbaa !236
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.er = phi float [ %.sroa.speculated196, %bb.ae ], [ %i.ef, %bb.ad ]
  %i.es = fsub contract float %i.em, %i.er
  %i.et = call contract noundef float @llvm.fabs.f32(float %i.es)
  %i.eu = fcmp contract olt float %i.et, f0x34000000
  br i1 %i.eu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ev = fadd contract float %i.em, 1.000000e-01
  store float %i.ev, ptr %i.eg, align 4, !tbaa !236
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ew = icmp samesign ult i64 %indvars.iv, 2
  %i.ex = select i1 %i.dt, i1 %i.ew, i1 false
  br i1 %i.ex, label %.cont, label %bb.ab, !llvm.loop !284

bb.ai:                                            ; preds = %bb.ab
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %i.ea, align 8, !tbaa !162 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i93, label %.body95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = invoke noundef zeroext i1 %i.ez(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body95 unwind label %bb.ak   ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #32
  unreachable

bb.al:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.eb, align 16, !tbaa !240
  %.sroa.5.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx290, align 8, !tbaa !263
  %.sroa.6.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 %i.dx, ptr %.sroa.6.0..sroa_idx291, align 16, !tbaa !3
  %.sroa.7293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.dz, ptr %.sroa.7293.0..sroa_idx, align 8, !tbaa !86
  %.sroa.8.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %.sroa.8.0..sroa_idx294, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.8, i64 12, i1 false), !tbaa.struct !285
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9, i64 12, i1 false), !tbaa.struct !286
  %.sroa.10.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  store ptr %5, ptr %.sroa.10.0..sroa_idx295, align 8, !tbaa !135
  store ptr %i.eb, ptr %9, align 8, !tbaa !58
  store ptr @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE0_E9_M_invokeERKSt9_Any_data", ptr %i.fd, align 8, !tbaa !164
  store ptr @"_ZNSt17_Function_handlerIFvvEZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extERSt10unique_ptrINS1_18uhdr_raw_image_extESt14default_deleteIS8_EEbbENK3$_1clEvEUlvE0_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.ea, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br i1 %.not4.i, label %_ZNSt6vectorISt6threadSaIS0_EE5clearEv.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i

bb.am:                                            ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.fe, %i.bb
  br i1 %.not.i.i.i.i98, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i, !llvm.loop !259

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i:        ; preds = %bb.al, %bb.am
  %.05.i.i.i.i = phi ptr [ %i.fe, %bb.am ], [ %i.dp, %bb.al ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i, align 8, !tbaa !142
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  call void @_ZSt9terminatev() #32
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.am
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !136
  br label %_ZNSt6vectorISt6threadSaIS0_EE5clearEv.exit

_ZNSt6vectorISt6threadSaIS0_EE5clearEv.exit:      ; preds = %bb.al, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ff = phi ptr [ %i.bb, %bb.al ], [ %i.dp, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.fg = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 2 uses
  %.not.i.i.i.i99 = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i.i99, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i100, label %.invoke

.invoke:                                          ; preds = %_ZNSt6vectorISt6threadSaIS0_EE5clearEv.exit, %._crit_edge273
  %i.fh = phi i32 [ %i.hr, %._crit_edge273 ], [ %i.fg, %_ZNSt6vectorISt6threadSaIS0_EE5clearEv.exit ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.fh) #29
          to label %.cont357 unwind label %.loopexit.split-lp

.cont357:                                         ; preds = %.invoke
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i100:    ; preds = %_ZNSt6vectorISt6threadSaIS0_EE5clearEv.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fj = load <2 x ptr>, ptr %i.fi, align 8, !tbaa !42, !noalias !287
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !32, !noalias !287 ; 2 uses
  %i.fn = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !58, !noalias !287
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !59 ; 2 uses
  %i.fq = icmp ult ptr %i.fm, %i.fp
  br i1 %i.fq, label %.lr.ph.i.i.i.i, label %.loopexit242

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i100, %.lr.ph.i.i.i.i
  %.06.i.pn.i.i.i = phi ptr [ %.06.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.fm, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i100 ]
  %.06.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i.i, i64 8 ; 3 uses
  %i.fr = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef 512) #30
  %i.fs = icmp ult ptr %.06.i.i.i.i, %i.fp
  br i1 %i.fs, label %.lr.ph.i.i.i.i, label %.loopexit242, !llvm.loop !60

.loopexit242:                                     ; preds = %.lr.ph.i.i.i.i, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i100
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store <2 x ptr> %i.fj, ptr %i.ft, align 8, !tbaa !42
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store <2 x ptr> %i.fn, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !58
  store i8 0, ptr %5, align 8, !tbaa !13
  %i.fu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #28 ; 0 uses
  br i1 %i.r, label %bb.ao, label %.lr.ph270

bb.ao:                                            ; preds = %.loopexit242
  %i.fv = load i32, ptr %i.g, align 4, !tbaa !203 ; 2 uses
  br label %.preheader236

.lr.ph270:                                        ; preds = %.loopexit242
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.ap

.preheader236thread-pre-split:                    ; preds = %_ZNSt6threadD2Ev.exit107
  %.pr = load i32, ptr %i.g, align 4, !tbaa !203
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236thread-pre-split, %bb.ao
  %i.fx = phi i32 [ %.pr, %.preheader236thread-pre-split ], [ %i.fv, %bb.ao ] ; 2 uses
  %i.fy = phi i32 [ 1, %.preheader236thread-pre-split ], [ %i.fv, %bb.ao ]
  %i.fz = phi ptr [ %i.hn, %.preheader236thread-pre-split ], [ %i.ba, %bb.ao ]
  %i.ga = phi ptr [ %i.ho, %.preheader236thread-pre-split ], [ %i.ff, %bb.ao ] ; 3 uses
  %.not275 = icmp eq i32 %i.fx, 0
  br i1 %.not275, label %._crit_edge273, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader236
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.ay

.body95:                                          ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %_ZNSt14_Function_baseD2Ev.exit159

.loopexit:                                        ; preds = %.lr.ph.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body120

.loopexit.split-lp:                               ; preds = %.invoke, %bb.be, %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body120

bb.ap:                                            ; preds = %.lr.ph270, %_ZNSt6threadD2Ev.exit107
  %i.gc = phi ptr [ %i.ba, %.lr.ph270 ], [ %i.hn, %_ZNSt6threadD2Ev.exit107 ] ; 5 uses
  %i.gd = phi ptr [ %i.ff, %.lr.ph270 ], [ %i.ho, %_ZNSt6threadD2Ev.exit107 ] ; 4 uses
  %.047268 = phi i32 [ 0, %.lr.ph270 ], [ %i.hp, %_ZNSt6threadD2Ev.exit107 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt6threadC2IRSt8functionIFvvEEJEvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i102 = icmp eq ptr %i.gd, %i.gc
  br i1 %.not.i.i102, label %bb.ar, label %_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit104.thread

_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_.exit104.thread: ; preds = %bb.aq
  store i64 0, ptr %i.gd, align 8, !tbaa !140
  %i.ge = load i64, ptr %10, align 8, !tbaa !142
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !142
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.dq, align 8, !tbaa !136
end_hunk_0
