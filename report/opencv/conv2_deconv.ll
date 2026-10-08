Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_deconv?download=true
inline.NumInlined: 138
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS3_PvRKNS1_9ConvStateES3_PKfS9_:bb.a
; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !79
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !79
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !80
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !44 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20, !inline_history !44
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #16, !inline_history !44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #17
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !81
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v20260605L14deconvBlock32fEPKvS8_PvRKNS6_9ConvStateES8_PKfSE_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #13 align 2 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !27   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.b, align 4            ; 2 uses
  %i.c = icmp slt i32 %.val2, %.val3
  br i1 %i.c, label %.lr.ph58.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS4_PvRKNS2_9ConvStateES4_PKfSA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph58.i.i.i:                                   ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 21 uses
  %i.d = load ptr, ptr %.val, align 8, !tbaa !105, !nonnull !106, !align !107
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108, !nonnull !106, !align !107
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 24 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109, !nonnull !106, !align !107
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !106, !align !110
  %i.n = sext i32 %i.e to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !106, !align !107
  %i.q = sext i32 %i.h to i64                     ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !106, !align !110
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !106, !align !107
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !106, !align !107
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !106, !align !110
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !106, !align !107
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !106, !align !107
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.an = shl nuw nsw i64 %i.q, 2
  %wide.trip.count90.i.i.i = zext i32 %i.h to i64 ; 2 uses
  %i.ao = shl nsw i64 %i.q, 2
  %i.ap = shl nsw i64 %i.q, 2
  %i.aq = shl nsw i64 %i.q, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %xtraiter114 = and i64 %wide.trip.count90.i.i.i, 3 ; 3 uses
  %i.at = icmp ult i32 %i.h, 4
  %unroll_iter119 = and i64 %wide.trip.count90.i.i.i, 4294967292
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = icmp ne i64 %xtraiter114, 0
  br label %bb.b

bb.b:                                             ; preds = %.loopexit17.i.i.i, %.lr.ph58.i.i.i
  %.011556.i.i.i = phi i32 [ %.val2, %.lr.ph58.i.i.i ], [ %i.ms, %.loopexit17.i.i.i ] ; 3 uses
  %i.au = srem i32 %.011556.i.i.i, %i.e           ; 2 uses
  %i.av = sdiv i32 %.011556.i.i.i, %i.e
  %i.aw = mul nsw i32 %i.au, %i.h                 ; 3 uses
  %i.ax = sub nsw i32 %i.k, %i.aw                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.h) ; 7 uses
  %i.ay = icmp slt i32 %.sroa.speculated.i.i.i, 1
  br i1 %i.ay, label %.loopexit17.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !9   ; 3 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 3 uses
  %i.bb = sext i32 %i.av to i64                   ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %i.n
  %i.bd = sext i32 %i.au to i64
  %i.be = add i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = load i32, ptr %i.p, align 4, !tbaa !18  ; 5 uses
  %i.bg = sext i32 %i.bf to i64                   ; 5 uses
  %i.bh = mul i64 %i.be, %i.bg
  %i.bi = mul i64 %i.bh, %i.q
  %i.bj = getelementptr [4 x i8], ptr %i.az, i64 %i.bi ; 13 uses
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.bl = load i32, ptr %i.u, align 4, !tbaa !18  ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i32, ptr %i.w, align 4, !tbaa !18
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = mul nsw i64 %i.bb, %i.q
  %i.bq = mul i64 %i.bp, %i.bm
  %i.br = mul i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.br
  %i.bt = icmp sgt i32 %i.bf, 0
  br i1 %i.bt, label %.lr.ph55.i.i.i, label %.loopexit17.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.c
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !25  ; 3 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null           ; 3 uses
  %i.bw = icmp slt i32 %i.ax, %i.h                ; 4 uses
  %i.bx = load i32, ptr %i.aa, align 4, !tbaa !18 ; 8 uses
  %i.by = icmp sgt i32 %i.bx, 0                   ; 3 uses
  %i.bz = load i32, ptr %i.ad, align 4, !tbaa !18 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %i.cb = sext i32 %i.bz to i64
  %i.cc = sext i32 %i.aw to i64                   ; 4 uses
  %2 = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 20 uses
  %3 = shl nuw nsw i64 %2, 2                      ; 13 uses
  %4 = mul i64 %i.an, %i.be
  %5 = mul i64 %4, %i.bg
  %6 = getelementptr i8, ptr %i.az, i64 %5
  %scevgep72.i.i.i = getelementptr i8, ptr %6, i64 %3 ; 8 uses
  %i.cd = xor i32 %.sroa.speculated.i.i.i, -1
  %i.ce = add i32 %i.h, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = add nuw nsw i64 %i.cg, 4                ; 8 uses
  %i.ci = sext i32 %i.bx to i64                   ; 7 uses
  %wide.trip.count112.i.i.i = zext nneg i32 %i.bf to i64 ; 7 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.bu, i64 %i.cc ; 18 uses
  %wide.trip.count107.i.i.i = zext nneg i32 %i.bz to i64
  %wide.trip.count85.i.i.i = zext nneg i32 %i.bx to i64
  %invariant.op.i.i = sub nsw i64 2, %i.ci        ; 2 uses
  br i1 %i.ca, label %.lr.ph55.i.split.us.i.i.preheader, label %.lr.ph55.i.split.i.i

.lr.ph55.i.split.us.i.i.preheader:                ; preds = %.lr.ph55.i.i.i
  %i.cj = mul i64 %i.ao, %i.be
  %i.ck = mul i64 %i.cj, %i.bg
  %i.cl = add i64 %i.ck, %i.ba
  %i.cm = shl nsw i64 %i.cc, 2
  %i.cn = add i64 %i.cm, %i.bv
  %i.co = sub i64 %i.cl, %i.cn
  %min.iters.check41 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %invariant.op128 = add i64 %i.co, -1
  %n.vec43 = and i64 %2, 2147483640               ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec43, %2
  %xtraiter106 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  %i.cp = and i32 %i.bx, 1
  %lcmp.mod112.not = icmp eq i32 %i.cp, 0
  %indvars.iv.next78.i.us.i.i.prol = add nsw i64 %i.ci, -1
  %i.cq = icmp eq i32 %i.bx, 1
  %invariant.op126 = sub i64 1, %i.ci
  %invariant.op127 = sub i32 3, %i.bx
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %n.vec = and i64 %2, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %.lr.ph55.i.split.us.i.i

.lr.ph55.i.split.us.i.i:                          ; preds = %.lr.ph55.i.split.us.i.i.preheader, %._crit_edge52.i.loopexit.us.i.i
  %indvars.iv109.i.us.i.i = phi i64 [ %indvars.iv.next110.i.us.i.i, %._crit_edge52.i.loopexit.us.i.i ], [ 0, %.lr.ph55.i.split.us.i.i.preheader ] ; 3 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv109.i.us.i.i to i32 ; 4 uses
  %i.cs = mul i32 %i.h, %i.cr
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = shl nsw i64 %i.ct, 2
  %scevgep73.i.us.i.i = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.cu
  %i.cv = getelementptr [4 x i8], ptr %i.bj, i64 %i.ct ; 10 uses
  br i1 %.not.i.i.i, label %.lr.ph23.preheader.i.us.i.i, label %.lr.ph.i.us.i.i.preheader

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph55.i.split.us.i.i
  %7 = trunc i64 %indvars.iv109.i.us.i.i to i32
  %8 = mul i32 %i.h, %7
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %.reass129 = add i64 %10, %invariant.op128
  %diff.check = icmp ult i64 %.reass129, 31
  %or.cond = select i1 %min.iters.check41, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.us.i.i.preheader84, label %vector.body44

vector.body44:                                    ; preds = %.lr.ph.i.us.i.i.preheader, %vector.body44
  %index45 = phi i64 [ %index.next48, %vector.body44 ], [ 0, %.lr.ph.i.us.i.i.preheader ] ; 3 uses
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index45 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %wide.load46 = load <4 x float>, ptr %i.cw, align 4, !tbaa !112
  %wide.load47 = load <4 x float>, ptr %i.cx, align 4, !tbaa !112
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index45 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x float> %wide.load46, ptr %i.cy, align 4, !tbaa !112
  store <4 x float> %wide.load47, ptr %i.cz, align 4, !tbaa !112
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.da, label %middle.block49, label %vector.body44, !llvm.loop !82

middle.block49:                                   ; preds = %vector.body44
  br i1 %cmp.n50, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i.preheader84

.lr.ph.i.us.i.i.preheader84:                      ; preds = %.lr.ph.i.us.i.i.preheader, %middle.block49
  %indvars.iv.i.us.i.i.ph = phi i64 [ 0, %.lr.ph.i.us.i.i.preheader ], [ %n.vec43, %middle.block49 ] ; 3 uses
  br i1 %lcmp.mod107.not, label %.lr.ph.i.us.i.i.prol.loopexit, label %.lr.ph.i.us.i.i.prol

.lr.ph.i.us.i.i.prol:                             ; preds = %.lr.ph.i.us.i.i.preheader84, %.lr.ph.i.us.i.i.prol
  %indvars.iv.i.us.i.i.prol = phi i64 [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.us.i.i.prol ], [ %indvars.iv.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader84 ] ; 3 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.us.i.i.prol ], [ 0, %.lr.ph.i.us.i.i.preheader84 ]
  %gep.i.us.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us.i.i.prol
  %i.db = load float, ptr %gep.i.us.i.i.prol, align 4, !tbaa !112
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.us.i.i.prol
  store float %i.db, ptr %i.dc, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.i.prol, 1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.us.i.i.prol.loopexit, label %.lr.ph.i.us.i.i.prol, !llvm.loop !83

.lr.ph.i.us.i.i.prol.loopexit:                    ; preds = %.lr.ph.i.us.i.i.prol, %.lr.ph.i.us.i.i.preheader84
  %indvars.iv.i.us.i.i.unr = phi i64 [ %indvars.iv.i.us.i.i.ph, %.lr.ph.i.us.i.i.preheader84 ], [ %indvars.iv.next.i.us.i.i.prol, %.lr.ph.i.us.i.i.prol ]
  %i.dd = sub nsw i64 %indvars.iv.i.us.i.i.ph, %2
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.prol.loopexit, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.3, %.lr.ph.i.us.i.i ], [ %indvars.iv.i.us.i.i.unr, %.lr.ph.i.us.i.i.prol.loopexit ] ; 6 uses
  %gep.i.us.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us.i.i
  %i.df = load float, ptr %gep.i.us.i.i, align 4, !tbaa !112
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.us.i.i
  store float %i.df, ptr %i.dg, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %gep.i.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i
  %i.dh = load float, ptr %gep.i.us.i.i.1, align 4, !tbaa !112
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.us.i.i
  store float %i.dh, ptr %i.di, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.i.i, 2 ; 2 uses
  %gep.i.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i.1
  %i.dj = load float, ptr %gep.i.us.i.i.2, align 4, !tbaa !112
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.us.i.i.1
  store float %i.dj, ptr %i.dk, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.2 = add nuw nsw i64 %indvars.iv.i.us.i.i, 3 ; 2 uses
  %gep.i.us.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us.i.i.2
  %i.dl = load float, ptr %gep.i.us.i.i.3, align 4, !tbaa !112
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.us.i.i.2
  store float %i.dl, ptr %i.dm, align 4, !tbaa !112
  %indvars.iv.next.i.us.i.i.3 = add nuw nsw i64 %indvars.iv.i.us.i.i, 4 ; 2 uses
  %exitcond.not.i.us.i.i.3 = icmp eq i64 %indvars.iv.next.i.us.i.i.3, %2
  br i1 %exitcond.not.i.us.i.i.3, label %.loopexit.i.us.i.i, label %.lr.ph.i.us.i.i, !llvm.loop !84

.lr.ph23.preheader.i.us.i.i:                      ; preds = %.lr.ph55.i.split.us.i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cv, i8 0, i64 %3, i1 false), !tbaa !112
  br label %.loopexit.i.us.i.i

.loopexit.i.us.i.i:                               ; preds = %.lr.ph.i.us.i.i.prol.loopexit, %.lr.ph.i.us.i.i, %middle.block49, %.lr.ph23.preheader.i.us.i.i
  br i1 %i.bw, label %.lr.ph25.preheader.i.us.i.i, label %._crit_edge.i.us.i.i

.lr.ph25.preheader.i.us.i.i:                      ; preds = %.loopexit.i.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us.i.i, i8 0, i64 %i.ch, i1 false), !tbaa !112
  br label %._crit_edge.i.us.i.i

._crit_edge.i.us.i.i:                             ; preds = %.lr.ph25.preheader.i.us.i.i, %.loopexit.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %i.by, label %.lr.ph29.i.us.i.i, label %.preheader.i.us.i.i.preheader

.lr.ph29.i.us.i.i:                                ; preds = %._crit_edge.i.us.i.i
  %i.dn = load ptr, ptr %i.ab, align 8, !tbaa !114, !nonnull !106, !align !107 ; 3 uses
  br i1 %lcmp.mod112.not, label %.prol.loopexit110, label %.prol.loopexit110.unr-lcssa

.prol.loopexit110.unr-lcssa:                      ; preds = %.lr.ph29.i.us.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !18 ; 2 uses
  %i.dq = srem i32 %i.cr, %i.dp
  store i32 %i.dq, ptr %i.as, align 4, !tbaa !18
  %i.dr = sdiv i32 %i.cr, %i.dp
  br label %.prol.loopexit110

.prol.loopexit110:                                ; preds = %.prol.loopexit110.unr-lcssa, %.lr.ph29.i.us.i.i
  %indvars.iv77.i.us.i.i.unr = phi i64 [ %i.ci, %.lr.ph29.i.us.i.i ], [ %indvars.iv.next78.i.us.i.i.prol, %.prol.loopexit110.unr-lcssa ]
  %.011726.i.us.i.i.unr = phi i32 [ %i.cr, %.lr.ph29.i.us.i.i ], [ %i.dr, %.prol.loopexit110.unr-lcssa ]
  br i1 %i.cq, label %.preheader.i.us.i.i.preheader, label %.lr.ph29.i.us.i.i.new

.lr.ph29.i.us.i.i.new:                            ; preds = %.prol.loopexit110, %.lr.ph29.i.us.i.i.new
  %indvars.iv77.i.us.i.i.a = phi i64 [ %indvars.iv.next78.i.us.i.i.1, %.lr.ph29.i.us.i.i.new ], [ %indvars.iv77.i.us.i.i.unr, %.prol.loopexit110 ] ; 4 uses
  %.011726.i.us.i.i = phi i32 [ %i.eb, %.lr.ph29.i.us.i.i.new ], [ %.011726.i.us.i.i.unr, %.prol.loopexit110 ] ; 2 uses
  %.reass.i.reass.us.i.i = add i64 %indvars.iv77.i.us.i.i.a, %invariant.op.i.i ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.reass.i.reass.us.i.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !18 ; 2 uses
  %i.du = srem i32 %.011726.i.us.i.i, %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us.i.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !18
  %i.dw = sdiv i32 %.011726.i.us.i.i, %i.dt       ; 2 uses
  %indvars.iv.next78.i.us.i.i.1 = add nsw i64 %indvars.iv77.i.us.i.i.a, -2
  %.reass.i.reass.us.i.i.1.reass = add i64 %indvars.iv77.i.us.i.i.a, %invariant.op126 ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.reass.i.reass.us.i.i.1.reass
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !18 ; 2 uses
  %i.dz = srem i32 %i.dw, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us.i.i.1.reass
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !18
  %i.eb = sdiv i32 %i.dw, %i.dy
  %i.ec = icmp sgt i64 %indvars.iv77.i.us.i.i.a, 2
  br i1 %i.ec, label %.lr.ph29.i.us.i.i.new, label %.preheader.i.us.i.i.preheader, !llvm.loop !85

.preheader.i.us.i.i.preheader:                    ; preds = %.prol.loopexit110, %.lr.ph29.i.us.i.i.new, %._crit_edge.i.us.i.i
  br label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %.preheader.i.us.i.i.preheader, %.thread5.i.us.i.i
  %indvars.iv104.i.us.i.i = phi i64 [ %indvars.iv.next105.i.us.i.i, %.thread5.i.us.i.i ], [ 0, %.preheader.i.us.i.i.preheader ] ; 3 uses
  br i1 %i.by, label %.lr.ph33.i.us.i.i, label %.lr.ph49.i.us.i.i

.lr.ph33.i.us.i.i:                                ; preds = %.preheader.i.us.i.i
  %i.ed = load ptr, ptr %i.ae, align 8, !tbaa !115, !nonnull !106, !align !110 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.af, align 8, !tbaa !116, !nonnull !106, !align !110
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !24
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %i.eg, i64 %indvars.iv104.i.us.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph33.i.us.i.i
  %indvars.iv81.i.us.i.i = phi i64 [ 0, %.lr.ph33.i.us.i.i ], [ %indvars.iv.next82.i.us.i.i, %bb.g ] ; 2 uses
  %.010631.i.us.i.i = phi i32 [ 0, %.lr.ph33.i.us.i.i ], [ %i.fg, %bb.g ]
  %i.ek = trunc i64 %indvars.iv81.i.us.i.i to i32
  %.reass126.i.us.reass.i.reass.i.reass.reass = add i32 %i.ek, %invariant.op127
  %i.el = sext i32 %.reass126.i.us.reass.i.reass.i.reass.reass to i64 ; 6 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !18
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.el
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !18
  %i.eq = add nsw i32 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.el
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.el
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !18
  %i.ev = mul nsw i32 %i.eu, %i.es
  %i.ew = sub i32 %i.eq, %i.ev                    ; 3 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.thread5.i.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !18 ; 2 uses
  %i.fa = srem i32 %i.ew, %i.ez
  %i.fb = sdiv i32 %i.ew, %i.ez                   ; 2 uses
  %.not131.i.us.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not131.i.us.i.i, label %bb.f, label %.thread5.i.us.i.i

bb.f:                                             ; preds = %bb.e
  %i.fc = load ptr, ptr %i.ag, align 8, !tbaa !117, !nonnull !106, !align !107
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.el
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !18 ; 2 uses
  %.not132.i.us.i.i = icmp slt i32 %i.fb, %i.fe
  br i1 %.not132.i.us.i.i, label %bb.g, label %.thread5.i.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.ff = mul nsw i32 %i.fe, %.010631.i.us.i.i
  %i.fg = add nsw i32 %i.ff, %i.fb                ; 2 uses
  %indvars.iv.next82.i.us.i.i = add nuw nsw i64 %indvars.iv81.i.us.i.i, 1 ; 2 uses
  %exitcond86.not.i.us.i.i = icmp eq i64 %indvars.iv.next82.i.us.i.i, %wide.trip.count85.i.i.i
  br i1 %exitcond86.not.i.us.i.i, label %.critedge.preheader.loopexit.loopexit.i.us.i.i, label %bb.d, !llvm.loop !86

.critedge.preheader.loopexit.loopexit.i.us.i.i:   ; preds = %bb.g
  %i.fh = sext i32 %i.fg to i64
  br label %.lr.ph49.i.us.i.i

.lr.ph49.i.us.i.i:                                ; preds = %.critedge.preheader.loopexit.loopexit.i.us.i.i, %.preheader.i.us.i.i
  %.0106.lcssa.i.us.i.i = phi i64 [ 0, %.preheader.i.us.i.i ], [ %i.fh, %.critedge.preheader.loopexit.loopexit.i.us.i.i ]
  %i.fi = load ptr, ptr %i.ah, align 8, !tbaa !118, !nonnull !106, !align !107
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !18 ; 3 uses
  %i.fk = load ptr, ptr %i.ai, align 8, !tbaa !119, !nonnull !106, !align !107
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !18 ; 3 uses
  %i.fm = add nsw i32 %i.fl, -1
  %i.fn = load ptr, ptr %i.aj, align 8, !tbaa !120, !nonnull !106, !align !110
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !25
  %i.fp = load ptr, ptr %i.ak, align 8, !tbaa !121, !nonnull !106, !align !107
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !18
  %i.fr = load ptr, ptr %i.al, align 8, !tbaa !122, !nonnull !106, !align !107
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18 ; 2 uses
  %i.ft = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fu = sext i32 %i.fl to i64                   ; 6 uses
  %i.fv = mul nsw i64 %i.fu, %i.q                 ; 2 uses
  %i.fw = mul i64 %i.fv, %i.ft
  %i.fx = load ptr, ptr %i.am, align 8, !tbaa !123, !nonnull !106, !align !107
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !18
  %i.fz = icmp sgt i32 %i.fs, 0
  br i1 %i.fz, label %.lr.ph43.split.us.preheader.i.us.us.i.i, label %.thread8.i.us.i.i.preheader

.thread8.i.us.i.i.preheader:                      ; preds = %.lr.ph49.i.us.i.i
  br i1 %min.iters.check, label %.thread8.i.us.i.i.preheader81, label %vector.body

vector.body:                                      ; preds = %.thread8.i.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.thread8.i.us.i.i.preheader ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ga, align 4, !tbaa !112
  %wide.load39 = load <4 x float>, ptr %i.gb, align 4, !tbaa !112
  %i.gc = fadd <4 x float> %wide.load, zeroinitializer
  %i.gd = fadd <4 x float> %wide.load39, zeroinitializer
  store <4 x float> %i.gc, ptr %i.ga, align 4, !tbaa !112
  store <4 x float> %i.gd, ptr %i.gb, align 4, !tbaa !112
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.thread5.i.us.i.i, label %.thread8.i.us.i.i.preheader81

.thread8.i.us.i.i.preheader81:                    ; preds = %.thread8.i.us.i.i.preheader, %middle.block
  %indvars.iv99.i.us5.i.i.ph = phi i64 [ 0, %.thread8.i.us.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.thread8.i.us.i.i

.thread8.i.us.i.i:                                ; preds = %.thread8.i.us.i.i.preheader81, %.thread8.i.us.i.i
  %indvars.iv99.i.us5.i.i = phi i64 [ %indvars.iv.next100.i.us6.i.i, %.thread8.i.us.i.i ], [ %indvars.iv99.i.us5.i.i.ph, %.thread8.i.us.i.i.preheader81 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv99.i.us5.i.i ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !112
  %i.gh = fadd float %i.gg, 0.000000e+00
  store float %i.gh, ptr %i.gf, align 4, !tbaa !112
  %indvars.iv.next100.i.us6.i.i = add nuw nsw i64 %indvars.iv99.i.us5.i.i, 1 ; 2 uses
  %exitcond103.not.i.us7.i.i = icmp eq i64 %indvars.iv.next100.i.us6.i.i, %2
  br i1 %exitcond103.not.i.us7.i.i, label %.thread5.i.us.i.i, label %.thread8.i.us.i.i, !llvm.loop !88

.lr.ph43.split.us.preheader.i.us.us.i.i:          ; preds = %.lr.ph49.i.us.i.i, %.thread8.i.loopexit.us.us.i.i
  %indvars.iv99.i.us.us.i.i = phi i64 [ %indvars.iv.next100.i.us.us.i.i, %.thread8.i.loopexit.us.us.i.i ], [ 0, %.lr.ph49.i.us.i.i ] ; 3 uses
  %i.gi = trunc i64 %indvars.iv99.i.us.us.i.i to i32
  %i.gj = add i32 %i.aw, %i.gi                    ; 2 uses
  %i.gk = sdiv i32 %i.gj, %i.fj                   ; 3 uses
  %i.gl = mul nsw i32 %i.gk, %i.fq
  %i.gm = mul nsw i32 %i.gk, %i.fj                ; 0 uses
  %.recomposed = srem i32 %i.gj, %i.fj            ; 2 uses
  %i.gn = sdiv i32 %.recomposed, %i.fl
  %i.go = add nsw i32 %i.gl, %i.gn
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul nsw i64 %i.gp, %i.cb
  %i.gr = add nsw i64 %i.gq, %indvars.iv104.i.us.i.i
  %i.gs = mul i64 %i.fw, %i.gr
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.gs
  %i.gu = mul nsw i32 %i.gk, %i.fy
  %i.gv = sdiv i32 %i.gu, %i.h                    ; 3 uses
  %i.gw = and i32 %.recomposed, %i.fm
  %i.gx = sext i32 %i.gw to i64
  %i.gy = sext i32 %i.gv to i64
  %smax.i.us.us.i.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.gv)
  %i.gz = sub i32 %smax.i.us.us.i.i, %i.gv
  %wide.trip.count95.i.us.us.i.i = zext i32 %i.gz to i64
  %invariant.gep129.i.us.us.i.i = getelementptr [4 x i8], ptr %i.gt, i64 %i.gx
  br label %.lr.ph43.split.us.i.us.us.i.i

.lr.ph43.split.us.i.us.us.i.i:                    ; preds = %._crit_edge38.us.i.us.us.i.i, %.lr.ph43.split.us.preheader.i.us.us.i.i
  %indvars.iv92.i.us.us.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.us.us.i.i ], [ %indvars.iv.next93.i.us.us.i.i, %._crit_edge38.us.i.us.us.i.i ] ; 4 uses
  %.010340.us.i.us.us.i.i = phi float [ 0.000000e+00, %.lr.ph43.split.us.preheader.i.us.us.i.i ], [ %.lcssa90, %._crit_edge38.us.i.us.us.i.i ] ; 3 uses
  %exitcond96.not.i.us.us.i.i = icmp eq i64 %indvars.iv92.i.us.us.i.i, %wide.trip.count95.i.us.us.i.i
  br i1 %exitcond96.not.i.us.us.i.i, label %.thread8.i.loopexit.us.us.i.i, label %.lr.ph37.us.i.us.us.i.i

.lr.ph37.us.i.us.us.i.i:                          ; preds = %.lr.ph43.split.us.i.us.us.i.i
  %i.ha = add nsw i64 %indvars.iv92.i.us.us.i.i, %i.gy
  %i.hb = mul nsw i64 %i.ha, %i.bo
  %i.hc = add nsw i64 %i.hb, %.0106.lcssa.i.us.i.i
  %i.hd = mul nsw i64 %i.hc, %i.q
  %i.he = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.hd ; 5 uses
  %i.hf = mul i64 %indvars.iv92.i.us.us.i.i, %i.fv
  %gep130.i.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep129.i.us.us.i.i, i64 %i.hf ; 5 uses
  br i1 %i.at, label %.epil.preheader, label %.lr.ph37.us.i.us.us.i.i.new

.lr.ph37.us.i.us.us.i.i.new:                      ; preds = %.lr.ph37.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i.new
  %indvars.iv87.i.us.us.i.i = phi i64 [ %indvars.iv.next88.i.us.us.i.i.3, %.lr.ph37.us.i.us.us.i.i.new ], [ 0, %.lr.ph37.us.i.us.us.i.i ] ; 6 uses
  %.134.us.i.us.us.i.i = phi float [ %i.hz, %.lr.ph37.us.i.us.us.i.i.new ], [ %.010340.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i ]
  %niter120 = phi i64 [ %niter120.next.3, %.lr.ph37.us.i.us.us.i.i.new ], [ 0, %.lr.ph37.us.i.us.us.i.i ]
  %i.hg = mul nsw i64 %indvars.iv87.i.us.us.i.i, %i.fu
  %gep128.i.us.us.i.i = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.hg
  %i.hh = load float, ptr %gep128.i.us.us.i.i, align 4, !tbaa !112
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv87.i.us.us.i.i
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !112
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %.134.us.i.us.us.i.i)
  %indvars.iv.next88.i.us.us.i.i = or disjoint i64 %indvars.iv87.i.us.us.i.i, 1 ; 2 uses
  %i.hl = mul nsw i64 %indvars.iv.next88.i.us.us.i.i, %i.fu
  %gep128.i.us.us.i.i.1 = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.hl
  %i.hm = load float, ptr %gep128.i.us.us.i.i.1, align 4, !tbaa !112
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next88.i.us.us.i.i
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !112
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.ho, float %i.hk)
  %indvars.iv.next88.i.us.us.i.i.1 = or disjoint i64 %indvars.iv87.i.us.us.i.i, 2 ; 2 uses
  %i.hq = mul nsw i64 %indvars.iv.next88.i.us.us.i.i.1, %i.fu
  %gep128.i.us.us.i.i.2 = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.hq
  %i.hr = load float, ptr %gep128.i.us.us.i.i.2, align 4, !tbaa !112
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next88.i.us.us.i.i.1
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !112
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.ht, float %i.hp)
  %indvars.iv.next88.i.us.us.i.i.2 = or disjoint i64 %indvars.iv87.i.us.us.i.i, 3 ; 2 uses
  %i.hv = mul nsw i64 %indvars.iv.next88.i.us.us.i.i.2, %i.fu
  %gep128.i.us.us.i.i.3 = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.hv
  %i.hw = load float, ptr %gep128.i.us.us.i.i.3, align 4, !tbaa !112
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next88.i.us.us.i.i.2
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !112
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hy, float %i.hu) ; 3 uses
  %indvars.iv.next88.i.us.us.i.i.3 = add nuw nsw i64 %indvars.iv87.i.us.us.i.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %._crit_edge38.us.i.us.us.i.i.unr-lcssa, label %.lr.ph37.us.i.us.us.i.i.new, !llvm.loop !89

._crit_edge38.us.i.us.us.i.i.unr-lcssa:           ; preds = %.lr.ph37.us.i.us.us.i.i.new
  br i1 %lcmp.mod116.not, label %._crit_edge38.us.i.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge38.us.i.us.us.i.i.unr-lcssa, %.lr.ph37.us.i.us.us.i.i
  %indvars.iv87.i.us.us.i.i.epil.init = phi i64 [ 0, %.lr.ph37.us.i.us.us.i.i ], [ %indvars.iv.next88.i.us.us.i.i.3, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ]
  %.134.us.i.us.us.i.i.epil.init = phi float [ %.010340.us.i.us.us.i.i, %.lr.ph37.us.i.us.us.i.i ], [ %i.hz, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv87.i.us.us.i.i.epil = phi i64 [ %indvars.iv87.i.us.us.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next88.i.us.us.i.i.epil, %bb.h ] ; 3 uses
  %.134.us.i.us.us.i.i.epil = phi float [ %.134.us.i.us.us.i.i.epil.init, %.epil.preheader ], [ %i.ie, %bb.h ]
  %epil.iter115 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter115.next, %bb.h ]
  %i.ia = mul nsw i64 %indvars.iv87.i.us.us.i.i.epil, %i.fu
  %gep128.i.us.us.i.i.epil = getelementptr [4 x i8], ptr %gep130.i.us.us.i.i, i64 %i.ia
  %i.ib = load float, ptr %gep128.i.us.us.i.i.epil, align 4, !tbaa !112
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv87.i.us.us.i.i.epil
  %i.id = load float, ptr %i.ic, align 4, !tbaa !112
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.id, float %.134.us.i.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next88.i.us.us.i.i.epil = add nuw nsw i64 %indvars.iv87.i.us.us.i.i.epil, 1
  %epil.iter115.next = add i64 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i64 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %._crit_edge38.us.i.us.us.i.i, label %bb.h, !llvm.loop !90

._crit_edge38.us.i.us.us.i.i:                     ; preds = %bb.h, %._crit_edge38.us.i.us.us.i.i.unr-lcssa
  %.lcssa90 = phi float [ %i.hz, %._crit_edge38.us.i.us.us.i.i.unr-lcssa ], [ %i.ie, %bb.h ] ; 2 uses
  %indvars.iv.next93.i.us.us.i.i = add nuw nsw i64 %indvars.iv92.i.us.us.i.i, 1 ; 2 uses
  %exitcond98.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next93.i.us.us.i.i, %i.ft
  br i1 %exitcond98.not.i.us.us.i.i, label %.thread8.i.loopexit.us.us.i.i, label %.lr.ph43.split.us.i.us.us.i.i, !llvm.loop !91

.thread8.i.loopexit.us.us.i.i:                    ; preds = %._crit_edge38.us.i.us.us.i.i, %.lr.ph43.split.us.i.us.us.i.i
  %.0103.lcssa.i.ph.us.us.i.i = phi float [ %.lcssa90, %._crit_edge38.us.i.us.us.i.i ], [ %.010340.us.i.us.us.i.i, %.lr.ph43.split.us.i.us.us.i.i ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv99.i.us.us.i.i ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !112
  %i.ih = fadd float %.0103.lcssa.i.ph.us.us.i.i, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !112
  %indvars.iv.next100.i.us.us.i.i = add nuw nsw i64 %indvars.iv99.i.us.us.i.i, 1 ; 2 uses
  %exitcond103.not.i.us.us.i.i = icmp eq i64 %indvars.iv.next100.i.us.us.i.i, %2
  br i1 %exitcond103.not.i.us.us.i.i, label %.thread5.i.us.i.i, label %.lr.ph43.split.us.preheader.i.us.us.i.i, !llvm.loop !92

.thread5.i.us.i.i:                                ; preds = %bb.f, %bb.e, %bb.d, %.thread8.i.us.i.i, %.thread8.i.loopexit.us.us.i.i, %middle.block
  %indvars.iv.next105.i.us.i.i = add nuw nsw i64 %indvars.iv104.i.us.i.i, 1 ; 2 uses
  %exitcond108.not.i.us.i.i = icmp eq i64 %indvars.iv.next105.i.us.i.i, %wide.trip.count107.i.i.i
  br i1 %exitcond108.not.i.us.i.i, label %._crit_edge52.i.loopexit.us.i.i, label %.preheader.i.us.i.i, !llvm.loop !93

._crit_edge52.i.loopexit.us.i.i:                  ; preds = %.thread5.i.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next110.i.us.i.i = add nuw nsw i64 %indvars.iv109.i.us.i.i, 1 ; 2 uses
  %exitcond113.not.i.us.i.i = icmp eq i64 %indvars.iv.next110.i.us.i.i, %wide.trip.count112.i.i.i
  br i1 %exitcond113.not.i.us.i.i, label %.loopexit17.i.i.i, label %.lr.ph55.i.split.us.i.i, !llvm.loop !94

.lr.ph55.i.split.i.i:                             ; preds = %.lr.ph55.i.i.i
  br i1 %i.by, label %.lr.ph55.i.split.split.us.i.i, label %.lr.ph55.i.split.split.i.i

.lr.ph55.i.split.split.us.i.i:                    ; preds = %.lr.ph55.i.split.i.i
  %i.ii = load ptr, ptr %i.ab, align 8, !tbaa !114, !nonnull !106, !align !107 ; 3 uses
  %i.ij = mul i64 %i.ap, %i.be
  %i.ik = mul i64 %i.ij, %i.bg
  %i.il = add i64 %i.ik, %i.ba
  %i.im = shl nsw i64 %i.cc, 2
  %i.in = add i64 %i.im, %i.bv
  %i.io = sub i64 %i.il, %i.in
  %min.iters.check55 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %invariant.op124 = add i64 %i.io, -1
  %n.vec57 = and i64 %2, 2147483640               ; 3 uses
  %cmp.n64 = icmp eq i64 %n.vec57, %2
  %xtraiter100 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  %i.ip = and i32 %i.bx, 1
  %lcmp.mod104.not = icmp eq i32 %i.ip, 0
  %indvars.iv.next78.i.us26.i.i.prol = add nsw i64 %i.ci, -1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ir = icmp eq i32 %i.bx, 1
  %invariant.op123 = sub i64 1, %i.ci
  br label %bb.i

bb.i:                                             ; preds = %.preheader13.i.loopexit.us28.i.i, %.lr.ph55.i.split.split.us.i.i
  %indvars.iv109.i.us9.i.i = phi i64 [ 0, %.lr.ph55.i.split.split.us.i.i ], [ %indvars.iv.next110.i.us30.i.i, %.preheader13.i.loopexit.us28.i.i ] ; 3 uses
  %i.is = trunc nuw nsw i64 %indvars.iv109.i.us9.i.i to i32 ; 4 uses
  %i.it = mul i32 %i.h, %i.is
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl nsw i64 %i.iu, 2
  %scevgep73.i.us10.i.i = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.iv
  %i.iw = getelementptr [4 x i8], ptr %i.bj, i64 %i.iu ; 7 uses
  br i1 %.not.i.i.i, label %.lr.ph23.preheader.i.us18.i.i, label %.lr.ph.i.us12.i.i.preheader

.lr.ph.i.us12.i.i.preheader:                      ; preds = %bb.i
  %11 = trunc i64 %indvars.iv109.i.us9.i.i to i32
  %12 = mul i32 %i.h, %11
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %.reass125 = add i64 %14, %invariant.op124
  %diff.check53 = icmp ult i64 %.reass125, 31
  %or.cond80 = select i1 %min.iters.check55, i1 true, i1 %diff.check53
  br i1 %or.cond80, label %.lr.ph.i.us12.i.i.preheader85, label %vector.body58

vector.body58:                                    ; preds = %.lr.ph.i.us12.i.i.preheader, %vector.body58
  %index59 = phi i64 [ %index.next62, %vector.body58 ], [ 0, %.lr.ph.i.us12.i.i.preheader ] ; 3 uses
  %i.ix = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index59 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 16
  %wide.load60 = load <4 x float>, ptr %i.ix, align 4, !tbaa !112
  %wide.load61 = load <4 x float>, ptr %i.iy, align 4, !tbaa !112
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index59 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store <4 x float> %wide.load60, ptr %i.iz, align 4, !tbaa !112
  store <4 x float> %wide.load61, ptr %i.ja, align 4, !tbaa !112
  %index.next62 = add nuw i64 %index59, 8         ; 2 uses
  %i.jb = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.jb, label %middle.block63, label %vector.body58, !llvm.loop !95

middle.block63:                                   ; preds = %vector.body58
  br i1 %cmp.n64, label %.loopexit.i.us20.i.i, label %.lr.ph.i.us12.i.i.preheader85

.lr.ph.i.us12.i.i.preheader85:                    ; preds = %.lr.ph.i.us12.i.i.preheader, %middle.block63
  %indvars.iv.i.us13.i.i.ph = phi i64 [ 0, %.lr.ph.i.us12.i.i.preheader ], [ %n.vec57, %middle.block63 ] ; 3 uses
  br i1 %lcmp.mod101.not, label %.lr.ph.i.us12.i.i.prol.loopexit, label %.lr.ph.i.us12.i.i.prol

.lr.ph.i.us12.i.i.prol:                           ; preds = %.lr.ph.i.us12.i.i.preheader85, %.lr.ph.i.us12.i.i.prol
  %indvars.iv.i.us13.i.i.prol = phi i64 [ %indvars.iv.next.i.us15.i.i.prol, %.lr.ph.i.us12.i.i.prol ], [ %indvars.iv.i.us13.i.i.ph, %.lr.ph.i.us12.i.i.preheader85 ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.us12.i.i.prol ], [ 0, %.lr.ph.i.us12.i.i.preheader85 ]
  %gep.i.us14.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us13.i.i.prol
  %i.jc = load float, ptr %gep.i.us14.i.i.prol, align 4, !tbaa !112
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.us13.i.i.prol
  store float %i.jc, ptr %i.jd, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.prol = add nuw nsw i64 %indvars.iv.i.us13.i.i.prol, 1 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.us12.i.i.prol.loopexit, label %.lr.ph.i.us12.i.i.prol, !llvm.loop !96

.lr.ph.i.us12.i.i.prol.loopexit:                  ; preds = %.lr.ph.i.us12.i.i.prol, %.lr.ph.i.us12.i.i.preheader85
  %indvars.iv.i.us13.i.i.unr = phi i64 [ %indvars.iv.i.us13.i.i.ph, %.lr.ph.i.us12.i.i.preheader85 ], [ %indvars.iv.next.i.us15.i.i.prol, %.lr.ph.i.us12.i.i.prol ]
  %i.je = sub nsw i64 %indvars.iv.i.us13.i.i.ph, %2
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %.loopexit.i.us20.i.i, label %.lr.ph.i.us12.i.i

.lr.ph.i.us12.i.i:                                ; preds = %.lr.ph.i.us12.i.i.prol.loopexit, %.lr.ph.i.us12.i.i
  %indvars.iv.i.us13.i.i = phi i64 [ %indvars.iv.next.i.us15.i.i.3, %.lr.ph.i.us12.i.i ], [ %indvars.iv.i.us13.i.i.unr, %.lr.ph.i.us12.i.i.prol.loopexit ] ; 6 uses
  %gep.i.us14.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.us13.i.i
  %i.jg = load float, ptr %gep.i.us14.i.i, align 4, !tbaa !112
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.us13.i.i
  store float %i.jg, ptr %i.jh, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i = add nuw nsw i64 %indvars.iv.i.us13.i.i, 1 ; 2 uses
  %gep.i.us14.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us15.i.i
  %i.ji = load float, ptr %gep.i.us14.i.i.1, align 4, !tbaa !112
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next.i.us15.i.i
  store float %i.ji, ptr %i.jj, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.1 = add nuw nsw i64 %indvars.iv.i.us13.i.i, 2 ; 2 uses
  %gep.i.us14.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us15.i.i.1
  %i.jk = load float, ptr %gep.i.us14.i.i.2, align 4, !tbaa !112
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next.i.us15.i.i.1
  store float %i.jk, ptr %i.jl, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.2 = add nuw nsw i64 %indvars.iv.i.us13.i.i, 3 ; 2 uses
  %gep.i.us14.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.us15.i.i.2
  %i.jm = load float, ptr %gep.i.us14.i.i.3, align 4, !tbaa !112
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next.i.us15.i.i.2
  store float %i.jm, ptr %i.jn, align 4, !tbaa !112
  %indvars.iv.next.i.us15.i.i.3 = add nuw nsw i64 %indvars.iv.i.us13.i.i, 4 ; 2 uses
  %exitcond.not.i.us16.i.i.3 = icmp eq i64 %indvars.iv.next.i.us15.i.i.3, %2
  br i1 %exitcond.not.i.us16.i.i.3, label %.loopexit.i.us20.i.i, label %.lr.ph.i.us12.i.i, !llvm.loop !97

.lr.ph23.preheader.i.us18.i.i:                    ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iw, i8 0, i64 %3, i1 false), !tbaa !112
  br label %.loopexit.i.us20.i.i

.loopexit.i.us20.i.i:                             ; preds = %.lr.ph.i.us12.i.i.prol.loopexit, %.lr.ph.i.us12.i.i, %middle.block63, %.lr.ph23.preheader.i.us18.i.i
  br i1 %i.bw, label %.lr.ph25.preheader.i.us21.i.i, label %._crit_edge.i.us22.i.i

.lr.ph25.preheader.i.us21.i.i:                    ; preds = %.loopexit.i.us20.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us10.i.i, i8 0, i64 %i.ch, i1 false), !tbaa !112
  br label %._crit_edge.i.us22.i.i

._crit_edge.i.us22.i.i:                           ; preds = %.lr.ph25.preheader.i.us21.i.i, %.loopexit.i.us20.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %lcmp.mod104.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge.i.us22.i.i
  %i.jo = load i32, ptr %i.iq, align 4, !tbaa !18 ; 2 uses
  %i.jp = srem i32 %i.is, %i.jo
  store i32 %i.jp, ptr %i.ar, align 4, !tbaa !18
  %i.jq = sdiv i32 %i.is, %i.jo
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge.i.us22.i.i
  %indvars.iv77.i.us24.i.i.unr = phi i64 [ %i.ci, %._crit_edge.i.us22.i.i ], [ %indvars.iv.next78.i.us26.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.011726.i.us25.i.i.unr = phi i32 [ %i.is, %._crit_edge.i.us22.i.i ], [ %i.jq, %.prol.loopexit.unr-lcssa ]
  br i1 %i.ir, label %.preheader13.i.loopexit.us28.i.i, label %._crit_edge.i.us22.i.i.new

._crit_edge.i.us22.i.i.new:                       ; preds = %.prol.loopexit, %._crit_edge.i.us22.i.i.new
  %indvars.iv77.i.us24.i.i = phi i64 [ %indvars.iv.next78.i.us26.i.i.1, %._crit_edge.i.us22.i.i.new ], [ %indvars.iv77.i.us24.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.011726.i.us25.i.i = phi i32 [ %i.ka, %._crit_edge.i.us22.i.i.new ], [ %.011726.i.us25.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.reass.i.reass.us27.i.i = add i64 %indvars.iv77.i.us24.i.i, %invariant.op.i.i ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %.reass.i.reass.us27.i.i
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !18 ; 2 uses
  %i.jt = srem i32 %.011726.i.us25.i.i, %i.js
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us27.i.i
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !18
  %i.jv = sdiv i32 %.011726.i.us25.i.i, %i.js     ; 2 uses
  %indvars.iv.next78.i.us26.i.i.1 = add nsw i64 %indvars.iv77.i.us24.i.i, -2
  %.reass.i.reass.us27.i.i.1.reass = add i64 %indvars.iv77.i.us24.i.i, %invariant.op123 ; 2 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %.reass.i.reass.us27.i.i.1.reass
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !18 ; 2 uses
  %i.jy = srem i32 %i.jv, %i.jx
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.reass.i.reass.us27.i.i.1.reass
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !18
  %i.ka = sdiv i32 %i.jv, %i.jx
  %i.kb = icmp sgt i64 %indvars.iv77.i.us24.i.i, 2
  br i1 %i.kb, label %._crit_edge.i.us22.i.i.new, label %.preheader13.i.loopexit.us28.i.i, !llvm.loop !85

.preheader13.i.loopexit.us28.i.i:                 ; preds = %._crit_edge.i.us22.i.i.new, %.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next110.i.us30.i.i = add nuw nsw i64 %indvars.iv109.i.us9.i.i, 1 ; 2 uses
  %exitcond113.not.i.us31.i.i = icmp eq i64 %indvars.iv.next110.i.us30.i.i, %wide.trip.count112.i.i.i
  br i1 %exitcond113.not.i.us31.i.i, label %.loopexit17.i.i.i, label %bb.i, !llvm.loop !94

.lr.ph55.i.split.split.i.i:                       ; preds = %.lr.ph55.i.split.i.i
  br i1 %.not.i.i.i, label %.lr.ph55.i.split.split.split.us.i.i, label %.lr.ph.i.preheader.i.i.preheader

.lr.ph.i.preheader.i.i.preheader:                 ; preds = %.lr.ph55.i.split.split.i.i
  %i.kc = mul i64 %i.aq, %i.be
  %i.kd = mul i64 %i.kc, %i.bg
  %i.ke = add i64 %i.kd, %i.ba
  %i.kf = shl nsw i64 %i.cc, 2
  %i.kg = add i64 %i.kf, %i.bv
  %i.kh = sub i64 %i.ke, %i.kg
  %min.iters.check69 = icmp ult i32 %.sroa.speculated.i.i.i, 8
  %invariant.op = add i64 %i.kh, -1
  %n.vec71 = and i64 %2, 2147483640               ; 3 uses
  %cmp.n78 = icmp eq i64 %n.vec71, %2
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.preheader.i.i

.lr.ph55.i.split.split.split.us.i.i:              ; preds = %.lr.ph55.i.split.split.i.i
  br i1 %i.bw, label %.lr.ph23.preheader.i.us34.us.i.i.preheader, label %.lr.ph23.preheader.i.us34.i.i.preheader

.lr.ph23.preheader.i.us34.i.i.preheader:          ; preds = %.lr.ph55.i.split.split.split.us.i.i
  %xtraiter91 = and i64 %wide.trip.count112.i.i.i, 3 ; 3 uses
  %i.ki = icmp ult i32 %i.bf, 4
  br i1 %i.ki, label %.lr.ph23.preheader.i.us34.i.i.epil.preheader, label %.lr.ph23.preheader.i.us34.i.i.preheader.new

.lr.ph23.preheader.i.us34.i.i.preheader.new:      ; preds = %.lr.ph23.preheader.i.us34.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count112.i.i.i, 2147483644
  br label %.lr.ph23.preheader.i.us34.i.i

.lr.ph23.preheader.i.us34.us.i.i.preheader:       ; preds = %.lr.ph55.i.split.split.split.us.i.i
  %xtraiter94 = and i64 %wide.trip.count112.i.i.i, 3 ; 3 uses
  %i.kj = icmp ult i32 %i.bf, 4
  br i1 %i.kj, label %.lr.ph23.preheader.i.us34.us.i.i.epil.preheader, label %.lr.ph23.preheader.i.us34.us.i.i.preheader.new

.lr.ph23.preheader.i.us34.us.i.i.preheader.new:   ; preds = %.lr.ph23.preheader.i.us34.us.i.i.preheader
  %unroll_iter98 = and i64 %wide.trip.count112.i.i.i, 2147483644
  br label %.lr.ph23.preheader.i.us34.us.i.i

.lr.ph23.preheader.i.us34.us.i.i:                 ; preds = %.lr.ph23.preheader.i.us34.us.i.i, %.lr.ph23.preheader.i.us34.us.i.i.preheader.new
  %indvars.iv109.i.us32.us.i.i = phi i64 [ 0, %.lr.ph23.preheader.i.us34.us.i.i.preheader.new ], [ %indvars.iv.next110.i.us39.us.i.i.3, %.lr.ph23.preheader.i.us34.us.i.i ] ; 5 uses
  %niter99 = phi i64 [ 0, %.lr.ph23.preheader.i.us34.us.i.i.preheader.new ], [ %niter99.next.3, %.lr.ph23.preheader.i.us34.us.i.i ]
  %i.kk = trunc nuw nsw i64 %indvars.iv109.i.us32.us.i.i to i32
  %i.kl = mul i32 %i.h, %i.kk
  %i.km = sext i32 %i.kl to i64                   ; 2 uses
  %i.kn = shl nsw i64 %i.km, 2
  %scevgep73.i.us33.us.i.i = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.kn
  %15 = getelementptr [4 x i8], ptr %i.bj, i64 %i.km
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %3, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us33.us.i.i, i8 0, i64 %i.ch, i1 false), !tbaa !112
  %i.ko = trunc i64 %indvars.iv109.i.us32.us.i.i to i32
  %i.kp = or disjoint i32 %i.ko, 1
  %i.kq = mul i32 %i.h, %i.kp
  %i.kr = sext i32 %i.kq to i64                   ; 2 uses
  %i.ks = shl nsw i64 %i.kr, 2
  %scevgep73.i.us33.us.i.i.1 = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.ks
  %16 = getelementptr [4 x i8], ptr %i.bj, i64 %i.kr
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %3, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us33.us.i.i.1, i8 0, i64 %i.ch, i1 false), !tbaa !112
  %i.kt = trunc i64 %indvars.iv109.i.us32.us.i.i to i32
  %i.ku = or disjoint i32 %i.kt, 2
  %i.kv = mul i32 %i.h, %i.ku
  %i.kw = sext i32 %i.kv to i64                   ; 2 uses
  %i.kx = shl nsw i64 %i.kw, 2
  %scevgep73.i.us33.us.i.i.2 = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.kx
  %17 = getelementptr [4 x i8], ptr %i.bj, i64 %i.kw
  tail call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 %3, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us33.us.i.i.2, i8 0, i64 %i.ch, i1 false), !tbaa !112
  %i.ky = trunc i64 %indvars.iv109.i.us32.us.i.i to i32
  %i.kz = or disjoint i32 %i.ky, 3
  %i.la = mul i32 %i.h, %i.kz
  %i.lb = sext i32 %i.la to i64                   ; 2 uses
  %i.lc = shl nsw i64 %i.lb, 2
  %scevgep73.i.us33.us.i.i.3 = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.lc
  %18 = getelementptr [4 x i8], ptr %i.bj, i64 %i.lb
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %3, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us33.us.i.i.3, i8 0, i64 %i.ch, i1 false), !tbaa !112
  %indvars.iv.next110.i.us39.us.i.i.3 = add nuw nsw i64 %indvars.iv109.i.us32.us.i.i, 4 ; 2 uses
  %niter99.next.3 = add i64 %niter99, 4           ; 2 uses
  %niter99.ncmp.3 = icmp eq i64 %niter99.next.3, %unroll_iter98
  br i1 %niter99.ncmp.3, label %.loopexit17.i.i.i.loopexit87.unr-lcssa, label %.lr.ph23.preheader.i.us34.us.i.i, !llvm.loop !94

.lr.ph23.preheader.i.us34.i.i:                    ; preds = %.lr.ph23.preheader.i.us34.i.i, %.lr.ph23.preheader.i.us34.i.i.preheader.new
  %indvars.iv109.i.us32.i.i = phi i64 [ 0, %.lr.ph23.preheader.i.us34.i.i.preheader.new ], [ %indvars.iv.next110.i.us39.i.i.3, %.lr.ph23.preheader.i.us34.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph23.preheader.i.us34.i.i.preheader.new ], [ %niter.next.3, %.lr.ph23.preheader.i.us34.i.i ]
  %i.ld = trunc nuw nsw i64 %indvars.iv109.i.us32.i.i to i32
  %i.le = mul i32 %i.h, %i.ld
  %i.lf = sext i32 %i.le to i64
  %19 = getelementptr [4 x i8], ptr %i.bj, i64 %i.lf
  tail call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %3, i1 false), !tbaa !112
  %i.lg = trunc i64 %indvars.iv109.i.us32.i.i to i32
  %i.lh = or disjoint i32 %i.lg, 1
  %i.li = mul i32 %i.h, %i.lh
  %i.lj = sext i32 %i.li to i64
  %20 = getelementptr [4 x i8], ptr %i.bj, i64 %i.lj
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %3, i1 false), !tbaa !112
  %i.lk = trunc i64 %indvars.iv109.i.us32.i.i to i32
  %i.ll = or disjoint i32 %i.lk, 2
  %i.lm = mul i32 %i.h, %i.ll
  %i.ln = sext i32 %i.lm to i64
  %21 = getelementptr [4 x i8], ptr %i.bj, i64 %i.ln
  tail call void @llvm.memset.p0.i64(ptr align 4 %21, i8 0, i64 %3, i1 false), !tbaa !112
  %i.lo = trunc i64 %indvars.iv109.i.us32.i.i to i32
  %i.lp = or disjoint i32 %i.lo, 3
  %i.lq = mul i32 %i.h, %i.lp
  %i.lr = sext i32 %i.lq to i64
  %22 = getelementptr [4 x i8], ptr %i.bj, i64 %i.lr
  tail call void @llvm.memset.p0.i64(ptr align 4 %22, i8 0, i64 %3, i1 false), !tbaa !112
  %indvars.iv.next110.i.us39.i.i.3 = add nuw nsw i64 %indvars.iv109.i.us32.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit17.i.i.i.loopexit88.unr-lcssa, label %.lr.ph23.preheader.i.us34.i.i, !llvm.loop !94

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i.preheader.i.i.preheader, %._crit_edge.i.i.i
  %indvars.iv109.i.i.i = phi i64 [ %indvars.iv.next110.i.i.i, %._crit_edge.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.preheader ] ; 3 uses
  %23 = trunc nuw nsw i64 %indvars.iv109.i.i.i to i32
  %24 = mul i32 %i.h, %23
  %25 = sext i32 %24 to i64                       ; 2 uses
  %i.ls = getelementptr [4 x i8], ptr %i.bj, i64 %25 ; 6 uses
  br i1 %min.iters.check69, label %.lr.ph.i.i.i.preheader, label %vector.memcheck66

vector.memcheck66:                                ; preds = %.lr.ph.i.preheader.i.i
  %26 = trunc i64 %indvars.iv109.i.i.i to i32
  %27 = mul i32 %i.h, %26
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %.reass = add i64 %29, %invariant.op
  %diff.check67 = icmp ult i64 %.reass, 31
  br i1 %diff.check67, label %.lr.ph.i.i.i.preheader, label %vector.body72

vector.body72:                                    ; preds = %vector.memcheck66, %vector.body72
  %index73 = phi i64 [ %index.next76, %vector.body72 ], [ 0, %vector.memcheck66 ] ; 3 uses
  %i.lt = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index73 ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 16
  %wide.load74 = load <4 x float>, ptr %i.lt, align 4, !tbaa !112
  %wide.load75 = load <4 x float>, ptr %i.lu, align 4, !tbaa !112
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %index73 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <4 x float> %wide.load74, ptr %i.lv, align 4, !tbaa !112
  store <4 x float> %wide.load75, ptr %i.lw, align 4, !tbaa !112
  %index.next76 = add nuw i64 %index73, 8         ; 2 uses
  %i.lx = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.lx, label %middle.block77, label %vector.body72, !llvm.loop !98

middle.block77:                                   ; preds = %vector.body72
  br i1 %cmp.n78, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck66, %.lr.ph.i.preheader.i.i, %middle.block77
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck66 ], [ 0, %.lr.ph.i.preheader.i.i ], [ %n.vec71, %middle.block77 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ly = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !112
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.i.i.i.prol
  store float %i.ly, ptr %i.lz, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !99

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.ma = sub nsw i64 %indvars.iv.i.i.i.ph, %2
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.mc = load float, ptr %gep.i.i.i, align 4, !tbaa !112
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.i.i.i
  store float %i.mc, ptr %i.md, align 4, !tbaa !112
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.me = load float, ptr %gep.i.i.i.1, align 4, !tbaa !112
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.next.i.i.i
  store float %i.me, ptr %i.mf, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %gep.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.mg = load float, ptr %gep.i.i.i.2, align 4, !tbaa !112
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.next.i.i.i.1
  store float %i.mg, ptr %i.mh, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %gep.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.mi = load float, ptr %gep.i.i.i.3, align 4, !tbaa !112
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.next.i.i.i.2
  store float %i.mi, ptr %i.mj, align 4, !tbaa !112
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %2
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.i.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !100

.loopexit.i.loopexit.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block77
  br i1 %i.bw, label %.lr.ph25.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %.loopexit.i.loopexit.i.i
  %i.mk = shl nsw i64 %25, 2
  %scevgep73.i.i.i = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.mk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.i.i, i8 0, i64 %i.ch, i1 false), !tbaa !112
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph25.preheader.i.i.i, %.loopexit.i.loopexit.i.i
  %indvars.iv.next110.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i, 1 ; 2 uses
  %exitcond113.not.i.i.i = icmp eq i64 %indvars.iv.next110.i.i.i, %wide.trip.count112.i.i.i
  br i1 %exitcond113.not.i.i.i, label %.loopexit17.i.i.i, label %.lr.ph.i.preheader.i.i, !llvm.loop !94

.loopexit17.i.i.i.loopexit87.unr-lcssa:           ; preds = %.lr.ph23.preheader.i.us34.us.i.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod96.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us34.us.i.i.epil.preheader

.lr.ph23.preheader.i.us34.us.i.i.epil.preheader:  ; preds = %.loopexit17.i.i.i.loopexit87.unr-lcssa, %.lr.ph23.preheader.i.us34.us.i.i.preheader
  %indvars.iv109.i.us32.us.i.i.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i.us34.us.i.i.preheader ], [ %indvars.iv.next110.i.us39.us.i.i.3, %.loopexit17.i.i.i.loopexit87.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter94, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph23.preheader.i.us34.us.i.i.epil

.lr.ph23.preheader.i.us34.us.i.i.epil:            ; preds = %.lr.ph23.preheader.i.us34.us.i.i.epil, %.lr.ph23.preheader.i.us34.us.i.i.epil.preheader
  %indvars.iv109.i.us32.us.i.i.epil = phi i64 [ %indvars.iv.next110.i.us39.us.i.i.epil, %.lr.ph23.preheader.i.us34.us.i.i.epil ], [ %indvars.iv109.i.us32.us.i.i.epil.init, %.lr.ph23.preheader.i.us34.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter95 = phi i64 [ %epil.iter95.next, %.lr.ph23.preheader.i.us34.us.i.i.epil ], [ 0, %.lr.ph23.preheader.i.us34.us.i.i.epil.preheader ]
  %i.ml = trunc nuw nsw i64 %indvars.iv109.i.us32.us.i.i.epil to i32
  %i.mm = mul i32 %i.h, %i.ml
  %i.mn = sext i32 %i.mm to i64                   ; 2 uses
  %i.mo = shl nsw i64 %i.mn, 2
  %scevgep73.i.us33.us.i.i.epil = getelementptr i8, ptr %scevgep72.i.i.i, i64 %i.mo
  %30 = getelementptr [4 x i8], ptr %i.bj, i64 %i.mn
  tail call void @llvm.memset.p0.i64(ptr align 4 %30, i8 0, i64 %3, i1 false), !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i.us33.us.i.i.epil, i8 0, i64 %i.ch, i1 false), !tbaa !112
  %indvars.iv.next110.i.us39.us.i.i.epil = add nuw nsw i64 %indvars.iv109.i.us32.us.i.i.epil, 1
  %epil.iter95.next = add i64 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i64 %epil.iter95.next, %xtraiter94
  br i1 %epil.iter95.cmp.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us34.us.i.i.epil, !llvm.loop !101

.loopexit17.i.i.i.loopexit88.unr-lcssa:           ; preds = %.lr.ph23.preheader.i.us34.i.i
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us34.i.i.epil.preheader

.lr.ph23.preheader.i.us34.i.i.epil.preheader:     ; preds = %.loopexit17.i.i.i.loopexit88.unr-lcssa, %.lr.ph23.preheader.i.us34.i.i.preheader
  %indvars.iv109.i.us32.i.i.epil.init = phi i64 [ 0, %.lr.ph23.preheader.i.us34.i.i.preheader ], [ %indvars.iv.next110.i.us39.i.i.3, %.loopexit17.i.i.i.loopexit88.unr-lcssa ]
  %lcmp.mod93 = icmp ne i64 %xtraiter91, 0
  tail call void @llvm.assume(i1 %lcmp.mod93)
  br label %.lr.ph23.preheader.i.us34.i.i.epil

.lr.ph23.preheader.i.us34.i.i.epil:               ; preds = %.lr.ph23.preheader.i.us34.i.i.epil, %.lr.ph23.preheader.i.us34.i.i.epil.preheader
  %indvars.iv109.i.us32.i.i.epil = phi i64 [ %indvars.iv.next110.i.us39.i.i.epil, %.lr.ph23.preheader.i.us34.i.i.epil ], [ %indvars.iv109.i.us32.i.i.epil.init, %.lr.ph23.preheader.i.us34.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph23.preheader.i.us34.i.i.epil ], [ 0, %.lr.ph23.preheader.i.us34.i.i.epil.preheader ]
  %i.mp = trunc nuw nsw i64 %indvars.iv109.i.us32.i.i.epil to i32
  %i.mq = mul i32 %i.h, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %31 = getelementptr [4 x i8], ptr %i.bj, i64 %i.mr
  tail call void @llvm.memset.p0.i64(ptr align 4 %31, i8 0, i64 %3, i1 false), !tbaa !112
  %indvars.iv.next110.i.us39.i.i.epil = add nuw nsw i64 %indvars.iv109.i.us32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter91
  br i1 %epil.iter.cmp.not, label %.loopexit17.i.i.i, label %.lr.ph23.preheader.i.us34.i.i.epil, !llvm.loop !102

.loopexit17.i.i.i:                                ; preds = %._crit_edge.i.i.i, %.loopexit17.i.i.i.loopexit88.unr-lcssa, %.lr.ph23.preheader.i.us34.i.i.epil, %.loopexit17.i.i.i.loopexit87.unr-lcssa, %.lr.ph23.preheader.i.us34.us.i.i.epil, %.preheader13.i.loopexit.us28.i.i, %._crit_edge52.i.loopexit.us.i.i, %bb.c, %bb.b
  %i.ms = add nsw i32 %.011556.i.i.i, 1           ; 2 uses
  %exitcond114.not.i.i.i = icmp eq i32 %i.ms, %.val3
  br i1 %exitcond114.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS4_PvRKNS2_9ConvStateES4_PKfSA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.b, !llvm.loop !103

"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS4_PvRKNS2_9ConvStateES4_PKfSA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %.loopexit17.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v20260605L14deconvBlock32fEPKvS8_PvRKNS6_9ConvStateES8_PKfSE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS3_PvRKNS1_9ConvStateES3_PKfS9_E3$_0", ptr %0, align 8, !tbaa !125
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !9
  store ptr %.val, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(168) %.val6, i64 168, i1 false), !tbaa.struct !41
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !9  ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 168) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v20260605L14deconvBlock32fEPKvS5_PvRKNS3_9ConvStateES5_PKfSB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"p1 float", !8, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !4, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"p1 _ZTSSt5arrayIiLm3EE", !8, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm3EESaIS1_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!23, !22, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!27 = !{!26, !5, i64 0}
!28 = !{!"_ZTSSt14_Function_base", !4, i64 0, !8, i64 16}
!29 = !{!28, !8, i64 16}
!30 = !{!10, !10, i64 0}
!31 = !{!"any p2 pointer", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p2 float", !31, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606059ConvStateE", !8, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTSSt6vectorISt5arrayIiLm3EESaIS1_EE", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !28, i64 0, !8, i64 24}
!40 = !{!39, !8, i64 24}
!41 = !{i64 0, i64 8, !30, i64 8, i64 8, !30, i64 16, i64 8, !30, i64 24, i64 8, !32, i64 32, i64 8, !30, i64 40, i64 8, !32, i64 48, i64 8, !30, i64 56, i64 8, !30, i64 64, i64 8, !34, i64 72, i64 8, !30, i64 80, i64 8, !30, i64 88, i64 8, !30, i64 96, i64 8, !36, i64 104, i64 8, !38, i64 112, i64 8, !30, i64 120, i64 8, !30, i64 128, i64 8, !30, i64 136, i64 8, !34, i64 144, i64 8, !30, i64 152, i64 8, !30, i64 160, i64 8, !30}
!42 = !{!"vtable pointer", !3, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!45 = distinct !{!45, !19, !20, !21}
!46 = distinct !{!46, !19, !21, !20}
!47 = distinct !{!47, !19, !20, !21}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19, !20}
!50 = distinct !{!50, !19, !77}
!51 = distinct !{!51, !19}
!52 = !{!"bool", !4, i64 0}
!53 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!54 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !53, i64 4, !5, i64 8, !4, i64 12}
!55 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !55, i64 0}
!57 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !56, i64 0}
!58 = !{!"_ZTSSt6vectorIiSaIiEE", !57, i64 0}
!59 = !{!"_ZTSN2cv3dnn14dnn5_v2026060514FastActivationE", !4, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIfSaIfEE", !62, i64 0}
!64 = !{!"_ZTSN2cv3dnn14dnn5_v202606059ConvStateE", !52, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !4, i64 24, !4, i64 36, !4, i64 48, !54, i64 72, !54, i64 124, !54, i64 176, !4, i64 228, !58, i64 256, !58, i64 280, !59, i64 304, !8, i64 312, !63, i64 320}
!65 = !{!64, !53, i64 76}
!66 = !{!64, !53, i64 128}
!67 = !{!64, !5, i64 176}
!68 = !{!64, !5, i64 8}
!69 = !{!54, !5, i64 0}
!70 = !{!64, !5, i64 80}
!71 = !{!64, !5, i64 132}
!72 = !{!64, !5, i64 4}
!73 = !{!23, !22, i64 16}
!74 = !{i64 0, i64 12, !17}
!75 = !{!23, !22, i64 8}
!76 = !{!26, !5, i64 4}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
!78 = !{!13, !12, i64 0}
!79 = !{!14, !14, i64 0}
!80 = !{!15, !14, i64 8}
!81 = distinct !{null}
!82 = distinct !{!82, !19, !20, !21}
!83 = distinct !{!83, !113}
!84 = distinct !{!84, !19, !20}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19, !20, !21}
!88 = distinct !{!88, !19, !21, !20}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !113}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19, !20, !21}
!96 = distinct !{!96, !113}
!97 = distinct !{!97, !19, !20}
!98 = distinct !{!98, !19, !20, !21}
!99 = distinct !{!99, !113}
!100 = distinct !{!100, !19, !20}
!101 = distinct !{!101, !113}
!102 = distinct !{!102, !113}
end_hunk_0
