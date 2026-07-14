inline.NumInlined: 2270
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11OpenImageIO4v3_111thread_pool4pushIRSt8functionIFvillllEEJRlS7_S7_S7_EEESt6futureIDTclfp_Li0Espfp0_EEEOT_DpOT0_:bb.a
  store i32 0, ptr %i.cg, align 8, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !87
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #30, !inline_history !242
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #30, !inline_history !242
  br label %_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i27 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i27, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i32 [ %i.cj, %bb.af ], [ %i.ct, %bb.ag ]
  %i.cu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cu, label %bb.ah, label %_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #30
  br label %_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

.body38:                                          ; preds = %bb.u, %_ZNSt14_Function_baseD2Ev.exit4.i, %bb.z, %bb.aa
  %.pn13 = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %i.cc, %bb.z ], [ %i.bq, %bb.u ], [ %i.bg, %_ZNSt14_Function_baseD2Ev.exit4.i ]
  call void @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  br label %bb.ai

bb.ai:                                            ; preds = %.body38, %_ZNSt5_BindIFSt8functionIFvillllEESt12_PlaceholderILi1EEllllEED2Ev.exit20
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body38 ], [ %eh.lpad-body, %_ZNSt5_BindIFSt8functionIFvillllEESt12_PlaceholderILi1EEllllEED2Ev.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nofree noundef readonly byval(%"class.OpenImageIO::v3_1::paropt") align 8 captures(none) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::function.45", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = ptrtoint ptr %6 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %8, align 8, !tbaa !346
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS2_6paroptEE3$_0E9_M_invokeERKSt9_Any_dataOiOlSE_SE_SE_", ptr %i.c, align 8, !tbaa !294
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS2_6paroptEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.b, align 8, !tbaa !142
  invoke void @_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %7)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_115parallel_for_2DEllllOSt8functionIFvllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nofree noundef readonly byval(%"class.OpenImageIO::v3_1::paropt") align 8 captures(none) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::function.45", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = ptrtoint ptr %4 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %6, align 8, !tbaa !246
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_115parallel_for_2DEllllOSt8functionIFvllEENS2_6paroptEE3$_0E9_M_invokeERKSt9_Any_dataOiOlSE_SE_SE_", ptr %i.c, align 8, !tbaa !294
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_115parallel_for_2DEllllOSt8functionIFvllEENS2_6paroptEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.b, align 8, !tbaa !142
  invoke void @_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i64 noundef %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #11 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !349  ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %1 = sub i64 %i.e, %i.f
  %2 = add i64 %1, -24                            ; 2 uses
  %i.g = udiv i64 %2, 24
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693944      ; 3 uses
  %i.i = mul i64 %n.vec, 24
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue23, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue23 ] ; 2 uses
  %i.k = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 28       ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 52       ; 2 uses
  %i.v = getelementptr i8, ptr %i.n, i64 76       ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 100      ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 124      ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 148      ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 172      ; 2 uses
  %i.aa = load i16, ptr %i.s, align 4, !tbaa !57
  %i.ab = load i16, ptr %i.t, align 4, !tbaa !57
  %i.ac = load i16, ptr %i.u, align 4, !tbaa !57
  %i.ad = load i16, ptr %i.v, align 4, !tbaa !57
  %i.ae = load i16, ptr %i.w, align 4, !tbaa !57
  %i.af = load i16, ptr %i.x, align 4, !tbaa !57
  %i.ag = load i16, ptr %i.y, align 4, !tbaa !57
  %i.ah = load i16, ptr %i.z, align 4, !tbaa !57
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = icmp ne <8 x i16> %i.ap, splat (i16 -1) ; 8 uses
  %i.ar = extractelement <8 x i1> %i.aq, i64 0
  br i1 %i.ar, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.s, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.as = extractelement <8 x i1> %i.aq, i64 1
  br i1 %i.as, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.t, align 4, !tbaa !57
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.at = extractelement <8 x i1> %i.aq, i64 2
  br i1 %i.at, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  store i16 -1, ptr %i.u, align 4, !tbaa !57
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.au = extractelement <8 x i1> %i.aq, i64 3
  br i1 %i.au, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  store i16 -1, ptr %i.v, align 4, !tbaa !57
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.av = extractelement <8 x i1> %i.aq, i64 4
  br i1 %i.av, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  store i16 -1, ptr %i.w, align 4, !tbaa !57
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.aw = extractelement <8 x i1> %i.aq, i64 5
  br i1 %i.aw, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  store i16 -1, ptr %i.x, align 4, !tbaa !57
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <8 x i1> %i.aq, i64 6
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  store i16 -1, ptr %i.y, align 4, !tbaa !57
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.ay = extractelement <8 x i1> %i.aq, i64 7
  br i1 %i.ay, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i16 -1, ptr %i.z, align 4, !tbaa !57
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %pred.store.continue23
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !57
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %i.ba, align 4, !tbaa !57
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !351

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, %middle.block, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !352
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.b to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.bi) #29
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !353    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt5queueIPSt8functionIFviEESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !354  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #29
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !355

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !353
  br label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !356
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt5queueIPSt8functionIFviEESt5dequeIS3_SaIS3_EEED2Ev.exit

_ZNSt5queueIPSt8functionIFviEESt5dequeIS3_SaIS3_EEED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs:bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !63
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64, !range !71, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !367 ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !364  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = fdiv float %i.ad, %i.af
  %i.ah = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.ai = fptoui float %i.ah to i64
  %i.aj = fdiv float %i.y, %i.af
  %i.ak = tail call noundef float @llvm.ceil.f32(float %i.aj)
  %i.al = fptoui float %i.ak to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.al)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 18 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !368
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !366  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !366  ; 3 uses
  %.not19 = icmp eq ptr %i.g, %i.i
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !364
  %.fr21 = freeze i64 %i.j
  %i.k = icmp ult i64 %.fr21, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.sroa.015.020.us = phi ptr [ %i.am, %bb.f ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 4
  %i.n = load i16, ptr %i.m, align 4, !tbaa !57
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.f, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us: ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %.sroa.015.020.us, align 4, !tbaa !421 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8, !tbaa !360    ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us
  %i.w = phi i64 [ %i.r, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.ai, %bb.e ]
  %.013.i.us = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.aj, %bb.e ] ; 4 uses
  %.012.i.us = phi i32 [ %i.p, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %.1.i.us, %bb.e ] ; 3 uses
  %.0.i.us = phi i64 [ %i.s, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.al, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.0.i.us ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !57   ; 3 uses
  %i.aa = icmp sgt i16 %.013.i.us, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i16 %i.z, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %i.ab, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i64, ptr %i.t, align 8, !tbaa !77
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !77
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.us, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !3
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !3
  store i32 %i.ag, ptr %i.v, align 8, !tbaa !3
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !3
  store i16 %.013.i.us, ptr %i.y, align 4, !tbaa !422
  %i.ah = load i32, ptr %i.x, align 8, !tbaa !421
  store i32 %.012.i.us, ptr %i.x, align 8, !tbaa !421
  %.pre26 = load i64, ptr %2, align 8, !tbaa !360
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ai = phi i64 [ %.pre26, %bb.d ], [ %i.w, %bb.b ] ; 2 uses
  %.114.i.us = phi i16 [ %i.z, %bb.d ], [ %.013.i.us, %bb.b ]
  %.1.i.us = phi i32 [ %i.ah, %bb.d ], [ %.012.i.us, %bb.b ]
  %i.aj = add i16 %.114.i.us, 1
  %i.ak = add i64 %.0.i.us, 1
  %i.al = and i64 %i.ai, %i.ak
  br label %bb.b, !llvm.loop !424

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store i32 %.012.i.us, ptr %i.x, align 4, !tbaa !421
  store i16 %.013.i.us, ptr %i.y, align 4, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us, %.lr.ph.split.us
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 24 ; 2 uses
  %.not.us = icmp eq ptr %i.am, %i.i
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.o, %bb.f, %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !77
  %i.an = load i64, ptr %0, align 8, !tbaa !77
  store i64 %i.an, ptr %2, align 8, !tbaa !77
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !348 ; 16 uses
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !349 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.au = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !366
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !348
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !349
  store <2 x ptr> %i.au, ptr %i.f, align 8, !tbaa !366
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !366
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.ax = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !366
  store <2 x ptr> %i.av, ptr %i.aq, align 8, !tbaa !366
  store <2 x ptr> %i.ax, ptr %i.at, align 8, !tbaa !366
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.e, align 8, !tbaa !77
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !tbaa !77
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !77
  store <2 x i64> %i.ba, ptr %i.e, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !77
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !77
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.a, align 8, !tbaa !65
  %i.bh = load <2 x float>, ptr %i.bf, align 8, !tbaa !65
  store <2 x float> %i.bg, ptr %i.bf, align 8, !tbaa !65
  store <2 x float> %i.bh, ptr %i.a, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !124, !range !71, !noundef !72
  %i.bl = load i8, ptr %i.bj, align 8, !tbaa !124, !range !71, !noundef !72
  store i8 %i.bl, ptr %i.bi, align 8, !tbaa !124
  store i8 %i.bk, ptr %i.bj, align 8, !tbaa !124
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !124, !range !71, !noundef !72
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !124, !range !71, !noundef !72
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !124
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !124
  %.not4.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge
  %i.bq = ptrtoint ptr %i.as to i64
  %i.br = ptrtoint ptr %i.ar to i64
  %4 = sub i64 %i.bq, %i.br
  %5 = add i64 %4, -24                            ; 2 uses
  %i.bs = udiv i64 %5, 24
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bt, 2305843009213693944     ; 3 uses
  %i.bu = mul i64 %n.vec, 24
  %i.bv = getelementptr i8, ptr %i.ar, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue63, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue63 ] ; 2 uses
  %i.bw = mul i64 %index, 24                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.bx = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.bz = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.ca = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.cb = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.cd = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bx, i64 28     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 52     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bz, i64 76     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ca, i64 100    ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cb, i64 124    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 148    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cd, i64 172    ; 2 uses
  %i.cm = load i16, ptr %i.ce, align 4, !tbaa !57
  %i.cn = load i16, ptr %i.cf, align 4, !tbaa !57
  %i.co = load i16, ptr %i.cg, align 4, !tbaa !57
  %i.cp = load i16, ptr %i.ch, align 4, !tbaa !57
  %i.cq = load i16, ptr %i.ci, align 4, !tbaa !57
  %i.cr = load i16, ptr %i.cj, align 4, !tbaa !57
  %i.cs = load i16, ptr %i.ck, align 4, !tbaa !57
  %i.ct = load i16, ptr %i.cl, align 4, !tbaa !57
  %i.cu = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 1
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 2
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 3
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 4
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 5
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 6
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 7
  %i.dc = icmp ne <8 x i16> %i.db, splat (i16 -1) ; 8 uses
  %i.dd = extractelement <8 x i1> %i.dc, i64 0
  br i1 %i.dd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.ce, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.de = extractelement <8 x i1> %i.dc, i64 1
  br i1 %i.de, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.cf, align 4, !tbaa !57
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue
  %i.df = extractelement <8 x i1> %i.dc, i64 2
  br i1 %i.df, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i16 -1, ptr %i.cg, align 4, !tbaa !57
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.dg = extractelement <8 x i1> %i.dc, i64 3
  br i1 %i.dg, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i16 -1, ptr %i.ch, align 4, !tbaa !57
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.dh = extractelement <8 x i1> %i.dc, i64 4
  br i1 %i.dh, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i16 -1, ptr %i.ci, align 4, !tbaa !57
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.di = extractelement <8 x i1> %i.dc, i64 5
  br i1 %i.di, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i16 -1, ptr %i.cj, align 4, !tbaa !57
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.dj = extractelement <8 x i1> %i.dc, i64 6
  br i1 %i.dj, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i16 -1, ptr %i.ck, align 4, !tbaa !57
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.dk = extractelement <8 x i1> %i.dc, i64 7
  br i1 %i.dk, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i16 -1, ptr %i.cl, align 4, !tbaa !57
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %pred.store.continue63
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !57
  %i.do = icmp eq i16 %i.dn, -1
  br i1 %i.do, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %i.dm, align 4, !tbaa !57
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dp, %i.as
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !426

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, %middle.block, %._crit_edge
  %.not.i.i1.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.dq = ptrtoint ptr %i.aw to i64
  %i.dr = ptrtoint ptr %i.ar to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.ds) #29
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.sroa.015.020 = phi ptr [ %i.ev, %bb.o ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 4
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !57
  %i.dv = icmp eq i16 %i.du, -1
  br i1 %i.dv, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 8 ; 4 uses
  %i.dx = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit unwind label %bb.j ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #31
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit: ; preds = %bb.i
  %i.ea = load i64, ptr %2, align 8, !tbaa !360   ; 2 uses
  %i.eb = and i64 %i.ea, %i.dx
  %i.ec = trunc i64 %i.dx to i32
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit
  %i.ef = phi i64 [ %i.ea, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.er, %bb.n ]
  %.013.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.es, %bb.n ] ; 4 uses
  %.012.i = phi i32 [ %i.ec, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %.1.i, %bb.n ] ; 3 uses
  %.0.i = phi i64 [ %i.eb, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.eu, %bb.n ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %.0.i ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !57 ; 3 uses
  %i.ej = icmp sgt i16 %.013.i, %i.ei
  br i1 %i.ej, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ek = icmp eq i16 %i.ei, -1
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  br i1 %i.ek, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !77
  %i.em = load i64, ptr %i.el, align 8, !tbaa !77
end_hunk_1
begin_hunk_2_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm:bb.a
  %i.eu = and i64 %i.er, %i.et
  br label %bb.k, !llvm.loop !424

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  store i32 %.012.i, ptr %i.eg, align 4, !tbaa !421
  store i16 %.013.i, ptr %i.eh, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit, %.lr.ph.split
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ev, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #22

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !172    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
  unreachable

_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !211
  store ptr null, ptr %i.r, align 8, !tbaa !82
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !211
  store ptr null, ptr %2, align 8, !tbaa !182
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !430, !noalias !427
  store ptr null, ptr %i.t, align 8, !tbaa !82, !alias.scope !430, !noalias !427
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !427, !noalias !430
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !182, !alias.scope !430, !noalias !427
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !302

_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !211, !alias.scope !435, !noalias !432
  store ptr null, ptr %i.y, align 8, !tbaa !82, !alias.scope !435, !noalias !432
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !211, !alias.scope !432, !noalias !435
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !182, !alias.scope !435, !noalias !432
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !302

_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !210
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !172
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !169
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !402
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !402
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_future_errori(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #12

declare noundef zeroext i1 @_ZNSt28__atomic_futex_unsigned_base26_M_futex_wait_until_steadyEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i1 noundef zeroext, i64, i64) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111thread_pool4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN11OpenImageIO4v3_111thread_pool4Impl4stopEb(ptr noundef nonnull align 8 dereferenceable(321) %0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !349  ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %1 = sub i64 %i.e, %i.f
  %2 = add i64 %1, -24                            ; 2 uses
  %i.g = udiv i64 %2, 24
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693944      ; 3 uses
  %i.i = mul i64 %n.vec, 24
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue46, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue46 ] ; 2 uses
  %i.k = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 28       ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 52       ; 2 uses
  %i.v = getelementptr i8, ptr %i.n, i64 76       ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 100      ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 124      ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 148      ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 172      ; 2 uses
  %i.aa = load i16, ptr %i.s, align 4, !tbaa !57
  %i.ab = load i16, ptr %i.t, align 4, !tbaa !57
  %i.ac = load i16, ptr %i.u, align 4, !tbaa !57
  %i.ad = load i16, ptr %i.v, align 4, !tbaa !57
  %i.ae = load i16, ptr %i.w, align 4, !tbaa !57
  %i.af = load i16, ptr %i.x, align 4, !tbaa !57
  %i.ag = load i16, ptr %i.y, align 4, !tbaa !57
  %i.ah = load i16, ptr %i.z, align 4, !tbaa !57
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = icmp ne <8 x i16> %i.ap, splat (i16 -1) ; 8 uses
  %i.ar = extractelement <8 x i1> %i.aq, i64 0
  br i1 %i.ar, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.s, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.as = extractelement <8 x i1> %i.aq, i64 1
  br i1 %i.as, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.t, align 4, !tbaa !57
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue
  %i.at = extractelement <8 x i1> %i.aq, i64 2
  br i1 %i.at, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  store i16 -1, ptr %i.u, align 4, !tbaa !57
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.au = extractelement <8 x i1> %i.aq, i64 3
  br i1 %i.au, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  store i16 -1, ptr %i.v, align 4, !tbaa !57
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.av = extractelement <8 x i1> %i.aq, i64 4
  br i1 %i.av, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  store i16 -1, ptr %i.w, align 4, !tbaa !57
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.aw = extractelement <8 x i1> %i.aq, i64 5
  br i1 %i.aw, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  store i16 -1, ptr %i.x, align 4, !tbaa !57
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.ax = extractelement <8 x i1> %i.aq, i64 6
  br i1 %i.ax, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  store i16 -1, ptr %i.y, align 4, !tbaa !57
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.ay = extractelement <8 x i1> %i.aq, i64 7
  br i1 %i.ay, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  store i16 -1, ptr %i.z, align 4, !tbaa !57
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %pred.store.continue46
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.preheader47:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader47, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader47 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !57
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i16 -1, ptr %i.ba, align 4, !tbaa !57
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !438

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i, %middle.block, %bb.b
  %.not.i.i1.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !352
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.b to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.bi) #29
  br label %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bj) #30
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !353 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !134 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !354 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = icmp ult ptr %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i.i.i1, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i1:                                ; preds = %bb.e, %.lr.ph.i.i.i.i.i1
  %.06.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i1 ], [ %i.bo, %bb.e ] ; 3 uses
  %i.bs = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef 512) #29
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bu = icmp ult ptr %.06.i.i.i.i.i, %i.bp
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i1, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, !llvm.loop !355

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i1
  %.pre.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !353
  br label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, %bb.e
  %i.bv = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i ], [ %i.bl, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !356
  %i.by = shl i64 %i.bx, 3
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #29
  br label %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit

_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit: ; preds = %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrISt6atomicIbEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i ], [ %i.ca, %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
end_hunk_2
