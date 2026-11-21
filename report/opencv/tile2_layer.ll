Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tile2_layer?download=true
inline.NumInlined: 413
inline.NumDeleted: 220
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm:bb.a

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 44343134792571037) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 208
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %i.w, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32 = phi i64 [ %i.x, %.lr.ph.i.i.i30 ], [ %1, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i31) #18
  %i.x = add nsw i64 %.057.i.i.i32, -1            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %.not.i.i.i33 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !116

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i37 ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #18
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !117

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #19
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.t
  store ptr %i.af, ptr %i.h, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !84 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21, !inline_history !84
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !119
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL4tileERKNS0_3MatEPKiRS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #13 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !80    ; 9 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4, !tbaa !71
  %i.b = load ptr, ptr %.val, align 8, !tbaa !168, !nonnull !67, !align !169 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170, !nonnull !67, !align !171
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65   ; 12 uses
  %i.i = sext i32 %.val2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172, !nonnull !67, !align !171
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173, !nonnull !67, !align !169
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = sdiv i64 %i.m, %i.q                      ; 2 uses
  %i.s = sext i32 %.val3 to i64
  %i.t = mul nsw i64 %i.l, %i.s
  %i.u = sdiv i64 %i.t, %i.q                      ; 2 uses
  %i.v = icmp slt i64 %i.r, %i.u
  br i1 %i.v, label %.preheader19.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL4tileERKNS0_3MatEPKiRS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

.preheader19.lr.ph.i.i.i:                         ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32 ; 2 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !32  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.aj = icmp slt i32 %i.ae, 1
  %i.ak = icmp slt i32 %i.ad, 1
  %i.al = icmp slt i32 %i.ab, 1
  %i.am = icmp slt i32 %i.z, 1
  %i.an = icmp slt i32 %i.d, 1
  %i.ao = icmp slt i32 %i.x, 1
  %i.ap = sext i32 %i.x to i64                    ; 8 uses
  %brmerge303.i.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  %wide.trip.count357.i.i.i = zext nneg i32 %i.ae to i64 ; 4 uses
  %wide.trip.count352.i.i.i = zext nneg i32 %i.ad to i64 ; 4 uses
  %wide.trip.count347.i.i.i = zext nneg i32 %i.ab to i64 ; 4 uses
  %wide.trip.count342.i.i.i = zext nneg i32 %i.z to i64 ; 4 uses
  %wide.trip.count.i.i.i = zext i32 %i.x to i64   ; 34 uses
  %brmerge485.i.i.i = select i1 %brmerge303.i.i.i, i1 true, i1 %i.al
  %brmerge487.i.i.i = select i1 %brmerge485.i.i.i, i1 true, i1 %i.am
  %brmerge489.i.i.i = select i1 %brmerge487.i.i.i, i1 true, i1 %i.an
  %brmerge491.i.i.i = select i1 %brmerge489.i.i.i, i1 true, i1 %i.ao ; 4 uses
  %i.aq = add i32 %i.d, -1
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ap, %i.ar
  %i.at = add i64 %i.as, %wide.trip.count.i.i.i
  %i.au = shl i64 %i.at, 3
  %i.av = mul i64 %i.h, %i.ar
  %i.aw = add i64 %i.av, %wide.trip.count.i.i.i
  %i.ax = shl i64 %i.aw, 3
  %i.ay = add i32 %i.d, -1
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul nsw i64 %i.ap, %i.az
  %i.bb = mul i64 %i.h, %i.az
  %i.bc = add i32 %i.d, -1
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = mul nsw i64 %i.ap, %i.bd
  %i.bf = add i64 %i.be, %wide.trip.count.i.i.i
  %i.bg = shl i64 %i.bf, 1
  %i.bh = mul i64 %i.h, %i.bd
  %i.bi = add i64 %i.bh, %wide.trip.count.i.i.i
  %i.bj = add i32 %i.d, -1
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.ap, %i.bk
  %i.bm = add i64 %i.bl, %wide.trip.count.i.i.i
  %i.bn = shl i64 %i.bm, 2
  %i.bo = mul i64 %i.h, %i.bk
  %i.bp = add i64 %i.bo, %wide.trip.count.i.i.i
  %min.iters.check128 = icmp ult i32 %i.x, 8
  %.mask = and i64 %i.h, 2305843009213693952
  %stride.check133 = icmp ne i64 %.mask, 0
  %n.vec135 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check87 = icmp ult i32 %i.x, 4
  %.mask144 = and i64 %i.h, 4611686018427387904
  %stride.check92 = icmp ne i64 %.mask144, 0
  %min.iters.check94 = icmp ult i32 %i.x, 16
  %i.bq = and i64 %wide.trip.count.i.i.i, 12
  %n.vec96 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %cmp.n103 = icmp eq i64 %n.vec96, %wide.trip.count.i.i.i
  %min.epilog.iters.check107 = icmp eq i64 %i.bq, 0
  %n.vec110 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n116 = icmp eq i64 %n.vec110, %wide.trip.count.i.i.i
  %xtraiter152 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  %min.iters.check55 = icmp ult i32 %i.x, 4
  %stride.check60 = icmp slt i64 %i.h, 0
  %min.iters.check61 = icmp ult i32 %i.x, 32
  %i.br = and i64 %wide.trip.count.i.i.i, 28
  %n.vec63 = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %cmp.n70 = icmp eq i64 %n.vec63, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  %n.vec71 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n75 = icmp eq i64 %n.vec71, %wide.trip.count.i.i.i
  %xtraiter155 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  %min.iters.check = icmp ult i32 %i.x, 6
  %.mask145 = and i64 %i.h, 1152921504606846976
  %stride.check = icmp ne i64 %.mask145, 0
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter158 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br label %.preheader19.i.i.i

.preheader19.i.i.i:                               ; preds = %.loopexit.i.i.i, %.preheader19.lr.ph.i.i.i
  %.0193295.i.i.i = phi i64 [ %i.r, %.preheader19.lr.ph.i.i.i ], [ %i.mq, %.loopexit.i.i.i ] ; 3 uses
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !174, !nonnull !67, !align !169 ; 6 uses
  %i.bt = load ptr, ptr %.val, align 8, !tbaa !168, !nonnull !67, !align !169 ; 6 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !170, !nonnull !67, !align !171 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.bx = sext i32 %i.bw to i64                   ; 3 uses
  %i.by = sdiv i64 %.0193295.i.i.i, %i.bx         ; 3 uses
  %i.bz = mul i64 %i.by, %i.bx                    ; 0 uses
  %.recomposed = srem i64 %.0193295.i.i.i, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %.recomposed, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !65
  %i.cg = mul i64 %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cj = sext i32 %i.ci to i64                   ; 3 uses
  %i.ck = sdiv i64 %i.by, %i.cj                   ; 3 uses
  %i.cl = mul i64 %i.ck, %i.cj                    ; 0 uses
  %.recomposed164 = srem i64 %i.by, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %.recomposed164, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !65
  %i.cs = mul i64 %i.cp, %i.cr
  %i.ct = add i64 %i.cs, %i.cg
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %i.cx = sdiv i64 %i.ck, %i.cw                   ; 3 uses
  %i.cy = mul i64 %i.cx, %i.cw                    ; 0 uses
  %.recomposed165 = srem i64 %i.ck, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !32
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %.recomposed165, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !65 ; 5 uses
  %i.df = mul i64 %i.dc, %i.de
  %i.dg = add i64 %i.ct, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32
  %i.dj = sext i32 %i.di to i64                   ; 3 uses
  %i.dk = sdiv i64 %i.cx, %i.dj                   ; 3 uses
  %i.dl = mul i64 %i.dk, %i.dj                    ; 0 uses
  %.recomposed166 = srem i64 %i.cx, %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !32
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul i64 %.recomposed166, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !65 ; 5 uses
  %i.ds = mul i64 %i.dp, %i.dr
  %i.dt = add i64 %i.dg, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = sdiv i64 %i.dk, %i.dw
  %.fr.i.i.i = freeze i64 %i.dx                   ; 2 uses
  %i.dy = mul i64 %.fr.i.i.i, %i.dw
  %i.dz = sub i64 %i.dk, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !32
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !65 ; 5 uses
  %i.ef = mul i64 %i.ee, %i.ec
  %i.eg = mul i64 %i.ef, %i.dz
  %i.eh = add i64 %i.dt, %i.eg
  %i.ei = load i32, ptr %i.bs, align 4, !tbaa !32
  %i.ej = sext i32 %i.ei to i64
  %i.ek = srem i64 %.fr.i.i.i, %i.ej
  %i.el = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.em = sext i32 %i.el to i64
  %i.en = mul i64 %i.ek, %i.em
  %i.eo = load i64, ptr %i.bu, align 8, !tbaa !65 ; 5 uses
  %i.ep = mul i64 %i.en, %i.eo
  %i.eq = add i64 %i.eh, %i.ep                    ; 8 uses
  %i.er = load ptr, ptr %i.ag, align 8, !tbaa !175, !nonnull !67, !align !171
  %i.es = load i64, ptr %i.er, align 8, !tbaa !65
  %2 = load ptr, ptr %i.ah, align 8, !tbaa !176, !nonnull !67, !align !171
  %3 = load ptr, ptr %2, align 8, !tbaa !68       ; 4 uses
  %i.et = load ptr, ptr %i.ai, align 8, !tbaa !177, !nonnull !67, !align !171
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !68 ; 8 uses
  switch i64 %i.es, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader19.i.i.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.eq
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader13.us.us.i.preheader.i.i

.preheader13.us.us.i.preheader.i.i:               ; preds = %bb.b
  %i.ew = getelementptr i8, ptr %i.eu, i64 %i.bb
  %scevgep51 = getelementptr i8, ptr %i.ew, i64 %wide.trip.count.i.i.i
  %scevgep52 = getelementptr i8, ptr %scevgep51, i64 %i.eq
  br label %.preheader13.us.us.i.i.i

.preheader13.us.us.i.i.i:                         ; preds = %.preheader13.us.us.i.preheader.i.i, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i
  %indvars.iv410.i.i.i = phi i64 [ %indvars.iv.next411.i.i.i, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i ], [ 0, %.preheader13.us.us.i.preheader.i.i ] ; 2 uses
  %.0185218.us.us.i.i.i = phi ptr [ %i.gt, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i ], [ %3, %.preheader13.us.us.i.preheader.i.i ]
  br label %.preheader9.us.us.us.us.us.us.i.i.i

.preheader9.us.us.us.us.us.us.i.i.i:              ; preds = %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, %.preheader13.us.us.i.i.i
  %indvars.iv405.i.i.i = phi i64 [ %indvars.iv.next406.i.i.i, %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader13.us.us.i.i.i ] ; 2 uses
  %.1186196.us.us.us.us.us.us.i.i.i = phi ptr [ %i.gt, %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ %.0185218.us.us.i.i.i, %.preheader13.us.us.i.i.i ]
  br label %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i

.preheader5.us.us.us.us.us.us.us.us.us.i.i.i:     ; preds = %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader9.us.us.us.us.us.us.i.i.i
  %indvars.iv400.i.i.i = phi i64 [ %indvars.iv.next401.i.i.i, %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader9.us.us.us.us.us.us.i.i.i ] ; 2 uses
  %.2187181.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.gt, %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.1186196.us.us.us.us.us.us.i.i.i, %.preheader9.us.us.us.us.us.us.i.i.i ]
  br label %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv395.i.i.i = phi i64 [ %indvars.iv.next396.i.i.i, %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i ] ; 2 uses
  %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.gt, %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.2187181.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.ex = load ptr, ptr %i.e, align 8, !tbaa !170, !nonnull !67, !align !171 ; 4 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !65
  %i.ez = mul i64 %i.ey, %indvars.iv410.i.i.i     ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ev, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !65
  %i.fd = mul i64 %i.fc, %indvars.iv405.i.i.i     ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fa, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !65
  %i.fh = mul i64 %i.fg, %indvars.iv400.i.i.i     ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fe, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !65
  %i.fl = mul i64 %i.fk, %indvars.iv395.i.i.i     ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fi, i64 %i.fl  ; 2 uses
  %i.fn = getelementptr i8, ptr %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ba
  %scevgep50 = getelementptr i8, ptr %i.fn, i64 %wide.trip.count.i.i.i
  %i.fo = getelementptr i8, ptr %scevgep52, i64 %i.ez
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fd
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fh
  %scevgep53 = getelementptr i8, ptr %i.fq, i64 %i.fl
  %bound057 = icmp ult ptr %i.fm, %scevgep50
  %bound158 = icmp ult ptr %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep53
  %found.conflict59 = and i1 %bound057, %bound158
  %i.fr = or i1 %found.conflict59, %stride.check60
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %.0179166.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.gr, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i ]
  %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.fm, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.gs, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i ] ; 8 uses
  %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.gt, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i ] ; 8 uses
  %brmerge = select i1 %min.iters.check55, i1 true, i1 %i.fr
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.body64

vector.body64:                                    ; preds = %vector.main.loop.iter.check, %vector.body64
  %index65 = phi i64 [ %index.next68, %vector.body64 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index65 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load66 = load <16 x i8>, ptr %i.fs, align 1, !tbaa !22, !alias.scope !178
  %wide.load67 = load <16 x i8>, ptr %i.ft, align 1, !tbaa !22, !alias.scope !178
  %i.fu = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index65 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <16 x i8> %wide.load66, ptr %i.fu, align 1, !tbaa !22, !alias.scope !179, !noalias !178
  store <16 x i8> %wide.load67, ptr %i.fv, align 1, !tbaa !22, !alias.scope !179, !noalias !178
  %index.next68 = add nuw i64 %index65, 32        ; 2 uses
  %i.fw = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.fw, label %middle.block69, label %vector.body64, !llvm.loop !123

middle.block69:                                   ; preds = %vector.body64
  br i1 %cmp.n70, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !180

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec63, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index72 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index72
  %wide.load73 = load <4 x i8>, ptr %i.fx, align 1, !tbaa !22, !alias.scope !178
  %i.fy = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index72
  store <4 x i8> %wide.load73, ptr %i.fy, align 1, !tbaa !22, !alias.scope !179, !noalias !178
  %index.next74 = add nuw i64 %index72, 4         ; 2 uses
  %i.fz = icmp eq i64 %index.next74, %n.vec71
  br i1 %i.fz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n75, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv389.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec71, %vec.epilog.middle.block ], [ %n.vec63, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod156.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv389.i.i.i.prol = phi i64 [ %indvars.iv.next390.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv389.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter157 = phi i64 [ %prol.iter157.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i.prol
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !22
  %i.gc = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i.prol
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.prol = add nuw nsw i64 %indvars.iv389.i.i.i.prol, 1 ; 2 uses
  %prol.iter157.next = add i64 %prol.iter157, 1   ; 2 uses
  %prol.iter157.cmp.not = icmp eq i64 %prol.iter157.next, %xtraiter155
  br i1 %prol.iter157.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !125

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv389.i.i.i.unr = phi i64 [ %indvars.iv389.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next390.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gd = sub nsw i64 %indvars.iv389.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ge = icmp ugt i64 %i.gd, -4
  br i1 %i.ge, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv389.i.i.i = phi i64 [ %indvars.iv.next390.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv389.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i = add nuw nsw i64 %indvars.iv389.i.i.i, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.1 = add nuw nsw i64 %indvars.iv389.i.i.i, 2 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.1
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.2 = add nuw nsw i64 %indvars.iv389.i.i.i, 3 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.2
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.3 = add nuw nsw i64 %indvars.iv389.i.i.i, 4 ; 2 uses
  %exitcond393.not.i.i.i.3 = icmp eq i64 %indvars.iv.next390.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond393.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !126

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block69
  %i.gr = add nuw nsw i32 %.0179166.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.gt = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond394.not.i.i.i = icmp eq i32 %i.gr, %i.d
  br i1 %exitcond394.not.i.i.i, label %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %iter.check, !llvm.loop !127

._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i
  %indvars.iv.next396.i.i.i = add nuw nsw i64 %indvars.iv395.i.i.i, 1 ; 2 uses
  %exitcond399.not.i.i.i = icmp eq i64 %indvars.iv.next396.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond399.not.i.i.i, label %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !128

._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next401.i.i.i = add nuw nsw i64 %indvars.iv400.i.i.i, 1 ; 2 uses
  %exitcond404.not.i.i.i = icmp eq i64 %indvars.iv.next401.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond404.not.i.i.i, label %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, label %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !129

._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next406.i.i.i = add nuw nsw i64 %indvars.iv405.i.i.i, 1 ; 2 uses
  %exitcond409.not.i.i.i = icmp eq i64 %indvars.iv.next406.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond409.not.i.i.i, label %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i, label %.preheader9.us.us.us.us.us.us.i.i.i, !llvm.loop !130

._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i: ; preds = %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next411.i.i.i = add nuw nsw i64 %indvars.iv410.i.i.i, 1 ; 2 uses
  %exitcond414.not.i.i.i = icmp eq i64 %indvars.iv.next411.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond414.not.i.i.i, label %.loopexit.i.i.i, label %.preheader13.us.us.i.i.i, !llvm.loop !131

bb.c:                                             ; preds = %.preheader19.i.i.i
  %i.gu = getelementptr [2 x i8], ptr %i.eu, i64 %i.eq
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader14.us.us.i.preheader.i.i

.preheader14.us.us.i.preheader.i.i:               ; preds = %bb.c
  %i.gv = add i64 %i.bi, %i.eq
  %i.gw = shl i64 %i.gv, 1
  %i.gx = shl i64 %i.eo, 1
  %i.gy = shl i64 %i.ee, 1
  %i.gz = shl i64 %i.dr, 1
  %i.ha = shl i64 %i.de, 1
  %i.hb = getelementptr i8, ptr %i.eu, i64 %i.gw
  br label %.preheader14.us.us.i.i.i

.preheader14.us.us.i.i.i:                         ; preds = %.preheader14.us.us.i.preheader.i.i, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i
  %indvars.iv382.i.i.i = phi i64 [ %indvars.iv.next383.i.i.i, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i ], [ 0, %.preheader14.us.us.i.preheader.i.i ] ; 3 uses
  %.0173144.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i ], [ %3, %.preheader14.us.us.i.preheader.i.i ]
  %i.hc = mul i64 %i.gx, %indvars.iv382.i.i.i
  %i.hd = mul i64 %indvars.iv382.i.i.i, %i.eo
  %i.he = getelementptr [2 x i8], ptr %i.gu, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hc
  br label %.preheader10.us.us.us.us.us.us.i.i.i

.preheader10.us.us.us.us.us.us.i.i.i:             ; preds = %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, %.preheader14.us.us.i.i.i
  %indvars.iv377.i.i.i = phi i64 [ %indvars.iv.next378.i.i.i, %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader14.us.us.i.i.i ] ; 3 uses
  %.1174122.us.us.us.us.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ %.0173144.us.us.i.i.i, %.preheader14.us.us.i.i.i ]
  %i.hg = mul i64 %i.gy, %indvars.iv377.i.i.i
  %i.hh = mul i64 %indvars.iv377.i.i.i, %i.ee
  %i.hi = getelementptr [2 x i8], ptr %i.he, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hf, i64 %i.hg
  br label %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i

.preheader6.us.us.us.us.us.us.us.us.us.i.i.i:     ; preds = %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader10.us.us.us.us.us.us.i.i.i
  %indvars.iv372.i.i.i = phi i64 [ %indvars.iv.next373.i.i.i, %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader10.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.2175108.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.1174122.us.us.us.us.us.us.i.i.i, %.preheader10.us.us.us.us.us.us.i.i.i ]
  %i.hk = mul i64 %i.gz, %indvars.iv372.i.i.i
  %i.hl = mul i64 %indvars.iv372.i.i.i, %i.dr
  %i.hm = getelementptr [2 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hj, i64 %i.hk
  br label %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv367.i.i.i = phi i64 [ %indvars.iv.next368.i.i.i, %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.2175108.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.ho = mul i64 %i.ha, %indvars.iv367.i.i.i
  %scevgep85 = getelementptr i8, ptr %i.hn, i64 %i.ho
  %i.hp = mul i64 %indvars.iv367.i.i.i, %i.de
  %i.hq = getelementptr [2 x i8], ptr %i.hm, i64 %i.hp ; 2 uses
  %scevgep84 = getelementptr i8, ptr %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.bg
  %bound089 = icmp ult ptr %i.hq, %scevgep84
  %bound190 = icmp ult ptr %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep85
  %found.conflict91 = and i1 %bound089, %bound190
  %i.hr = or i1 %found.conflict91, %stride.check92
  br label %iter.check104

iter.check104:                                    ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %.016793.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.ir, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ]
  %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.hq, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.is, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 8 uses
  %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.it, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 8 uses
  %brmerge167 = select i1 %min.iters.check87, i1 true, i1 %i.hr
  br i1 %brmerge167, label %vec.epilog.scalar.ph106.preheader, label %vector.main.loop.iter.check93

vector.main.loop.iter.check93:                    ; preds = %iter.check104
  br i1 %min.iters.check94, label %vec.epilog.ph108, label %vector.body97

vector.body97:                                    ; preds = %vector.main.loop.iter.check93, %vector.body97
  %index98 = phi i64 [ %index.next101, %vector.body97 ], [ 0, %vector.main.loop.iter.check93 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index98 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load99 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !183, !alias.scope !184
  %wide.load100 = load <8 x i16>, ptr %i.ht, align 2, !tbaa !183, !alias.scope !184
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index98 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <8 x i16> %wide.load99, ptr %i.hu, align 2, !tbaa !183, !alias.scope !185, !noalias !184
  store <8 x i16> %wide.load100, ptr %i.hv, align 2, !tbaa !183, !alias.scope !185, !noalias !184
  %index.next101 = add nuw i64 %index98, 16       ; 2 uses
  %i.hw = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.hw, label %middle.block102, label %vector.body97, !llvm.loop !135

middle.block102:                                  ; preds = %vector.body97
  br i1 %cmp.n103, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.iter.check105

vec.epilog.iter.check105:                         ; preds = %middle.block102
  br i1 %min.epilog.iters.check107, label %vec.epilog.scalar.ph106.preheader, label %vec.epilog.ph108, !prof !186

vec.epilog.ph108:                                 ; preds = %vector.main.loop.iter.check93, %vec.epilog.iter.check105
  %vec.epilog.resume.val109 = phi i64 [ %n.vec96, %vec.epilog.iter.check105 ], [ 0, %vector.main.loop.iter.check93 ]
  br label %vec.epilog.vector.body111

vec.epilog.vector.body111:                        ; preds = %vec.epilog.vector.body111, %vec.epilog.ph108
  %index112 = phi i64 [ %vec.epilog.resume.val109, %vec.epilog.ph108 ], [ %index.next114, %vec.epilog.vector.body111 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index112
  %wide.load113 = load <4 x i16>, ptr %i.hx, align 2, !tbaa !183, !alias.scope !184
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index112
  store <4 x i16> %wide.load113, ptr %i.hy, align 2, !tbaa !183, !alias.scope !185, !noalias !184
  %index.next114 = add nuw i64 %index112, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next114, %n.vec110
  br i1 %i.hz, label %vec.epilog.middle.block115, label %vec.epilog.vector.body111, !llvm.loop !136

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body111
  br i1 %cmp.n116, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.scalar.ph106.preheader

vec.epilog.scalar.ph106.preheader:                ; preds = %iter.check104, %vec.epilog.iter.check105, %vec.epilog.middle.block115
  %indvars.iv361.i.i.i.ph = phi i64 [ 0, %iter.check104 ], [ %n.vec110, %vec.epilog.middle.block115 ], [ %n.vec96, %vec.epilog.iter.check105 ] ; 3 uses
  br i1 %lcmp.mod153.not, label %vec.epilog.scalar.ph106.prol.loopexit, label %vec.epilog.scalar.ph106.prol

vec.epilog.scalar.ph106.prol:                     ; preds = %vec.epilog.scalar.ph106.preheader, %vec.epilog.scalar.ph106.prol
  %indvars.iv361.i.i.i.prol = phi i64 [ %indvars.iv.next362.i.i.i.prol, %vec.epilog.scalar.ph106.prol ], [ %indvars.iv361.i.i.i.ph, %vec.epilog.scalar.ph106.preheader ] ; 3 uses
  %prol.iter154 = phi i64 [ %prol.iter154.next, %vec.epilog.scalar.ph106.prol ], [ 0, %vec.epilog.scalar.ph106.preheader ]
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i.prol
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !183
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i.prol
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !183
  %indvars.iv.next362.i.i.i.prol = add nuw nsw i64 %indvars.iv361.i.i.i.prol, 1 ; 2 uses
  %prol.iter154.next = add i64 %prol.iter154, 1   ; 2 uses
  %prol.iter154.cmp.not = icmp eq i64 %prol.iter154.next, %xtraiter152
  br i1 %prol.iter154.cmp.not, label %vec.epilog.scalar.ph106.prol.loopexit, label %vec.epilog.scalar.ph106.prol, !llvm.loop !137

vec.epilog.scalar.ph106.prol.loopexit:            ; preds = %vec.epilog.scalar.ph106.prol, %vec.epilog.scalar.ph106.preheader
  %indvars.iv361.i.i.i.unr = phi i64 [ %indvars.iv361.i.i.i.ph, %vec.epilog.scalar.ph106.preheader ], [ %indvars.iv.next362.i.i.i.prol, %vec.epilog.scalar.ph106.prol ]
  %i.id = sub nsw i64 %indvars.iv361.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.scalar.ph106

vec.epilog.scalar.ph106:                          ; preds = %vec.epilog.scalar.ph106.prol.loopexit, %vec.epilog.scalar.ph106
  %indvars.iv361.i.i.i = phi i64 [ %indvars.iv.next362.i.i.i.3, %vec.epilog.scalar.ph106 ], [ %indvars.iv361.i.i.i.unr, %vec.epilog.scalar.ph106.prol.loopexit ] ; 6 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !183
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !183
  %indvars.iv.next362.i.i.i = add nuw nsw i64 %indvars.iv361.i.i.i, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !183
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !183
  %indvars.iv.next362.i.i.i.1 = add nuw nsw i64 %indvars.iv361.i.i.i, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.1
  %i.im = load i16, ptr %i.il, align 2, !tbaa !183
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.1
  store i16 %i.im, ptr %i.in, align 2, !tbaa !183
  %indvars.iv.next362.i.i.i.2 = add nuw nsw i64 %indvars.iv361.i.i.i, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !183
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.2
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !183
  %indvars.iv.next362.i.i.i.3 = add nuw nsw i64 %indvars.iv361.i.i.i, 4 ; 2 uses
  %exitcond365.not.i.i.i.3 = icmp eq i64 %indvars.iv.next362.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond365.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.scalar.ph106, !llvm.loop !138

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %vec.epilog.scalar.ph106.prol.loopexit, %vec.epilog.scalar.ph106, %vec.epilog.middle.block115, %middle.block102
  %i.ir = add nuw nsw i32 %.016793.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.is = getelementptr inbounds [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond366.not.i.i.i = icmp eq i32 %i.ir, %i.d
  br i1 %exitcond366.not.i.i.i, label %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %iter.check104, !llvm.loop !139

._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next368.i.i.i = add nuw nsw i64 %indvars.iv367.i.i.i, 1 ; 2 uses
  %exitcond371.not.i.i.i = icmp eq i64 %indvars.iv.next368.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond371.not.i.i.i, label %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !140

._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next373.i.i.i = add nuw nsw i64 %indvars.iv372.i.i.i, 1 ; 2 uses
  %exitcond376.not.i.i.i = icmp eq i64 %indvars.iv.next373.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond376.not.i.i.i, label %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, label %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !141

._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next378.i.i.i = add nuw nsw i64 %indvars.iv377.i.i.i, 1 ; 2 uses
  %exitcond381.not.i.i.i = icmp eq i64 %indvars.iv.next378.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond381.not.i.i.i, label %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i, label %.preheader10.us.us.us.us.us.us.i.i.i, !llvm.loop !142

._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i: ; preds = %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next383.i.i.i = add nuw nsw i64 %indvars.iv382.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next383.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond386.not.i.i.i, label %.loopexit.i.i.i, label %.preheader14.us.us.i.i.i, !llvm.loop !143

bb.d:                                             ; preds = %.preheader19.i.i.i
  %i.iu = getelementptr [4 x i8], ptr %i.eu, i64 %i.eq
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader15.us.us.us.us.i.preheader.i.i

.preheader15.us.us.us.us.i.preheader.i.i:         ; preds = %bb.d
  %i.iv = add i64 %i.bp, %i.eq
  %i.iw = shl i64 %i.iv, 2
  %i.ix = shl i64 %i.eo, 2
  %i.iy = shl i64 %i.ee, 2
  %i.iz = shl i64 %i.dr, 2
  %i.ja = shl i64 %i.de, 2
  %i.jb = getelementptr i8, ptr %i.eu, i64 %i.iw
  br label %.preheader15.us.us.us.us.i.i.i

.preheader15.us.us.us.us.i.i.i:                   ; preds = %.preheader15.us.us.us.us.i.preheader.i.i, %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i
  %indvars.iv354.i.i.i = phi i64 [ %indvars.iv.next355.i.i.i, %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ 0, %.preheader15.us.us.us.us.i.preheader.i.i ] ; 3 uses
  %.016172.us.us.us.us.i.i.i = phi ptr [ %i.kq, %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ %3, %.preheader15.us.us.us.us.i.preheader.i.i ]
  %i.jc = mul i64 %i.ix, %indvars.iv354.i.i.i
  %i.jd = mul i64 %indvars.iv354.i.i.i, %i.eo
  %i.je = getelementptr [4 x i8], ptr %i.iu, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.jb, i64 %i.jc
  br label %.preheader11.us.us.us.us.us.us.us.us.i.i.i

.preheader11.us.us.us.us.us.us.us.us.i.i.i:       ; preds = %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader15.us.us.us.us.i.i.i
  %indvars.iv349.i.i.i = phi i64 [ %indvars.iv.next350.i.i.i, %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader15.us.us.us.us.i.i.i ] ; 3 uses
  %.116253.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.kq, %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.016172.us.us.us.us.i.i.i, %.preheader15.us.us.us.us.i.i.i ]
  %i.jg = mul i64 %i.iy, %indvars.iv349.i.i.i
  %i.jh = mul i64 %indvars.iv349.i.i.i, %i.ee
  %i.ji = getelementptr [4 x i8], ptr %i.je, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.jf, i64 %i.jg
  br label %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader11.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv344.i.i.i = phi i64 [ %indvars.iv.next345.i.i.i, %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader11.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.216339.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.kq, %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.116253.us.us.us.us.us.us.us.us.i.i.i, %.preheader11.us.us.us.us.us.us.us.us.i.i.i ]
  %i.jk = mul i64 %i.iz, %indvars.iv344.i.i.i
  %i.jl = mul i64 %indvars.iv344.i.i.i, %i.dr
  %i.jm = getelementptr [4 x i8], ptr %i.ji, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jj, i64 %i.jk
  br label %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv339.i.i.i = phi i64 [ %indvars.iv.next340.i.i.i, %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.kq, %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.216339.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.jo = mul i64 %i.ja, %indvars.iv339.i.i.i
  %scevgep126 = getelementptr i8, ptr %i.jn, i64 %i.jo
  %i.jp = mul i64 %indvars.iv339.i.i.i, %i.de
  %i.jq = getelementptr [4 x i8], ptr %i.jm, i64 %i.jp ; 2 uses
  %scevgep125 = getelementptr i8, ptr %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.bn
  %bound0130 = icmp ult ptr %i.jq, %scevgep125
  %bound1131 = icmp ult ptr %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep126
  %found.conflict132 = and i1 %bound0130, %bound1131
  %i.jr = or i1 %found.conflict132, %stride.check133
  br label %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %.015526.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.ko, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ]
  %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.jq, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.kp, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.kq, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %brmerge168 = select i1 %min.iters.check128, i1 true, i1 %i.jr
  br i1 %brmerge168, label %scalar.ph127.preheader, label %vector.body136

vector.body136:                                   ; preds = %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index137 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load138 = load <4 x i32>, ptr %i.js, align 4, !tbaa !32, !alias.scope !187
  %wide.load139 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !32, !alias.scope !187
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index137 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store <4 x i32> %wide.load138, ptr %i.ju, align 4, !tbaa !32, !alias.scope !188, !noalias !187
  store <4 x i32> %wide.load139, ptr %i.jv, align 4, !tbaa !32, !alias.scope !188, !noalias !187
  %index.next140 = add nuw i64 %index137, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.jw, label %middle.block141, label %vector.body136, !llvm.loop !147

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %middle.block141
  %indvars.iv.i.i.i.ph = phi i64 [ %n.vec135, %middle.block141 ], [ 0, %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader, %scalar.ph127.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph127.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph127.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph127.prol ], [ 0, %scalar.ph127.preheader ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !32
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i.prol
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol, !llvm.loop !148

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph127.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph127.prol ]
  %i.ka = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph127

scalar.ph127:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph127 ], [ %indvars.iv.i.i.i.unr, %scalar.ph127.prol.loopexit ] ; 6 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !32
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !32
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !32
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !32
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !32
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph127, !llvm.loop !149

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %middle.block141
  %i.ko = add nuw nsw i32 %.015526.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.kp = getelementptr inbounds [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond338.not.i.i.i = icmp eq i32 %i.ko, %i.d
  br i1 %exitcond338.not.i.i.i, label %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !150

._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next340.i.i.i = add nuw nsw i64 %indvars.iv339.i.i.i, 1 ; 2 uses
  %exitcond343.not.i.i.i = icmp eq i64 %indvars.iv.next340.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond343.not.i.i.i, label %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !151

._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next345.i.i.i = add nuw nsw i64 %indvars.iv344.i.i.i, 1 ; 2 uses
  %exitcond348.not.i.i.i = icmp eq i64 %indvars.iv.next345.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond348.not.i.i.i, label %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !152

._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next350.i.i.i = add nuw nsw i64 %indvars.iv349.i.i.i, 1 ; 2 uses
  %exitcond353.not.i.i.i = icmp eq i64 %indvars.iv.next350.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond353.not.i.i.i, label %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i, label %.preheader11.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !153

._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i: ; preds = %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next355.i.i.i = add nuw nsw i64 %indvars.iv354.i.i.i, 1 ; 2 uses
  %exitcond358.not.i.i.i = icmp eq i64 %indvars.iv.next355.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond358.not.i.i.i, label %.loopexit.i.i.i, label %.preheader15.us.us.us.us.i.i.i, !llvm.loop !154

bb.e:                                             ; preds = %.preheader19.i.i.i
  %i.kr = getelementptr [8 x i8], ptr %i.eu, i64 %i.eq
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader12.i.preheader.i.i

.preheader12.i.preheader.i.i:                     ; preds = %bb.e
  %scevgep37 = getelementptr i8, ptr %i.eu, i64 %i.ax
  %i.ks = shl i64 %i.eq, 3
  %scevgep38 = getelementptr i8, ptr %scevgep37, i64 %i.ks
  br label %.preheader12.i.i.i

.preheader12.i.i.i:                               ; preds = %.preheader12.i.preheader.i.i, %._crit_edge.i.loopexit.i.i
  %indvars.iv438.i.i.i = phi i64 [ %indvars.iv.next439.i.i.i, %._crit_edge.i.loopexit.i.i ], [ 0, %.preheader12.i.preheader.i.i ] ; 3 uses
  %.0153293.i.i.i = phi ptr [ %i.mp, %._crit_edge.i.loopexit.i.i ], [ %3, %.preheader12.i.preheader.i.i ]
  %i.kt = shl nuw nsw i64 %indvars.iv438.i.i.i, 3
  br label %.preheader8.us.us.us.us.i.i.i

.preheader8.us.us.us.us.i.i.i:                    ; preds = %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i, %.preheader12.i.i.i
  %indvars.iv433.i.i.i = phi i64 [ %indvars.iv.next434.i.i.i, %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ 0, %.preheader12.i.i.i ] ; 3 uses
  %.1271.us.us.us.us.i.i.i = phi ptr [ %i.mp, %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ %.0153293.i.i.i, %.preheader12.i.i.i ]
  %i.ku = shl nuw nsw i64 %indvars.iv433.i.i.i, 3
  br label %.preheader4.us.us.us.us.us.us.us.i.i.i

.preheader4.us.us.us.us.us.us.us.i.i.i:           ; preds = %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i, %.preheader8.us.us.us.us.i.i.i
  %indvars.iv428.i.i.i = phi i64 [ %indvars.iv.next429.i.i.i, %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader8.us.us.us.us.i.i.i ] ; 3 uses
  %.2256.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.mp, %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i ], [ %.1271.us.us.us.us.i.i.i, %.preheader8.us.us.us.us.i.i.i ]
  %i.kv = shl nuw nsw i64 %indvars.iv428.i.i.i, 3
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader4.us.us.us.us.us.us.us.i.i.i
  %indvars.iv423.i.i.i = phi i64 [ %indvars.iv.next424.i.i.i, %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader4.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.3243.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.mp, %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.2256.us.us.us.us.us.us.us.i.i.i, %.preheader4.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.kw = shl nuw nsw i64 %indvars.iv423.i.i.i, 3
  %i.kx = load i64, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %i.ky = mul i64 %i.kx, %indvars.iv438.i.i.i
  %i.kz = getelementptr [8 x i8], ptr %i.kr, i64 %i.ky
  %i.la = load i64, ptr %i.ed, align 8, !tbaa !65 ; 2 uses
  %i.lb = mul i64 %i.la, %indvars.iv433.i.i.i
  %i.lc = getelementptr [8 x i8], ptr %i.kz, i64 %i.lb
  %i.ld = load i64, ptr %i.dq, align 8, !tbaa !65 ; 2 uses
  %i.le = mul i64 %i.ld, %indvars.iv428.i.i.i
  %i.lf = getelementptr [8 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load i64, ptr %i.dd, align 8, !tbaa !65 ; 2 uses
  %i.lh = mul i64 %i.lg, %indvars.iv423.i.i.i
  %i.li = getelementptr [8 x i8], ptr %i.lf, i64 %i.lh ; 2 uses
  %scevgep = getelementptr i8, ptr %.3243.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.au
  %i.lj = mul i64 %i.kt, %i.kx
  %i.lk = mul i64 %i.ku, %i.la
  %i.ll = mul i64 %i.kv, %i.ld
  %i.lm = mul i64 %i.lg, %i.kw
  %i.ln = getelementptr i8, ptr %scevgep38, i64 %i.lj
  %i.lo = getelementptr i8, ptr %i.ln, i64 %i.lk
  %i.lp = getelementptr i8, ptr %i.lo, i64 %i.ll
  %scevgep39 = getelementptr i8, ptr %i.lp, i64 %i.lm
  %bound0 = icmp ult ptr %i.li, %scevgep
  %bound1 = icmp ult ptr %.3243.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep39
  %found.conflict = and i1 %bound0, %bound1
  %i.lq = or i1 %found.conflict, %stride.check
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i:   ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i
  %.0147241.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.mn, %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i ]
  %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.li, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.mo, %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.3243.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.mp, %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %brmerge169 = select i1 %min.iters.check, i1 true, i1 %i.lq
  br i1 %brmerge169, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load = load <2 x i64>, ptr %i.lr, align 8, !tbaa !65, !alias.scope !189
  %wide.load40 = load <2 x i64>, ptr %i.ls, align 8, !tbaa !65, !alias.scope !189
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <2 x i64> %wide.load, ptr %i.lt, align 8, !tbaa !65, !alias.scope !190, !noalias !189
  store <2 x i64> %wide.load40, ptr %i.lu, align 8, !tbaa !65, !alias.scope !190, !noalias !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i, %middle.block
  %indvars.iv417.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod159.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv417.i.i.i.prol = phi i64 [ %indvars.iv.next418.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv417.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter160 = phi i64 [ %prol.iter160.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i.prol
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !65
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i.prol
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.prol = add nuw nsw i64 %indvars.iv417.i.i.i.prol, 1 ; 2 uses
  %prol.iter160.next = add i64 %prol.iter160, 1   ; 2 uses
  %prol.iter160.cmp.not = icmp eq i64 %prol.iter160.next, %xtraiter158
  br i1 %prol.iter160.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !159

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv417.i.i.i.unr = phi i64 [ %indvars.iv417.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next418.i.i.i.prol, %scalar.ph.prol ]
  %i.lz = sub nsw i64 %indvars.iv417.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ma = icmp ugt i64 %i.lz, -4
  br i1 %i.ma, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv417.i.i.i = phi i64 [ %indvars.iv.next418.i.i.i.3, %scalar.ph ], [ %indvars.iv417.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !65
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i = add nuw nsw i64 %indvars.iv417.i.i.i, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !65
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.1 = add nuw nsw i64 %indvars.iv417.i.i.i, 2 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.1
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !65
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.1
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.2 = add nuw nsw i64 %indvars.iv417.i.i.i, 3 ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.2
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !65
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.2
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.3 = add nuw nsw i64 %indvars.iv417.i.i.i, 4 ; 2 uses
  %exitcond421.not.i.i.i.3 = icmp eq i64 %indvars.iv.next418.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond421.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph, !llvm.loop !160

._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i:  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.mn = add nuw nsw i32 %.0147241.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond422.not.i.i.i = icmp eq i32 %i.mn, %i.d
  br i1 %exitcond422.not.i.i.i, label %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !161

._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next424.i.i.i = add nuw nsw i64 %indvars.iv423.i.i.i, 1 ; 2 uses
  %exitcond427.not.i.i.i = icmp eq i64 %indvars.iv.next424.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond427.not.i.i.i, label %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !162

._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next429.i.i.i = add nuw nsw i64 %indvars.iv428.i.i.i, 1 ; 2 uses
  %exitcond432.not.i.i.i = icmp eq i64 %indvars.iv.next429.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond432.not.i.i.i, label %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i, label %.preheader4.us.us.us.us.us.us.us.i.i.i, !llvm.loop !163

._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next434.i.i.i = add nuw nsw i64 %indvars.iv433.i.i.i, 1 ; 2 uses
  %exitcond437.not.i.i.i = icmp eq i64 %indvars.iv.next434.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond437.not.i.i.i, label %._crit_edge.i.loopexit.i.i, label %.preheader8.us.us.us.us.i.i.i, !llvm.loop !164

._crit_edge.i.loopexit.i.i:                       ; preds = %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i
  %indvars.iv.next439.i.i.i = add nuw nsw i64 %indvars.iv438.i.i.i, 1 ; 2 uses
  %exitcond442.not.i.i.i = icmp eq i64 %indvars.iv.next439.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond442.not.i.i.i, label %.loopexit.i.i.i, label %.preheader12.i.i.i, !llvm.loop !165

.loopexit.i.i.i:                                  ; preds = %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i, %._crit_edge.i.loopexit.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.mq = add nsw i64 %.0193295.i.i.i, 1          ; 2 uses
  %exitcond443.not.i.i.i = icmp eq i64 %i.mq, %i.u
  br i1 %exitcond443.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL4tileERKNS0_3MatEPKiRS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %.preheader19.i.i.i, !llvm.loop !166

"_ZSt10__invoke_rIvRZN2cv3dnnL4tileERKNS0_3MatEPKiRS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %.loopexit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL4tileERKNS0_3MatEPKiRS6_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL4tileERKNS_3MatEPKiRS1_E3$_0", ptr %0, align 8, !tbaa !192
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !80
  store ptr %.val, ptr %0, align 8, !tbaa !80
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !83
  store ptr %i.a, ptr %0, align 8, !tbaa !80
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !80 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #19
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.smin.i64
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!16 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !15, i64 0, !7, i64 8}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !6, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!24 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!25 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!26 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !25, i64 4, !7, i64 8, !6, i64 12}
!27 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!28 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !23, i64 56, !24, i64 64, !26, i64 72, !27, i64 128}
!29 = !{!28, !7, i64 0}
!30 = !{!28, !7, i64 4}
!31 = !{!26, !7, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !36, i64 0}
!40 = !{!"p1 _ZTSN2cv4UMatE", !12, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN2cv4UMatESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 0}
!44 = !{!16, !7, i64 8}
!45 = !{!"p1 _ZTSN2cv8MatShapeE", !12, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 8}
!48 = !{!46, !45, i64 0}
!49 = !{!"_ZTSN2cv9AlgorithmE"}
!50 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !37, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !51, i64 0}
!53 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !12, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !56, i64 0}
!58 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !49, i64 0, !52, i64 8, !57, i64 32, !57, i64 56, !12, i64 80, !20, i64 88, !20, i64 120, !7, i64 152}
!59 = !{!58, !12, i64 80}
!60 = !{!54, !53, i64 0}
!61 = !{!"p1 int", !12, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!62, !61, i64 0}
!65 = !{!19, !19, i64 0}
!66 = !{!28, !17, i64 24}
!67 = !{}
!68 = !{!17, !17, i64 0}
!69 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!70 = !{!69, !7, i64 0}
!71 = !{!69, !7, i64 4}
!72 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!73 = !{!72, !12, i64 16}
!74 = !{!61, !61, i64 0}
!75 = !{!"p1 long", !12, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"any p2 pointer", !12, i64 0}
!78 = !{!"p2 omnipotent char", !77, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!12, !12, i64 0}
!81 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !72, i64 0, !12, i64 24}
!82 = !{!81, !12, i64 24}
!83 = !{i64 0, i64 8, !74, i64 8, i64 8, !76, i64 16, i64 8, !76, i64 24, i64 8, !74, i64 32, i64 8, !74, i64 40, i64 8, !76, i64 48, i64 8, !79, i64 56, i64 8, !79}
!84 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!85 = !{!46, !45, i64 16}
!86 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!87 = !{!"p1 _ZTSN2cv3dnn14Tile2LayerImplE", !12, i64 0}
!88 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn14Tile2LayerImplELN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0, !87, i64 16}
!89 = !{!88, !87, i64 16}
!90 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060510Tile2LayerE", !12, i64 0}
!91 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060510Tile2LayerELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !14, i64 8}
!92 = !{!91, !90, i64 0}
!93 = distinct !{!93, i1 true, !"_ZNK2cv3dnn14Tile2LayerImpl11getOutShapeERKNS_8MatShapeEPKi"}
!94 = distinct !{!94, !93, !"_ZNK2cv3dnn14Tile2LayerImpl11getOutShapeERKNS_8MatShapeEPKi: argument 0"}
!95 = distinct !{!95, !33, !34, !35}
!96 = distinct !{!96, !33, !35, !34}
!97 = distinct !{!97, !33}
!98 = !{!16, !15, i64 0}
!99 = !{!94}
!100 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!101 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !12, i64 8, !100, i64 16}
!102 = !{!101, !12, i64 8}
!103 = !{!101, !7, i64 0}
!104 = distinct !{!104, i1 true, !"_ZNK2cv3dnn14Tile2LayerImpl11getOutShapeERKNS_8MatShapeEPKi"}
!105 = distinct !{!105, !104, !"_ZNK2cv3dnn14Tile2LayerImpl11getOutShapeERKNS_8MatShapeEPKi: argument 0"}
!106 = distinct !{!106, !33, !34, !35}
!107 = distinct !{!107, !33, !35, !34}
!108 = !{!105}
!109 = !{!54, !53, i64 8}
!110 = !{!18, !17, i64 0}
!111 = !{!20, !19, i64 8}
!112 = distinct !{!112, !33}
!113 = !{!"bool", !6, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{i8 0, i8 2}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = !{!37, !36, i64 16}
!119 = distinct !{null}
!120 = distinct !{!120, i1 false, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !33, !34, !35}
!124 = distinct !{!124, !33, !34, !35}
!125 = distinct !{!125, !181}
!126 = distinct !{!126, !33, !34}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = distinct !{!130, !33}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !33, !34, !35}
!136 = distinct !{!136, !33, !34, !35}
!137 = distinct !{!137, !181}
!138 = distinct !{!138, !33, !34}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, i1 false, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !33, !34, !35}
!148 = distinct !{!148, !181}
!149 = distinct !{!149, !33, !34}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, i1 false, !"LVerDomain"}
!156 = distinct !{!156, !155}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !33, !34, !35}
!159 = distinct !{!159, !181}
!160 = distinct !{!160, !33, !34}
!161 = distinct !{!161, !33}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33}
!167 = !{!"_ZTSZN2cv3dnnL4tileERKNS_3MatEPKiRS1_E3$_0", !61, i64 0, !75, i64 8, !75, i64 16, !61, i64 24, !61, i64 32, !75, i64 40, !78, i64 48, !78, i64 56}
!168 = !{!167, !61, i64 0}
!169 = !{i64 4}
!170 = !{!167, !75, i64 8}
!171 = !{i64 8}
!172 = !{!167, !75, i64 16}
!173 = !{!167, !61, i64 24}
!174 = !{!167, !61, i64 32}
!175 = !{!167, !75, i64 40}
!176 = !{!167, !78, i64 48}
!177 = !{!167, !78, i64 56}
!178 = !{!121}
!179 = !{!122}
!180 = !{!"branch_weights", i32 4, i32 28}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = !{!"short", !6, i64 0}
!183 = !{!182, !182, i64 0}
!184 = !{!133}
!185 = !{!134}
!186 = !{!"branch_weights", i32 4, i32 12}
!187 = !{!145}
!188 = !{!146}
!189 = !{!156}
!190 = !{!157}
!191 = !{!"p1 _ZTSSt9type_info", !12, i64 0}
!192 = !{!191, !191, i64 0}
!193 = distinct !{!193, !33}
!194 = distinct !{!194, !33}
!195 = !{!41, !40, i64 16}
!196 = distinct !{!196, !33}
!197 = !{!45, !45, i64 0}
!198 = distinct !{!198, !33, !34, !35}
!199 = distinct !{!199, !33, !35, !34}
!200 = distinct !{!200, !33, !34, !35}
!201 = distinct !{!201, !33, !35, !34}
!202 = distinct !{!202, !33, !34, !35}
!203 = distinct !{!203, !33, !35, !34}
!204 = distinct !{!204, !33, !34, !35}
!205 = distinct !{!205, !33, !35, !34}
!206 = !{!62, !61, i64 16}
!207 = !{!14, !13, i64 0}
!208 = !{!86, !7, i64 8}
!209 = !{!86, !7, i64 12}
end_hunk_1
