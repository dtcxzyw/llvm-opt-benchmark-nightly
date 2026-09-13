Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/c_api?download=true
inline.NumInlined: 9409
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_
define linkonce_odr void @_ZNSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !361    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #40
  unreachable

_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.r, align 8, !tbaa !396
  %.not11.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.08.012.i.i.i.i.i, i64 80, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !396
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 80 ; 2 uses
  %.not11.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.013.i.i.i.i.i30 = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i29 ], [ %i.v, %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i31 = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.013.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.08.012.i.i.i.i.i31, i64 80, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i31, i64 64
  store ptr null, ptr %i.w, align 8, !tbaa !396
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i31, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i30, i64 80 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !18

_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.v, %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.y, %.lr.ph.i.i.i.i.i29 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9nanoarrow8internal6UniqueI10ArrowArrayEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34, %_ZSt8_DestroyIN9nanoarrow8internal6UniqueI10ArrowArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN9nanoarrow8internal6UniqueI10ArrowArrayEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !396 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN9nanoarrow8internal6UniqueI10ArrowArrayEEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %.05.i.i)
          to label %_ZSt8_DestroyIN9nanoarrow8internal6UniqueI10ArrowArrayEEEvPT_.exit.i.i unwind label %bb.d, !inline_history !15

bb.d:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #39
  unreachable

_ZSt8_DestroyIN9nanoarrow8internal6UniqueI10ArrowArrayEEEvPT_.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9nanoarrow8internal6UniqueI10ArrowArrayEEEvT_S6_.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZSt8_DestroyIPN9nanoarrow8internal6UniqueI10ArrowArrayEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN9nanoarrow8internal6UniqueI10ArrowArrayEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN9nanoarrow8internal6UniqueI10ArrowArrayEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN9nanoarrow8internal6UniqueI10ArrowArrayEEEvT_S6_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !397
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #38
  br label %_ZNSt12_Vector_baseIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN9nanoarrow8internal6UniqueI10ArrowArrayEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN9nanoarrow8internal6UniqueI10ArrowArrayEEEvT_S6_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !361
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !360
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !397
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @LGBM_DatasetGetSubset(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %class.anon.244, align 8            ; 9 uses
  %6 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %7 = alloca %"struct.LightGBM::Config", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN8LightGBM6Config7Str2MapB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map") align 8 %6, ptr noundef %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN8LightGBM6ConfigC2Ev(ptr noundef nonnull align 8 dereferenceable(1656) %7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8LightGBM6Config3SetERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEE(ptr noundef nonnull align 8 dereferenceable(1656) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !123
  invoke void @OMP_SET_NUM_THREADS(i32 noundef %i.f)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.30, i32 noundef 1776)
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.ad

bb.h:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.ac

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.ab

bb.j:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.ab

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !242
  %i.n = add nsw i32 %i.m, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.a, align 8, !tbaa !312
  store i32 0, ptr %i.b, align 4, !tbaa !104
  store i32 %i.n, ptr %i.c, align 4, !tbaa !104
  store ptr @.str.87, ptr %i.d, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.a, ptr %5, align 8, !tbaa !401
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.o, align 8, !tbaa !312
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.p, align 8, !tbaa !312
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.q, align 8, !tbaa !1102
  %i.r = icmp sgt i32 %2, 1
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %11 = zext nneg i32 %2 to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc, %bb.k
  %i.s = and i32 %2, 1
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.r, label %bb.p

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc ] ; 5 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.u = add nsw i64 %indvars.iv.i, -1            ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !104  ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104  ; 3 uses
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !104
  %i.ab = icmp slt i32 %i.w, %i.aa
  br i1 %i.ab, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !104
  %i.ad = icmp sgt i32 %i.y, %i.ac
  br i1 %i.ad, label %.sink.split.i, label %.noexc

bb.n:                                             ; preds = %.lr.ph.i
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !104
  %i.af = icmp sgt i32 %i.w, %i.ae
  br i1 %i.af, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !104
  %i.ah = icmp slt i32 %i.y, %i.ag
  br i1 %i.ah, label %.sink.split.i, label %.noexc

.sink.split.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %indvars.iv.sink.i = phi i64 [ %i.u, %bb.l ], [ %indvars.iv.i, %bb.m ], [ %i.u, %bb.n ], [ %indvars.iv.i, %bb.o ]
  %i.ai = trunc nuw nsw i64 %indvars.iv.sink.i to i32
  invoke fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIiEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.ai)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.sink.split.i, %bb.o, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %12 = icmp samesign ult i64 %indvars.iv.next.i, %11
  br i1 %12, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1100

bb.p:                                             ; preds = %._crit_edge.i
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !312
  %i.ak = add nsw i32 %2, -1                      ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !104 ; 2 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !104
  %i.ap = icmp slt i32 %i.an, %i.ao
  %i.aq = load i32, ptr %i.c, align 4
  %i.ar = icmp sgt i32 %i.an, %i.aq
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIiEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.ak)
          to label %.thread unwind label %.loopexit.split-lp

.thread:                                          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.preheader.i.i.i.preheader

bb.r:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.as = icmp eq i32 %2, 0
  br i1 %i.as, label %_ZSt9is_sortedIPKiEbT_S2_.exit.thread, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.thread, %bb.r
  %.idx63.pn.in = sext i32 %2 to i64
  %.idx63.pn = shl nsw i64 %.idx63.pn.in, 2
  %i.at = getelementptr inbounds i8, ptr %1, i64 %.idx63.pn
  %.not.i.i.i65 = icmp eq i32 %2, 1
  br i1 %.not.i.i.i65, label %_ZSt9is_sortedIPKiEbT_S2_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.preheader
  %.0.i.i.i64 = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.s

.preheader.i.i.i:                                 ; preds = %bb.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i67, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.at
  br i1 %.not.i.i.i, label %_ZSt9is_sortedIPKiEbT_S2_.exit.thread, label %bb.s, !llvm.loop !1101

bb.s:                                             ; preds = %.lr.ph, %.preheader.i.i.i
  %.0.i.i.i67 = phi ptr [ %.0.i.i.i64, %.lr.ph ], [ %.0.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %.015.i.i.i66 = phi ptr [ %1, %.lr.ph ], [ %.0.i.i.i67, %.preheader.i.i.i ]
  %i.au = load i32, ptr %.0.i.i.i67, align 4, !tbaa !104
  %i.av = load i32, ptr %.015.i.i.i66, align 4, !tbaa !104
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %_ZSt9is_sortedIPKiEbT_S2_.exit, label %.preheader.i.i.i, !llvm.loop !1101

_ZSt9is_sortedIPKiEbT_S2_.exit:                   ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.88)
          to label %_ZSt9is_sortedIPKiEbT_S2_.exit.thread unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.sink.split.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %_ZSt9is_sortedIPKiEbT_S2_.exit, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.ab

_ZSt9is_sortedIPKiEbT_S2_.exit.thread:            ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader, %bb.r, %_ZSt9is_sortedIPKiEbT_S2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ax = invoke noalias noundef nonnull dereferenceable(864) ptr @_Znwm(i64 noundef 864) #42
          to label %bb.t unwind label %bb.x       ; 6 uses

bb.t:                                             ; preds = %_ZSt9is_sortedIPKiEbT_S2_.exit.thread
  invoke void @_ZN8LightGBM7DatasetC1Ei(ptr noundef nonnull align 8 dereferenceable(864) %i.ax, i32 noundef %2)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  store ptr %i.ax, ptr %8, align 8, !tbaa !217
  invoke void @_ZN8LightGBM7Dataset21CopyFeatureMapperFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(864) %i.ax, ptr noundef nonnull %0)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN8LightGBM7Dataset10CopySubrowEPKS0_PKiib(ptr noundef nonnull align 8 dereferenceable(864) %i.ax, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
          to label %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EED2Ev.exit unwind label %bb.z

_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.v
  store ptr %i.ax, ptr %4, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN8LightGBM6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1656) dereferenceable(1656) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !112 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ba, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.az, %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  %i.ba = load ptr, ptr %.06.i.i.i, align 8, !tbaa !113 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !67
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !67
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #38
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #38
  %.not.i.i.i48 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i48, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EED2Ev.exit
  %i.bn = load ptr, ptr %6, align 8, !tbaa !115
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !116
  %i.bq = shl i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.bq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.br = load ptr, ptr %6, align 8, !tbaa !115   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !116
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #38
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ak

bb.x:                                             ; preds = %_ZSt9is_sortedIPKiEbT_S2_.exit.thread
  %i.bw = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 864) #38
  br label %bb.aa

bb.z:                                             ; preds = %bb.v, %bb.u
  %i.by = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null
  call void @_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.by, %bb.z ], [ %i.bx, %bb.y ], [ %i.bw, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.aa, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.k, %bb.j ], [ %.pn, %bb.aa ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8LightGBM6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1656) dereferenceable(1656) %7) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #24
  br label %bb.ad

end_hunk_0
