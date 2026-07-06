inline.NumInlined: 143
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes40convertUTF16ToUTF8BufferWithReplacementsEN4llvh15MutableArrayRefIhEENS0_8ArrayRefIDsEE:bb.a
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.idx = shl nuw nsw i64 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.074 = phi ptr [ %0, %.lr.ph ], [ %.261, %bb.f ] ; 4 uses
  %.02073 = phi ptr [ %2, %.lr.ph ], [ %i.ab, %bb.f ] ; 4 uses
  %.04072 = phi i32 [ 0, %.lr.ph ], [ %.24259, %bb.f ] ; 4 uses
  %.04371 = phi i32 [ 0, %.lr.ph ], [ %.24558, %bb.f ] ; 5 uses
  %i.d = load i16, ptr %.02073, align 2, !tbaa !16 ; 2 uses
  %i.e = icmp ult i16 %i.d, 128
  br i1 %i.e, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %.04371, 1                       ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %.thread, label %.thread52

.thread52:                                        ; preds = %bb.c
  %i.i = trunc nuw nsw i16 %i.d to i8
  store i8 %i.i, ptr %.074, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.k = add i32 %.04072, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = call fastcc { i32, i64 } @_ZN6hermesL20convertToCodePointAtEPKDsS1_(ptr noundef nonnull %.02073, ptr noundef nonnull %i.b) ; 2 uses
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
  %i.u = getelementptr [2 x i8], ptr %.02073, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.074, ptr nonnull align 1 %4, i64 %i.p, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.074, i64 %i.p
  %i.x = trunc i64 %i.p to i32
  %i.y = add i32 %.04371, %i.x
  %i.z = trunc i64 %i.t to i32
  %i.aa = add i32 %.04072, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread52
  %.261 = phi ptr [ %i.j, %.thread52 ], [ %i.w, %bb.e ]
  %.12160 = phi ptr [ %.02073, %.thread52 ], [ %i.v, %bb.e ]
  %.24259 = phi i32 [ %i.k, %.thread52 ], [ %i.aa, %bb.e ] ; 2 uses
  %.24558 = phi i32 [ %i.f, %.thread52 ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.12160, i64 2 ; 2 uses
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
  %i.e = and i64 %i.b, 3
  %.not45 = icmp eq i64 %i.e, 0
  br i1 %.not45, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.g = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %i.h = add i64 %i.c, -1
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = and i64 %i.i, 3
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.l = load i8, ptr %i.f, align 1, !tbaa !10
  %i.m = or i8 %i.l, %i.g                         ; 2 uses
  %i.n = add i64 %i.c, -2
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = and i64 %i.o, 3
  %.not.1 = icmp eq i64 %i.p, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.r = load i8, ptr %i.k, align 1, !tbaa !10
  %i.s = or i8 %i.r, %i.m                         ; 2 uses
  %i.t = add i64 %i.c, -3
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = and i64 %i.u, 3
  %.not.2 = icmp eq i64 %i.v, 0
  br i1 %.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i8, ptr %i.q, align 1, !tbaa !10
  %i.y = or i8 %i.x, %i.s
  %i.z = add i64 %i.c, -4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa103 = phi ptr [ %i.f, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.w, %.lr.ph.3 ]
  %.lcssa102 = phi i8 [ %i.g, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.s, %.lr.ph.2 ], [ %i.y, %.lr.ph.3 ]
  %.lcssa101 = phi i64 [ %i.h, %.lr.ph ], [ %i.n, %.lr.ph.1 ], [ %i.t, %.lr.ph.2 ], [ %i.z, %.lr.ph.3 ]
  %i.aa = icmp sgt i8 %.lcssa102, -1
  br i1 %i.aa, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader42, %._crit_edge
  %.025.lcssa68 = phi i64 [ %.lcssa101, %._crit_edge ], [ %i.c, %.preheader42 ] ; 3 uses
  %.030.lcssa67 = phi ptr [ %.lcssa103, %._crit_edge ], [ %0, %.preheader42 ] ; 2 uses
  %i.ab = icmp ugt i64 %.025.lcssa68, 3
  br i1 %i.ab, label %.lr.ph81, label %.loopexit

.preheader:                                       ; preds = %.lr.ph81
  %i.ac = add i64 %.12680, -4                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.13179, i64 4 ; 2 uses
  %i.ae = icmp ugt i64 %i.ac, 3
  br i1 %i.ae, label %.lr.ph81, label %.loopexit, !llvm.loop !22

.lr.ph81:                                         ; preds = %.preheader.preheader, %.preheader
  %.12680 = phi i64 [ %i.ac, %.preheader ], [ %.025.lcssa68, %.preheader.preheader ]
  %.13179 = phi ptr [ %i.ad, %.preheader ], [ %.030.lcssa67, %.preheader.preheader ] ; 2 uses
  %i.af = load i32, ptr %.13179, align 4, !tbaa !3
  %i.ag = and i32 %i.af, -2139062144
  %.not39 = icmp eq i32 %i.ag, 0
  br i1 %.not39, label %.preheader, label %.critedge, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %bb.a
  %.434 = phi ptr [ %0, %bb.a ], [ %.030.lcssa67, %.preheader.preheader ], [ %i.ad, %.preheader ]
  %.429 = phi i64 [ %i.c, %bb.a ], [ %.025.lcssa68, %.preheader.preheader ], [ %i.ac, %.preheader ] ; 2 uses
  %.not4051 = icmp eq i64 %.429, 0
  br i1 %.not4051, label %.critedge, label %.lr.ph56

.lr.ph56:                                         ; preds = %.loopexit, %.lr.ph56
  %.054 = phi i8 [ %2, %.lr.ph56 ], [ 0, %.loopexit ]
  %.553 = phi i64 [ %i.ah, %.lr.ph56 ], [ %.429, %.loopexit ]
  %.53552 = phi ptr [ %i.ai, %.lr.ph56 ], [ %.434, %.loopexit ] ; 2 uses
  %i.ah = add i64 %.553, -1                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.53552, i64 1
  %i.aj = load i8, ptr %.53552, align 1, !tbaa !10
  %2 = or i8 %i.aj, %.054                         ; 2 uses
  %.not40 = icmp eq i64 %i.ah, 0
  br i1 %.not40, label %._crit_edge57.loopexit.loopexit, label %.lr.ph56, !llvm.loop !23

._crit_edge57.loopexit.loopexit:                  ; preds = %.lr.ph56
  %3 = icmp sgt i8 %2, -1
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph81, %.loopexit, %._crit_edge57.loopexit.loopexit, %._crit_edge
  %.4 = phi i1 [ %3, %._crit_edge57.loopexit.loopexit ], [ false, %._crit_edge ], [ true, %.loopexit ], [ false, %.lr.ph81 ]
  ret i1 %.4
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
  %.not77 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not77)
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
  %.not75 = icmp slt i8 %i.t, -64
  tail call void @llvm.assume(i1 %.not75)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10    ; 2 uses
  %.not76 = icmp slt i8 %i.v, -64
  tail call void @llvm.assume(i1 %.not76)
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
  %.not73 = icmp slt i8 %i.al, -64
  tail call void @llvm.assume(i1 %.not73)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10  ; 2 uses
  %.not74 = icmp slt i8 %i.an, -64
end_hunk_0
