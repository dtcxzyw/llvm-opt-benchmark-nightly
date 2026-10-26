Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/application?download=true
inline.NumInlined: 3898
inline.NumDeleted: 1811
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8LightGBM9PredictorD2Ev:bb.a
  tail call void @__clang_call_terminate(ptr %i.ad) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !270    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !269  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.d) #22
  br label %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !271
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30
  br label %_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

declare void @_ZN8LightGBM33CreatePredictionEarlyStopInstanceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_25PredictionEarlyStopConfigE(ptr dead_on_unwind writable sret(%"struct.LightGBM::PredictionEarlyStopInstance") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::vector<std::vector<double, LightGBM::Common::AlignmentAllocator<double>>>::_Temporary_value", align 8 ; 10 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !269  ; 15 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  %.not65 = icmp ult i64 %i.k, %2
  br i1 %.not65, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %0, ptr %4, align 8, !tbaa !547
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !268  ; 3 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !266    ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr null, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr %i.t, ptr %i.u, align 8, !tbaa !267
  br label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 32, i64 noundef %i.r) #22
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.c, align 8
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.w, ptr null ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !266
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.x, align 8, !tbaa !268
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !267
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.aa = load double, ptr %.sroa.010.014.i.i.i, align 8, !tbaa !122
  store double %i.aa, ptr %.015.i.i.i, align 8, !tbaa !122
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.n
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit: ; preds = %.lr.ph.i.i.i, %.thread
  %i.ad = phi ptr [ %i.s, %.thread ], [ %i.x, %.lr.ph.i.i.i ]
  %i.ae = phi ptr [ null, %.thread ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ null, %.thread ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.0.lcssa.i.i.i, ptr %i.ad, align 8, !tbaa !268
  %i.af = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ag = sub i64 %i.i, %i.af                     ; 3 uses
  %i.ah = sdiv exact i64 %i.ag, 24                ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, %2
  br i1 %i.ai, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit
  %.idx = mul i64 %2, -24                         ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.g, i64 %.idx ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.e ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.aj, %bb.e ] ; 4 uses
  %i.ak = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !272
  store <2 x ptr> %i.ak, ptr %.013.i.i.i.i.i, align 8, !tbaa !272
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !267
  store ptr %i.an, ptr %i.al, align 8, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i69 = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !541

_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !269
  br label %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit, %bb.e
  %i.aq = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit.loopexit ], [ %i.g, %bb.e ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %2
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !269
  %i.as = ptrtoint ptr %i.aj to i64
  %i.at = sub i64 %i.as, %i.af                    ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_ET0_T_S8_S7_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.av = udiv exact i64 %i.at, 24
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bd, %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !266 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ba = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !272
  store <2 x ptr> %i.ba, ptr %i.ax, align 8, !tbaa !272
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !267
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !267
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i70
  tail call void @free(ptr noundef nonnull %i.ay) #22
  br label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i

_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i70
  %i.bd = add nsw i64 %.010.i.i.i.i.i, -1
  %5 = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %5, label %.lr.ph.i.i.i.i.i70, label %_ZSt13move_backwardIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_ET0_T_S8_S7_.exit, !llvm.loop !542

_ZSt13move_backwardIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %.idx144 = mul nuw nsw i64 %2, 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.idx144
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt13move_backwardIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_ET0_T_S8_S7_.exit, %.noexc
  %.06.i.i.i = phi ptr [ %i.bg, %.noexc ], [ %1, %_ZSt13move_backwardIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i71
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i.i72, label %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !543

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i82
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @free(ptr noundef nonnull %i.bh) #22
  br label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp198

bb.h:                                             ; preds = %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit
  %i.bi = sub nuw i64 %2, %i.ah                   ; 2 uses
  %.not12.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bk = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.bv, %.loopexit.i.i.i.i ] ; 2 uses
  %.014.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.cb, %.loopexit.i.i.i.i ] ; 4 uses
  %.01113.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.ca, %.loopexit.i.i.i.i ]
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !268 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bp = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef %i.bo) #22
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bp, 0
  %i.bq = load ptr, ptr %i.b, align 8
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bq, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.br = phi ptr [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ null, %bb.i ] ; 5 uses
  store ptr %i.br, ptr %.014.i.i.i.i, align 8, !tbaa !266
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !268
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !267
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !272 ; 3 uses
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !272 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not13.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %bb.k ] ; 2 uses
  %.sroa.010.014.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bv, %bb.k ] ; 2 uses
  %i.bx = load double, ptr %.sroa.010.014.i.i.i.i.i.i.i, align 8, !tbaa !122
  store double %i.bx, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bw
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !17

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.br, %bb.k ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bs, align 8, !tbaa !268
  %i.ca = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i73 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i73, label %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %bb.i, !llvm.loop !544

_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit: ; preds = %.loopexit.i.i.i.i, %bb.h
  %i.cc = phi ptr [ %i.g, %bb.h ], [ %i.cb, %.loopexit.i.i.i.i ] ; 3 uses
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !269
  %.not11.i.i.i.i.i74 = icmp eq ptr %1, %i.g
  br i1 %.not11.i.i.i.i.i74, label %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80.thread, label %.lr.ph.i.i.i.i.i75

_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ag
  store ptr %i.cd, ptr %i.f, align 8, !tbaa !269
  br label %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit

.lr.ph.i.i.i.i.i75:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i75
  %.013.i.i.i.i.i76 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i75 ], [ %i.cc, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i77 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i75 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit ] ; 4 uses
  %i.ce = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i77, align 8, !tbaa !272
  store <2 x ptr> %i.ce, ptr %.013.i.i.i.i.i76, align 8, !tbaa !272
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !267
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i77, i8 0, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i77, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i76, i64 24
  %.not.i.i.i.i.i78 = icmp eq ptr %i.ci, %i.g
  br i1 %.not.i.i.i.i.i78, label %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !541

_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80: ; preds = %.lr.ph.i.i.i.i.i75
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !269
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ag
  store ptr %i.cl, ptr %i.f, align 8, !tbaa !269
  br label %.lr.ph.i.i.i82

.lr.ph.i.i.i82:                                   ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80, %.noexc85
  %.06.i.i.i83 = phi ptr [ %i.cn, %.noexc85 ], [ %1, %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80 ] ; 2 uses
  %i.cm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i83, ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc85:                                         ; preds = %.lr.ph.i.i.i82
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i.i83, i64 24 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.cn, %i.g
  br i1 %.not.i.i.i84, label %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i82, !llvm.loop !543

_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit: ; preds = %.noexc85, %.noexc, %_ZSt22__uninitialized_move_aIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit80.thread
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i87, label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88, label %bb.l

bb.l:                                             ; preds = %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit
  call void @free(ptr noundef nonnull %i.co) #22
  br label %_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88

_ZNSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE16_Temporary_valueD2Ev.exit88: ; preds = %_ZSt4fillIPSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEES5_EvT_S7_RKT0_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.s

bb.m:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !270   ; 7 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = sub i64 %i.i, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24                ; 4 uses
  %i.ct = sub nsw i64 384307168202282325, %i.cs
  %i.cu = icmp ult i64 %i.ct, %2
  br i1 %i.cu, label %bb.n, label %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #32
  unreachable

_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.m
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %2)
  %i.cv = add nsw i64 %.sroa.speculated.i, %i.cs  ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cs
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 384307168202282325)
  %i.cy = select i1 %i.cw, i64 384307168202282325, i64 %i.cx ; 3 uses
  %i.cz = ptrtoint ptr %1 to i64
  %i.da = sub i64 %i.cz, %i.cq
  %.not.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i90, label %bb.o

bb.o:                                             ; preds = %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.db = mul nuw nsw i64 %i.cy, 24
  %i.dc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #34
  br label %.lr.ph.i.i.i.i90

.lr.ph.i.i.i.i90:                                 ; preds = %bb.o, %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dd = phi ptr [ %i.dc, %bb.o ], [ null, %_ZNKSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i.i.i.i91 = load ptr, ptr %3, align 8, !tbaa !266 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !268 ; 3 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %.pre.i.i.i.i91 to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i94 = icmp eq ptr %i.dg, %.pre.i.i.i.i91
  %i.dk = getelementptr inbounds nuw i8, ptr null, i64 %i.dj
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i.i.i102, %.lr.ph.i.i.i.i90
  %.014.i.i.i.i92 = phi ptr [ %i.de, %.lr.ph.i.i.i.i90 ], [ %i.dx, %.loopexit.i.i.i.i102 ] ; 7 uses
  %.01113.i.i.i.i93 = phi i64 [ %2, %.lr.ph.i.i.i.i90 ], [ %i.dw, %.loopexit.i.i.i.i102 ]
  br i1 %.not.i.i.i.i.i.i.i.i.i94, label %.thread183, label %.lr.ph.i.i.i.i.i.i.i98.preheader

.thread183:                                       ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i92, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i.i.i.i92, i8 0, i64 16, i1 false)
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !267
  br label %.loopexit.i.i.i.i102
end_hunk_0
begin_hunk_1_@_ZN8LightGBM6ConfigC2ERKS0_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %bb.eh
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abb, %bb.eh ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit ] ; 2 uses
  %i.agr = load ptr, ptr %i.dw, align 8, !tbaa !115 ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.dy
  br i1 %i.ags, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.agt = load i64, ptr %i.dy, align 8, !tbaa !114
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358, %bb.eg
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aba, %bb.eg ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cx) #22
  br label %.body

.body:                                            ; preds = %bb.ef, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %i.aaz, %bb.ef ], [ %i.do, %bb.r ], [ %i.do, %bb.q ] ; 2 uses
  %i.agv = load ptr, ptr %i.ci, align 8, !tbaa !115 ; 2 uses
  %i.agw = icmp eq ptr %i.agv, %i.ck
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %.body
  %i.agx = load i64, ptr %i.ck, align 8, !tbaa !114
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %bb.ee
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aay, %bb.ee ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %i.agz = load ptr, ptr %i.bt, align 8, !tbaa !115 ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.bv
  br i1 %i.aha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.ahb = load i64, ptr %i.bv, align 8, !tbaa !114
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364, %bb.ed
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aax, %bb.ed ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ] ; 2 uses
  %i.ahd = load ptr, ptr %i.be, align 8, !tbaa !115 ; 2 uses
  %i.ahe = icmp eq ptr %i.ahd, %i.bg
  br i1 %i.ahe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ahf = load i64, ptr %i.bg, align 8, !tbaa !114
  %i.ahg = add i64 %i.ahf, 1
  call void @_ZdlPvm(ptr noundef %i.ahd, i64 noundef %i.ahg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367, %bb.ec
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aaw, %bb.ec ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ] ; 2 uses
  %i.ahh = load ptr, ptr %i.ap, align 8, !tbaa !115 ; 2 uses
  %i.ahi = icmp eq ptr %i.ahh, %i.ar
  br i1 %i.ahi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369
  %i.ahj = load i64, ptr %i.ar, align 8, !tbaa !114
  %i.ahk = add i64 %i.ahj, 1
  call void @_ZdlPvm(ptr noundef %i.ahh, i64 noundef %i.ahk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370, %bb.eb
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aav, %bb.eb ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ]
  %i.ahl = load ptr, ptr %0, align 8, !tbaa !115  ; 2 uses
  %i.ahm = icmp eq ptr %i.ahl, %i.z
  br i1 %i.ahm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  %i.ahn = load i64, ptr %i.z, align 8, !tbaa !114
  %i.aho = add i64 %i.ahn, 1
  call void @_ZdlPvm(ptr noundef %i.ahl, i64 noundef %i.aho) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN8LightGBM8Boosting14CreateBoostingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_i(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN8LightGBM17ObjectiveFunction23CreateObjectiveFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(1656)) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM6Common23ConstPtrInVectorWrapperINS_6MetricEEESt6vectorIPKT_SaIS6_EERKS3_ISt10unique_ptrIS4_St14default_deleteIS4_EESaISC_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.296") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !287    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !287  ; 2 uses
  %.not17 = icmp eq ptr %i.a, %i.c
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.lcssa14 = phi ptr [ null, %bb.a ], [ %i.ad, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ]
  store ptr %.lcssa14, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ]
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.sroa.06.018 = phi ptr [ %i.a, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.06.018, align 8, !tbaa !171 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.h, align 8, !tbaa !171
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !599
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #34
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %i.j, ptr %i.w, align 8, !tbaa !171
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.f, %.noexc4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.y, ptr %i.d, align 8, !tbaa !599
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.e, align 8, !tbaa !292
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !287
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %.pre, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ac = phi ptr [ %i.y, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !598

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN8LightGBM6MetricESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %2 = phi i64 [ %i.n, %.loopexit ], [ 9223372036854775800, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %2) #30
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !113
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !115 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !124
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !115
  %i.h = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.h, ptr %i.b, align 8, !tbaa !114
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !114
  store i8 %i.j, ptr %i.i, align 1, !tbaa !114
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !110
  %i.m = load ptr, ptr %.014, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !600

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !129 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !160

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #34
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !129
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !130
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !272 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !272
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !273

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load double, ptr %i.m, align 8, !tbaa !122
  store double %i.t, ptr %i.i, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !293
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !601

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %lpad.loopexit.split-lp31, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.z

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1
begin_hunk_2_@_ZN8LightGBM9Predictor7PredictEPKcS2_bbb:bb.a
_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i154: ; preds = %bb.dh
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !118
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(8) %i.pl) #22, !inline_history !629
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.u, %_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i154, %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.t
  %.pn71.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.bf, %bb.t ], [ %.pn71.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN8LightGBM6ParserEEclEPS1_.exit.i154 ], [ %.pn71.pn.pn.pn.pn.pn.pn, %bb.dh ], [ %i.bg, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.di

bb.di:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.s ], [ %.pn71.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ] ; 2 uses
  %i.pp = load ptr, ptr %11, align 8, !tbaa !308  ; 3 uses
  %.not.i156 = icmp eq ptr %i.pp, null
  br i1 %.not.i156, label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileWriterESt14default_deleteIS1_EED2Ev.exit158, label %_ZNKSt14default_deleteIN8LightGBM17VirtualFileWriterEEclEPS1_.exit.i157

_ZNKSt14default_deleteIN8LightGBM17VirtualFileWriterEEclEPS1_.exit.i157: ; preds = %bb.di
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !118
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(8) %i.pp) #22, !inline_history !630
  br label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileWriterESt14default_deleteIS1_EED2Ev.exit158

_ZNSt10unique_ptrIN8LightGBM17VirtualFileWriterESt14default_deleteIS1_EED2Ev.exit158: ; preds = %_ZNKSt14default_deleteIN8LightGBM17VirtualFileWriterEEclEPS1_.exit.i157, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.di ], [ %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN8LightGBM17VirtualFileWriterEEclEPS1_.exit.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10TextReaderIiEC2EPKcbm(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::unique_ptr.125", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  store ptr %1, ptr %0, align 8, !tbaa !299
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !110
  store i8 0, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i64 0, ptr %i.j, align 8, !tbaa !110
  store i8 0, ptr %i.i, align 8, !tbaa !114
  %i.k = zext i1 %2 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.k, ptr %i.l, align 8, !tbaa !300
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %3, ptr %i.m, align 8, !tbaa !301
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  store i32 0, ptr %i.n, align 8, !tbaa !302
  br i1 %2, label %bb.a, label %bb.ak

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !113
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #32
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.q, ptr %i.b, align 8, !tbaa !124
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i25, label %._crit_edge.i.i24

.noexc.i25:                                       ; preds = %bb.c
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc27 unwind label %bb.j   ; 2 uses

.noexc27:                                         ; preds = %.noexc.i25
  store ptr %i.s, ptr %5, align 8, !tbaa !115
  %i.t = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.t, ptr %i.o, align 8, !tbaa !114
  br label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %.noexc27, %bb.c
  %i.u = phi ptr [ %i.s, %.noexc27 ], [ %i.o, %bb.c ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i24
  %i.v = load i8, ptr %1, align 1, !tbaa !114
  store i8 %i.v, ptr %i.u, align 1, !tbaa !114
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %1, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i24
  %i.w = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = load ptr, ptr %5, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZN8LightGBM17VirtualFileReader4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.125") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %5, align 8, !tbaa !115   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !114
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ae = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.ai, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull %1)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i25, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.k:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !115   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.o
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.k
  %i.an = load i64, ptr %i.o, align 8, !tbaa !114
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.ak, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit41

bb.l:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.aq = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.u
  %.0 = phi i64 [ %i.bn, %bb.u ], [ %i.au, %.preheader ]
  %i.aw = icmp eq i64 %.0, 1
  %i.ax = load i8, ptr %i.c, align 1, !tbaa !114  ; 5 uses
  br i1 %i.aw, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  switch i8 %i.ax, label %bb.r [
    i8 13, label %.loopexit79
    i8 10, label %.loopexit80
  ]

bb.q:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.w, %.loopexit79, %bb.n
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ax, ptr %i.a, align 1, !tbaa !114
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !118
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.av, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !642
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext %i.ax)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !302
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.n, align 8, !tbaa !302
  %i.bj = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !637

.loopexit:                                        ; preds = %bb.o
  %i.bo = icmp eq i8 %i.ax, 13
  br i1 %i.bo, label %.loopexit79, label %.loopexit80

.loopexit79:                                      ; preds = %bb.p, %.loopexit
  %i.bp = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !118
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %.loopexit79
  %i.bu = load i32, ptr %i.n, align 8, !tbaa !302
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.n, align 8, !tbaa !302
  %.pre = load i8, ptr %i.c, align 1, !tbaa !114
  br label %.loopexit80

.loopexit80:                                      ; preds = %bb.p, %bb.v, %.loopexit
  %i.bw = phi i8 [ %.pre, %bb.v ], [ %i.ax, %.loopexit ], [ 10, %bb.p ]
  %i.bx = icmp eq i8 %i.bw, 10
  br i1 %i.bx, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.loopexit80
  %i.by = load ptr, ptr %4, align 8, !tbaa !206   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !118
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cd = load i32, ptr %i.n, align 8, !tbaa !302
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.n, align 8, !tbaa !302
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.cf, ptr %7, align 8, !tbaa !113, !alias.scope !645
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !110, !alias.scope !645
  store i8 0, ptr %i.cf, align 8, !tbaa !114, !alias.scope !645
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !334, !noalias !645 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !645 ; 2 uses
  %i.cl = icmp ugt ptr %i.ci, %i.ck
  %.08.i.i.i = select i1 %i.cl, ptr %i.ci, ptr %i.ck ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !335, !noalias !645 ; 2 uses
  %i.co = ptrtoint ptr %.08.i.i.i to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.cn, i64 noundef %i.cq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !115, !alias.scope !645 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cf
  br i1 %i.cu, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.cv = load i64, ptr %i.cf, align 8, !tbaa !114, !alias.scope !645
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #30
  br label %.body

bb.ab:                                            ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.aa

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ab, %bb.z
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !115 ; 6 uses
  %i.cz = icmp eq ptr %i.cy, %i.i
  %i.da = load ptr, ptr %7, align 8, !tbaa !115   ; 5 uses
  %i.db = icmp eq ptr %i.da, %i.cf                ; 2 uses
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.db, label %bb.ac, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.db, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dc = load i64, ptr %i.cg, align 8, !tbaa !110 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  switch i64 %i.dc, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i8, ptr %i.da, align 1, !tbaa !114
  store i8 %i.de, ptr %i.cy, align 1, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %i.da, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.df = load i64, ptr %i.cg, align 8, !tbaa !110 ; 2 uses
  store i64 %i.df, ptr %i.j, align 8, !tbaa !110
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !115
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  store i8 0, ptr %i.dh, align 1, !tbaa !114
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.da, ptr %i.h, align 8, !tbaa !115
  %i.di = load <2 x i64>, ptr %i.cg, align 8, !tbaa !114
  store <2 x i64> %i.di, ptr %i.j, align 8, !tbaa !114
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dj = load i64, ptr %i.i, align 8, !tbaa !114
  store ptr %i.da, ptr %i.h, align 8, !tbaa !115
  %i.dk = load <2 x i64>, ptr %i.cg, align 8, !tbaa !114
  store <2 x i64> %i.dk, ptr %i.j, align 8, !tbaa !114
  %.not.i34 = icmp eq ptr %i.cy, null
  br i1 %.not.i34, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cy, ptr %7, align 8, !tbaa !115
  store i64 %i.dj, ptr %i.cf, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cf, ptr %7, align 8, !tbaa !115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.af, %bb.ag
  %i.dl = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cy, %bb.af ], [ %i.cf, %bb.ag ]
  store i64 0, ptr %i.cg, align 8, !tbaa !110
  store i8 0, ptr %i.dl, align 1, !tbaa !114
  %i.dm = load ptr, ptr %7, align 8, !tbaa !115   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cf
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.do = load i64, ptr %i.cf, align 8, !tbaa !114
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !115
  %i.dr = load ptr, ptr %0, align 8, !tbaa !299
  invoke void (ptr, ...) @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef nonnull @.str.19, ptr noundef %i.dq, ptr noundef %i.dr)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.ds = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ds, ptr %6, align 8, !tbaa !118
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.du = getelementptr i8, ptr %i.ds, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %6, i64 %i.dv
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !118
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dx, ptr %i.av, align 8, !tbaa !118
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dy, align 8, !tbaa !118
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !115 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !114
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dy, align 8, !tbaa !118
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ef) #22
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.eg, ptr %6, align 8, !tbaa !118
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ei = getelementptr i8, ptr %i.eg, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %6, i64 %i.ej
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !118
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.el, align 8, !tbaa !337
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.em) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.en = load ptr, ptr %4, align 8, !tbaa !206   ; 3 uses
  %.not.i38 = icmp eq ptr %i.en, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8LightGBM17VirtualFileReaderEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !118
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en) #22, !inline_history !13
  br label %_ZNSt10unique_ptrIN8LightGBM17VirtualFileReaderESt14default_deleteIS1_EED2Ev.exit

end_hunk_2
begin_hunk_3_@_ZSt13__invoke_implIvRZN8LightGBM9Predictor7PredictEPKcS3_bbbEUlS3_PSt6vectorISt4pairIidESaIS6_EEE_JS3_S9_EET_St14__invoke_otherOT0_DpOT1_:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.021.i = phi i32 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.f ] ; 2 uses
  %.01820.i = phi i32 [ 0, %.lr.ph.i ], [ %.119.i, %bb.f ] ; 3 uses
  %i.y = sext i32 %.01820.i to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.y ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !282 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !116 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.ad, ptr %i.z, align 8, !tbaa !282
  %i.af = add nsw i32 %.01820.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = add nsw i32 %.021.i, -1                 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116
  store i32 %i.aj, ptr %i.z, align 8, !tbaa !116
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = load double, ptr %i.ak, align 8, !tbaa !122
  %i.an = load double, ptr %i.al, align 8, !tbaa !122
  store double %i.an, ptr %i.ak, align 8, !tbaa !122
  store double %i.am, ptr %i.al, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.119.i = phi i32 [ %i.af, %bb.d ], [ %.01820.i, %bb.e ] ; 3 uses
  %.1.i = phi i32 [ %.021.i, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ao = icmp slt i32 %.119.i, %.1.i
  br i1 %i.ao, label %bb.c, label %._crit_edge.i, !llvm.loop !684

._crit_edge.i:                                    ; preds = %bb.f
  %i.ap = sext i32 %.119.i to i64                 ; 3 uses
  %i.aq = icmp ult i64 %i.s, %i.ap
  br i1 %i.aq, label %bb.g, label %._crit_edge.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ar = sub nuw nsw i64 %i.ap, %i.s
  tail call void @_ZNSt6vectorISt4pairIidESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ar)
  br label %_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUlS2_PSt6vectorISt4pairIidESaIS5_EEE_clES2_S8_.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.018.lcssa29.i = phi i64 [ %i.ap, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.as = icmp ugt i64 %i.s, %.018.lcssa29.i
  br i1 %i.as, label %bb.h, label %_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUlS2_PSt6vectorISt4pairIidESaIS5_EEE_clES2_S8_.exit

bb.h:                                             ; preds = %._crit_edge.thread.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.018.lcssa29.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.at
  br i1 %.not.i.i.i, label %_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUlS2_PSt6vectorISt4pairIidESaIS5_EEE_clES2_S8_.exit, label %_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.h
  store ptr %i.at, ptr %i.m, align 8, !tbaa !285
  br label %_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUlS2_PSt6vectorISt4pairIidESaIS5_EEE_clES2_S8_.exit

_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUlS2_PSt6vectorISt4pairIidESaIS5_EEE_clES2_S8_.exit: ; preds = %bb.a, %bb.g, %._crit_edge.thread.i, %bb.h, %_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIidESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !286    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !348
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i32 0, ptr %.013.i.i.i.prol, align 8, !tbaa !282
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !283
  %i.q = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !690

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i, align 8, !tbaa !282
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !283
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store i32 0, ptr %i.u, align 8, !tbaa !282
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !283
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  store i32 0, ptr %i.w, align 8, !tbaa !282
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  store double 0.000000e+00, ptr %i.x, align 8, !tbaa !283
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !282
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !283
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 64
  store i32 0, ptr %i.aa, align 8, !tbaa !282
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !283
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i32 0, ptr %i.ac, align 8, !tbaa !282
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !283
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  store i32 0, ptr %i.ae, align 8, !tbaa !282
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !283
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112
  store i32 0, ptr %i.ag, align 8, !tbaa !282
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !283
  %i.ai = add i64 %.01012.i.i.i, -8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !691

_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !285
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #32
  unreachable

_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 576460752303423487) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 4
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #34 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit ]
  store i32 0, ptr %.013.i.i.i31.prol, align 8, !tbaa !282
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 8
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !283
  %i.ar = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !692

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorISt4pairIidESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %2 = icmp slt i64 %1, 8
  br i1 %2, label %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bj, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bi, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store i32 0, ptr %.013.i.i.i31, align 8, !tbaa !282
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !283
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store i32 0, ptr %i.au, align 8, !tbaa !282
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store double 0.000000e+00, ptr %i.av, align 8, !tbaa !283
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  store i32 0, ptr %i.aw, align 8, !tbaa !282
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !283
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.ay, align 8, !tbaa !282
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !283
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  store i32 0, ptr %i.ba, align 8, !tbaa !282
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !283
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store i32 0, ptr %i.bc, align 8, !tbaa !282
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !283
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  store i32 0, ptr %i.be, align 8, !tbaa !282
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store double 0.000000e+00, ptr %i.bf, align 8, !tbaa !283
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  store i32 0, ptr %i.bg, align 8, !tbaa !282
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  store double 0.000000e+00, ptr %i.bh, align 8, !tbaa !283
  %i.bi = add i64 %.01012.i.i.i32, -8             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  %.not.i.i.i33.7 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !691

_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !alias.scope !697
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i38 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt4pairIidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !696

_ZNSt6vectorISt4pairIidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairIidESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !348
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #30
  br label %_ZNSt12_Vector_baseISt4pairIidESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseISt4pairIidESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !286
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %1
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !285
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !348
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt4pairIidEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt4pairIidESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEZN8LightGBM9Predictor7PredictEPKcSF_bbbEUliSA_E_E9_M_invokeERKSt9_Any_dataOiSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !198
  %i.b = load i32, ptr %1, align 4, !tbaa !116
  tail call void @_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE_clEiSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEZN8LightGBM9Predictor7PredictEPKcSF_bbbEUliSA_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM9Predictor7PredictEPKcS2_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE_, ptr %0, align 8, !tbaa !213
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !198
  store ptr %i.a, ptr %0, align 8, !tbaa !198
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !198
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !698
  store ptr %i.c, ptr %0, align 8, !tbaa !198
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !198    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #30
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM9Predictor7PredictEPKcS4_bbbEUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8LightGBM9Predictor7PredictEPKcS2_bbbENKUliRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEE_clEiSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.253", align 8   ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %i.a = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !703
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !148    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 5                   ; 5 uses
  %i.k = icmp ugt i64 %i.j, 288230376151711743
  br i1 %i.k, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %.loopexit17

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #34
          to label %.noexc13 unwind label %bb.l   ; 4 uses

.noexc13:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.l, ptr %6, align 8, !tbaa !148
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !185
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %.noexc13 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.noexc13 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc13 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.o, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !113
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !110
  store i8 0, ptr %i.o, align 8, !tbaa !114
  %i.q = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !699

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc13
  %.lcssa48.unr = phi ptr [ poison, %.noexc13 ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.l, %.noexc13 ], [ %i.r, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.j, %.noexc13 ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.j, 4
  br i1 %i.s, label %.loopexit17, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
end_hunk_3
