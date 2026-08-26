Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/function?download=true
inline.NumInlined: 2248
inline.NumDeleted: 1304
begin_hunk_0_@_ZN5arrow7compute14VectorFunction9AddKernelESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteISK_EEEES9_RKNS0_14KernelInitArgsEEE:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.r, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, !prof !41

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #22
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

_ZN5arrow7compute10OutputTypeD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  %i.bb = load ptr, ptr %8, align 8, !tbaa !246
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !243
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.bb, ptr noundef %i.bc)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.t

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.bd = load ptr, ptr %8, align 8, !tbaa !246   ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !258
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #23
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit

bb.t:                                             ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #25
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bl = invoke noundef nonnull align 8 dereferenceable(131) ptr @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.u unwind label %bb.ae      ; 0 uses

bb.u:                                             ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !23, !alias.scope !318
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i15, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bo, align 8, !tbaa !177
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !179
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !264
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22, !inline_history !264
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i16 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i16, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.br, %bb.y ], [ %i.cb, %bb.z ]
  %i.cc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cc, label %bb.aa, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #22
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ag

bb.ab:                                            ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cd, %bb.ab ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #22
  br label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn9 = phi { ptr, i32 } [ %i.cf, %bb.ae ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn9

bb.ag:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(131) ptr @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.44", align 8 ; 5 uses
  %5 = alloca %"class.std::function", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !38
  store ptr %i.h, ptr %i.f, align 8, !tbaa !38
  store ptr null, ptr %1, align 8, !tbaa !94
  %i.i = load ptr, ptr %2, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !259  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !259  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  resume { ptr, i32 } %i.n

_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !277  ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !259  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i: ; preds = %bb.b, %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit
  %i.v = phi ptr [ %i.t, %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit ], [ null, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 24, i1 false)
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i: ; preds = %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  store ptr %i.u, ptr %6, align 8, !tbaa !259
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i
  %i.y = phi ptr [ %i.t, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i ], [ %i.v, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i ]
  store ptr %i.e, ptr %i.b, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !277
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 1, ptr %i.ac, align 8, !tbaa !278
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.i, ptr %i.ad, align 8, !tbaa !324
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.af, align 8, !tbaa !327
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 1, ptr %i.ag, align 4, !tbaa !328
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 1, ptr %i.ah, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  store i8 1, ptr %i.ai, align 1, !tbaa !330
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  store i8 1, ptr %i.aj, align 2, !tbaa !331
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !321
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 136 ; 2 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !321
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.al = phi ptr [ %.pre10, %bb.g ], [ %i.ak, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -136
  ret ptr %i.am
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = load ptr, ptr %2, align 8, !tbaa !94     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !246
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  store i32 %i.j, ptr %i.a, align 4, !tbaa !40, !noalias !335
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !65, !range !68, !noalias !335, !noundef !69 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i32, ptr %i.k, align 4, !tbaa !70, !noalias !335 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %i.o, %i.j
  br i1 %i.p, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit4.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow6Status8FromArgsIJRA19_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA18_S2_RKiRA21_S2_RiRA8_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(19) @.str.11, ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 1 dereferenceable(18) @.str.12, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(21) @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.14)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit4.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow6Status8FromArgsIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RKiRA16_S2_RiRA8_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 1 dereferenceable(11) @.str.15, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(16) @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.14)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit4.thread:                ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  store ptr null, ptr %0, align 8, !tbaa !23, !alias.scope !338
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.f

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.e, %bb.c
  %.pr = load ptr, ptr %3, align 8, !tbaa !23, !noalias !341 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  store ptr %.pr, ptr %0, align 8, !tbaa !23, !alias.scope !341
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.n

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load i8, ptr %i.l, align 8, !tbaa !211, !range !68
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit4.thread
  %i.t = phi i8 [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %i.m, %_ZN5arrow6StatusD2Ev.exit4.thread ]
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %2, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load i8, ptr %i.w, align 8, !tbaa !298, !range !68, !noundef !69
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status8FromArgsIJRA55_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(55) @.str.10)
  br label %bb.n

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !321 ; 15 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !323
  %.not.i5 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i5, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load <2 x ptr>, ptr %2, align 8, !tbaa !39
  store ptr null, ptr %i.ae, align 8, !tbaa !38
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !39
  store ptr null, ptr %2, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 24, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !277
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !277
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !259
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !272
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !259
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i:         ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load i64, ptr %i.aq, align 8
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr null, ptr %i.au, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !39
  store ptr null, ptr %i.av, align 8, !tbaa !38
  store <2 x ptr> %i.aw, ptr %i.as, align 8, !tbaa !39
  store ptr null, ptr %i.at, align 8, !tbaa !303
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !343
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !343
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !259
  %.not.i.i.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !272
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !259
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i

_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i:    ; preds = %bb.l, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bi, ptr noundef nonnull align 8 dereferenceable(11) %i.bj, i64 11, i1 false)
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 16, i1 false), !tbaa.struct !272
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit

_ZN5arrow7compute12ScalarKernelC2EOS1_.exit:      ; preds = %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !39
  store ptr null, ptr %i.ag, align 8, !tbaa !38
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !39
  store ptr null, ptr %i.af, align 8, !tbaa !303
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ai, ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i64 20, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.be, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !39, !alias.scope !650, !noalias !647
  store ptr null, ptr %i.ak, align 8, !tbaa !38, !alias.scope !650, !noalias !647
  store <2 x ptr> %i.al, ptr %.012.i.i.i, align 8, !tbaa !39, !alias.scope !647, !noalias !650
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !94, !alias.scope !650, !noalias !647
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 24, i1 false), !alias.scope !647, !noalias !650
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !277, !alias.scope !650, !noalias !647
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !277, !alias.scope !647, !noalias !650
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !259, !alias.scope !650, !noalias !647 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 16, i1 false), !tbaa.struct !272, !alias.scope !652
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !259, !alias.scope !647, !noalias !650
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !650, !noalias !647
  br label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !650, !noalias !647
  store i64 %i.aw, ptr %i.au, align 8, !alias.scope !647, !noalias !650
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !39, !alias.scope !650, !noalias !647
  store ptr null, ptr %i.az, align 8, !tbaa !38, !alias.scope !650, !noalias !647
  store <2 x ptr> %i.ba, ptr %i.ax, align 8, !tbaa !39, !alias.scope !647, !noalias !650
  store ptr null, ptr %i.ay, align 8, !tbaa !303, !alias.scope !650, !noalias !647
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bb, ptr noundef nonnull align 8 dereferenceable(20) %i.bc, i64 20, i1 false), !alias.scope !652
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %.0911.i.i.i) #22, !noalias !647
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !637

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN5arrow7compute12ScalarKernelC2EOS1_.exit ], [ %i.be, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bf, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bh = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !39, !alias.scope !656, !noalias !653
  store ptr null, ptr %i.bg, align 8, !tbaa !38, !alias.scope !656, !noalias !653
  store <2 x ptr> %i.bh, ptr %.012.i.i.i18, align 8, !tbaa !39, !alias.scope !653, !noalias !656
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !94, !alias.scope !656, !noalias !653
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 24, i1 false), !alias.scope !653, !noalias !656
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !277, !alias.scope !656, !noalias !653
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !277, !alias.scope !653, !noalias !656
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !259, !alias.scope !656, !noalias !653 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 16, i1 false), !tbaa.struct !272, !alias.scope !658
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !259, !alias.scope !653, !noalias !656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !alias.scope !656, !noalias !653
  br label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.e, %.lr.ph.i.i.i17
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !656, !noalias !653
  store i64 %i.bs, ptr %i.bq, align 8, !alias.scope !653, !noalias !656
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.bw = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !39, !alias.scope !656, !noalias !653
  store ptr null, ptr %i.bv, align 8, !tbaa !38, !alias.scope !656, !noalias !653
  store <2 x ptr> %i.bw, ptr %i.bt, align 8, !tbaa !39, !alias.scope !653, !noalias !656
  store ptr null, ptr %i.bu, align 8, !tbaa !303, !alias.scope !656, !noalias !653
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bx, ptr noundef nonnull align 8 dereferenceable(20) %i.by, i64 20, i1 false), !alias.scope !658
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %.0911.i.i.i19) #22, !noalias !653
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 96 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 96 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bz, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !637

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bf, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ca, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !276
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ce) #23
  br label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !630
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !274
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.44", align 8 ; 5 uses
  %6 = alloca %"class.std::function", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !659    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #26
  unreachable

_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880)
  %i.l = select i1 %i.j, i64 67818912035696880, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 136
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.s = load ptr, ptr %2, align 8, !tbaa !94     ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !38
  store ptr %i.v, ptr %i.t, align 8, !tbaa !38
  store ptr null, ptr %2, align 8, !tbaa !94
  %i.w = load ptr, ptr %3, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !259  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !259 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %.body28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body28 unwind label %bb.g    ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

.body28:                                          ; preds = %bb.e, %bb.f
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  %i.ag = extractvalue { ptr, i32 } %i.ab, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %i.ag) #22 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit

_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !277 ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !259 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i: ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit, %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit
  %i.al = phi ptr [ %i.aj, %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit ], [ null, %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 24, i1 false)
  br label %bb.h

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i: ; preds = %_ZNSt15__new_allocatorIN5arrow7compute12VectorKernelEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISM_EEEESA_RKNS1_14KernelInitArgsEEEEEEvPT_DpOT0_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  store ptr %i.ak, ptr %7, align 8, !tbaa !259
  br label %bb.h

bb.h:                                             ; preds = %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i
  %i.ao = phi ptr [ %i.aj, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i ], [ %i.al, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i ]
  store ptr %i.s, ptr %i.r, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.v, ptr %i.ap, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !277
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i8 1, ptr %i.as, align 8, !tbaa !278
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %i.w, ptr %i.at, align 8, !tbaa !324
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.av, align 8, !tbaa !327
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 124
  store i32 1, ptr %i.aw, align 4, !tbaa !328
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store i8 1, ptr %i.ax, align 8, !tbaa !329
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 129
  store i8 1, ptr %i.ay, align 1, !tbaa !330
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 130
  store i8 1, ptr %i.az, align 2, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ce, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.h ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bb = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !39, !alias.scope !663, !noalias !660
  store ptr null, ptr %i.ba, align 8, !tbaa !38, !alias.scope !663, !noalias !660
  store <2 x ptr> %i.bb, ptr %.012.i.i.i, align 8, !tbaa !39, !alias.scope !660, !noalias !663
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !94, !alias.scope !663, !noalias !660
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i8 0, i64 24, i1 false), !alias.scope !660, !noalias !663
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !277, !alias.scope !663, !noalias !660
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !277, !alias.scope !660, !noalias !663
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259, !alias.scope !663, !noalias !660 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 16, i1 false), !tbaa.struct !272, !alias.scope !665
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !259, !alias.scope !660, !noalias !663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !663, !noalias !660
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i:   ; preds = %bb.i, %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !663, !noalias !660
  store i64 %i.bm, ptr %i.bk, align 8, !alias.scope !660, !noalias !663
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bq = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !39, !alias.scope !663, !noalias !660
  store ptr null, ptr %i.bp, align 8, !tbaa !38, !alias.scope !663, !noalias !660
  store <2 x ptr> %i.bq, ptr %i.bn, align 8, !tbaa !39, !alias.scope !660, !noalias !663
  store ptr null, ptr %i.bo, align 8, !tbaa !303, !alias.scope !663, !noalias !660
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !alias.scope !665
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 24, i1 false), !alias.scope !660, !noalias !663
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !343, !alias.scope !663, !noalias !660
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !343, !alias.scope !660, !noalias !663
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !259, !alias.scope !663, !noalias !660 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i.i.i

_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i.i.i: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 16, i1 false), !tbaa.struct !272, !alias.scope !665
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !259, !alias.scope !660, !noalias !663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false), !alias.scope !663, !noalias !660
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i.i.i, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cb, ptr noundef nonnull align 8 dereferenceable(11) %i.cc, i64 11, i1 false), !alias.scope !665
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i) #22, !noalias !660
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.cd, %1
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !666

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.ce, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i35 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i35, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43
  %.012.i.i.i37 = phi ptr [ %i.dk, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ], [ %i.cf, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  %.0911.i.i.i38 = phi ptr [ %i.dj, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ], [ %1, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 8
  %i.ch = load <2 x ptr>, ptr %.0911.i.i.i38, align 8, !tbaa !39, !alias.scope !670, !noalias !667
  store ptr null, ptr %i.cg, align 8, !tbaa !38, !alias.scope !670, !noalias !667
  store <2 x ptr> %i.ch, ptr %.012.i.i.i37, align 8, !tbaa !39, !alias.scope !667, !noalias !670
  store ptr null, ptr %.0911.i.i.i38, align 8, !tbaa !94, !alias.scope !670, !noalias !667
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 24, i1 false), !alias.scope !667, !noalias !670
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !277, !alias.scope !670, !noalias !667
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !277, !alias.scope !667, !noalias !670
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 32 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !259, !alias.scope !670, !noalias !667 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i39 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i39, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i40, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i36
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.co, i64 16, i1 false), !tbaa.struct !272, !alias.scope !672
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !259, !alias.scope !667, !noalias !670
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false), !alias.scope !670, !noalias !667
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i40

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i40: ; preds = %bb.j, %.lr.ph.i.i.i36
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !670, !noalias !667
  store i64 %i.cs, ptr %i.cq, align 8, !alias.scope !667, !noalias !670
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 56 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 64
  %i.cw = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !39, !alias.scope !670, !noalias !667
  store ptr null, ptr %i.cv, align 8, !tbaa !38, !alias.scope !670, !noalias !667
  store <2 x ptr> %i.cw, ptr %i.ct, align 8, !tbaa !39, !alias.scope !667, !noalias !670
  store ptr null, ptr %i.cu, align 8, !tbaa !303, !alias.scope !670, !noalias !667
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !alias.scope !672
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 88 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 112
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 24, i1 false), !alias.scope !667, !noalias !670
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !343, !alias.scope !670, !noalias !667
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !343, !alias.scope !667, !noalias !670
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 104 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !259, !alias.scope !670, !noalias !667 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i41 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.not.i.i.i.i.i.i41, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43, label %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i.i.i42

_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i.i.i42: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i40
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i64 16, i1 false), !tbaa.struct !272, !alias.scope !672
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !259, !alias.scope !667, !noalias !670
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false), !alias.scope !670, !noalias !667
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43: ; preds = %_ZN5arrow7compute12VectorKernelC2EOS1_.exit.i.i.i.i42, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i40
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dh, ptr noundef nonnull align 8 dereferenceable(11) %i.di, i64 11, i1 false), !alias.scope !672
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i38) #22, !noalias !667
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 136 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 136 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.dj, %i.b
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, label %.lr.ph.i.i.i36, !llvm.loop !666

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i45 = phi ptr [ %i.cf, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dk, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i43 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !323
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.do) #23
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit46, %bb.k
  store ptr %i.q, ptr %0, align 8, !tbaa !659
end_hunk_1
