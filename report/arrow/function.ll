Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/function?download=true
inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZN5arrow7compute14VectorFunction9AddKernelESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteISK_EEEES9_RKNS0_14KernelInitArgsEEE:_ZN5arrow6StatusD2Ev.exit
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.z, align 8, !tbaa !191
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !193
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !265
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !265
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.am, %bb.j ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !266 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i17, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.ar = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.l, %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !189 ; 8 uses
  %.not.i.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i18, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aw, align 8, !tbaa !191
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !193
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #21, !inline_history !267
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #21, !inline_history !267
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.az, %bb.q ], [ %i.bj, %bb.r ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.s, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, !prof !62

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #21
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

_ZN5arrow7compute10OutputTypeD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  %i.bl = load ptr, ptr %10, align 8, !tbaa !260
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !257
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.bl, ptr noundef %i.bm)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.u

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.bn = load ptr, ptr %10, align 8, !tbaa !260  ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !261
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #22
  br label %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit

bb.u:                                             ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #23
  unreachable

_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit.i, %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !296 ; 17 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !298
  %.not.i20 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i20, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.by = load ptr, ptr %9, align 8, !tbaa !113   ; 2 uses
  store ptr %i.by, ptr %6, align 8, !tbaa !113
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !189 ; 2 uses
  store ptr null, ptr %i.ca, align 8, !tbaa !189
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !189
  store ptr null, ptr %9, align 8, !tbaa !113
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.not.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i26, label %.body.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body.i unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #23
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i: ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !291 ; 2 uses
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.not.i.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i.i

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i.i: ; preds = %bb.v, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i
  %i.cp = phi ptr [ %i.cn, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i ], [ null, %bb.v ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 0, i64 24, i1 false)
  br label %.noexc

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i.i: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  store ptr %i.co, ptr %13, align 8, !tbaa !266
  br label %.noexc

.body.i:                                          ; preds = %bb.y, %bb.x
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  br label %.body

.noexc:                                           ; preds = %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i.i, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i.i
  %i.cs = phi ptr [ %i.cn, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i.i ], [ %i.cp, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i.i ]
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !113
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.cb, ptr %i.ct, align 8, !tbaa !189
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !291
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i8 0, i64 20, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i8 1, ptr %i.cw, align 8, !tbaa !299
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  store ptr %i.cc, ptr %i.cx, align 8, !tbaa !300
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.cz, align 8, !tbaa !305
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 124
  store i32 1, ptr %i.da, align 4, !tbaa !306
  %i.db = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  store i8 1, ptr %i.db, align 8, !tbaa !307
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 129
  store i8 1, ptr %i.dc, align 1, !tbaa !308
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 130
  store i8 1, ptr %i.dd, align 2, !tbaa !309
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.de = load ptr, ptr %i.bu, align 8, !tbaa !296
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  store ptr %i.df, ptr %i.bu, align 8, !tbaa !296
  br label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_.exit unwind label %bb.ak

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_.exit: ; preds = %bb.aa, %.noexc
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !310
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !189 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.di, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.dj, align 8, !tbaa !191
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !193
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #21, !inline_history !274
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #21, !inline_history !274
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i23 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i23, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = add nsw i32 %i.dm, -1
  store i32 %i.dv, ptr %i.dj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.af:                                            ; preds = %bb.ad
  %i.dw = atomicrmw volatile add ptr %i.dj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i25 = phi i32 [ %i.dm, %bb.ae ], [ %i.dw, %bb.af ]
  %i.dx = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.dx, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12emplace_backIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEERS2_DpOT_.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.am

bb.ah:                                            ; preds = %bb.c
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.d
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #21
  call void @_ZN5arrow7compute10OutputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.ai ], [ %i.dy, %bb.ah ]
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #21
  br label %bb.al

bb.ak:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.ea, %bb.ak ], [ %i.ch, %.body.i ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #21
  br label %bb.al

bb.al:                                            ; preds = %.body, %bb.aj
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  resume { ptr, i32 } %.pn10

bb.am:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute14VectorFunction9AddKernelENS0_12VectorKernelE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !260
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = trunc i64 %i.h to i32
  call fastcc void @_ZN5arrow7computeL14CheckArityImplERKNS0_8FunctionEi(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %i.i)
  %i.j = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.a, label %bb.i

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i8, ptr %i.l, align 8, !tbaa !224, !range !60, !noundef !61
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %2, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load i8, ptr %i.p, align 8, !tbaa !285, !range !60, !noundef !61
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status8FromArgsIJRA55_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(55) @.str.10)
  br label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !296  ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !298
  %.not.i9 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i9, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !189
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.x, align 8, !tbaa !189
  store <2 x ptr> %i.y, ptr %i.t, align 8, !tbaa !168
  store ptr null, ptr %2, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !291
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !291
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !266
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i, label %bb.f

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !418

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ], [ %i.ax, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i30 = phi ptr [ %i.cd, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.ay, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  %.0911.i.i.i31 = phi ptr [ %i.cc, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ba = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !168, !alias.scope !422, !noalias !419
  store ptr null, ptr %i.az, align 8, !tbaa !189, !alias.scope !422, !noalias !419
  store <2 x ptr> %i.ba, ptr %.012.i.i.i30, align 8, !tbaa !168, !alias.scope !419, !noalias !422
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !113, !alias.scope !422, !noalias !419
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 24, i1 false), !alias.scope !419, !noalias !422
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !291, !alias.scope !422, !noalias !419
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !291, !alias.scope !419, !noalias !422
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !266, !alias.scope !422, !noalias !419 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i32, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i29
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 16, i1 false), !tbaa.struct !282, !alias.scope !424
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !266, !alias.scope !419, !noalias !422
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false), !alias.scope !422, !noalias !419
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33: ; preds = %bb.e, %.lr.ph.i.i.i29
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !422, !noalias !419
  store i64 %i.bl, ptr %i.bj, align 8, !alias.scope !419, !noalias !422
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 64
  %i.bp = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !168, !alias.scope !422, !noalias !419
  store ptr null, ptr %i.bo, align 8, !tbaa !189, !alias.scope !422, !noalias !419
  store <2 x ptr> %i.bp, ptr %i.bm, align 8, !tbaa !168, !alias.scope !419, !noalias !422
  store ptr null, ptr %i.bn, align 8, !tbaa !292, !alias.scope !422, !noalias !419
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !alias.scope !424
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i8 0, i64 24, i1 false), !alias.scope !419, !noalias !422
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !313, !alias.scope !422, !noalias !419
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !313, !alias.scope !419, !noalias !422
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 104 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !266, !alias.scope !422, !noalias !419 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i34, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i35

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i35: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 16, i1 false), !tbaa.struct !282, !alias.scope !424
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !266, !alias.scope !419, !noalias !422
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !alias.scope !422, !noalias !419
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i35, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ca, ptr noundef nonnull align 8 dereferenceable(11) %i.cb, i64 11, i1 false), !alias.scope !424
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i31) #21, !noalias !419
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 136 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 136 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.cc, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i29, !llvm.loop !418

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.ay, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cd, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !298
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ch) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !411
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !296
  %i.ci = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %i.l
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !298
  ret void

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  %i.cl = tail call ptr @__cxa_begin_catch(ptr %i.ck) #21 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.g
  tail call void @_ZSt10destroy_atIN5arrow7compute12VectorKernelEEvPT_(ptr noundef %i.r)
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.g
  %i.cn = mul nuw nsw i64 %i.l, 136
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.cn) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cm

bb.j:                                             ; preds = %bb.h
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #23
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12construct_atIN5arrow7compute12VectorKernelEJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISK_EEEES8_RKNS1_14KernelInitArgsEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSW_DpOSX_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.50", align 8 ; 3 uses
  %5 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !189
  store ptr %i.d, ptr %i.b, align 8, !tbaa !189
  store ptr null, ptr %1, align 8, !tbaa !113
  %i.e = load ptr, ptr %2, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !266  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.e      ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !291  ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i: ; preds = %bb.a, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit
  %i.r = phi ptr [ %i.p, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  store ptr %i.q, ptr %6, align 8, !tbaa !266
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i
  %i.u = phi ptr [ %i.p, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i ], [ %i.r, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i ]
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8, !tbaa !189
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.u, ptr %i.w, align 8, !tbaa !291
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.y, align 8, !tbaa !299
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.e, ptr %i.z, align 8, !tbaa !300
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.ab, align 8, !tbaa !305
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1, ptr %i.ac, align 4, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ad, align 8, !tbaa !307
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.ae, align 1, !tbaa !308
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 1, ptr %i.af, align 2, !tbaa !309
  ret ptr %0

.body:                                            ; preds = %bb.c, %bb.d
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow7compute12VectorKernelEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow7compute12VectorKernelD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(131) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !411    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880)
  %i.l = select i1 %i.j, i64 67818912035696880, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 136
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.r, align 8, !tbaa !189
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !168
  store ptr null, ptr %2, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !291
  store ptr %i.w, ptr %i.u, align 8, !tbaa !291
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 16, i1 false), !tbaa.struct !282
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i:         ; preds = %bb.c, %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !168
  store ptr null, ptr %i.ag, align 8, !tbaa !189
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !168
  store ptr null, ptr %i.af, align 8, !tbaa !292
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !313
  store ptr %i.an, ptr %i.al, align 8, !tbaa !313
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !282
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.as, ptr noundef nonnull align 8 dereferenceable(11) %i.at, i64 11, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.av = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !428, !noalias !425
  store ptr null, ptr %i.au, align 8, !tbaa !189, !alias.scope !428, !noalias !425
  store <2 x ptr> %i.av, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !425, !noalias !428
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !428, !noalias !425
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 24, i1 false), !alias.scope !425, !noalias !428
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !291, !alias.scope !428, !noalias !425
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !291, !alias.scope !425, !noalias !428
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !266, !alias.scope !428, !noalias !425 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 16, i1 false), !tbaa.struct !282, !alias.scope !430
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !266, !alias.scope !425, !noalias !428
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !428, !noalias !425
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !428, !noalias !425
  store i64 %i.bg, ptr %i.be, align 8, !alias.scope !425, !noalias !428
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !168, !alias.scope !428, !noalias !425
  store ptr null, ptr %i.bj, align 8, !tbaa !189, !alias.scope !428, !noalias !425
  store <2 x ptr> %i.bk, ptr %i.bh, align 8, !tbaa !168, !alias.scope !425, !noalias !428
  store ptr null, ptr %i.bi, align 8, !tbaa !292, !alias.scope !428, !noalias !425
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !alias.scope !430
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
end_hunk_1
