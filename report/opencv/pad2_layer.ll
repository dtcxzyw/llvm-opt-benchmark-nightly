Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pad2_layer?download=true
inline.NumInlined: 1312
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd:bb.a
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #23
  br label %.body

_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit: ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, %bb.g, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.w = phi ptr [ %i.e, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.o, %bb.g ], [ %i.o, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ]
  %i.x = phi ptr [ %i.d, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread ], [ %i.n, %bb.g ], [ %i.n, %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit ] ; 2 uses
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef -1.000000e+00)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !15
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !201  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.m, !inline_history !209 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #25, !inline_history !209
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #23, !inline_history !209
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.p:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #23
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.r, %.body.i ]
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !209 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !209
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #23, !inline_history !209
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !279
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290, !nonnull !195, !align !210 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !36   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !291, !nonnull !195, !align !211 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !292, !nonnull !195, !align !211
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !194  ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !293, !nonnull !195, !align !211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !194
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !294, !nonnull !195, !align !211
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !194 ; 5 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !295, !nonnull !195, !align !210 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36 ; 7 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !198   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph137.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph137.i.i.i:                                  ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.au = load ptr, ptr %.val, align 8, !tbaa !296, !nonnull !195, !align !210
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.m, null
  %.not96.i.i.i = icmp eq ptr %i.o, null
  %.not97.i.i.i = icmp eq ptr %i.q, null
  %i.aw = icmp sgt i32 %i.h, 0
  %.not98.i.i.i = icmp eq ptr %i.s, null
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.az = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ba = icmp sgt i32 %i.an, 0                   ; 2 uses
  %i.bb = sub i32 %i.j, %.sroa.speculated.i.i.i   ; 2 uses
  %i.bc = icmp sgt i32 %i.j, 0
  br i1 %i.aw, label %.lr.ph137.split.us.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph137.split.us.preheader.i.i.i:               ; preds = %.lr.ph137.i.i.i
  %i.bd = zext i32 %i.an to i64                   ; 3 uses
  %i.be = sext i32 %i.an to i64                   ; 4 uses
  %i.bf = zext i32 %i.bb to i64                   ; 2 uses
  %i.bg = zext nneg i32 %i.j to i64
  %wide.trip.count176.i.i.i = zext nneg i32 %i.h to i64
  %i.bh = add i64 %i.aj, %i.be
  %xtraiter = and i64 %i.bd, 3                    ; 3 uses
  %i.bi = icmp ult i32 %i.an, 4
  %unroll_iter = and i64 %i.bd, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph137.split.us.i.i.i

.lr.ph137.split.us.i.i.i:                         ; preds = %._crit_edge134.us.i.i.i, %.lr.ph137.split.us.preheader.i.i.i
  %.091135.us.i.i.i = phi i32 [ %i.hx, %._crit_edge134.us.i.i.i ], [ %i.ao, %.lr.ph137.split.us.preheader.i.i.i ] ; 3 uses
  %i.bj = srem i32 %.091135.us.i.i.i, %i.f        ; 2 uses
  %i.bk = sdiv i32 %.091135.us.i.i.i, %i.f        ; 2 uses
  %i.bl = srem i32 %i.bk, %i.d                    ; 3 uses
  %i.bm = sdiv i32 %i.bk, %i.d                    ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph137.split.us.i.i.i
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph137.split.us.i.i.i
  %i.bq = phi i32 [ %i.bp, %bb.b ], [ %i.bm, %.lr.ph137.split.us.i.i.i ] ; 2 uses
  br i1 %.not96.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = sext i32 %i.bl to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi i32 [ %i.bt, %bb.d ], [ %i.bl, %bb.c ] ; 2 uses
  %.pre.i.i.i = sext i32 %i.bj to i64             ; 3 uses
  br i1 %.not97.i.i.i, label %.lr.ph133.us.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre.i.i.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !36 ; 2 uses
  %.pre178.i.i.i = sext i32 %i.bw to i64
  br label %.lr.ph133.us.i.i.i

.lr.ph133.us.i.i.i:                               ; preds = %bb.f, %bb.e
  %.pre-phi179.i.i.i = phi i64 [ %.pre178.i.i.i, %bb.f ], [ %.pre.i.i.i, %bb.e ]
  %i.bx = phi i32 [ %i.bw, %bb.f ], [ %i.bj, %bb.e ]
  %i.by = sext i32 %i.bm to i64
  %i.bz = sext i32 %i.bl to i64
  %i.ca = sext i32 %i.bq to i64
  %i.cb = sext i32 %i.bu to i64
  %i.cc = or i32 %i.bq, %i.bx
  %i.cd = or i32 %i.cc, %i.bu
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.us.i.i.i, %.lr.ph133.us.i.i.i
  %indvars.iv173.i.i.i = phi i64 [ 0, %.lr.ph133.us.i.i.i ], [ %indvars.iv.next174.i.i.i, %.loopexit.us.i.i.i ] ; 4 uses
  %i.ce = trunc nuw nsw i64 %indvars.iv173.i.i.i to i32
  br i1 %.not98.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv173.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ch = phi i32 [ %i.cg, %bb.h ], [ %i.ce, %bb.g ] ; 2 uses
  %i.ci = load ptr, ptr %i.ax, align 8, !tbaa !297, !nonnull !195, !align !211 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !59
  %i.ck = mul i64 %i.cj, %i.by                    ; 5 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ai, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59
  %i.co = mul i64 %i.cn, %i.bz                    ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !59
  %i.cs = mul i64 %i.cr, %.pre.i.i.i              ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.cw = mul i64 %i.cv, %indvars.iv173.i.i.i     ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw ; 13 uses
  %i.cy = or i32 %i.cd, %i.ch
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.preheader.us.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !298, !nonnull !195, !align !211 ; 4 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !59
  %i.dc = mul i64 %i.db, %i.ca                    ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.y, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !59
  %i.dg = mul i64 %i.df, %i.cb                    ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !59
  %i.dk = mul i64 %i.dj, %.pre-phi179.i.i.i       ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.ch to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !59
  %i.dp = mul i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp ; 13 uses
  br i1 %i.az, label %.preheader114.us.i.i.i, label %.preheader116.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph.us.i.i.i.preheader, %.lr.ph.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.i.i.i ], [ 0, %.lr.ph.us.i.i.i.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !36
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i.i.i
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !22
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !36
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dq, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.i.i
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !36
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.dq, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !36
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.dq, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.i.i.2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit115.us.i.i.i.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i, !llvm.loop !280

.loopexit115.us.i.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.us.i.i.i
  br i1 %lcmp.mod.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil.preheader

.lr.ph.us.i.i.i.epil.preheader:                   ; preds = %.loopexit115.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.3, %.loopexit115.us.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %.lr.ph.us.i.i.i.epil

.lr.ph.us.i.i.i.epil:                             ; preds = %.lr.ph.us.i.i.i.epil, %.lr.ph.us.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.epil, %.lr.ph.us.i.i.i.epil ], [ %indvars.iv.i.i.i.epil.init, %.lr.ph.us.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.i.i.i.epil ], [ 0, %.lr.ph.us.i.i.i.epil.preheader ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.epil
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !36
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.dq, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i.i.i.epil
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !22
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit115.us.i.i.i, label %.lr.ph.us.i.i.i.epil, !llvm.loop !281

.loopexit115.us.i.i.i:                            ; preds = %.loopexit115.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.epil, %.preheader116.us.i.i.i, %.lr.ph120.us.preheader.i.i.i, %.preheader114.us.i.i.i
  %.3.us.i.i.i = phi i32 [ 0, %.preheader114.us.i.i.i ], [ %i.an, %.lr.ph120.us.preheader.i.i.i ], [ 0, %.preheader116.us.i.i.i ], [ %i.an, %.lr.ph.us.i.i.i.epil ], [ %i.an, %.loopexit115.us.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %i.ev = icmp slt i32 %.3.us.i.i.i, %i.bb
  br i1 %i.ev, label %iter.check, label %._crit_edge.us.i.i.i

iter.check:                                       ; preds = %.loopexit115.us.i.i.i
  %i.ew = zext nneg i32 %.3.us.i.i.i to i64       ; 8 uses
  %i.ex = add nuw nsw i64 %i.ew, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 %i.bf)
  %i.ey = sub nsw i64 %umax, %i.ew                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ey, 8
  br i1 %min.iters.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ez = add i64 %i.bh, %i.cw
  %i.fa = add i64 %i.ez, %i.ck
  %i.fb = add i64 %i.fa, %i.co
  %i.fc = add i64 %i.fb, %i.cs
  %i.fd = add i64 %i.dk, %i.z
  %i.fe = add i64 %i.fd, %i.dc
  %i.ff = add i64 %i.fe, %i.dg
  %i.fg = add i64 %i.ff, %i.dp
  %i.fh = sub i64 %i.fg, %i.fc
  %diff.check = icmp ugt i64 %i.fh, -32
  br i1 %diff.check, label %.lr.ph123.us.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.ey, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fi = and i64 %i.ey, 24
  %n.vec = and i64 %i.ey, -32                     ; 4 uses
  %i.fj = add nsw i64 %n.vec, %i.ew               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = add nuw i64 %index, %i.ew               ; 2 uses
  %i.fl = sub nsw i64 %i.fk, %i.be
  %i.fm = getelementptr inbounds i8, ptr %i.dq, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load = load <16 x i8>, ptr %i.fm, align 1, !tbaa !22
  %wide.load14 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !22
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fk ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <16 x i8> %wide.load, ptr %i.fo, align 1, !tbaa !22
  store <16 x i8> %wide.load14, ptr %i.fp, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph123.us.i.i.i.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.ey, -8                    ; 3 uses
  %i.fr = add nsw i64 %n.vec15, %i.ew             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.fs = add nuw i64 %index16, %i.ew             ; 2 uses
  %i.ft = sub nsw i64 %i.fs, %i.be
  %i.fu = getelementptr inbounds i8, ptr %i.dq, i64 %i.ft
  %wide.load17 = load <8 x i8>, ptr %i.fu, align 1, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.fs
  store <8 x i8> %wide.load17, ptr %i.fv, align 1, !tbaa !22
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.fw = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !283

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.ey, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.us.loopexit.i.i.i, label %.lr.ph123.us.i.i.i.preheader

.lr.ph123.us.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv159.i.i.i.ph = phi i64 [ %i.ew, %iter.check ], [ %i.ew, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.fr, %vec.epilog.middle.block ]
  br label %.lr.ph123.us.i.i.i

.lr.ph123.us.i.i.i:                               ; preds = %.lr.ph123.us.i.i.i.preheader, %.lr.ph123.us.i.i.i
  %indvars.iv159.i.i.i = phi i64 [ %indvars.iv.next160.i.i.i, %.lr.ph123.us.i.i.i ], [ %indvars.iv159.i.i.i.ph, %.lr.ph123.us.i.i.i.preheader ] ; 3 uses
  %i.fx = sub nsw i64 %indvars.iv159.i.i.i, %i.be
  %i.fy = getelementptr inbounds i8, ptr %i.dq, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv159.i.i.i
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !22
  %indvars.iv.next160.i.i.i = add nuw nsw i64 %indvars.iv159.i.i.i, 1 ; 3 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next160.i.i.i, %i.bf
  br i1 %i.gb, label %.lr.ph123.us.i.i.i, label %._crit_edge.us.loopexit.i.i.i, !llvm.loop !284

._crit_edge.us.loopexit.i.i.i:                    ; preds = %.lr.ph123.us.i.i.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next160.i.i.i.lcssa = phi i64 [ %i.fr, %vec.epilog.middle.block ], [ %i.fj, %middle.block ], [ %indvars.iv.next160.i.i.i, %.lr.ph123.us.i.i.i ]
  %i.gc = trunc nuw nsw i64 %indvars.iv.next160.i.i.i.lcssa to i32
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %._crit_edge.us.loopexit.i.i.i, %.loopexit115.us.i.i.i
  %.4.lcssa.us.i.i.i = phi i32 [ %.3.us.i.i.i, %.loopexit115.us.i.i.i ], [ %i.gc, %._crit_edge.us.loopexit.i.i.i ] ; 6 uses
  %i.gd = icmp slt i32 %.4.lcssa.us.i.i.i, %i.j   ; 2 uses
  br i1 %i.az, label %.preheader110.us.i.i.i, label %.preheader112.us.i.i.i

.lr.ph126.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i
  %indvars.iv162.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.3, %.lr.ph126.us.i.i.i ], [ %indvars.iv162.i.i.i.unr, %.lr.ph126.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv162.i.i.i
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !36
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.dq, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !22
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv162.i.i.i
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i = add nuw nsw i64 %indvars.iv162.i.i.i, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !36
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.dq, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next163.i.i.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.1 = add nuw nsw i64 %indvars.iv162.i.i.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i.1
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !36
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.dq, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !22
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next163.i.i.i.1
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.2 = add nuw nsw i64 %indvars.iv162.i.i.i, 3 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next163.i.i.i.2
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !36
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %i.dq, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !22
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next163.i.i.i.2
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.3 = add nuw nsw i64 %indvars.iv162.i.i.i, 4 ; 2 uses
  %i.hc = trunc nuw i64 %indvars.iv.next163.i.i.i.3 to i32
  %i.hd = icmp sgt i32 %i.j, %i.hc
  br i1 %i.hd, label %.lr.ph126.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !285

.loopexit.us.i.i.i:                               ; preds = %.lr.ph126.us.i.i.i.prol.loopexit, %.lr.ph126.us.i.i.i, %.preheader112.us.i.i.i, %.lr.ph128.us.preheader.i.i.i, %.preheader110.us.i.i.i, %.lr.ph130.us.preheader.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next174.i.i.i = add nuw nsw i64 %indvars.iv173.i.i.i, 1 ; 2 uses
  %exitcond177.not.i.i.i = icmp eq i64 %indvars.iv.next174.i.i.i, %wide.trip.count176.i.i.i
  br i1 %exitcond177.not.i.i.i, label %._crit_edge134.us.i.i.i, label %bb.g, !llvm.loop !286

.preheader.us.i.i.i:                              ; preds = %bb.i
  br i1 %i.bc, label %.lr.ph130.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph130.us.preheader.i.i.i:                     ; preds = %.preheader.us.i.i.i
  %2 = getelementptr i8, ptr %i.ai, i64 %i.cw
  %3 = getelementptr i8, ptr %2, i64 %i.cs
  %4 = getelementptr i8, ptr %3, i64 %i.co
  %scevgep169.i.i.i = getelementptr i8, ptr %4, i64 %i.ck
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep169.i.i.i, i8 %i.ae, i64 %i.bg, i1 false), !tbaa !22
  br label %.loopexit.us.i.i.i

.preheader110.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gd, label %.lr.ph128.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph128.us.preheader.i.i.i:                     ; preds = %.preheader110.us.i.i.i
  %i.he = zext i32 %.4.lcssa.us.i.i.i to i64
  %i.hf = getelementptr i8, ptr %i.ai, i64 %i.cw
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.cs
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.co
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.ck
  %scevgep165.i.i.i = getelementptr i8, ptr %i.hi, i64 %i.he
  %i.hj = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hk = add i32 %i.j, %i.hj
  %i.hl = zext i32 %i.hk to i64
  %i.hm = add nuw nsw i64 %i.hl, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep165.i.i.i, i8 %i.ae, i64 %i.hm, i1 false), !tbaa !22
  br label %.loopexit.us.i.i.i

.preheader112.us.i.i.i:                           ; preds = %._crit_edge.us.i.i.i
  br i1 %i.gd, label %.lr.ph126.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph126.us.preheader.i.i.i:                     ; preds = %.preheader112.us.i.i.i
  %i.hn = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.ho = sub i32 %i.j, %.4.lcssa.us.i.i.i
  %xtraiter23 = and i32 %i.ho, 3                  ; 2 uses
  %lcmp.mod24.not = icmp eq i32 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol

.lr.ph126.us.i.i.i.prol:                          ; preds = %.lr.ph126.us.preheader.i.i.i, %.lr.ph126.us.i.i.i.prol
  %indvars.iv162.i.i.i.prol = phi i64 [ %indvars.iv.next163.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ], [ %i.hn, %.lr.ph126.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph126.us.i.i.i.prol ], [ 0, %.lr.ph126.us.preheader.i.i.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv162.i.i.i.prol
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !36
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.dq, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !22
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv162.i.i.i.prol
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !22
  %indvars.iv.next163.i.i.i.prol = add nuw nsw i64 %indvars.iv162.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter23
  br i1 %prol.iter.cmp.not, label %.lr.ph126.us.i.i.i.prol.loopexit, label %.lr.ph126.us.i.i.i.prol, !llvm.loop !287

.lr.ph126.us.i.i.i.prol.loopexit:                 ; preds = %.lr.ph126.us.i.i.i.prol, %.lr.ph126.us.preheader.i.i.i
  %indvars.iv162.i.i.i.unr = phi i64 [ %i.hn, %.lr.ph126.us.preheader.i.i.i ], [ %indvars.iv.next163.i.i.i.prol, %.lr.ph126.us.i.i.i.prol ]
  %i.hv = sub i32 %.4.lcssa.us.i.i.i, %i.j
  %i.hw = icmp ugt i32 %i.hv, -4
  br i1 %i.hw, label %.loopexit.us.i.i.i, label %.lr.ph126.us.i.i.i

.preheader114.us.i.i.i:                           ; preds = %bb.j
  br i1 %i.ba, label %.lr.ph120.us.preheader.i.i.i, label %.loopexit115.us.i.i.i

.lr.ph120.us.preheader.i.i.i:                     ; preds = %.preheader114.us.i.i.i
  %5 = getelementptr i8, ptr %i.ai, i64 %i.cw
  %6 = getelementptr i8, ptr %5, i64 %i.cs
  %7 = getelementptr i8, ptr %6, i64 %i.co
  %scevgep.i.i.i = getelementptr i8, ptr %7, i64 %i.ck
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i, i8 %i.ae, i64 %i.bd, i1 false), !tbaa !22
  br label %.loopexit115.us.i.i.i

.preheader116.us.i.i.i:                           ; preds = %bb.j
  br i1 %i.ba, label %.lr.ph.us.i.i.i.preheader, label %.loopexit115.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader116.us.i.i.i
  br i1 %i.bi, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge134.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i
  %i.hx = add nsw i32 %.091135.us.i.i.i, 1        ; 2 uses
  %i.hy = load i32, ptr %i.ap, align 4, !tbaa !199
  %i.hz = icmp slt i32 %i.hx, %i.hy
  br i1 %i.hz, label %.lr.ph137.split.us.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !288

"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge134.us.i.i.i, %bb.a, %.lr.ph137.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL3padERKNS_3MatERKSt6vectorIiSaIiEEiS3_RS1_E3$_0", ptr %0, align 8, !tbaa !214
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %.val, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !215
  store ptr %i.a, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !206 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 9 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !198  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !319, !nonnull !195, !align !210 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36   ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !320, !nonnull !195, !align !211 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !321, !nonnull !195, !align !211
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !194  ; 2 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !322, !nonnull !195, !align !211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !194
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !217 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !323, !nonnull !195, !align !211
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !194 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !324, !nonnull !195, !align !210 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !36 ; 11 uses
  %i.ap = icmp slt i32 %.val2, %.val3
  br i1 %i.ap, label %.lr.ph38.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph38.i.i.i:                                   ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.as = load ptr, ptr %.val, align 8, !tbaa !325, !nonnull !195, !align !210
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36
  %.not.i.i.i = icmp eq ptr %i.n, null
  %.not96.i.i.i = icmp eq ptr %i.p, null
  %.not97.i.i.i = icmp eq ptr %i.r, null
  %i.au = icmp sgt i32 %i.i, 0
  %.not98.i.i.i = icmp eq ptr %i.t, null
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.aw = icmp eq i32 %i.at, 0                    ; 2 uses
  %i.ax = icmp sgt i32 %i.ao, 0                   ; 2 uses
  %i.ay = sub i32 %i.k, %.sroa.speculated.i.i.i   ; 2 uses
  %i.az = icmp sgt i32 %i.k, 0
  br i1 %i.au, label %.lr.ph38.split.us.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_1JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph38.split.us.i.i.i:                          ; preds = %.lr.ph38.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !326, !nonnull !195, !align !211 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !59 ; 2 uses
  %i.bj = sext i32 %i.ao to i64                   ; 4 uses
  %i.bk = zext i32 %i.ay to i64                   ; 2 uses
  %wide.trip.count77.i.i.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i.i.i = zext i32 %i.ao to i64  ; 8 uses
  %wide.trip.count72.i.i.i = zext i32 %i.k to i64 ; 6 uses
  %i.bl = shl nsw i64 %i.bj, 1
  %i.bm = add i64 %i.bl, %i.ak
  %i.bn = sub i64 %i.bm, %i.aa
  %i.bo = shl i64 %i.bc, 1
  %i.bp = shl i64 %i.be, 1
  %i.bq = shl i64 %i.bg, 1
  %i.br = shl i64 %i.bi, 1
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.bs = icmp ult i32 %i.ao, 4
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  %min.iters.check88 = icmp ult i32 %i.ao, 4
  %min.iters.check90 = icmp ult i32 %i.ao, 16
  %i.bt = and i64 %wide.trip.count.i.i.i, 12
  %n.vec92 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert93 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat94 = shufflevector <8 x i16> %broadcast.splatinsert93, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n99 = icmp eq i64 %n.vec92, %wide.trip.count.i.i.i
  %min.epilog.iters.check104 = icmp eq i64 %i.bt, 0
  %n.vec106 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert107 = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat108 = shufflevector <4 x i16> %broadcast.splatinsert107, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n113 = icmp eq i64 %n.vec106, %wide.trip.count.i.i.i
  %broadcast.splatinsert39 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat40 = shufflevector <8 x i16> %broadcast.splatinsert39, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat55 = shufflevector <4 x i16> %broadcast.splatinsert54, <4 x i16> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.k, 4
  %min.iters.check27 = icmp ult i32 %i.k, 16
  %i.bu = and i64 %wide.trip.count72.i.i.i, 12
  %n.vec = and i64 %wide.trip.count72.i.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count72.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  %n.vec28 = and i64 %wide.trip.count72.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert29 = insertelement <4 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat30 = shufflevector <4 x i16> %broadcast.splatinsert29, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n33 = icmp eq i64 %n.vec28, %wide.trip.count72.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge35.us.i.i.i, %.lr.ph38.split.us.i.i.i
  %.09136.us.i.i.i = phi i32 [ %.val2, %.lr.ph38.split.us.i.i.i ], [ %i.iw, %._crit_edge35.us.i.i.i ] ; 3 uses
  %i.bv = srem i32 %.09136.us.i.i.i, %i.g         ; 2 uses
  %i.bw = sdiv i32 %.09136.us.i.i.i, %i.g         ; 2 uses
  %i.bx = srem i32 %i.bw, %i.e                    ; 3 uses
  %i.by = sdiv i32 %i.bw, %i.e                    ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cc = phi i32 [ %i.cb, %bb.c ], [ %i.by, %bb.b ] ; 2 uses
  br i1 %.not96.i.i.i, label %bb.f, label %bb.e

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_3E9_M_invokeERKSt9_Any_dataS3_":bb.a

.lr.ph29.us.i.i.i:                                ; preds = %.lr.ph29.us.i.i.i.preheader, %.lr.ph29.us.i.i.i
  %indvars.iv65.i.i.i = phi i64 [ %indvars.iv.next66.i.i.i, %.lr.ph29.us.i.i.i ], [ %indvars.iv65.i.i.i.ph, %.lr.ph29.us.i.i.i.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv65.i.i.i
  store i64 %i.af, ptr %i.gz, align 8, !tbaa !59
  %indvars.iv.next66.i.i.i = add nuw nsw i64 %indvars.iv65.i.i.i, 1 ; 2 uses
  %i.ha = trunc nuw i64 %indvars.iv.next66.i.i.i to i32
  %i.hb = icmp sgt i32 %i.k, %i.ha
  br i1 %i.hb, label %.lr.ph29.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !358

.lr.ph31.us.i.i.i:                                ; preds = %.lr.ph31.us.i.i.i.preheader61, %.lr.ph31.us.i.i.i
  %indvars.iv68.i.i.i = phi i64 [ %indvars.iv.next69.i.i.i, %.lr.ph31.us.i.i.i ], [ %indvars.iv68.i.i.i.ph, %.lr.ph31.us.i.i.i.preheader61 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv68.i.i.i
  store i64 %i.af, ptr %i.hc, align 8, !tbaa !59
  %indvars.iv.next69.i.i.i = add nuw nsw i64 %indvars.iv68.i.i.i, 1 ; 2 uses
  %exitcond72.not.i.i.i = icmp eq i64 %indvars.iv.next69.i.i.i, %wide.trip.count71.i.i.i
  br i1 %exitcond72.not.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i, !llvm.loop !359

.loopexit.us.i.i.i:                               ; preds = %.lr.ph27.us.i.i.i.prol.loopexit, %.lr.ph27.us.i.i.i, %.lr.ph29.us.i.i.i, %.lr.ph31.us.i.i.i, %middle.block35, %middle.block, %.preheader13.us.i.i.i, %.preheader11.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv.next74.i.i.i = add nuw nsw i64 %indvars.iv73.i.i.i, 1 ; 2 uses
  %exitcond77.not.i.i.i = icmp eq i64 %indvars.iv.next74.i.i.i, %wide.trip.count76.i.i.i
  br i1 %exitcond77.not.i.i.i, label %._crit_edge35.us.i.i.i, label %bb.h, !llvm.loop !360

.preheader.us.i.i.i:                              ; preds = %bb.j
  br i1 %i.az, label %.lr.ph31.us.i.i.i.preheader, label %.loopexit.us.i.i.i

.lr.ph31.us.i.i.i.preheader:                      ; preds = %.preheader.us.i.i.i
  br i1 %min.iters.check, label %.lr.ph31.us.i.i.i.preheader61, label %vector.body

vector.body:                                      ; preds = %.lr.ph31.us.i.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph31.us.i.i.i.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.hd, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat, ptr %i.he, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec
  br i1 %i.hf, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.i.i.i, label %.lr.ph31.us.i.i.i.preheader61

.lr.ph31.us.i.i.i.preheader61:                    ; preds = %.lr.ph31.us.i.i.i.preheader, %middle.block
  %indvars.iv68.i.i.i.ph = phi i64 [ 0, %.lr.ph31.us.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph31.us.i.i.i

.preheader11.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.fy, label %.lr.ph29.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph29.us.preheader.i.i.i:                      ; preds = %.preheader11.us.i.i.i
  %i.hg = zext i32 %.4.lcssa.us.i.i.i to i64      ; 3 uses
  %i.hh = xor i32 %.4.lcssa.us.i.i.i, -1
  %i.hi = add i32 %i.k, %i.hh                     ; 2 uses
  %i.hj = zext i32 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check27 = icmp ult i32 %i.hi, 3
  br i1 %min.iters.check27, label %.lr.ph29.us.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph29.us.preheader.i.i.i
  %n.vec29 = and i64 %i.hk, 8589934588            ; 3 uses
  %i.hl = add nuw nsw i64 %n.vec29, %i.hg
  %invariant.gep = getelementptr [8 x i8], ptr %i.cu, i64 %i.hg
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body32 ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index33 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat31, ptr %gep, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat31, ptr %i.hm, align 8, !tbaa !59
  %index.next34 = add nuw i64 %index33, 4         ; 2 uses
  %i.hn = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.hn, label %middle.block35, label %vector.body32, !llvm.loop !362

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %i.hk, %n.vec29
  br i1 %cmp.n36, label %.loopexit.us.i.i.i, label %.lr.ph29.us.i.i.i.preheader

.lr.ph29.us.i.i.i.preheader:                      ; preds = %.lr.ph29.us.preheader.i.i.i, %middle.block35
  %indvars.iv65.i.i.i.ph = phi i64 [ %i.hg, %.lr.ph29.us.preheader.i.i.i ], [ %i.hl, %middle.block35 ]
  br label %.lr.ph29.us.i.i.i

.preheader13.us.i.i.i:                            ; preds = %._crit_edge.us.i.i.i
  br i1 %i.fy, label %.lr.ph27.us.preheader.i.i.i, label %.loopexit.us.i.i.i

.lr.ph27.us.preheader.i.i.i:                      ; preds = %.preheader13.us.i.i.i
  %i.ho = zext i32 %.4.lcssa.us.i.i.i to i64      ; 2 uses
  %i.hp = sub i32 %i.k, %.4.lcssa.us.i.i.i
  %xtraiter68 = and i32 %i.hp, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol

.lr.ph27.us.i.i.i.prol:                           ; preds = %.lr.ph27.us.preheader.i.i.i, %.lr.ph27.us.i.i.i.prol
  %indvars.iv62.i.i.i.prol = phi i64 [ %indvars.iv.next63.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ], [ %i.ho, %.lr.ph27.us.preheader.i.i.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph27.us.i.i.i.prol ], [ 0, %.lr.ph27.us.preheader.i.i.i ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv62.i.i.i.prol
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !36
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !59
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv62.i.i.i.prol
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !59
  %indvars.iv.next63.i.i.i.prol = add nuw nsw i64 %indvars.iv62.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.lr.ph27.us.i.i.i.prol.loopexit, label %.lr.ph27.us.i.i.i.prol, !llvm.loop !363

.lr.ph27.us.i.i.i.prol.loopexit:                  ; preds = %.lr.ph27.us.i.i.i.prol, %.lr.ph27.us.preheader.i.i.i
  %indvars.iv62.i.i.i.unr = phi i64 [ %i.ho, %.lr.ph27.us.preheader.i.i.i ], [ %indvars.iv.next63.i.i.i.prol, %.lr.ph27.us.i.i.i.prol ]
  %i.hw = sub i32 %.4.lcssa.us.i.i.i, %i.k
  %i.hx = icmp ugt i32 %i.hw, -4
  br i1 %i.hx, label %.loopexit.us.i.i.i, label %.lr.ph27.us.i.i.i

.preheader15.us.i.i.i:                            ; preds = %bb.k
  br i1 %i.ax, label %.lr.ph21.us.i.i.i.preheader, label %.loopexit16.us.i.i.i

.lr.ph21.us.i.i.i.preheader:                      ; preds = %.preheader15.us.i.i.i
  br i1 %min.iters.check50, label %.lr.ph21.us.i.i.i.preheader64, label %vector.body55

vector.body55:                                    ; preds = %.lr.ph21.us.i.i.i.preheader, %vector.body55
  %index56 = phi i64 [ %index.next57, %vector.body55 ], [ 0, %.lr.ph21.us.i.i.i.preheader ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index56 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <2 x i64> %broadcast.splat54, ptr %i.hy, align 8, !tbaa !59
  store <2 x i64> %broadcast.splat54, ptr %i.hz, align 8, !tbaa !59
  %index.next57 = add nuw i64 %index56, 4         ; 2 uses
  %i.ia = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ia, label %middle.block58, label %vector.body55, !llvm.loop !364

middle.block58:                                   ; preds = %vector.body55
  br i1 %cmp.n59, label %.loopexit16.us.i.i.i, label %.lr.ph21.us.i.i.i.preheader64

.lr.ph21.us.i.i.i.preheader64:                    ; preds = %.lr.ph21.us.i.i.i.preheader, %middle.block58
  %indvars.iv52.i.i.i.ph = phi i64 [ 0, %.lr.ph21.us.i.i.i.preheader ], [ %n.vec52, %middle.block58 ]
  br label %.lr.ph21.us.i.i.i

.preheader17.us.i.i.i:                            ; preds = %bb.k
  br i1 %i.ax, label %.lr.ph.us.i.i.i.preheader, label %.loopexit16.us.i.i.i

.lr.ph.us.i.i.i.preheader:                        ; preds = %.preheader17.us.i.i.i
  br i1 %i.bi, label %.lr.ph.us.i.i.i.epil.preheader, label %.lr.ph.us.i.i.i

._crit_edge35.us.i.i.i:                           ; preds = %.loopexit.us.i.i.i
  %i.ib = add nsw i32 %.09136.us.i.i.i, 1         ; 2 uses
  %exitcond78.not.i.i.i = icmp eq i32 %i.ib, %.val3
  br i1 %exitcond78.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !365

"_ZSt10__invoke_rIvRZN2cv3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS4_RS2_E3$_3JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %._crit_edge35.us.i.i.i, %bb.a, %.lr.ph38.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL3padERKNS0_3MatERKSt6vectorIiSaIiEEiS8_RS6_E3$_3E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL3padERKNS_3MatERKSt6vectorIiSaIiEEiS3_RS1_E3$_3", ptr %0, align 8, !tbaa !214
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %.val, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !215
  store ptr %i.a, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !206 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL3padERKNS1_3MatERKSt6vectorIiSaIiEEiS5_RS3_E3$_3E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL20pad_block5d_semanticERKNS0_3MatERKSt6vectorIiSaIiEEiS8_NS0_10DataLayoutERS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 28 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !386, !nonnull !195, !align !211
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !387, !nonnull !195, !align !211
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !388, !nonnull !195, !align !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22    ; 6 uses
  %i.m = icmp eq i8 %i.l, 0                       ; 5 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !198    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !199
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %.lr.ph150.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL20pad_block5d_semanticERKNS0_3MatERKSt6vectorIiSaIiEEiS4_NS0_10DataLayoutERS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit"

.lr.ph150.i.i.i:                                  ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 176 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 208
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 216
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit126.i.i.i, %.lr.ph150.i.i.i
  %.0109149.i.i.i = phi i32 [ %i.n, %.lr.ph150.i.i.i ], [ %i.ik, %.loopexit126.i.i.i ] ; 3 uses
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !389, !nonnull !195, !align !210
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36 ; 2 uses
  %i.as = srem i32 %.0109149.i.i.i, %i.ar
  %i.at = sdiv i32 %.0109149.i.i.i, %i.ar         ; 2 uses
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !390, !nonnull !195, !align !210
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36 ; 2 uses
  %i.aw = srem i32 %i.at, %i.av
  %i.ax = sdiv i32 %i.at, %i.av
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !391, !nonnull !195, !align !211
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = mul i64 %i.ba, %i.ay                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bb
  %i.bd = sext i32 %i.aw to i64                   ; 9 uses
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !392, !nonnull !195, !align !211
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !59
  %i.bg = mul i64 %i.bf, %i.bd                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg
  %i.bi = sext i32 %i.as to i64                   ; 2 uses
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !393, !nonnull !195, !align !211
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59
  %i.bl = mul i64 %i.bk, %i.bi                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl ; 5 uses
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !394, !nonnull !195, !align !211
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ay
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !36 ; 2 uses
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !395, !nonnull !195, !align !211
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bi
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.bv = or i32 %i.bu, %i.bq
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader125.i.i.i, label %bb.d

.preheader125.i.i.i:                              ; preds = %bb.b
  %i.bx = load ptr, ptr %i.ap, align 8, !tbaa !396, !nonnull !195, !align !210
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !36
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph148.i.preheader.i.i, label %.loopexit126.i.i.i

.lr.ph148.i.preheader.i.i:                        ; preds = %.preheader125.i.i.i
  %.pre14.i.i = load ptr, ptr %i.ae, align 8, !tbaa !397
  br label %.lr.ph148.i.i.i

.lr.ph148.i.i.i:                                  ; preds = %.loopexit.i.i.i, %.lr.ph148.i.preheader.i.i
  %i.ca = phi ptr [ %i.cn, %.loopexit.i.i.i ], [ %.pre14.i.i, %.lr.ph148.i.preheader.i.i ] ; 2 uses
  %indvars.iv182.i.i.i = phi i64 [ %indvars.iv.next183.i.i.i, %.loopexit.i.i.i ], [ 0, %.lr.ph148.i.preheader.i.i ] ; 2 uses
  %i.cb = load ptr, ptr %i.ad, align 8, !tbaa !398, !nonnull !195, !align !211
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !59
  %i.cd = mul i64 %i.cc, %indvars.iv182.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !36 ; 2 uses
  br i1 %i.m, label %bb.c, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph148.i.i.i
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph146.i.i.i, label %.loopexit.i.i.i

bb.c:                                             ; preds = %.lr.ph148.i.i.i
  %i.ch = sext i32 %i.cf to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ce, i8 0, i64 %i.ch, i1 false)
  %.pre13.i.i = load ptr, ptr %i.ae, align 8, !tbaa !397
  br label %.loopexit.i.i.i

.lr.ph146.i.i.i:                                  ; preds = %.preheader.i.i.i, %.lr.ph146.i.i.i
  %indvars.iv179.i.i.i = phi i64 [ %indvars.iv.next180.i.i.i, %.lr.ph146.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv179.i.i.i
  store i8 %i.l, ptr %i.ci, align 1, !tbaa !22
  %indvars.iv.next180.i.i.i = add nuw nsw i64 %indvars.iv179.i.i.i, 1 ; 2 uses
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !397, !nonnull !195, !align !210 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !36
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next180.i.i.i, %i.cl
  br i1 %i.cm, label %.lr.ph146.i.i.i, label %.loopexit.i.i.i, !llvm.loop !376

.loopexit.i.i.i:                                  ; preds = %.lr.ph146.i.i.i, %bb.c, %.preheader.i.i.i
  %i.cn = phi ptr [ %i.ca, %.preheader.i.i.i ], [ %.pre13.i.i, %bb.c ], [ %i.cj, %.lr.ph146.i.i.i ]
  %indvars.iv.next183.i.i.i = add nuw nsw i64 %indvars.iv182.i.i.i, 1 ; 2 uses
  %i.co = load ptr, ptr %i.ap, align 8, !tbaa !396, !nonnull !195, !align !210
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !36
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next183.i.i.i, %i.cq
  br i1 %i.cr, label %.lr.ph148.i.i.i, label %.loopexit126.i.i.i, !llvm.loop !377

bb.d:                                             ; preds = %bb.b
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !399, !nonnull !195, !align !211
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.bd
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !36 ; 3 uses
  %i.cw = load ptr, ptr %i.z, align 8, !tbaa !400, !nonnull !195, !align !211
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.bd
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !36 ; 4 uses
  %i.da = load ptr, ptr %i.aa, align 8, !tbaa !401, !nonnull !195, !align !211
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !35
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.bd
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !36 ; 2 uses
  %i.de = load ptr, ptr %i.ab, align 8, !tbaa !402, !nonnull !195, !align !211
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !35
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.bd
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !36 ; 2 uses
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !403, !nonnull !195, !align !210
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph133.i.i.i, label %.preheader129.i.i.i

.lr.ph133.i.i.i:                                  ; preds = %bb.d
  br i1 %i.m, label %.lr.ph133.split.us.i.i.i, label %.preheader123.preheader.i.i.i

.preheader123.preheader.i.i.i:                    ; preds = %.lr.ph133.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !397
  %.pre185.i.i.i.a = load i32, ptr %.pre.i.i.i, align 4, !tbaa !36
  br label %.preheader123.i.i.i

.lr.ph133.split.us.i.i.i:                         ; preds = %.lr.ph133.i.i.i, %.lr.ph133.split.us.i.i.i
  %indvars.iv160.i.i.i = phi i64 [ %indvars.iv.next161.i.i.i, %.lr.ph133.split.us.i.i.i ], [ 0, %.lr.ph133.i.i.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !398, !nonnull !195, !align !211
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !59
  %i.dn = mul i64 %i.dm, %indvars.iv160.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dn
  %i.dp = load ptr, ptr %i.ae, align 8, !tbaa !397, !nonnull !195, !align !210
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !36
  %i.dr = sext i32 %i.dq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.do, i8 0, i64 %i.dr, i1 false)
  %indvars.iv.next161.i.i.i = add nuw nsw i64 %indvars.iv160.i.i.i, 1 ; 2 uses
  %i.ds = load ptr, ptr %i.ac, align 8, !tbaa !403, !nonnull !195, !align !210
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !36 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next161.i.i.i, %i.du
  br i1 %i.dv, label %.lr.ph133.split.us.i.i.i, label %.preheader129.i.i.i, !llvm.loop !378

.preheader129.i.i.i:                              ; preds = %.loopexit124.i.i.i, %.lr.ph133.split.us.i.i.i, %bb.d
  %.lcssa.i.i.i = phi i32 [ %i.dj, %bb.d ], [ %i.dt, %.lr.ph133.split.us.i.i.i ], [ %i.ew, %.loopexit124.i.i.i ] ; 2 uses
  %i.dw = load ptr, ptr %i.af, align 8, !tbaa !404, !nonnull !195, !align !210
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !36 ; 2 uses
  %i.dy = icmp slt i32 %.lcssa.i.i.i, %i.dx
  br i1 %i.dy, label %.lr.ph139.i.i.i, label %.preheader127.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %.preheader129.i.i.i
  %i.dz = icmp sgt i32 %i.cv, 0
  %i.ea = zext i32 %i.cv to i64                   ; 2 uses
  %i.eb = icmp slt i32 %i.cv, %i.cz
  %i.ec = sext i32 %i.bq to i64
  %i.ed = sext i32 %i.bu to i64
  %i.ee = icmp sgt i32 %i.dd, 0
  %i.ef = zext nneg i32 %i.dd to i64
  %i.eg = icmp sgt i32 %i.dh, 0
  %i.eh = zext nneg i32 %i.dh to i64
  %i.ei = sext i32 %i.cz to i64                   ; 2 uses
  %2 = getelementptr i8, ptr %i.g, i64 %i.bl
  %3 = getelementptr i8, ptr %2, i64 %i.bg
  %scevgep.i.i.i = getelementptr i8, ptr %3, i64 %i.bb
  %i.ej = sext i32 %.lcssa.i.i.i to i64
  br label %bb.e

.preheader123.i.i.i:                              ; preds = %.loopexit124.i.i.i, %.preheader123.preheader.i.i.i
  %i.ek = phi i32 [ %i.dj, %.preheader123.preheader.i.i.i ], [ %i.ew, %.loopexit124.i.i.i ]
  %i.el = phi i32 [ %.pre185.i.i.i.a, %.preheader123.preheader.i.i.i ], [ %i.ex, %.loopexit124.i.i.i ] ; 2 uses
  %indvars.iv157.i.i.i = phi i64 [ 0, %.preheader123.preheader.i.i.i ], [ %indvars.iv.next158.i.i.i, %.loopexit124.i.i.i ] ; 2 uses
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !398, !nonnull !195, !align !211
  %i.en = load i64, ptr %i.em, align 8, !tbaa !59
  %i.eo = mul i64 %i.en, %indvars.iv157.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.eo
  %i.eq = icmp sgt i32 %i.el, 0
  br i1 %i.eq, label %.lr.ph.i.i.i, label %.loopexit124.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader123.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader123.i.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv.i.i.i
  store i8 %i.l, ptr %i.er, align 1, !tbaa !22
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.es = load ptr, ptr %i.ae, align 8, !tbaa !397, !nonnull !195, !align !210
  %i.et = load i32, ptr %i.es, align 4, !tbaa !36 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next.i.i.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i.i, label %.loopexit124.loopexit.i.i.i, !llvm.loop !379

.loopexit124.loopexit.i.i.i:                      ; preds = %.lr.ph.i.i.i
  %.pre186.i.i.i.a = load ptr, ptr %i.ac, align 8, !tbaa !403
  %.pre187.i.i.i = load i32, ptr %.pre186.i.i.i.a, align 4, !tbaa !36
  br label %.loopexit124.i.i.i

.loopexit124.i.i.i:                               ; preds = %.loopexit124.loopexit.i.i.i, %.preheader123.i.i.i
  %i.ew = phi i32 [ %.pre187.i.i.i, %.loopexit124.loopexit.i.i.i ], [ %i.ek, %.preheader123.i.i.i ] ; 3 uses
  %i.ex = phi i32 [ %i.et, %.loopexit124.loopexit.i.i.i ], [ %i.el, %.preheader123.i.i.i ]
  %indvars.iv.next158.i.i.i = add nuw nsw i64 %indvars.iv157.i.i.i, 1 ; 2 uses
  %i.ey = sext i32 %i.ew to i64
  %i.ez = icmp slt i64 %indvars.iv.next158.i.i.i, %i.ey
  br i1 %i.ez, label %.preheader123.i.i.i, label %.preheader129.i.i.i, !llvm.loop !378

.preheader127.i.i.i:                              ; preds = %.loopexit120.i.i.i, %.preheader129.i.i.i
  %.lcssa130.i.i.i = phi i32 [ %i.dx, %.preheader129.i.i.i ], [ %i.hp, %.loopexit120.i.i.i ] ; 2 uses
  %i.fa = load ptr, ptr %i.ap, align 8, !tbaa !396, !nonnull !195, !align !210
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !36
  %i.fc = icmp slt i32 %.lcssa130.i.i.i, %i.fb
  br i1 %i.fc, label %.lr.ph144.preheader.i.i.i, label %.loopexit126.i.i.i

.lr.ph144.preheader.i.i.i:                        ; preds = %.preheader127.i.i.i
  %i.fd = sext i32 %.lcssa130.i.i.i to i64
  %.pre12.i.i = load ptr, ptr %i.ae, align 8, !tbaa !397
  br label %.lr.ph144.i.i.i

bb.e:                                             ; preds = %.loopexit120.i.i.i, %.lr.ph139.i.i.i
  %indvars.iv170.i.i.i = phi i64 [ %i.ej, %.lr.ph139.i.i.i ], [ %indvars.iv.next171.i.i.i, %.loopexit120.i.i.i ] ; 3 uses
  %i.fe = load ptr, ptr %i.ad, align 8, !tbaa !398, !nonnull !195, !align !211
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !59
  %i.fg = mul i64 %i.ff, %indvars.iv170.i.i.i     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fg ; 5 uses
  br i1 %i.dz, label %bb.f, label %.loopexit122.i.i.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.g, label %.lr.ph135.preheader.i.i.i

.lr.ph135.preheader.i.i.i:                        ; preds = %bb.f
  %scevgep163.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 %i.fg
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep163.i.i.i, i8 %i.l, i64 %i.ea, i1 false), !tbaa !22
  br label %.loopexit122.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fh, i8 0, i64 %i.ea, i1 false)
  br label %.loopexit122.i.i.i

.loopexit122.i.i.i:                               ; preds = %bb.g, %.lr.ph135.preheader.i.i.i, %bb.e
  br i1 %i.eb, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit122.i.i.i
  %i.fi = load ptr, ptr %i.ag, align 8, !tbaa !405, !nonnull !195, !align !211
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !35
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv170.i.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !36
  %i.fm = load ptr, ptr %i.ah, align 8, !tbaa !406, !nonnull !195, !align !211
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !59
  %i.fo = mul i64 %i.fn, %i.ec
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fo
  %i.fq = load ptr, ptr %i.ai, align 8, !tbaa !407, !nonnull !195, !align !211
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.bd
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !36
  %i.fu = sext i32 %i.ft to i64
  %i.fv = load ptr, ptr %i.aj, align 8, !tbaa !408, !nonnull !195, !align !211
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !59
  %i.fx = mul i64 %i.fw, %i.fu
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fx
  %i.fz = load ptr, ptr %i.ak, align 8, !tbaa !409, !nonnull !195, !align !211
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !59
  %i.gb = mul i64 %i.ga, %i.ed
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gb
  %i.gd = sext i32 %i.fl to i64
  %i.ge = load ptr, ptr %i.al, align 8, !tbaa !410, !nonnull !195, !align !211
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !59
  %i.gg = mul i64 %i.gf, %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gg ; 2 uses
  br i1 %i.ee, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gi = load ptr, ptr %i.am, align 8, !tbaa !411, !nonnull !195, !align !211
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !35
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.bd
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !36
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gh, i64 %i.gm
  %i.go = load ptr, ptr %i.an, align 8, !tbaa !412, !nonnull !195, !align !211
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !35
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.bd
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !36
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.fh, i64 %i.gs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gn, i64 %i.ef, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gu = load ptr, ptr %i.aj, align 8, !tbaa !408, !nonnull !195, !align !211
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !59
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gv
  %i.gx = load ptr, ptr %i.ao, align 8, !tbaa !413, !nonnull !195, !align !211
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !35
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.bd
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !36
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds i8, ptr %i.fh, i64 %i.hb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.gw, i64 %i.eh, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.loopexit122.i.i.i
  %i.hd = load ptr, ptr %i.ae, align 8, !tbaa !397, !nonnull !195, !align !210
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !36 ; 2 uses
  %i.hf = icmp slt i32 %i.cz, %i.he
  br i1 %i.hf, label %bb.m, label %.loopexit120.i.i.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.m, label %bb.n, label %.lr.ph137.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.hg = getelementptr inbounds i8, ptr %i.fh, i64 %i.ei
  %i.hh = sub nsw i32 %i.he, %i.cz
  %i.hi = sext i32 %i.hh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hg, i8 0, i64 %i.hi, i1 false)
  br label %.loopexit120.i.i.i

.lr.ph137.i.i.i:                                  ; preds = %bb.m, %.lr.ph137.i.i.i
  %indvars.iv167.i.i.i = phi i64 [ %indvars.iv.next168.i.i.i, %.lr.ph137.i.i.i ], [ %i.ei, %bb.m ] ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.fh, i64 %indvars.iv167.i.i.i
  store i8 %i.l, ptr %i.hj, align 1, !tbaa !22
  %indvars.iv.next168.i.i.i = add nsw i64 %indvars.iv167.i.i.i, 1 ; 2 uses
  %i.hk = load ptr, ptr %i.ae, align 8, !tbaa !397, !nonnull !195, !align !210
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !36
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next168.i.i.i, %i.hm
  br i1 %i.hn, label %.lr.ph137.i.i.i, label %.loopexit120.i.i.i, !llvm.loop !380

.loopexit120.i.i.i:                               ; preds = %.lr.ph137.i.i.i, %bb.n, %bb.l
  %indvars.iv.next171.i.i.i = add nsw i64 %indvars.iv170.i.i.i, 1 ; 2 uses
  %i.ho = load ptr, ptr %i.af, align 8, !tbaa !404, !nonnull !195, !align !210
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !36 ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next171.i.i.i, %i.hq
  br i1 %i.hr, label %bb.e, label %.preheader127.i.i.i, !llvm.loop !381

.lr.ph144.i.i.i:                                  ; preds = %.loopexit118.i.i.i, %.lr.ph144.preheader.i.i.i
  %i.hs = phi ptr [ %.pre12.i.i, %.lr.ph144.preheader.i.i.i ], [ %i.if, %.loopexit118.i.i.i ] ; 2 uses
  %indvars.iv176.i.i.i = phi i64 [ %i.fd, %.lr.ph144.preheader.i.i.i ], [ %indvars.iv.next177.i.i.i, %.loopexit118.i.i.i ] ; 2 uses
  %i.ht = load ptr, ptr %i.ad, align 8, !tbaa !398, !nonnull !195, !align !211
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !59
  %i.hv = mul i64 %i.hu, %indvars.iv176.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hs, align 4, !tbaa !36 ; 2 uses
  br i1 %i.m, label %bb.o, label %.preheader117.i.i.i

.preheader117.i.i.i:                              ; preds = %.lr.ph144.i.i.i
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph142.i.i.i, label %.loopexit118.i.i.i

bb.o:                                             ; preds = %.lr.ph144.i.i.i
  %i.hz = sext i32 %i.hx to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hw, i8 0, i64 %i.hz, i1 false)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !397
  br label %.loopexit118.i.i.i

.lr.ph142.i.i.i:                                  ; preds = %.preheader117.i.i.i, %.lr.ph142.i.i.i
  %indvars.iv173.i.i.i = phi i64 [ %indvars.iv.next174.i.i.i, %.lr.ph142.i.i.i ], [ 0, %.preheader117.i.i.i ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv173.i.i.i
  store i8 %i.l, ptr %i.ia, align 1, !tbaa !22
  %indvars.iv.next174.i.i.i = add nuw nsw i64 %indvars.iv173.i.i.i, 1 ; 2 uses
  %i.ib = load ptr, ptr %i.ae, align 8, !tbaa !397, !nonnull !195, !align !210 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !36
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next174.i.i.i, %i.id
  br i1 %i.ie, label %.lr.ph142.i.i.i, label %.loopexit118.i.i.i, !llvm.loop !382

.loopexit118.i.i.i:                               ; preds = %.lr.ph142.i.i.i, %bb.o, %.preheader117.i.i.i
  %i.if = phi ptr [ %i.hs, %.preheader117.i.i.i ], [ %.pre.i.i, %bb.o ], [ %i.ib, %.lr.ph142.i.i.i ]
  %indvars.iv.next177.i.i.i = add nsw i64 %indvars.iv176.i.i.i, 1 ; 2 uses
  %i.ig = load ptr, ptr %i.ap, align 8, !tbaa !396, !nonnull !195, !align !210
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !36
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next177.i.i.i, %i.ii
  br i1 %i.ij, label %.lr.ph144.i.i.i, label %.loopexit126.i.i.i, !llvm.loop !383

.loopexit126.i.i.i:                               ; preds = %.loopexit118.i.i.i, %.loopexit.i.i.i, %.preheader127.i.i.i, %.preheader125.i.i.i
  %i.ik = add nsw i32 %.0109149.i.i.i, 1          ; 2 uses
  %i.il = load i32, ptr %i.o, align 4, !tbaa !199
  %i.im = icmp slt i32 %i.ik, %i.il
  br i1 %i.im, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnnL20pad_block5d_semanticERKNS0_3MatERKSt6vectorIiSaIiEEiS4_NS0_10DataLayoutERS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit", !llvm.loop !384

"_ZSt10__invoke_rIvRZN2cv3dnnL20pad_block5d_semanticERKNS0_3MatERKSt6vectorIiSaIiEEiS4_NS0_10DataLayoutERS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit": ; preds = %.loopexit126.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL20pad_block5d_semanticERKNS0_3MatERKSt6vectorIiSaIiEEiS8_NS0_10DataLayoutERS6_E3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL20pad_block5d_semanticERKNS_3MatERKSt6vectorIiSaIiEEiS3_NS_10DataLayoutERS1_E3$_0", ptr %0, align 8, !tbaa !214
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !206
  store ptr %.val, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(224) %.val6, i64 224, i1 false), !tbaa.struct !219
  store ptr %i.a, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !206 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 224) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL20pad_block5d_semanticERKNS1_3MatERKSt6vectorIiSaIiEEiS5_NS1_10DataLayoutERS3_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL20pad_block5d_semanticERKNS0_3MatERKSt6vectorIiSaIiEEiS8_NS0_10DataLayoutERS6_E3$_1E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !206   ; 28 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !435, !nonnull !195, !align !211
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_1
