Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/UTF8?download=true
inline.NumInlined: 143
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPcvEEN9__gnu_cxx17__normal_iteratorIS6_S4_EENS8_IPKcS4_EET_SD_:bb.a
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_PcSA_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef %i.f) #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_PcSA_.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %3 to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %2, i64 noundef %i.j) #11 ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  ret ptr %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZN6hermes40convertUTF16ToUTF8BufferWithReplacementsEN4llvh15MutableArrayRefIhEENS0_8ArrayRefIDsEE(ptr nofree writeonly captures(none) %0, i64 %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"struct.std::array", align 1       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.idx = shl nuw nsw i64 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.02074 = phi ptr [ %2, %.lr.ph ], [ %i.ab, %bb.f ] ; 4 uses
  %.02273 = phi ptr [ %0, %.lr.ph ], [ %.260, %bb.f ] ; 4 uses
  %.04072 = phi i32 [ 0, %.lr.ph ], [ %.24259, %bb.f ] ; 4 uses
  %.04371 = phi i32 [ 0, %.lr.ph ], [ %.24558, %bb.f ] ; 5 uses
  %i.d = load i16, ptr %.02074, align 2, !tbaa !16 ; 2 uses
  %i.e = icmp ult i16 %i.d, 128
  br i1 %i.e, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %.04371, 1                       ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %.thread, label %.thread52

.thread52:                                        ; preds = %bb.c
  %i.i = trunc nuw nsw i16 %i.d to i8
  store i8 %i.i, ptr %.02273, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %.02273, i64 1
  %i.k = add i32 %.04072, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = call fastcc { i32, i64 } @_ZN6hermesL20convertToCodePointAtEPKDsS1_(ptr noundef nonnull %.02074, ptr noundef nonnull %i.b) ; 2 uses
  %i.m = extractvalue { i32, i64 } %i.l, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr %4, ptr %i.a, align 8, !tbaa !7
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.m)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.c                       ; 4 uses
  %i.q = zext i32 %.04371 to i64
  %i.r = add i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %.thread62, label %bb.e

.thread62:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { i32, i64 } %i.l, 1        ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %.02074, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02273, ptr nonnull align 1 %4, i64 %i.p, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.02273, i64 %i.p
  %i.x = trunc i64 %i.p to i32
  %i.y = add i32 %.04371, %i.x
  %i.z = trunc i64 %i.t to i32
  %i.aa = add i32 %.04072, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread52
  %.12161 = phi ptr [ %.02074, %.thread52 ], [ %i.v, %bb.e ]
  %.260 = phi ptr [ %i.j, %.thread52 ], [ %i.w, %bb.e ]
  %.24259 = phi i32 [ %i.k, %.thread52 ], [ %i.aa, %bb.e ] ; 2 uses
  %.24558 = phi i32 [ %i.f, %.thread52 ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.12161, i64 2 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.b
  br i1 %i.ac, label %bb.b, label %.thread, !llvm.loop !21

.thread:                                          ; preds = %bb.f, %bb.c, %bb.a, %.thread62
  %.04370 = phi i32 [ %.04371, %.thread62 ], [ 0, %bb.a ], [ %.24558, %bb.f ], [ %.04371, %bb.c ]
  %.04068 = phi i32 [ %.04072, %.thread62 ], [ 0, %bb.a ], [ %.24259, %bb.f ], [ %.04072, %bb.c ]
  %.sroa.239.0.insert.ext = zext i32 %.04370 to i64
  %.sroa.239.0.insert.shift = shl nuw i64 %.sroa.239.0.insert.ext, 32
  %.sroa.038.0.insert.ext = zext i32 %.04068 to i64
  %.sroa.038.0.insert.insert = or disjoint i64 %.sroa.239.0.insert.shift, %.sroa.038.0.insert.ext
  ret i64 %.sroa.038.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes38convertUTF16ToUTF8WithSingleSurrogatesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  store i8 0, ptr %i.d, align 1, !tbaa !10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #11
  %.idx = shl nuw nsw i64 %2, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.020 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.f ] ; 2 uses
  %i.g = load i16, ptr %.020, align 2, !tbaa !16  ; 3 uses
  %i.h = icmp ult i16 %i.g, 128
  br i1 %i.h, label %bb.c, label %bb.e, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i16 %i.g to i8
  %i.j = load i64, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.n = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.p = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.q = icmp ugt i64 %i.k, %i.p
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef null, i64 noundef 1) #11
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  store i8 %i.i, ptr %i.s, align 1, !tbaa !10
  store i64 %i.k, ptr %i.c, align 8, !tbaa !11
  %i.t = load ptr, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 0, ptr %i.u, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.v = zext i16 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr %i.a, ptr %i.b, align 8, !tbaa !7
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !15
  %i.x = load i64, ptr %i.c, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.aa = call ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIPcvEEN9__gnu_cxx17__normal_iteratorIS6_S4_EENS8_IPKcS4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.y, ptr noundef nonnull %i.a, ptr noundef %i.z) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.020, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6hermes10isAllASCIIEPKhS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = icmp ugt i64 %i.c, 3
  br i1 %i.d, label %.preheader42, label %.loopexit

.preheader42:                                     ; preds = %bb.a
  %2 = and i64 %i.b, 3
  %.not45 = icmp eq i64 %2, 0
  br i1 %.not45, label %.preheader.preheader, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader42
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %4 = load i8, ptr %0, align 1, !tbaa !10        ; 2 uses
  %5 = add i64 %i.c, -1
  %6 = ptrtoint ptr %3 to i64
  %i.e = and i64 %6, 3
  %.not.a = icmp eq i64 %i.e, 0
  br i1 %.not.a, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.g = load i8, ptr %3, align 1, !tbaa !10
  %7 = or i8 %4, %i.g                             ; 2 uses
  %i.h = add i64 %i.c, -2
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = and i64 %i.i, 3
  %.not.1 = icmp eq i64 %i.j, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %9 = load i8, ptr %i.f, align 1, !tbaa !10
  %10 = or i8 %7, %9                              ; 2 uses
  %11 = add i64 %i.c, -3
  %12 = ptrtoint ptr %8 to i64
  %13 = and i64 %12, 3
  %.not.2 = icmp eq i64 %13, 0
  br i1 %.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i8, ptr %8, align 1, !tbaa !10
  %16 = or i8 %10, %15
  %17 = add i64 %i.c, -4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.a
  %.lcssa92 = phi ptr [ %3, %.lr.ph.a ], [ %i.f, %.lr.ph.1 ], [ %8, %.lr.ph.2 ], [ %14, %.lr.ph.3 ]
  %.lcssa91.in = phi i8 [ %4, %.lr.ph.a ], [ %7, %.lr.ph.1 ], [ %10, %.lr.ph.2 ], [ %16, %.lr.ph.3 ]
  %.lcssa90 = phi i64 [ %5, %.lr.ph.a ], [ %i.h, %.lr.ph.1 ], [ %11, %.lr.ph.2 ], [ %17, %.lr.ph.3 ]
  %18 = icmp sgt i8 %.lcssa91.in, -1
  br i1 %18, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader42, %._crit_edge
  %.023.lcssa68 = phi i64 [ %.lcssa90, %._crit_edge ], [ %i.c, %.preheader42 ] ; 3 uses
  %.025.lcssa67 = phi ptr [ %.lcssa92, %._crit_edge ], [ %0, %.preheader42 ] ; 2 uses
  %i.k = icmp ugt i64 %.023.lcssa68, 3
  br i1 %i.k, label %.lr.ph81, label %.loopexit

.preheader:                                       ; preds = %.lr.ph81
  %i.l = add i64 %.12480, -4                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.12679, i64 4 ; 2 uses
  %i.n = icmp ugt i64 %i.l, 3
  br i1 %i.n, label %.lr.ph81, label %.loopexit, !llvm.loop !22

.lr.ph81:                                         ; preds = %.preheader.preheader, %.preheader
  %.12480 = phi i64 [ %i.l, %.preheader ], [ %.023.lcssa68, %.preheader.preheader ]
  %.12679 = phi ptr [ %i.m, %.preheader ], [ %.025.lcssa67, %.preheader.preheader ] ; 2 uses
  %i.o = load i32, ptr %.12679, align 4, !tbaa !3
  %i.p = and i32 %i.o, -2139062144
  %.not39 = icmp eq i32 %i.p, 0
  br i1 %.not39, label %.preheader, label %.critedge, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.a
  %.429 = phi ptr [ %0, %bb.a ], [ %.025.lcssa67, %.preheader.preheader ], [ %i.m, %.preheader ]
  %.4 = phi i64 [ %i.c, %bb.a ], [ %.023.lcssa68, %.preheader.preheader ], [ %i.l, %.preheader ] ; 2 uses
  %.not4051 = icmp eq i64 %.4, 0
  br i1 %.not4051, label %.critedge, label %.lr.ph56

.lr.ph56:                                         ; preds = %.loopexit, %.lr.ph56
  %.054 = phi i32 [ %i.u, %.lr.ph56 ], [ 0, %.loopexit ]
  %.553 = phi i64 [ %i.q, %.lr.ph56 ], [ %.4, %.loopexit ]
  %.53052 = phi ptr [ %i.r, %.lr.ph56 ], [ %.429, %.loopexit ] ; 2 uses
  %i.q = add i64 %.553, -1                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.53052, i64 1
  %i.s = load i8, ptr %.53052, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = or i32 %.054, %i.t                       ; 2 uses
  %.not40 = icmp eq i64 %i.q, 0
  br i1 %.not40, label %._crit_edge57.loopexit.loopexit, label %.lr.ph56, !llvm.loop !23

._crit_edge57.loopexit.loopexit:                  ; preds = %.lr.ph56
  %i.v = and i32 %i.u, 128
  %i.w = icmp eq i32 %i.v, 0
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph81, %.loopexit, %._crit_edge57.loopexit.loopexit, %._crit_edge
  %.435 = phi i1 [ %i.w, %._crit_edge57.loopexit.loopexit ], [ false, %._crit_edge ], [ true, %.loopexit ], [ false, %.lr.ph81 ]
  ret i1 %.435
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes47convertUTF8WithSurrogatesToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !29
  %i.e = icmp ugt i64 %2, 8
  br i1 %i.e, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread: ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b, i64 noundef %2, i64 noundef 2) #11
  %.pre = load ptr, ptr %3, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  br label %.lr.ph.i.preheader

_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit:     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %i.f = phi ptr [ %.pre, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread ], [ %i.b, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i
  %i.h = phi ptr [ %i.aa, %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  %.03.i = phi ptr [ %i.z, %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.k, ptr %i.a, align 8, !tbaa !7
  %i.l = load i8, ptr %i.h, align 1, !tbaa !10
  %i.m = sext i8 %i.l to i32
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i

_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.m, %bb.b ], [ %i.n, %bb.c ] ; 4 uses
  %i.o = icmp ult i32 %.0.i.i, 65536
  br i1 %i.o, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i
  %i.p = trunc nuw i32 %.0.i.i to i16
  br label %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i

bb.e:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_.exit.i
  %i.q = add i32 %.0.i.i, 983040
  %i.r = lshr i32 %i.q, 10
  %i.s = trunc i32 %i.r to i16
  %i.t = and i16 %i.s, 1023
  %i.u = or disjoint i16 %i.t, -10240
  %i.v = getelementptr inbounds nuw i8, ptr %.03.i, i64 2
  %i.w = trunc i32 %.0.i.i to i16
  %i.x = and i16 %i.w, 1023
  %i.y = or disjoint i16 %i.x, -9216
  store i16 %i.y, ptr %i.v, align 2, !tbaa !16
  br label %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i

_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i:        ; preds = %bb.e, %bb.d
  %.sink6.i = phi i64 [ 2, %bb.d ], [ 4, %bb.e ]
  %.sink.i = phi i16 [ %i.p, %bb.d ], [ %i.u, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i, i64 %.sink6.i ; 2 uses
  store i16 %.sink.i, ptr %.03.i, align 2, !tbaa !16
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.g
  br i1 %i.ab, label %.lr.ph.i, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit.loopexit, !llvm.loop !30

_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit.loopexit: ; preds = %_ZN6hermes11encodeUTF16IPDsEEvRT_j.exit.i
  %.pre4 = load ptr, ptr %3, align 8, !tbaa !26
  br label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit

_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit: ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit.loopexit, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
  %i.ac = phi ptr [ %i.b, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit ], [ %.pre4, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.b, %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit ], [ %i.z, %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = ptrtoint ptr %.0.lcssa.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = call noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.ac, i64 %i.ag, i64 noundef 0) ; 0 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZN4llvh11SmallVectorIDsLj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit
  call void @free(ptr noundef %i.ai) #11
  br label %_ZN4llvh11SmallVectorIDsLj8EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj8EED2Ev.exit:           ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16IPDsEET_S2_PKcS4_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16IPDsEET_S3_PKcS5_EUlRKN4llvh5TwineEE_EEjRS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not79 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not79)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !7
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.e, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10    ; 2 uses
  %.not77 = icmp slt i8 %i.t, -64
  tail call void @llvm.assume(i1 %.not77)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10    ; 2 uses
  %.not78 = icmp slt i8 %i.v, -64
  tail call void @llvm.assume(i1 %.not78)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.w, ptr %0, align 8, !tbaa !7
  %i.x = shl nsw i32 %i.e, 12
  %i.y = and i32 %i.x, 61440
  %i.z = and i8 %i.t, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = and i8 %i.v, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %i.e, 248
  %i.ah = icmp eq i32 %i.ag, 240
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10  ; 2 uses
  %.not = icmp slt i8 %i.aj, -64
  tail call void @llvm.assume(i1 %.not)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10  ; 2 uses
  %.not75 = icmp slt i8 %i.al, -64
  tail call void @llvm.assume(i1 %.not75)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10  ; 2 uses
  %.not76 = icmp slt i8 %i.an, -64
  tail call void @llvm.assume(i1 %.not76)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ao, ptr %0, align 8, !tbaa !7
  %i.ap = shl nsw i32 %i.e, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = and i8 %i.aj, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 12
  %i.au = or disjoint i32 %i.at, %i.aq            ; 3 uses
  %i.av = and i8 %i.al, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i8 %i.an, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.au            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.au, 65535
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ugt i32 %i.au, 1114111
  br i1 %i.bd, label %bb.g, label %.critedge, !prof !31

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bf, align 1, !tbaa !32
  store ptr @.str.4, ptr %2, align 8, !tbaa !10
  store i8 3, ptr %i.be, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bg = zext nneg i32 %i.bb to i64
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !36
  store ptr %i.a, ptr %3, align 8, !tbaa !10, !alias.scope !37
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !10, !alias.scope !37
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 15, ptr %i.bi, align 8, !tbaa !35, !alias.scope !37
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bj, align 1, !tbaa !32, !alias.scope !37
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %1, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(18) %3)
  unreachable

bb.h:                                             ; preds = %bb.e
  store ptr %i.ai, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bl, align 1, !tbaa !32
  store ptr @.str.5, ptr %5, align 8, !tbaa !10
  store i8 3, ptr %i.bk, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bm = zext i8 %i.d to i64
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !36
  store ptr %i.b, ptr %6, align 8, !tbaa !10, !alias.scope !40
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !10, !alias.scope !40
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 15, ptr %i.bo, align 8, !tbaa !35, !alias.scope !40
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.bp, align 1, !tbaa !32, !alias.scope !40
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(18) %5, ptr noundef nonnull align 8 dereferenceable(18) %6)
  unreachable

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.f
  %.668 = phi i32 [ %i.bb, %bb.f ], [ %i.af, %bb.d ], [ %i.p, %bb.b ]
  ret i32 %.668
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #8 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !noalias !43 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !35, !noalias !43 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !35, !alias.scope !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !32, !alias.scope !43
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !32, !noalias !43
  %i.m = icmp eq i8 %i.l, 1                       ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !noalias !43
  %spec.select.i = select i1 %i.m, i8 %i.b, i8 2
  %spec.select14.i = select i1 %i.m, ptr %.sroa.04.0.copyload.i, ptr %1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32, !noalias !43
  %i.p = icmp eq i8 %i.o, 1                       ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !43
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.03.0.i = select i1 %i.p, ptr %.sroa.03.0.copyload.i, ptr %2
  store ptr %spec.select14.i, ptr %0, align 8, !tbaa !10, !alias.scope !43
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.q, align 8, !tbaa !10, !alias.scope !43
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %spec.select.i, ptr %i.r, align 8, !tbaa !35, !alias.scope !43
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !32, !alias.scope !43
  br label %_ZNK4llvh5Twine6concatERKS0_.exit

_ZNK4llvh5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !5, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!12, !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"char16_t", !5, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20, !24, !25}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!27, !9, i64 0}
!27 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!28 = !{!27, !4, i64 8}
!29 = !{!27, !4, i64 12}
!30 = distinct !{!30, !20}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!33, !34, i64 17}
!33 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !34, i64 16, !34, i64 17}
!34 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!35 = !{!33, !34, i64 16}
!36 = !{!14, !14, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4llvh5Twine9utohexstrERKm: argument 0"}
!39 = distinct !{!39, !"_ZN4llvh5Twine9utohexstrERKm"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4llvh5Twine9utohexstrERKm: argument 0"}
!42 = distinct !{!42, !"_ZN4llvh5Twine9utohexstrERKm"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!45 = distinct !{!45, !"_ZNK4llvh5Twine6concatERKS0_"}
!46 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 1, !47, i64 17, i64 1, !47}
!47 = !{!34, !34, i64 0}
end_hunk_0
