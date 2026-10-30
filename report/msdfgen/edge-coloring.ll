Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-coloring?download=true
inline.NumInlined: 874
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !36
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.aq = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !19
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !44
  store ptr %i.am, ptr %i.o, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !46
  store ptr %i.am, ptr %i.a, align 8, !tbaa !51
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !48
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !112

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !36
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !36
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !112

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !36
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !36
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !113

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !112

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !36
  store ptr %i.be, ptr %i.av, align 8, !tbaa !36
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !48
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !50
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !48
  store i64 %i.am, ptr %i.k, align 8, !tbaa !50
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !44
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !36   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !44
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !114

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #16 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #16
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #18
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #20
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !114

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #16 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #17
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !24
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %i.ao, 0
  %4 = tail call ptr @__cxa_begin_catch(ptr %3) #16 ; 0 uses
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ap = extractvalue { ptr, i32 } %i.x, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #16 ; 0 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #16
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %5 = extractvalue { ptr, i32 } %i.af, 0
  %6 = tail call ptr @__cxa_begin_catch(ptr %5) #16 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.ar, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !0

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #17
  invoke void @__cxa_rethrow() #18
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.as

bb.o:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #20
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7msdfgen7ContourE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN7msdfgen9EdgeColorE", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSN7msdfgen11EdgeSegmentE", !13, i64 8}
!22 = !{!21, !13, i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !15, i64 8}
!26 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN7msdfgen10EdgeHolderE", !26, i64 0}
!29 = !{!28, !26, i64 0}
!30 = !{!23, !15, i64 16}
!31 = !{!"double", !6, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 double", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 int", !10, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"any p2 pointer", !10, i64 0}
!38 = !{!"p2 int", !37, i64 0}
!39 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !35, i64 0, !35, i64 8, !35, i64 16, !38, i64 24}
!40 = !{!39, !35, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !38, i64 0, !41, i64 8, !39, i64 16, !39, i64 48}
!43 = !{!42, !38, i64 40}
!44 = !{!39, !38, i64 24}
!45 = !{!39, !35, i64 8}
!46 = !{!39, !35, i64 16}
!47 = !{!42, !35, i64 16}
!48 = !{!42, !38, i64 0}
!49 = !{!42, !38, i64 72}
!50 = !{!42, !41, i64 8}
!51 = !{!42, !35, i64 48}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{null}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20, !77}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!"bool", !6, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTSN7msdfgen25EdgeColoringInkTrapCornerE", !7, i64 0, !31, i64 8, !68, i64 16, !13, i64 20}
!71 = !{!70, !7, i64 0}
!72 = !{!70, !31, i64 8}
!73 = !{!70, !68, i64 16}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!70, !13, i64 20}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !105}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{null}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !105}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!42, !35, i64 32}
!107 = !{!42, !35, i64 24}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = !{!42, !35, i64 64}
!111 = distinct !{!111, !20}
!112 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{!114, !20}
end_hunk_0
