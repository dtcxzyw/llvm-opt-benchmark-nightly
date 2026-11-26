Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/activation_kernels?download=true
inline.NumInlined: 111
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn12cpu_baselineL14activationClipEPKvPvmPKf:bb.a
.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.014.unr = phi i64 [ %.014.ph, %.lr.ph.preheader18 ], [ %i.y, %.lr.ph.prol ]
  %i.z = icmp eq i64 %2, %.neg
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.al, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9 ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.a
  %.sroa.speculated11 = select i1 %i.ac, float %i.a, float %i.ab ; 2 uses
  %i.ad = fcmp olt float %i.c, %.sroa.speculated11
  %.sroa.speculated = select i1 %i.ad, float %i.c, float %.sroa.speculated11
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014
  store float %.sroa.speculated, ptr %i.ae, align 4, !tbaa !9
  %i.af = add nuw i64 %.014, 1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !9 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.a
  %.sroa.speculated11.1 = select i1 %i.ai, float %i.a, float %i.ah ; 2 uses
  %i.aj = fcmp olt float %i.c, %.sroa.speculated11.1
  %.sroa.speculated.1 = select i1 %i.aj, float %i.c, float %.sroa.speculated11.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af
  store float %.sroa.speculated.1, ptr %i.ak, align 4, !tbaa !9
  %i.al = add nuw i64 %.014, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.al, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN2cv3dnn14dnn5_v2026060517getActivationFuncEi(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 11
  br i1 %i.a, label %switch.lookup, label %_ZN2cv3dnn12cpu_baseline18getActivationFunc_Ei.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv3dnn14dnn5_v2026060517getActivationFuncEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2cv3dnn12cpu_baseline18getActivationFunc_Ei.exit

_ZN2cv3dnn12cpu_baseline18getActivationFunc_Ei.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !42 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22, !inline_history !42
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18, !inline_history !42
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !73
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @tanhf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @erff(float noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline8softmax_ERNS0_3MatERKS7_iiifE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !36    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = load ptr, ptr %.val, align 8, !tbaa !87, !nonnull !88, !align !89
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 264
  store i64 %i.b, ptr %i.d, align 8, !tbaa !92
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  %i.f = shl nuw i64 %i.b, 2
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %i.h = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #21 ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !91
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i:       ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.c, %bb.a ], [ %i.h, %bb.b ] ; 16 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !25     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp ult i32 %i.j, %i.l
  br i1 %i.n, label %.lr.ph70.i.i.i, label %._crit_edge71.i.i.i

.lr.ph70.i.i.i:                                   ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i
  %i.o = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.p = sext i32 %i.j to i64                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93, !nonnull !88, !align !89
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94, !nonnull !88, !align !89
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95, !nonnull !88, !align !96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %.pre.i.i.i = load i32, ptr %i.x, align 4, !tbaa !13
  %i.ad = sub i64 %i.v, %i.s                      ; 2 uses
  %i.ae = shl nsw i64 %i.p, 2
  %i.af = sub i64 %i.ae, %i.o
  br label %bb.d

._crit_edge71.i.i.i:                              ; preds = %.loopexit.i.i.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.i.i.i
  %.not.i.i45.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i45.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline8softmax_ERNS0_3MatERKS3_iiifE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %bb.c

bb.c:                                             ; preds = %._crit_edge71.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.i) #20
  br label %"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline8softmax_ERNS0_3MatERKS3_iiifE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

bb.d:                                             ; preds = %.loopexit.i.i.i, %.lr.ph70.i.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i.i ], [ 0, %.lr.ph70.i.i.i ] ; 3 uses
  %i.ag = phi i32 [ %i.ez, %.loopexit.i.i.i ], [ %.pre.i.i.i, %.lr.ph70.i.i.i ] ; 8 uses
  %.04469.i.i.i = phi i64 [ %i.fa, %.loopexit.i.i.i ], [ %i.p, %.lr.ph70.i.i.i ] ; 3 uses
  %i.ah = udiv i64 %.04469.i.i.i, %i.s            ; 3 uses
  %i.ai = urem i64 %.04469.i.i.i, %i.s
  %i.aj = mul i64 %i.ah, %i.v
  %i.ak = add i64 %i.aj, %i.ai                    ; 3 uses
  %i.al = sext i32 %i.ag to i64                   ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !97, !nonnull !88, !align !89
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !98, !nonnull !88, !align !96 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.aq = sext i32 %i.ap to i64                   ; 8 uses
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !99, !nonnull !88, !align !89
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !21 ; 16 uses
  %i.at = getelementptr [4 x i8], ptr %i.an, i64 %i.ak ; 6 uses
  %min.iters.check40 = icmp ugt i32 %i.ag, 11
  %ident.check36.not = icmp eq i64 %i.as, 1
  %or.cond = select i1 %min.iters.check40, i1 %ident.check36.not, i1 false
  br i1 %or.cond, label %vector.memcheck41, label %scalar.ph39.preheader

vector.memcheck41:                                ; preds = %.lr.ph.i.i.i
  %i.au = ptrtoaddr ptr %i.an to i64
  %i.av = add i64 %indvar, %i.p
  %i.aw = mul i64 %i.ah, %i.ad
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add i64 %i.ax, %i.aq
  %i.az = shl i64 %i.ay, 2
  %i.ba = add i64 %i.az, %i.au
  %i.bb = sub i64 %i.ba, %i.o
  %diff.check42 = icmp ugt i64 %i.bb, -32
  br i1 %diff.check42, label %scalar.ph39.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %vector.memcheck41
  %n.vec44 = and i64 %i.al, -8                    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.aq
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index46 ; 2 uses
  %i.bc = getelementptr i8, ptr %gep, i64 16
  %wide.load47 = load <4 x float>, ptr %gep, align 4, !tbaa !9
  %wide.load48 = load <4 x float>, ptr %i.bc, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index46 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x float> %wide.load47, ptr %i.bd, align 4, !tbaa !9
  store <4 x float> %wide.load48, ptr %i.be, align 4, !tbaa !9
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.bf, label %middle.block50, label %vector.body45, !llvm.loop !74

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %n.vec44, %i.al
  br i1 %cmp.n51, label %.preheader50.i.i.i, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %vector.memcheck41, %.lr.ph.i.i.i, %middle.block50
  %.04253.i.i.i.ph = phi i64 [ 0, %vector.memcheck41 ], [ 0, %.lr.ph.i.i.i ], [ %n.vec44, %middle.block50 ] ; 3 uses
  %xtraiter = and i64 %i.al, 3
  %i.bg = and i32 %i.ag, 3
  %lcmp.mod.not = icmp eq i32 %i.bg, 0
  br i1 %lcmp.mod.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol

scalar.ph39.prol:                                 ; preds = %scalar.ph39.preheader, %scalar.ph39.prol
  %.04253.i.i.i.prol = phi i64 [ %i.bm, %scalar.ph39.prol ], [ %.04253.i.i.i.ph, %scalar.ph39.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph39.prol ], [ 0, %scalar.ph39.preheader ]
  %i.bh = add i64 %.04253.i.i.i.prol, %i.aq
  %i.bi = mul i64 %i.bh, %i.as
  %i.bj = getelementptr [4 x i8], ptr %i.at, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !9
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.04253.i.i.i.prol
  store float %i.bk, ptr %i.bl, align 4, !tbaa !9
  %i.bm = add nuw i64 %.04253.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol, !llvm.loop !75

scalar.ph39.prol.loopexit:                        ; preds = %scalar.ph39.prol, %scalar.ph39.preheader
  %.04253.i.i.i.unr = phi i64 [ %.04253.i.i.i.ph, %scalar.ph39.preheader ], [ %i.bm, %scalar.ph39.prol ]
  %i.bn = sub nsw i64 %.04253.i.i.i.ph, %i.al
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %.preheader50.i.i.i, label %.lr.ph57.i.i.i.a

.preheader50.i.i.i:                               ; preds = %scalar.ph39.prol.loopexit, %.lr.ph57.i.i.i.a, %middle.block50
  %i.bp = icmp sgt i32 %i.ag, 0
  br i1 %i.bp, label %.lr.ph57.preheader.i.i.i, label %.lr.ph68.i.i.i

.lr.ph57.preheader.i.i.i:                         ; preds = %.preheader50.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ag to i64 ; 3 uses
  %i.bq = icmp ult i32 %i.ag, 8
  br i1 %i.bq, label %.lr.ph61.i.i.i.a, label %.lr.ph57.preheader.i.i.i.new

.lr.ph57.preheader.i.i.i.new:                     ; preds = %.lr.ph57.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %scalar.ph39

scalar.ph39:                                      ; preds = %scalar.ph39, %.lr.ph57.preheader.i.i.i.new
  %.04253.i.i.i.a = phi i64 [ 0, %.lr.ph57.preheader.i.i.i.new ], [ %i.bs, %scalar.ph39 ] ; 3 uses
  %vec.phi = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph57.preheader.i.i.i.new ], [ %8, %scalar.ph39 ] ; 3 uses
  %vec.phi41 = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph57.preheader.i.i.i.new ], [ %9, %scalar.ph39 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.04253.i.i.i.a ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load42 = load <4 x float>, ptr %i.br, align 4, !tbaa !9
  %wide.load43 = load <4 x float>, ptr %3, align 4, !tbaa !9
  %4 = freeze <4 x float> %wide.load42            ; 3 uses
  %5 = freeze <4 x float> %wide.load43            ; 3 uses
  %6 = fcmp olt <4 x float> %vec.phi, %4
  %7 = fcmp olt <4 x float> %vec.phi41, %5
  %8 = select <4 x i1> %6, <4 x float> %4, <4 x float> %vec.phi ; 2 uses
  %9 = select <4 x i1> %7, <4 x float> %5, <4 x float> %vec.phi41 ; 2 uses
  %i.bs = add nuw i64 %.04253.i.i.i.a, 8          ; 2 uses
  %10 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %4, /* (nan nzero) */ i32 35)
  %11 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %5, /* (nan nzero) */ i32 35)
  %12 = or <4 x i1> %10, %11
  %13 = bitcast <4 x i1> %12 to i4
  %14 = icmp ne i4 %13, 0                         ; 5 uses
  %15 = icmp eq i64 %i.bs, %unroll_iter
  %16 = or i1 %14, %15
  br i1 %16, label %.lr.ph57.i.i.i.epil, label %scalar.ph39, !llvm.loop !76

.lr.ph57.i.i.i.epil:                              ; preds = %scalar.ph39
  %17 = select i1 %14, <4 x float> %vec.phi, <4 x float> %8
  %18 = select i1 %14, <4 x float> %vec.phi41, <4 x float> %9
  %19 = select i1 %14, i64 %.04253.i.i.i.a, i64 %unroll_iter
  %rdx.minmax = call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %17, <4 x float> %18)
  %20 = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n46 = icmp ne i64 %unroll_iter, %wide.trip.count.i.i.i
  %.not = or i1 %cmp.n46, %14
  br i1 %.not, label %.lr.ph61.i.i.i.a, label %.lr.ph61.i.i.i

.lr.ph61.i.i.i.a:                                 ; preds = %.lr.ph57.preheader.i.i.i, %.lr.ph57.i.i.i.epil
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph57.preheader.i.i.i ], [ %19, %.lr.ph57.i.i.i.epil ]
  %.04755.i.i.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph57.preheader.i.i.i ], [ %20, %.lr.ph57.i.i.i.epil ]
  br label %.lr.ph57.i.i.i

.lr.ph57.i.i.i.a:                                 ; preds = %scalar.ph39.prol.loopexit, %.lr.ph57.i.i.i.a
  %indvars.iv.i.i.i.a = phi i64 [ %niter.next.3, %.lr.ph57.i.i.i.a ], [ %.04253.i.i.i.unr, %scalar.ph39.prol.loopexit ] ; 6 uses
  %21 = add i64 %indvars.iv.i.i.i.a, %i.aq
  %22 = mul i64 %21, %i.as
  %i.bt = getelementptr [4 x i8], ptr %i.at, i64 %22
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !9
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.a
  store float %i.bu, ptr %23, align 4, !tbaa !9
  %24 = add nuw i64 %indvars.iv.i.i.i.a, 1        ; 2 uses
  %25 = add i64 %24, %i.aq
  %26 = mul i64 %25, %i.as
  %27 = getelementptr [4 x i8], ptr %i.at, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %24
  store float %28, ptr %i.bv, align 4, !tbaa !9
  %29 = add nuw i64 %indvars.iv.i.i.i.a, 2        ; 2 uses
  %30 = add i64 %29, %i.aq
  %31 = mul i64 %30, %i.as
  %i.bw = getelementptr [4 x i8], ptr %i.at, i64 %31
  %32 = load float, ptr %i.bw, align 4, !tbaa !9
  %33 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %29
  store float %32, ptr %33, align 4, !tbaa !9
  %34 = add nuw i64 %indvars.iv.i.i.i.a, 3        ; 2 uses
  %indvars.iv.next.i.i.i.3 = add i64 %34, %i.aq
  %35 = mul i64 %indvars.iv.next.i.i.i.3, %i.as
  %36 = getelementptr [4 x i8], ptr %i.at, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !9
  %38 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %34
  store float %37, ptr %38, align 4, !tbaa !9
  %niter.next.3 = add nuw i64 %indvars.iv.i.i.i.a, 4 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %i.al
  br i1 %niter.ncmp.3, label %.preheader50.i.i.i, label %.lr.ph57.i.i.i.a, !llvm.loop !77

.lr.ph61.i.i.i:                                   ; preds = %.lr.ph57.i.i.i, %.lr.ph57.i.i.i.epil
  %.sroa.speculated.i.i.i.lcssa = phi float [ %20, %.lr.ph57.i.i.i.epil ], [ %.sroa.speculated.i.i.i, %.lr.ph57.i.i.i ]
  %39 = load ptr, ptr %i.ab, align 8, !tbaa !100, !nonnull !88, !align !96
  br label %bb.e

.lr.ph57.i.i.i:                                   ; preds = %.lr.ph61.i.i.i.a, %.lr.ph57.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph57.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph61.i.i.i.a ] ; 2 uses
  %.04755.i.i.i = phi float [ %.sroa.speculated.i.i.i, %.lr.ph57.i.i.i ], [ %.04755.i.i.i.ph, %.lr.ph61.i.i.i.a ] ; 2 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  %41 = load float, ptr %40, align 4, !tbaa !9    ; 2 uses
  %42 = fcmp olt float %.04755.i.i.i, %41
  %.sroa.speculated.i.i.i = select i1 %42, float %41, float %.04755.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond77.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond77.not.i.i.i, label %.lr.ph61.i.i.i, label %.lr.ph57.i.i.i, !llvm.loop !78

bb.e:                                             ; preds = %bb.e, %.lr.ph61.i.i.i
  %indvars.iv78.i.i.i = phi i64 [ 0, %.lr.ph61.i.i.i ], [ %indvars.iv.next79.i.i.i, %bb.e ] ; 2 uses
  %.060.i.i.i = phi float [ 0.000000e+00, %.lr.ph61.i.i.i ], [ %i.cd, %bb.e ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv78.i.i.i ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !9
  %i.bz = fsub float %i.by, %.sroa.speculated.i.i.i.lcssa
  %i.ca = load float, ptr %39, align 4, !tbaa !9
  %i.cb = fmul float %i.bz, %i.ca
  %i.cc = call float @expf(float noundef %i.cb) #18 ; 2 uses
  store float %i.cc, ptr %i.bx, align 4, !tbaa !9
  %i.cd = fadd float %.060.i.i.i, %i.cc           ; 3 uses
  %indvars.iv.next79.i.i.i = add nuw nsw i64 %indvars.iv78.i.i.i, 1 ; 2 uses
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !13  ; 9 uses
  %i.cf = sext i32 %i.ce to i64                   ; 6 uses
  %i.cg = icmp slt i64 %indvars.iv.next79.i.i.i, %i.cf
  br i1 %i.cg, label %bb.e, label %._crit_edge.i.i.i, !llvm.loop !79

._crit_edge.i.i.i:                                ; preds = %bb.e
  %i.ch = fcmp oeq float %i.cd, 0.000000e+00
  br i1 %i.ch, label %._crit_edge.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ci = fdiv float 1.000000e+00, %i.cd          ; 5 uses
  %i.cj = call float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp une float %i.cj, +inf
  br i1 %i.ck, label %.preheader.i.i.i, label %._crit_edge.thread.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f
  %.not72.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not72.i.i.i, label %.loopexit.i.i.i, label %.lr.ph65.i.i.i

.lr.ph65.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !101, !nonnull !88, !align !89
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %i.cn = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.co = sext i32 %i.cn to i64                   ; 5 uses
  %i.cp = getelementptr [4 x i8], ptr %i.cm, i64 %i.ak ; 4 uses
  %min.iters.check25 = icmp ugt i32 %i.ce, 7
  %ident.check23.not = icmp eq i64 %i.as, 1
  %or.cond53 = select i1 %min.iters.check25, i1 %ident.check23.not, i1 false
  br i1 %or.cond53, label %vector.memcheck, label %scalar.ph24.preheader

vector.memcheck:                                  ; preds = %.lr.ph65.i.i.i
  %i.cq = ptrtoaddr ptr %i.cm to i64
  %i.cr = shl i64 %indvar, 2
  %i.cs = add i64 %i.af, %i.cr
  %i.ct = mul i64 %i.ah, %i.ad
  %i.cu = add i64 %i.cs, %i.cq
  %i.cv = add i64 %i.ct, %i.co
  %i.cw = shl i64 %i.cv, 2
  %i.cx = add i64 %i.cw, %i.cu
  %i.cy = add i64 %i.cx, -1
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %scalar.ph24.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck
  %n.vec27 = and i64 %i.cf, -8                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep72 = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next31, %vector.body28 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index29 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load = load <4 x float>, ptr %i.cz, align 4, !tbaa !9
  %wide.load30 = load <4 x float>, ptr %i.da, align 4, !tbaa !9
  %i.db = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dc = fmul <4 x float> %broadcast.splat, %wide.load30
  %gep73 = getelementptr [4 x i8], ptr %invariant.gep72, i64 %index29 ; 2 uses
  %i.dd = getelementptr i8, ptr %gep73, i64 16
  store <4 x float> %i.db, ptr %gep73, align 4, !tbaa !9
  store <4 x float> %i.dc, ptr %i.dd, align 4, !tbaa !9
  %index.next31 = add nuw i64 %index29, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next31, %n.vec27
  br i1 %i.de, label %middle.block32, label %vector.body28, !llvm.loop !80

middle.block32:                                   ; preds = %vector.body28
  %cmp.n33 = icmp eq i64 %n.vec27, %i.cf
  br i1 %cmp.n33, label %.loopexit.i.i.i, label %scalar.ph24.preheader

scalar.ph24.preheader:                            ; preds = %vector.memcheck, %.lr.ph65.i.i.i, %middle.block32
  %.264.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph65.i.i.i ], [ %n.vec27, %middle.block32 ] ; 5 uses
  %i.df = and i32 %i.ce, 1
  %lcmp.mod63.not = icmp eq i32 %i.df, 0
  br i1 %lcmp.mod63.not, label %scalar.ph24.prol.loopexit, label %scalar.ph24.prol

scalar.ph24.prol:                                 ; preds = %scalar.ph24.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.264.i.i.i.ph
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !9
  %i.di = fmul float %i.ci, %i.dh
  %i.dj = add nsw i64 %.264.i.i.i.ph, %i.co
  %i.dk = mul i64 %i.dj, %i.as
  %i.dl = getelementptr [4 x i8], ptr %i.cp, i64 %i.dk
  store float %i.di, ptr %i.dl, align 4, !tbaa !9
  %i.dm = or disjoint i64 %.264.i.i.i.ph, 1
  br label %scalar.ph24.prol.loopexit

scalar.ph24.prol.loopexit:                        ; preds = %scalar.ph24.prol, %scalar.ph24.preheader
  %.264.i.i.i.unr = phi i64 [ %.264.i.i.i.ph, %scalar.ph24.preheader ], [ %i.dm, %scalar.ph24.prol ]
  %i.dn = add nsw i64 %i.cf, -1
  %i.do = icmp eq i64 %.264.i.i.i.ph, %i.dn
  br i1 %i.do, label %.loopexit.i.i.i, label %scalar.ph24

._crit_edge.thread.i.i.i:                         ; preds = %bb.f, %._crit_edge.i.i.i
  %.not73.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not73.i.i.i, label %.loopexit.i.i.i, label %._crit_edge.thread.i..lr.ph68.i_crit_edge.i.i

._crit_edge.thread.i..lr.ph68.i_crit_edge.i.i:    ; preds = %._crit_edge.thread.i.i.i
  %.pre.i.i = load i32, ptr %i.ao, align 4, !tbaa !13
  %.pre8.i.i = sext i32 %.pre.i.i to i64
  br label %.lr.ph68.i.i.i

.lr.ph68.i.i.i:                                   ; preds = %._crit_edge.thread.i..lr.ph68.i_crit_edge.i.i, %.preheader50.i.i.i
  %.pre-phi9.i.i = phi i64 [ %.pre8.i.i, %._crit_edge.thread.i..lr.ph68.i_crit_edge.i.i ], [ %i.aq, %.preheader50.i.i.i ] ; 6 uses
  %.pre-phi.i.i = phi i64 [ %i.cf, %._crit_edge.thread.i..lr.ph68.i_crit_edge.i.i ], [ %i.al, %.preheader50.i.i.i ] ; 6 uses
  %i.dp = phi i32 [ %i.ce, %._crit_edge.thread.i..lr.ph68.i_crit_edge.i.i ], [ %i.ag, %.preheader50.i.i.i ] ; 3 uses
  %i.dq = load ptr, ptr %i.ac, align 8, !tbaa !101, !nonnull !88, !align !89
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !23
  %i.ds = getelementptr [4 x i8], ptr %i.dr, i64 %i.ak ; 6 uses
  %min.iters.check = icmp ugt i64 %.pre-phi.i.i, 7
  %ident.check.not = icmp eq i64 %i.as, 1
  %or.cond54 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond54, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph68.i.i.i
  %n.vec = and i64 %.pre-phi.i.i, -8              ; 3 uses
  %invariant.gep74 = getelementptr [4 x i8], ptr %i.ds, i64 %.pre-phi9.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep74, i64 %index ; 2 uses
  %i.dt = getelementptr i8, ptr %gep75, i64 16
  store <4 x float> zeroinitializer, ptr %gep75, align 4, !tbaa !9
  store <4 x float> zeroinitializer, ptr %i.dt, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi.i.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph68.i.i.i, %middle.block
  %.14366.i.i.i.ph = phi i64 [ 0, %.lr.ph68.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter65 = and i64 %.pre-phi.i.i, 3          ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.14366.i.i.i.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.14366.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter67 = phi i64 [ %prol.iter67.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = add i64 %.14366.i.i.i.prol, %.pre-phi9.i.i
  %i.dw = mul i64 %i.dv, %i.as
  %i.dx = getelementptr [4 x i8], ptr %i.ds, i64 %i.dw
  store float 0.000000e+00, ptr %i.dx, align 4, !tbaa !9
  %i.dy = add nuw i64 %.14366.i.i.i.prol, 1       ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !82

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.14366.i.i.i.unr = phi i64 [ %.14366.i.i.i.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.14366.i.i.i.ph, %.pre-phi.i.i
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %.loopexit.i.i.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.pre-phi9.i.i
  %invariant.op76 = add i64 2, %.pre-phi9.i.i
  %invariant.op78 = add i64 3, %.pre-phi9.i.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.14366.i.i.i = phi i64 [ %.14366.i.i.i.unr, %scalar.ph.preheader.new ], [ %i.ek, %scalar.ph ] ; 5 uses
  %i.eb = add i64 %.14366.i.i.i, %.pre-phi9.i.i
  %i.ec = mul i64 %i.eb, %i.as
  %i.ed = getelementptr [4 x i8], ptr %i.ds, i64 %i.ec
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !9
  %.reass = add i64 %.14366.i.i.i, %invariant.op
  %i.ee = mul i64 %.reass, %i.as
  %i.ef = getelementptr [4 x i8], ptr %i.ds, i64 %i.ee
  store float 0.000000e+00, ptr %i.ef, align 4, !tbaa !9
  %.reass77 = add i64 %.14366.i.i.i, %invariant.op76
  %i.eg = mul i64 %.reass77, %i.as
  %i.eh = getelementptr [4 x i8], ptr %i.ds, i64 %i.eg
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !9
  %.reass79 = add i64 %.14366.i.i.i, %invariant.op78
  %i.ei = mul i64 %.reass79, %i.as
  %i.ej = getelementptr [4 x i8], ptr %i.ds, i64 %i.ei
  store float 0.000000e+00, ptr %i.ej, align 4, !tbaa !9
  %i.ek = add nuw i64 %.14366.i.i.i, 4            ; 2 uses
  %exitcond82.not.i.i.i.3 = icmp eq i64 %i.ek, %.pre-phi.i.i
  br i1 %exitcond82.not.i.i.i.3, label %.loopexit.i.i.i, label %scalar.ph, !llvm.loop !83

scalar.ph24:                                      ; preds = %scalar.ph24.prol.loopexit, %scalar.ph24
  %.264.i.i.i = phi i64 [ %i.ey, %scalar.ph24 ], [ %.264.i.i.i.unr, %scalar.ph24.prol.loopexit ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.264.i.i.i
  %i.em = load float, ptr %i.el, align 4, !tbaa !9
  %i.en = fmul float %i.ci, %i.em
  %i.eo = add i64 %.264.i.i.i, %i.co
  %i.ep = mul i64 %i.eo, %i.as
  %i.eq = getelementptr [4 x i8], ptr %i.cp, i64 %i.ep
  store float %i.en, ptr %i.eq, align 4, !tbaa !9
  %i.er = add nuw i64 %.264.i.i.i, 1              ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !9
  %i.eu = fmul float %i.ci, %i.et
  %i.ev = add i64 %i.er, %i.co
  %i.ew = mul i64 %i.ev, %i.as
  %i.ex = getelementptr [4 x i8], ptr %i.cp, i64 %i.ew
  store float %i.eu, ptr %i.ex, align 4, !tbaa !9
  %i.ey = add nuw i64 %.264.i.i.i, 2              ; 2 uses
  %exitcond81.not.i.i.i.1 = icmp eq i64 %i.ey, %i.cf
  br i1 %exitcond81.not.i.i.i.1, label %.loopexit.i.i.i, label %scalar.ph24, !llvm.loop !84

.loopexit.i.i.i:                                  ; preds = %scalar.ph24.prol.loopexit, %scalar.ph24, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block32, %middle.block, %._crit_edge.thread.i.i.i, %.preheader.i.i.i, %bb.d
  %i.ez = phi i32 [ 0, %bb.d ], [ 0, %._crit_edge.thread.i.i.i ], [ 0, %.preheader.i.i.i ], [ %i.dp, %middle.block ], [ %i.ce, %middle.block32 ], [ %i.dp, %scalar.ph.prol.loopexit ], [ %i.dp, %scalar.ph ], [ %i.ce, %scalar.ph24 ], [ %i.ce, %scalar.ph24.prol.loopexit ]
  %i.fa = add nuw i64 %.04469.i.i.i, 1            ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.m
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fb, label %bb.d, label %._crit_edge71.i.i.i, !llvm.loop !85

"_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline8softmax_ERNS0_3MatERKS3_iiifE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %._crit_edge71.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline8softmax_ERNS0_3MatERKS7_iiifE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn12cpu_baseline8softmax_ERNS_3MatERKS2_iiifE3$_0", ptr %0, align 8, !tbaa !103
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !36
  store ptr %.val, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !39
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #20
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline8softmax_ERNS1_3MatERKS4_iiifE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!5, !5, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !17, i64 8, !4, i64 16}
!19 = !{!18, !15, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!17, !17, i64 0}
!22 = !{!"p1 float", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!25 = !{!24, !5, i64 0}
!26 = !{!24, !5, i64 4}
!27 = !{!"_ZTSSt14_Function_base", !4, i64 0, !14, i64 16}
!28 = !{!27, !14, i64 16}
!29 = !{!"p1 long", !14, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 int", !14, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"any p2 pointer", !14, i64 0}
!34 = !{!"p2 float", !33, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!14, !14, i64 0}
!37 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !27, i64 0, !14, i64 24}
!38 = !{!37, !14, i64 24}
!39 = !{i64 0, i64 8, !30, i64 8, i64 8, !30, i64 16, i64 8, !30, i64 24, i64 8, !32, i64 32, i64 8, !35, i64 40, i64 8, !32, i64 48, i64 8, !30, i64 56, i64 8, !23, i64 64, i64 8, !35}
!40 = !{!"vtable pointer", !3, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !10, !11, !12}
!45 = distinct !{!45, !10, !11}
!46 = !{!"p1 _ZTSN2cv12MatAllocatorE", !14, i64 0}
!47 = !{!"p1 _ZTSN2cv8UMatDataE", !14, i64 0}
!48 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!49 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !48, i64 4, !5, i64 8, !4, i64 12}
!50 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!51 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !46, i64 56, !47, i64 64, !49, i64 72, !50, i64 128}
!52 = !{!51, !5, i64 0}
!53 = !{!51, !5, i64 4}
!54 = !{!51, !15, i64 24}
!55 = !{!16, !15, i64 0}
!56 = !{!18, !17, i64 8}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10, !11, !12}
!64 = distinct !{!64, !10, !11}
!65 = distinct !{!65, !10, !11, !12}
!66 = distinct !{!66, !10, !11}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10, !11, !12}
!70 = distinct !{!70, !10, !11}
!71 = distinct !{!71, !10, !11, !12}
!72 = distinct !{!72, !10, !11}
!73 = distinct !{null}
!74 = distinct !{!74, !10, !11, !12}
!75 = distinct !{!75, !43}
!76 = distinct !{!76, !10, !11, !12}
!77 = distinct !{!77, !10, !11}
!78 = distinct !{!78, !10, !12, !11}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10, !11, !12}
!81 = distinct !{!81, !10, !11, !12}
!82 = distinct !{!82, !43}
!83 = distinct !{!83, !10, !11}
!84 = distinct !{!84, !10, !11}
!85 = distinct !{!85, !10}
!86 = !{!"_ZTSZN2cv3dnn12cpu_baseline8softmax_ERNS_3MatERKS2_iiifE3$_0", !29, i64 0, !29, i64 8, !29, i64 16, !31, i64 24, !34, i64 32, !31, i64 40, !29, i64 48, !22, i64 56, !34, i64 64}
!87 = !{!86, !29, i64 0}
!88 = !{}
!89 = !{i64 8}
!90 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !22, i64 0, !17, i64 8, !4, i64 16}
!91 = !{!90, !22, i64 0}
!92 = !{!90, !17, i64 8}
!93 = !{!86, !29, i64 8}
!94 = !{!86, !29, i64 16}
!95 = !{!86, !31, i64 24}
!96 = !{i64 4}
!97 = !{!86, !34, i64 32}
!98 = !{!86, !31, i64 40}
!99 = !{!86, !29, i64 48}
!100 = !{!86, !22, i64 56}
!101 = !{!86, !34, i64 64}
!102 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!103 = !{!102, !102, i64 0}
end_hunk_0
