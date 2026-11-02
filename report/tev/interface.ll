Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/interface?download=true
inline.NumInlined: 422
inline.NumDeleted: 270
begin_hunk_0_@JpegLsDecodeRect:bb.a

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %7, align 1, !tbaa !17
  br label %_ZL17ClearErrorMessagePc.exit21

_ZL17ClearErrorMessagePc.exit21:                  ; preds = %bb.k, %bb.l
  call void @__cxa_end_catch()
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.n

bb.o:                                             ; preds = %_ZL17ClearErrorMessagePc.exit21, %_ZL24SystemErrorToCharLSErrorRKNSt3__112system_errorE.exit, %_ZL17ClearErrorMessagePc.exit
  %.017 = phi i32 [ 0, %_ZL17ClearErrorMessagePc.exit ], [ %i.m, %_ZL24SystemErrorToCharLSErrorRKNSt3__112system_errorE.exit ], [ 14, %_ZL17ClearErrorMessagePc.exit21 ]
  ret i32 %.017

bb.p:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #21
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !17
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.a to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.017.i = phi ptr [ %i.h, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit: ; preds = %bb.d, %bb.e
  %.018.i = phi ptr [ %i.n, %bb.d ], [ %.017.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.a
  store i8 0, ptr %i.o, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__112system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() local_unnamed_addr #2

declare void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.9) #22
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #22
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE21__push_back_slow_pathIS5_EEPS5_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load ptr, ptr %0, align 8, !tbaa !54
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #22
  unreachable

_ZNKSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775800
  %i.n = ashr exact i64 %i.m, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEEEDaRT_m.exit.i: ; preds = %_ZNKSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38  ; 6 uses
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !54   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 6 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !40
  store ptr null, ptr %1, align 8, !tbaa !40
  store ptr %i.u, ptr %i.s, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.not30.i.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not30.i.i, label %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.critedge, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEEEDaRT_m.exit.i
  %.pre813 = ptrtoaddr ptr %.pre8 to i64
  %.pre14 = ptrtoaddr ptr %.pre to i64
  %2 = add i64 %.pre14, -8
  %3 = sub i64 %2, %.pre813                       ; 2 uses
  %4 = lshr i64 %3, 3
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %5, 4611686018427387900        ; 3 uses
  %6 = mul i64 %n.vec, -8                         ; 2 uses
  %7 = getelementptr i8, ptr %.pre, i64 %6
  %8 = getelementptr i8, ptr %i.s, i64 %6         ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %9 = mul i64 %index, -8                         ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre, i64 %9 ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.s, i64 %9 ; 2 uses
  %10 = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %11 = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %10, align 8, !tbaa !40
  %wide.load16 = load <2 x ptr>, ptr %11, align 8, !tbaa !40
  store <2 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !40
  store <2 x ptr> splat (ptr null), ptr %11, align 8, !tbaa !40
  %12 = getelementptr inbounds i8, ptr %next.gep15, i64 -16
  %13 = getelementptr inbounds i8, ptr %next.gep15, i64 -32
  store <2 x ptr> %wide.load, ptr %12, align 8, !tbaa !33
  store <2 x ptr> %wide.load16, ptr %13, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %bb.d, label %.lr.ph.i.i.preheader18

.lr.ph.i.i.preheader18:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.123.031.i.i.ph = phi ptr [ %.pre, %.lr.ph.i.i.preheader ], [ %7, %middle.block ]
  %.ph = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %8, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader18, %.lr.ph.i.i
  %.sroa.123.031.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.123.031.i.i.ph, %.lr.ph.i.i.preheader18 ]
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader18 ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.sroa.123.031.i.i, i64 -8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  store ptr null, ptr %i.y, align 8, !tbaa !40
  store ptr %i.z, ptr %i.x, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.y, %.pre8
  br i1 %.not.i.i, label %bb.d, label %.lr.ph.i.i, !llvm.loop !87

bb.d:                                             ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi ptr [ %8, %middle.block ], [ %i.x, %.lr.ph.i.i ]
  store ptr %.lcssa, ptr %0, align 8, !tbaa !39
  store ptr %i.v, ptr %i.b, align 8, !tbaa !39
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !39
  store ptr %i.t, ptr %i.a, align 8, !tbaa !39
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %i.ab = phi ptr [ %i.ac, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ], [ %.pre, %bb.d ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 3 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i, label %_ZNKSt3__114default_deleteI11JpegSegmentEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt3__114default_deleteI11JpegSegmentEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #19, !inline_history !88
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i: ; preds = %_ZNKSt3__114default_deleteI11JpegSegmentEclB8ne180100EPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.pre8, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.critedge: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEEEDaRT_m.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !39
  store ptr %i.v, ptr %i.b, align 8, !tbaa !39
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !39
  store ptr %i.t, ptr %i.a, align 8, !tbaa !39
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i, %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.critedge
  %.sroa.16.0 = phi ptr [ %i.ah, %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i.critedge ], [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS3_EEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ]
  %.not.i5 = icmp eq ptr %.pre8, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i
  %i.ai = ptrtoint ptr %.sroa.16.0 to i64
  %i.aj = ptrtoint ptr %.pre8 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre8, i64 noundef %i.ak) #20
  br label %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEERNS_9allocatorIS5_EEE5clearB8ne180100Ev.exit.i, %bb.e
  ret ptr %i.v
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.10) #22
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.10) #22
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @_ZN16JpegStreamWriterD2Ev, null, null, null, null, null, null, null, null, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"_ZTSN6charls14InterleaveModeE", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSN6charls19ColorTransformationE", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !14, i64 28, i64 4, !16, i64 32, i64 1, !17, i64 36, i64 4, !12, i64 40, i64 4, !12, i64 44, i64 4, !12, i64 48, i64 4, !12, i64 52, i64 4, !12, i64 56, i64 4, !12, i64 60, i64 4, !12, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 4, !12, i64 76, i64 4, !12, i64 80, i64 8, !19}
!21 = !{!"_ZTS19JlsCustomParameters", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16}
!22 = !{!"_ZTS14JfifParameters", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !18, i64 24}
!23 = !{!"_ZTS13JlsParameters", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !13, i64 24, !15, i64 28, !8, i64 32, !21, i64 36, !22, i64 56}
!24 = !{!23, !9, i64 0}
!25 = !{!23, !9, i64 8}
!26 = !{!23, !13, i64 24}
!27 = !{!23, !9, i64 16}
!28 = !{!23, !9, i64 56}
!29 = !{!"p1 _ZTS17JpegMarkerSegment", !18, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS11JpegSegment", !18, i64 0}
!32 = !{!"_ZTSNSt3__122__compressed_pair_elemIP11JpegSegmentLi0ELb0EEE", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"p1 _ZTSNSt3__110unique_ptrI11JpegSegmentNS_14default_deleteIS1_EEEE", !18, i64 0}
!35 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEELi0ELb0EEE", !34, i64 0}
!36 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEEE", !35, i64 0}
!37 = !{!"_ZTSNSt3__16vectorINS_10unique_ptrI11JpegSegmentNS_14default_deleteIS2_EEEENS_9allocatorIS5_EEEE", !34, i64 0, !34, i64 8, !36, i64 16}
!38 = !{!37, !34, i64 8}
!39 = !{!34, !34, i64 0}
!40 = !{!31, !31, i64 0}
!41 = !{!"vtable pointer", !7, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!23, !9, i64 4}
!44 = !{!"p1 _ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !18, i64 0}
!45 = !{!"p1 omnipotent char", !18, i64 0}
!46 = !{!"long", !8, i64 0}
!47 = !{!"_ZTS14ByteStreamInfo", !44, i64 0, !45, i64 8, !46, i64 16}
!48 = !{!47, !45, i64 8}
!49 = !{!47, !46, i64 16}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"bool", !8, i64 0}
!52 = !{!"_ZTS16JpegStreamWriter", !51, i64 0, !47, i64 8, !46, i64 32, !9, i64 40, !37, i64 48}
!53 = !{!46, !46, i64 0}
!54 = !{!37, !34, i64 0}
!55 = !{!"p1 _ZTSNSt3__114error_categoryE", !18, i64 0}
!56 = !{!"_ZTSNSt3__110error_codeE", !9, i64 0, !55, i64 8}
!57 = !{!56, !55, i64 8}
!58 = !{!56, !9, i64 0}
!59 = !{!44, !44, i64 0}
!60 = !{!45, !45, i64 0}
!61 = distinct !{!61, !50}
!62 = !{!23, !9, i64 12}
!63 = !{!23, !15, i64 28}
!64 = !{!52, !46, i64 32}
!65 = !{!47, !44, i64 0}
!66 = distinct !{null, null, null, null, null, null, null, null, null}
!67 = distinct !{!67, i1 true, !"_Z13FromByteArrayPKvm"}
!68 = distinct !{!68, !67, !"_Z13FromByteArrayPKvm: argument 0"}
!69 = !{!68}
!70 = distinct !{!70, i1 true, !"_Z13FromByteArrayPKvm"}
!71 = distinct !{!71, !70, !"_Z13FromByteArrayPKvm: argument 0"}
!72 = distinct !{!72, i1 true, !"_Z13FromByteArrayPKvm"}
!73 = distinct !{!73, !72, !"_Z13FromByteArrayPKvm: argument 0"}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, i1 true, !"_Z13FromByteArrayPKvm"}
!76 = distinct !{!76, !75, !"_Z13FromByteArrayPKvm: argument 0"}
!77 = !{!71}
!78 = !{!73}
!79 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !45, i64 0}
!80 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !79, i64 0}
!81 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !45, i64 0, !45, i64 8, !80, i64 16}
!82 = !{!81, !45, i64 0}
!83 = !{!81, !45, i64 8}
!84 = !{!52, !51, i64 0}
!85 = !{!76}
!86 = distinct !{!86, !50, !89, !90}
!87 = distinct !{!87, !50, !90, !89}
!88 = distinct !{null, null, null, null, null, null, null, null, null}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
