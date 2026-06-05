inline.NumInlined: 2868
inline.NumDeleted: 1221
begin_hunk_0_@_ZN5arrow18TypedChunkLocationIiEC2Eii
define weak_odr void @_ZN5arrow18TypedChunkLocationIiEC2Eii(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIiEC5Eii) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIiEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIsEC2Ess(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIsEC5Ess) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIsEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::ipc::IpcReadOptions", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN5arrow3ipc14IpcReadOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcReadOptions") align 8 %2)
  invoke void @_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i2, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit3

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit3:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %4 = alloca %"class.std::shared_ptr.91", align 16 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.74", align 16   ; 14 uses
  %7 = alloca %"class.std::shared_ptr.79", align 16 ; 9 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::shared_ptr.82", align 16 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.79", align 16 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.56", align 8 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %14 = alloca %"class.std::vector.74", align 16  ; 9 uses
  %15 = alloca %"class.std::shared_ptr.56", align 8 ; 6 uses
  %16 = alloca %"class.arrow::Result.9", align 8  ; 11 uses
  %17 = alloca %"class.arrow::Result.15", align 8 ; 13 uses
  %18 = alloca %"class.std::shared_ptr.19", align 8 ; 6 uses
  %19 = alloca %"class.arrow::Result.15", align 8 ; 12 uses
  %20 = alloca %"class.arrow::Result.9", align 8  ; 11 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %22 = alloca %"class.arrow::Result.15", align 8 ; 13 uses
  %23 = alloca %"class.std::shared_ptr.19", align 16 ; 6 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 14 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %28 = alloca %"class.arrow::Status", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.9") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.e = load ptr, ptr %20, align 8, !tbaa !45
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %20) #24
  br label %bb.ip

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp slt i64 %i.h, 12
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %21, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str)
          to label %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit unwind label %bb.g

_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit: ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %21) #24
  %i.j = load ptr, ptr %21, align 8, !tbaa !45    ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !50, !range !60, !noundef !61
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.ip

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.is

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.o = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0, i64 noundef 6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %22, align 8, !tbaa !45
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.l, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #24
  br label %bb.ig

bb.k:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !68, !noalias !69
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !70, !noalias !69
  store ptr null, ptr %i.x, align 8, !tbaa !73, !noalias !69
  store <2 x ptr> %i.y, ptr %23, align 16, !tbaa !68, !alias.scope !69
  store ptr null, ptr %i.v, align 8, !tbaa !70, !noalias !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = icmp ne i32 %i.ac, 826361158
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.fq

bb.m:                                             ; preds = %bb.l
  %i.ag = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %bb.n unwind label %bb.fi      ; 19 uses

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 5 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !74, !noalias !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !79, !noalias !76
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ag, align 8, !tbaa !43, !noalias !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !noalias !76
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1E, i64 16), ptr %i.aj, align 8, !tbaa !43, !noalias !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ao = load ptr, ptr %1, align 8, !tbaa !38, !noalias !80 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !38, !noalias !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73, !noalias !80 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !80
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.o
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.o
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !73, !noalias !80 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ax, align 8, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !79
  %i.bc = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #24, !inline_history !84
  %i.bf = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #24, !inline_history !84
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !80
  %.not.i9.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i9.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !79
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !200
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !79
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !201
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !201
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !154

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !50, !range !60, !noundef !61
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow3ipc7feather15WriteProperties8DefaultsEv(ptr dead_on_unwind noalias writable writeonly sret(%"struct.arrow::ipc::feather::WriteProperties") align 8 captures(none) initializes((0, 4), (8, 24)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  store i32 3, ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 65536, ptr %i.a, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -2147483648, ptr %i.c, align 4, !tbaa !206
  store i32 0, ptr %i.b, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr.35", align 16 ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.std::shared_ptr.138", align 8 ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %12 = alloca %"class.arrow_vendored_private::flatbuffers::FlatBufferBuilderImpl", align 8 ; 37 uses
  %13 = alloca %"struct.arrow::ipc::feather::(anonymous namespace)::ColumnMetadata", align 8 ; 21 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %15 = alloca %"class.std::shared_ptr.104", align 8 ; 7 uses
  %16 = alloca %"class.std::shared_ptr.82", align 8 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.19", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 11 uses
  %20 = alloca %"class.arrow::Result.37", align 8 ; 12 uses
  %21 = alloca %"class.std::unique_ptr.41", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.49", align 16 ; 9 uses
  %23 = alloca %"class.arrow::Result.52", align 8 ; 12 uses
  %24 = alloca %"class.std::shared_ptr.56", align 8 ; 7 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.b = load i32, ptr %3, align 8, !tbaa !202
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.cq

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !211
  %i.d = load ptr, ptr %2, align 8, !tbaa !43, !noalias !211
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !211
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 4), !noalias !211, !inline_history !216
  %i.g = load ptr, ptr %10, align 8, !tbaa !45, !noalias !211 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !211
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit84.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit84.i.i.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !211
  %i.i = load ptr, ptr %2, align 8, !tbaa !43, !noalias !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !211
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZN5arrow3ipc7feather12_GLOBAL__N_113kPaddingBytesE, i64 noundef 4), !noalias !211, !inline_history !216
  %i.l = load ptr, ptr %11, align 8, !tbaa !45, !noalias !211 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !211
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit94.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit84.i.i.i, %bb.b
  %.ph.i = phi ptr [ %i.l, %_ZN5arrow6StatusD2Ev.exit84.i.i.i ], [ %i.g, %bb.b ]
  store ptr %.ph.i, ptr %0, align 8, !tbaa !45, !alias.scope !208
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_114WriteFeatherV1ERKNS_5TableEPNS_2io12OutputStreamE.exit

_ZN5arrow6StatusD2Ev.exit94.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit84.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !208
  store ptr null, ptr %12, align 8, !tbaa !217, !noalias !208
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !220, !noalias !208
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 1024, ptr %i.o, align 8, !tbaa !221, !noalias !208
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 2147483647, ptr %i.p, align 8, !tbaa !222, !noalias !208
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store i64 8, ptr %i.q, align 8, !tbaa !223, !noalias !208
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 7 uses
  store i64 0, ptr %i.r, align 8, !tbaa !224, !noalias !208
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 9 uses
  store i32 0, ptr %i.s, align 8, !tbaa !225, !noalias !208
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !226, !noalias !208
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 3 uses
  store i8 0, ptr %i.v, align 8, !tbaa !229, !noalias !208
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 97
  store i8 0, ptr %i.w, align 1, !tbaa !230, !noalias !208
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %i.t, i8 0, i64 30, i1 false), !noalias !208
  store i64 1, ptr %i.x, align 8, !tbaa !231, !noalias !208
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  store i8 0, ptr %i.y, align 8, !tbaa !232, !noalias !208
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 113
  store i8 1, ptr %i.z, align 1, !tbaa !233, !noalias !208
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr null, ptr %i.aa, align 8, !tbaa !234, !noalias !208
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 92 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 80
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 84 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit94.i
  %.sroa.13.0.i = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %.sroa.13.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 7 uses
  %.sroa.9.0.i = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %.sroa.9.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 5 uses
  %.sroa.0185.0.i = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %.sroa.0185.5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 17 uses
  %.058.i = phi i32 [ 0, %_ZN5arrow6StatusD2Ev.exit94.i ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !235, !noalias !208
  %i.ay = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_ZNK5arrow5Table11num_columnsEv.exit.i unwind label %bb.d, !noalias !208

_ZNK5arrow5Table11num_columnsEv.exit.i:           ; preds = %bb.c
  %.not.i = icmp slt i32 %.058.i, %i.ay
  br i1 %.not.i, label %bb.e, label %.critedge85.i

bb.d:                                             ; preds = %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.e:                                             ; preds = %_ZNK5arrow5Table11num_columnsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !208
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !129, !noalias !208
  store i64 0, ptr %i.ae, align 8, !tbaa !131, !noalias !208
  store i8 0, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !208
  %i.ba = load ptr, ptr %1, align 8, !tbaa !43, !noalias !208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !208
  invoke void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.104") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.058.i)
          to label %bb.f unwind label %bb.ai, !noalias !208

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %15, align 8, !tbaa !236, !noalias !208 ; 2 uses
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !239, !noalias !208 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val90.i = load ptr, ptr %i.be, align 8, !tbaa !242, !noalias !208
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.bf = ptrtoint ptr %.val90.i to i64
  %i.bg = ptrtoint ptr %.val.i to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 4
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.g, label %_ZN5arrow6StatusD2Ev.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(51) @.str.12)
          to label %_ZN5arrow6StatusD2Ev.exit99.i unwind label %bb.aj, !noalias !208

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.f
  %i.bl = load ptr, ptr %.val.i, align 8, !tbaa !246, !noalias !249 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !249
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull %2, ptr noundef nonnull %13)
          to label %.noexc95.i unwind label %bb.aj, !noalias !208

.noexc95.i:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.bm = load ptr, ptr %7, align 8, !tbaa !45, !noalias !249 ; 2 uses
  store ptr %i.bm, ptr %14, align 8, !tbaa !45, !alias.scope !243, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !249
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5arrow6StatusD2Ev.exit45.i.i, label %_ZN5arrow6StatusD2Ev.exit99.i

_ZN5arrow6StatusD2Ev.exit45.i.i:                  ; preds = %.noexc95.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !250, !noalias !249
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !253, !noalias !249 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !256, !noalias !249
  switch i32 %i.bs, label %bb.v [
    i32 29, label %bb.h
    i32 16, label %bb.s
    i32 19, label %bb.t
    i32 18, label %bb.u
  ]

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit45.i.i
  store i32 1, ptr %i.af, align 8, !tbaa !270, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !249
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bl)
          to label %.noexc96.i unwind label %bb.aj, !noalias !208 ; 2 uses

.noexc96.i:                                       ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !246, !noalias !249 ; 3 uses
  store ptr %i.bu, ptr %8, align 8, !tbaa !246, !noalias !249
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !73, !noalias !249 ; 3 uses
  store ptr %i.bw, ptr %i.ah, align 8, !tbaa !73, !noalias !249
end_hunk_1
begin_hunk_2_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !376
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(31) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !377
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !377
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !noalias !377, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %2) #24, !noalias !377
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(31) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !377 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !377
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !377
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !83
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !83
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA45_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(45) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !391
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !391
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !noalias !391, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %2) #24, !noalias !391
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(45) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !391 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !391
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !391
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !83
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !83
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV111GetDataTypeEPKNS1_3fbs14PrimitiveArrayENS4_12TypeMetadataEPKvPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef readonly captures(none) %1, i8 noundef zeroext %2, ptr noundef readonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.79", align 8 ; 8 uses
  %6 = alloca %"class.std::shared_ptr.79", align 8 ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::shared_ptr.79", align 16 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::shared_ptr.79", align 16 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.79", align 16 ; 6 uses
  switch i8 %2, label %bb.cf [
    i8 1, label %bb.b
    i8 2, label %bb.ah
    i8 3, label %bb.bg
    i8 4, label %bb.br
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV111GetDataTypeEPKNS1_3fbs14PrimitiveArrayENS4_12TypeMetadataEPKvPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %1, i8 noundef zeroext 0, ptr noundef null, ptr noundef %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.a = load ptr, ptr %7, align 8, !tbaa !45     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ag

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.d = load i32, ptr %3, align 4, !tbaa !3
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !120
  %i.i = icmp ugt i16 %i.h, 4
  br i1 %i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit63
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i16, ptr %i.j, align 2, !tbaa !120  ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  br label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit

_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit: ; preds = %bb.d, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit63
  %i.q = phi ptr [ %i.p, %bb.d ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %_ZN5arrow6StatusD2Ev.exit63 ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV111GetDataTypeEPKNS1_3fbs14PrimitiveArrayENS4_12TypeMetadataEPKvPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %i.q, i8 noundef zeroext 0, ptr noundef null, ptr noundef %6)
          to label %_ZN5arrow6StatusD2Ev.exit65 unwind label %bb.e

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit
  %i.r = load ptr, ptr %8, align 8, !tbaa !45     ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit69, label %.critedge

bb.e:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ag

_ZN5arrow6StatusD2Ev.exit69:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.u = load i32, ptr %3, align 4, !tbaa !3
  %i.v = sext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %3, i64 %i.w ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120
  %i.z = icmp ugt i16 %i.y, 6
  br i1 %i.z, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata7orderedEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !120 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata7orderedEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !83
  %i.af = icmp ne i8 %i.ae, 0
  br label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata7orderedEv.exit

_ZNK5arrow3ipc7feather3fbs16CategoryMetadata7orderedEv.exit: ; preds = %bb.f, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZN5arrow6StatusD2Ev.exit69
  %i.ag = phi i1 [ %i.af, %bb.f ], [ false, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ false, %_ZN5arrow6StatusD2Ev.exit69 ]
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.79") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext %i.ag)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata7orderedEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load <2 x ptr>, ptr %9, align 16, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 8 uses
  store <2 x ptr> %i.aj, ptr %4, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.al, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !79
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #24, !inline_history !394
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #24, !inline_history !394
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.m, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, !prof !85

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #24
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !73 ; 8 uses
  %.not.i.i70 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i70, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bb, align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !79
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24, !inline_history !395
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24, !inline_history !395
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i71 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i71, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3_@_ZN5arrow6Status8FromArgsIJRA51_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  br label %common.resume
}

declare noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.138") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow11StringArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #24, !inline_history !737
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow11StringArrayEJlDnDnRKSt10shared_ptrINS0_6BufferEElEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %5, align 8, !tbaa !49
  invoke void @_ZN5arrow11StringArrayC1ElRKSt10shared_ptrINS_6BufferEES5_S5_ll(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.b, i64 noundef 0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !79
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !198
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !198
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !79
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #24, !inline_history !198
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #24, !inline_history !198
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i6 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i8 = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.aj, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, !prof !85

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.ak
}

declare void @_ZN5arrow11StringArrayC1ElRKSt10shared_ptrINS_6BufferEES5_S5_ll(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV111WriteBufferEPKhll(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 6 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %.not = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !461  ; 12 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 %4, 8
  %i.f = srem i64 %4, 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.e ; 3 uses
  %i.h = icmp eq i64 %4, 0
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !740
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !740
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !740
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.g, i64 noundef %3), !noalias !740, !inline_history !743
  %i.l = load ptr, ptr %7, align 8, !tbaa !45, !noalias !740 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !740
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit84.i, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = trunc nsw i64 %i.f to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !740
  %i.o = and i32 %i.n, 255
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %3 ; 2 uses
  %.not109.i = icmp eq i64 %3, 0
  br i1 %.not109.i, label %.critedge78.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = sub nsw i32 8, %i.n
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.052111.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.r, %.backedge.backedge ] ; 2 uses
  %.061.idx110.i = phi i64 [ 0, %.lr.ph.i ], [ %.061.idx110.i.be, %.backedge.backedge ] ; 2 uses
  %.061.ptr.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.061.idx110.i
  %i.r = getelementptr inbounds nuw i8, ptr %.052111.i, i64 1 ; 4 uses
  %i.s = load i8, ptr %.052111.i, align 1, !tbaa !83, !noalias !740
  %i.t = zext i8 %i.s to i32
  %i.u = lshr i32 %i.t, %i.o
  %i.v = load i8, ptr %i.r, align 1, !tbaa !83, !noalias !740
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, %i.q
  %i.y = or i32 %i.x, %i.u
  %i.z = trunc i32 %i.y to i8
  %.061.add.i = add nuw nsw i64 %.061.idx110.i, 1 ; 3 uses
  store i8 %i.z, ptr %.061.ptr.i, align 1, !tbaa !83, !noalias !740
  %i.aa = icmp eq i64 %.061.add.i, 256
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit86.i, label %.critedge75.i

_ZN5arrow6StatusD2Ev.exit86.i:                    ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !740
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !740
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !740
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b, i64 noundef 256), !noalias !740, !inline_history !743
  %i.ae = load ptr, ptr %8, align 8, !tbaa !45, !noalias !740 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !740
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge75.i.thread, label %_ZN5arrow6StatusD2Ev.exit

.critedge75.i:                                    ; preds = %.backedge
  %.not.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit92.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge75.i, %.critedge75.i.thread
  %.061.idx110.i.be = phi i64 [ %.061.add.i, %.critedge75.i ], [ 0, %.critedge75.i.thread ]
  br label %.backedge, !llvm.loop !744

.critedge75.i.thread:                             ; preds = %_ZN5arrow6StatusD2Ev.exit86.i
  %.not.i33 = icmp eq ptr %i.r, %i.p
  br i1 %.not.i33, label %.critedge78.i, label %.backedge.backedge

_ZN5arrow6StatusD2Ev.exit92.i:                    ; preds = %.critedge75.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !740
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !740
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !740
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b, i64 noundef %.061.add.i), !noalias !740, !inline_history !743
  %i.aj = load ptr, ptr %9, align 8, !tbaa !45, !noalias !740 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !740
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge78.i, label %_ZN5arrow6StatusD2Ev.exit

.critedge78.i:                                    ; preds = %.critedge75.i.thread, %_ZN5arrow6StatusD2Ev.exit92.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !740
  br label %_ZN5arrow6StatusD2Ev.exit84.i

_ZN5arrow6StatusD2Ev.exit84.i:                    ; preds = %.critedge78.i, %_ZN5arrow6StatusD2Ev.exit.i
  %i.al = add nsw i64 %3, 7
  %i.am = sdiv i64 %i.al, 8
  %i.an = shl nsw i64 %i.am, 3                    ; 3 uses
  %.not71.i = icmp eq i64 %i.an, %3
  br i1 %.not71.i, label %_ZN5arrow6StatusD2Ev.exit24, label %_ZN5arrow6StatusD2Ev.exit98.i

_ZN5arrow6StatusD2Ev.exit98.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit84.i
  %i.ao = sub nsw i64 %i.an, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !740
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !740
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !740
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @_ZN5arrow3ipc7feather12_GLOBAL__N_113kPaddingBytesE, i64 noundef %i.ao), !noalias !740, !inline_history !743
  %i.as = load ptr, ptr %10, align 8, !tbaa !45, !noalias !740 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !740
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN5arrow6StatusD2Ev.exit24, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit86.i, %_ZN5arrow6StatusD2Ev.exit92.i
  %.pr = phi ptr [ %i.aj, %_ZN5arrow6StatusD2Ev.exit92.i ], [ %i.ae, %_ZN5arrow6StatusD2Ev.exit86.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !740
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !745
  store i8 0, ptr %i.a, align 1, !tbaa !83, !noalias !745
  %.not41.i = icmp sgt i64 %3, 0
  br i1 %.not41.i, label %_ZN5arrow6StatusD2Ev.exit.i25, label %.critedge28.i

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i25
  %i.au = add nuw nsw i64 %.02042.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %3
  br i1 %exitcond.not.i, label %.critedge28.i, label %_ZN5arrow6StatusD2Ev.exit.i25, !llvm.loop !748

_ZN5arrow6StatusD2Ev.exit.i25:                    ; preds = %bb.d, %bb.e
  %.02042.i = phi i64 [ %i.au, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !745
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !745
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !745
  call void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a, i64 noundef 1), !noalias !745, !inline_history !749
  %i.ay = load ptr, ptr %5, align 8, !tbaa !45, !noalias !745 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !745
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.e, label %_ZN5arrow6StatusD2Ev.exit27.thread

.critedge28.i:                                    ; preds = %bb.e, %bb.d
  %i.ba = add nsw i64 %3, 7
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 3 uses
  %.not26.i = icmp eq i64 %i.bc, %3
  br i1 %.not26.i, label %_ZN5arrow6StatusD2Ev.exit31, label %_ZN5arrow6StatusD2Ev.exit36.i

_ZN5arrow6StatusD2Ev.exit36.i:                    ; preds = %.critedge28.i
  %i.bd = sub nsw i64 %i.bc, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !745
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !745
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !745
  call void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @_ZN5arrow3ipc7feather12_GLOBAL__N_113kPaddingBytesE, i64 noundef %i.bd), !noalias !745, !inline_history !749
  %i.bh = load ptr, ptr %6, align 8, !tbaa !45, !noalias !745 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !745
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit31, label %_ZN5arrow6StatusD2Ev.exit27.thread

_ZN5arrow6StatusD2Ev.exit27.thread:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i25, %_ZN5arrow6StatusD2Ev.exit36.i
  %.ph41 = phi ptr [ %i.bh, %_ZN5arrow6StatusD2Ev.exit36.i ], [ %i.ay, %_ZN5arrow6StatusD2Ev.exit.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !745
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit31:                      ; preds = %.critedge28.i, %_ZN5arrow6StatusD2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !745
  br label %_ZN5arrow6StatusD2Ev.exit24

_ZN5arrow6StatusD2Ev.exit24:                      ; preds = %_ZN5arrow6StatusD2Ev.exit84.i, %_ZN5arrow6StatusD2Ev.exit98.i, %_ZN5arrow6StatusD2Ev.exit31
  %.0 = phi i64 [ %i.bc, %_ZN5arrow6StatusD2Ev.exit31 ], [ %i.an, %_ZN5arrow6StatusD2Ev.exit98.i ], [ %3, %_ZN5arrow6StatusD2Ev.exit84.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !465
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !299
  %i.bn = add nsw i64 %i.bm, %.0
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !299
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit98.i, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit27.thread, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit24
  %.ph41.sink = phi ptr [ %.ph41, %_ZN5arrow6StatusD2Ev.exit27.thread ], [ %.pr, %_ZN5arrow6StatusD2Ev.exit ], [ null, %_ZN5arrow6StatusD2Ev.exit24 ], [ %i.as, %_ZN5arrow6StatusD2Ev.exit98.i ], [ %i.l, %_ZN5arrow6StatusD2Ev.exit.i ]
  store ptr %.ph41.sink, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_3ipc7feather3fbs4TypeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.59", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
end_hunk_3
begin_hunk_4_@_ZN5arrow6BufferD2Ev:bb.a
bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !79
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow6Buffer17device_sync_eventEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.227") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEES4_St9_IdentityIS4_ENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !799
  tail call void @_ZNSt8_Rb_treeIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEES4_St9_IdentityIS4_ENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !800  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !801

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(43) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !802
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !802
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !noalias !802, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #24, !noalias !802
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !802 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !802
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !802
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !83
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !83
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1EEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #24, !inline_history !805
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1D2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1E, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !806
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !79
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !79
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !807
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !807
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i6 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i8 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.ay, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1D0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1D2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV17versionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !120
  %i.h = icmp ugt i16 %i.g, 10
  br i1 %i.h, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !120  ; 2 uses
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  br label %_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit

_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit: ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.b
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.a ]
  ret i32 %i.n
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV16schemaEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !68
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.253", align 16  ; 16 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %5 = alloca %"class.std::shared_ptr.258", align 16 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  %7 = alloca %"class.std::vector.253", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.promoted = load ptr, ptr %0, align 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 2, !tbaa !120  ; 2 uses
  %.not.i.i.i57 = icmp ne i16 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i.i.i57)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !121
  %.not58 = icmp sgt i32 %i.n, 0
  br i1 %.not58, label %.lr.ph, label %.critedge23

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !808  ; 3 uses
  %i.r = load ptr, ptr %i.p, align 16, !tbaa !811
  %.not.i.peel = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !808
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !808
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.peel

bb.c:                                             ; preds = %.lr.ph
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.q)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge.peel unwind label %.loopexit.split-lp

._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge.peel: ; preds = %bb.c
  %.pre.peel = load ptr, ptr %i.o, align 8, !tbaa !812
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.peel

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.peel: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge.peel, %bb.b
  %i.u = phi ptr [ %.pre.peel, %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge.peel ], [ %i.t, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, ptr noundef %i.v)
          to label %_ZN5arrow6StatusD2Ev.exit.peel unwind label %.loopexit.split-lp104

_ZN5arrow6StatusD2Ev.exit.peel:                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.peel
  %i.w = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.peel, label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.peel: ; preds = %_ZN5arrow6StatusD2Ev.exit.peel
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !120 ; 2 uses
  %.not.i.i.i.peel = icmp ne i16 %i.ae, 0
  call void @llvm.assume(i1 %.not.i.i.i.peel)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !121
  %.not.peel = icmp sgt i32 %i.ak, 1
  br i1 %.not.peel, label %.lr.ph.peel.newph, label %.critedge23

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.al = add nuw nsw i32 %.01759, 1              ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !120 ; 2 uses
  %.not.i.i.i = icmp ne i16 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !121
  %.not = icmp slt i32 %i.al, %i.ay
  br i1 %.not, label %.lr.ph.peel.newph, label %.critedge23, !llvm.loop !813

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa96 = phi ptr [ null, %.loopexit ], [ %.promoted, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr %.lcssa96, ptr %0, align 8
  br label %bb.at

.lr.ph.peel.newph:                                ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.peel, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %.01759 = phi i32 [ %i.al, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ 1, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.peel ] ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !808 ; 3 uses
  %i.ba = load ptr, ptr %i.p, align 16, !tbaa !811
  %.not.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.peel.newph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !808
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !808
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.f:                                             ; preds = %.lr.ph.peel.newph
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.az)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge unwind label %.loopexit

._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !812
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge, %bb.e
  %i.bd = phi ptr [ %.pre, %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge ], [ %i.bc, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -16
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.01759, ptr noundef %i.be)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %.loopexit103

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.bf = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %.critedge

.loopexit103:                                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp104:                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit.peel
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp104, %.loopexit103
  %.lcssa97 = phi ptr [ null, %.loopexit103 ], [ %.promoted, %.loopexit.split-lp104 ]
  %lpad.phi107 = phi { ptr, i32 } [ %lpad.loopexit105, %.loopexit103 ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp104 ]
  store ptr %.lcssa97, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.at

.critedge23:                                      ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.peel, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.peel ]
  store ptr %.lcssa, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bh = load ptr, ptr %1, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.h unwind label %bb.aj

bb.h:                                             ; preds = %.critedge23
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = load <2 x ptr>, ptr %3, align 16, !tbaa !812
  store <2 x ptr> %i.bl, ptr %7, align 16, !tbaa !812
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !811
  store ptr %i.bo, ptr %i.bm, align 16, !tbaa !811
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.val = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bp = load i32, ptr %.val, align 4, !tbaa !3
  %i.bq = sext i32 %i.bp to i64
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %.val, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !120
  %i.bu = icmp ugt i16 %i.bt, 6
  br i1 %i.bu, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i29, label %_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV18num_rowsEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i29: ; preds = %bb.h
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadEPSt10shared_ptrINS_5TableEE:bb.a
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.z ], [ %i.eb, %bb.aa ]
  %i.ec = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.ab, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i, !prof !85

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.x, %.lr.ph.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ed, %i.dl
  br i1 %.not.i.i.i32, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ee = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.dk, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ef = load ptr, ptr %i.bm, align 16, !tbaa !811
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !73 ; 8 uses
  %.not.i.i33 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i33, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.el, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !79
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24, !inline_history !806
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i34 = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i34, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

bb.ah:                                            ; preds = %bb.af
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i36 = phi i32 [ %i.eo, %bb.ag ], [ %i.ey, %bb.ah ]
  %i.ez = icmp eq i32 %.0.i.i.i.i36, 1
  br i1 %i.ez, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge

bb.aj:                                            ; preds = %.critedge23
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV18num_rowsEv.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn20 = phi { ptr, i32 } [ %i.fb, %bb.ak ], [ %i.fa, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.at

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.peel, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %storemerge = phi ptr [ null, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.w, %_ZN5arrow6StatusD2Ev.exit.peel ], [ %i.bf, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %storemerge, ptr %0, align 8
  %i.fc = load ptr, ptr %3, align 16, !tbaa !817  ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !808 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %.critedge, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44
  %.05.i.i.i39 = phi ptr [ %i.fw, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44 ], [ %i.fc, %.critedge ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i38
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fh, align 8, !tbaa !74
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !79
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !43
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24, !inline_history !818
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24, !inline_history !818
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44

bb.ao:                                            ; preds = %bb.am
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i41 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i.i.i41, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42

bb.aq:                                            ; preds = %bb.ao
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i43 = phi i32 [ %i.fk, %bb.ap ], [ %i.fu, %bb.aq ]
  %i.fv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i43, 1
  br i1 %i.fv, label %bb.ar, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44, !prof !85

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i42, %bb.an, %.lr.ph.i.i.i38
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 16 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.fw, %i.fe
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46, label %.lr.ph.i.i.i38, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i44
  %.pr.i47 = load ptr, ptr %3, align 16, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46, %.critedge
  %i.fx = phi ptr [ %.pr.i47, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i46 ], [ %i.fc, %.critedge ] ; 3 uses
  %.not.i.i1.i49 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i1.i49, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit50, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !811
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit50

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit50: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i48, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.at:                                            ; preds = %bb.d, %bb.g, %bb.al
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.al ], [ %lpad.phi107, %bb.g ], [ %lpad.phi, %bb.d ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.74", align 16   ; 15 uses
  %6 = alloca %"class.std::vector.253", align 16  ; 15 uses
  %7 = alloca %"class.std::shared_ptr.28", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::shared_ptr.258", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  %11 = alloca %"class.std::vector.74", align 16  ; 7 uses
  %12 = alloca %"class.std::shared_ptr.56", align 8 ; 4 uses
  %13 = alloca %"class.std::vector.253", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.b = load ptr, ptr %1, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !820    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !820  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.critedge31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.095.098 = phi ptr [ %i.e, %.lr.ph ], [ %i.bb, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.n = load i32, ptr %.sroa.095.098, align 4, !tbaa !3 ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %7, align 8, !tbaa !235
  %i.q = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not = icmp slt i32 %i.n, %i.q
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !821
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.22)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %4, align 8, !tbaa !130, !noalias !821 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !83, !noalias !821
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit

bb.i:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !130, !noalias !821 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !83, !noalias !821
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !821
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRiRA18_S2_EEES0_DpOT_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !821
  br label %.critedge29

.loopexit:                                        ; preds = %bb.e, %_ZN5arrow6StatusD2Ev.exit37, %bb.l, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !808 ; 3 uses
  %i.ad = load ptr, ptr %i.j, align 16, !tbaa !811
  %.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !808
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.af, ptr %i.i, align 8, !tbaa !808
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ac)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge unwind label %.loopexit

._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !812
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge, %bb.k
  %i.ag = phi ptr [ %.pre, %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -16
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ah, ptr noundef %i.ai)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.m

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.aj = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit37, label %.critedge29

bb.m:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.am = load ptr, ptr %7, align 8, !tbaa !235
  %i.an = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef %i.an)
          to label %bb.n unwind label %.loopexit  ; 3 uses

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !132 ; 5 uses
  %i.aq = load ptr, ptr %i.l, align 16, !tbaa !135
  %.not.i38 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i38, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !73 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !68
  store <2 x ptr> %i.at, ptr %i.ap, align 8, !tbaa !68
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i39 = load ptr, ptr %i.k, align 8, !tbaa !132
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.az = phi ptr [ %i.ap, %bb.o ], [ %i.ap, %bb.q ], [ %.pre.i39, %bb.r ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ba, ptr %i.k, align 8, !tbaa !132
  br label %.critedge

bb.s:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %.critedge unwind label %.loopexit
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE:bb.a
  store i32 %i.hf, ptr %i.gt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.bq:                                            ; preds = %bb.bo
  %i.hg = atomicrmw volatile add ptr %i.gt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i65 = phi i32 [ %i.gw, %bb.bp ], [ %i.hg, %bb.bq ]
  %i.hh = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.hh, label %bb.br, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, !prof !85

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66: ; preds = %bb.bl, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.hi = load ptr, ptr %6, align 16, !tbaa !817  ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !808 ; 2 uses
  %.not4.i.i.i67 = icmp eq ptr %i.hi, %i.hk
  br i1 %.not4.i.i.i67, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74
  %.05.i.i.i69 = phi ptr [ %i.ic, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74 ], [ %i.hi, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i69, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i.i.i.i.i70 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i.i70, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i68
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 4 uses
  %i.ho = load atomic i64, ptr %i.hn acquire, align 8 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 4294967297
  %i.hq = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.hn, align 8, !tbaa !74
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hr, align 4, !tbaa !79
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #24, !inline_history !818
  %i.hv = load ptr, ptr %i.hm, align 8, !tbaa !43
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #24, !inline_history !818
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74

bb.bu:                                            ; preds = %bb.bs
  %i.hy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i.i71, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hz = add nsw i32 %i.hq, -1
  store i32 %i.hz, ptr %i.hn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72

bb.bw:                                            ; preds = %bb.bu
  %i.ia = atomicrmw volatile add ptr %i.hn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i.i73 = phi i32 [ %i.hq, %bb.bv ], [ %i.ia, %bb.bw ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i73, 1
  br i1 %i.ib, label %bb.bx, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74, !prof !85

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hm) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i72, %bb.bt, %.lr.ph.i.i.i68
  %i.ic = getelementptr inbounds nuw i8, ptr %.05.i.i.i69, i64 16 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ic, %i.hk
  br i1 %.not.i.i.i75, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76, label %.lr.ph.i.i.i68, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i74
  %.pr.i77 = load ptr, ptr %6, align 16, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66
  %i.id = phi ptr [ %.pr.i77, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i76 ], [ %i.hi, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66 ] ; 3 uses
  %.not.i.i1.i79 = icmp eq ptr %i.id, null
  br i1 %.not.i.i1.i79, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !811
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.id to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ii) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i78, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ij = load ptr, ptr %5, align 16, !tbaa !147  ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i81 = icmp eq ptr %i.ij, %i.il
  br i1 %.not4.i.i.i81, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92, label %.lr.ph.i.i.i82

.lr.ph.i.i.i82:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88
  %.05.i.i.i83 = phi ptr [ %i.jd, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88 ], [ %i.ij, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80 ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i83, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i.i.i.i.i84 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i84, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i82
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.io, align 8, !tbaa !74
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !79
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #24, !inline_history !826
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #24, !inline_history !826
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88

bb.cb:                                            ; preds = %bb.bz
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i85 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i.i.i.i85, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86

bb.cd:                                            ; preds = %bb.cb
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i.i87 = phi i32 [ %i.ir, %bb.cc ], [ %i.jb, %bb.cd ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i87, 1
  br i1 %i.jc, label %bb.ce, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88, !prof !85

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i86, %bb.ca, %.lr.ph.i.i.i82
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i83, i64 16 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %i.jd, %i.il
  br i1 %.not.i.i.i89, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90, label %.lr.ph.i.i.i82, !llvm.loop !149

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i88
  %.pr.i91 = load ptr, ptr %5, align 16, !tbaa !147
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80
  %i.je = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i90 ], [ %i.ij, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit80 ] ; 3 uses
  %.not.i.i1.i93 = icmp eq ptr %i.je, null
  br i1 %.not.i.i1.i93, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit94, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92
  %i.jf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jg = load ptr, ptr %i.jf, align 16, !tbaa !135
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit94

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit94: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i92, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.cg:                                            ; preds = %bb.bk, %.body
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.bk ], [ %.pn23, %.body ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.c
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %bb.cg ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn25.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::vector.74", align 16   ; 15 uses
  %6 = alloca %"class.std::vector.253", align 16  ; 15 uses
  %7 = alloca %"class.std::shared_ptr.28", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.258", align 16 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  %12 = alloca %"class.std::vector.74", align 16  ; 7 uses
  %13 = alloca %"class.std::shared_ptr.56", align 8 ; 4 uses
  %14 = alloca %"class.std::vector.253", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !830    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !830  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.critedge38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0111.0129 = phi ptr [ %i.d, %.lr.ph ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.h, ptr %8, align 8, !tbaa !129
  %i.o = load ptr, ptr %.sroa.0111.0129, align 8, !tbaa !130 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0111.0129, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !131  ; 8 uses
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !85

.noexc6.i:                                        ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26
          to label %.noexc40 unwind label %.loopexit ; 2 uses

.noexc40:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.v, ptr %8, align 8, !tbaa !130
  store i64 %i.q, ptr %i.h, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc40, %bb.d
  %i.w = phi ptr [ %i.v, %.noexc40 ], [ %i.h, %bb.d ] ; 3 uses
  switch i64 %i.q, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.o, align 1, !tbaa !83
  store i8 %i.x, ptr %i.w, align 1, !tbaa !83
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  store i64 %i.q, ptr %i.i, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.y, align 1, !tbaa !83
  %i.z = load ptr, ptr %7, align 8, !tbaa !235
  %i.aa = load ptr, ptr %8, align 8, !tbaa !130
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !131
  %i.ac = invoke noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 %i.ab, ptr %i.aa)
          to label %bb.j unwind label %.loopexit114 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !831
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(14) @.str.24)
          to label %.noexc41 unwind label %.loopexit.split-lp115

.noexc41:                                         ; preds = %bb.k
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc41
  %i.ae = load ptr, ptr %4, align 8, !tbaa !130, !noalias !831 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !83, !noalias !831
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit

bb.m:                                             ; preds = %.noexc41
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !130, !noalias !831 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !83, !noalias !831
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !831
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !831
  br label %.critedge36

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

.loopexit114:                                     ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit47, %bb.p, %bb.w
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp115:                            ; preds = %bb.k
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !808 ; 3 uses
  %i.aq = load ptr, ptr %i.k, align 16, !tbaa !811
  %.not.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !808
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.j, align 8, !tbaa !808
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ap)
          to label %._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge unwind label %.loopexit114

._ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !812
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

end_hunk_6
begin_hunk_7_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV14ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE:bb.a

bb.bz:                                            ; preds = %bb.by
  %i.iw = add nsw i32 %i.in, -1
  store i32 %i.iw, ptr %i.ik, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88

bb.ca:                                            ; preds = %bb.by
  %i.ix = atomicrmw volatile add ptr %i.ik, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i.i.i89 = phi i32 [ %i.in, %bb.bz ], [ %i.ix, %bb.ca ]
  %i.iy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i89, 1
  br i1 %i.iy, label %bb.cb, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90, !prof !85

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i88, %bb.bx, %.lr.ph.i.i.i84
  %i.iz = getelementptr inbounds nuw i8, ptr %.05.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.iz, %i.ih
  br i1 %.not.i.i.i91, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92, label %.lr.ph.i.i.i84, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i90
  %.pr.i93 = load ptr, ptr %6, align 16, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82
  %i.ja = phi ptr [ %.pr.i93, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i92 ], [ %i.if, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit82 ] ; 3 uses
  %.not.i.i1.i95 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i1.i95, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jc = load ptr, ptr %i.jb, align 16, !tbaa !811
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jf) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i94, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.jg = load ptr, ptr %5, align 16, !tbaa !147  ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i97 = icmp eq ptr %i.jg, %i.ji
  br i1 %.not4.i.i.i97, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i108, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104
  %.05.i.i.i99 = phi ptr [ %i.ka, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104 ], [ %i.jg, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !73 ; 8 uses
  %.not.i.i.i.i.i.i.i100 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i.i.i100, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i98
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  %i.jo = trunc i64 %i.jm to i32                  ; 2 uses
  br i1 %i.jn, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.jl, align 8, !tbaa !74
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store i32 0, ptr %i.jp, align 4, !tbaa !79
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !43
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #24, !inline_history !826
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !43
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #24, !inline_history !826
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104

bb.cf:                                            ; preds = %bb.cd
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i101 = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i.i.i.i.i101, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i102

bb.ch:                                            ; preds = %bb.cf
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i102: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i.i.i.i.i103 = phi i32 [ %i.jo, %bb.cg ], [ %i.jy, %bb.ch ]
  %i.jz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i103, 1
  br i1 %i.jz, label %bb.ci, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104, !prof !85

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104: ; preds = %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i102, %bb.ce, %.lr.ph.i.i.i98
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 16 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.ka, %i.ji
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i106, label %.lr.ph.i.i.i98, !llvm.loop !149

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i106: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i104
  %.pr.i107 = load ptr, ptr %5, align 16, !tbaa !147
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i108

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i108: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i106, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96
  %i.kb = phi ptr [ %.pr.i107, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i106 ], [ %i.jg, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit96 ] ; 3 uses
  %.not.i.i1.i109 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i1.i109, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit110, label %bb.cj

bb.cj:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i108
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kd = load ptr, ptr %i.kc, align 16, !tbaa !135
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit110

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit110: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i108, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.ck:                                            ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %bb.bo ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.c
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.ck ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn32.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE(ptr dead_on_unwind noalias nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr noundef nonnull captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.79", align 16 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.141", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.79", align 16 ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %8 = alloca %"class.std::shared_ptr.79", align 16 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::shared_ptr.138", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !120
  %i.h = icmp ugt i16 %i.g, 8
  br i1 %i.h, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i16, ptr %i.i, align 2, !tbaa !120  ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  br label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit

_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit: ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = shl i32 %2, 2
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !235
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef %2)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !253 ; 3 uses
  store ptr %i.ac, ptr %6, align 16, !tbaa !253
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 5 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !73
  %.not.i.i.i32 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i32, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread, label %bb.d

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.ac, ptr %8, align 16, !tbaa !253
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !73
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread103

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread103: ; preds = %bb.d
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.ac, ptr %8, align 16, !tbaa !253
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !73
  br label %bb.e

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.d
  %i.am = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.pr.pre = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  %i.an = load <2 x ptr>, ptr %6, align 16, !tbaa !68
  store <2 x ptr> %i.an, ptr %8, align 16, !tbaa !68
  %.not.i.i.i33 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i33, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread103, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %.pr106 = phi ptr [ %i.af, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread103 ], [ %.pr.pre, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr106, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i34 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35

bb.g:                                             ; preds = %bb.e
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.f, %bb.g
  %i.at = phi ptr [ %i.ag, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.thread ], [ %i.aj, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ], [ %i.aj, %bb.f ], [ %i.aj, %bb.g ]
  %i.au = load i32, ptr %i.w, align 4, !tbaa !3
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 %i.aw ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !120
  %i.az = icmp ugt i16 %i.ay, 6
  br i1 %i.az, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !120 ; 2 uses
  %.not.i.i.i37 = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i.i37, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  br label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit

_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36, %bb.h, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35
  %i.bh = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit35 ], [ %i.bg, %bb.h ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i36 ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %8, ptr noundef %i.bh, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit
  %i.bi = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !45
  store ptr null, ptr %7, align 8, !tbaa !45
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !73 ; 8 uses
  %.not.i.i40 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i40, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !79
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !395
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24, !inline_history !395
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i41 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, !prof !85

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %.pr82 = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split, %_ZN5arrow6StatusD2Ev.exit
  %i.bz = phi ptr [ %.pr82, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split ], [ %i.bi, %_ZN5arrow6StatusD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN5arrow6StatusD2Ev.exit45, label %.critedge

bb.o:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.p:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.br

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cd = load ptr, ptr %6, align 16, !tbaa !253
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !256
  %i.cg = icmp eq i32 %i.cf, 29
  br i1 %i.cg, label %11, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

11:                                               ; preds = %_ZN5arrow6StatusD2Ev.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %12 = load ptr, ptr %5, align 8, !tbaa !250
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %14 = load ptr, ptr %i.a, align 8, !tbaa !108, !noalias !839 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !3, !noalias !839
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 0, %16
  %18 = getelementptr inbounds i8, ptr %14, i64 %17 ; 2 uses
  %19 = load i16, ptr %18, align 2, !tbaa !120, !noalias !839
  %20 = icmp ugt i16 %19, 8
  br i1 %20, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %11
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = load i16, ptr %21, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i.i47 = icmp eq i16 %22, 0
  br i1 %.not.i.i.i.i47, label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i, label %23

23:                                               ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %24 = zext i16 %22 to i64
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 %24 ; 2 uses
  %26 = load i32, ptr %25, align 4, !tbaa !3, !noalias !839
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 %27
  br label %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i

_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i: ; preds = %23, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %11
  %29 = phi ptr [ %28, %23 ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i ], [ null, %11 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.s ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3, !noalias !839
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3, !noalias !839
  %i.cn = sext i32 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co ; 3 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %i.cr = icmp ugt i16 %i.cq, 8
  br i1 %i.cr, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i, label %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i

_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !83, !noalias !839
  %i.cx = icmp eq i8 %i.cw, 1
  %i.cy = icmp ugt i16 %i.cq, 10
  %or.cond.i.i.i = and i1 %i.cy, %i.cx
  br i1 %or.cond.i.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i
  %i.db = zext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3, !noalias !839
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de
  br label %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i

_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i: ; preds = %bb.q, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i
  %i.dg = phi ptr [ null, %_ZNK5arrow3ipc7feather3fbs6CTable7columnsEv.exit.i ], [ null, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i.i ], [ %i.df, %bb.q ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i.i ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ] ; 3 uses
  %i.dh = load ptr, ptr %i.x, align 8, !tbaa !235, !noalias !839
  %i.di = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i32 noundef %2)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !136, !noalias !839
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !253, !noalias !839 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !73, !noalias !839 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %i.dm, align 8, !tbaa !68, !noalias !839
  store <2 x ptr> %i.dq, ptr %4, align 16, !tbaa !68, !noalias !839
  %.not.i.i.i8.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i8.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.r

bb.r:                                             ; preds = %.noexc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !839
  %.not.i.i.i.i9.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i9.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !3, !noalias !839
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !3, !noalias !839
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4, !noalias !839 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.t, %bb.s, %.noexc
  %i.dw = load i32, ptr %i.dg, align 4, !tbaa !3, !noalias !839
  %i.dx = sext i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dg, i64 %i.dy ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !120, !noalias !839
  %i.eb = icmp ugt i16 %i.ea, 4
  br i1 %i.eb, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !120, !noalias !839 ; 2 uses
  %.not.i.i.i11.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i.i.i11.i, label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !839
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  br label %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i

_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i: ; preds = %bb.u, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ej = phi ptr [ %i.ei, %bb.u ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i10.i ], [ null, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %4, ptr noundef %i.ej, ptr noundef nonnull %13)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i
  %i.ek = load ptr, ptr %i.dn, align 8, !tbaa !73, !noalias !839 ; 8 uses
  %.not.i.i.i46 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i46, label %_ZN5arrow6StatusD2Ev.exit49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.el, align 8, !tbaa !74
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !79
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24, !inline_history !842
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24, !inline_history !842
  br label %_ZN5arrow6StatusD2Ev.exit49

bb.y:                                             ; preds = %bb.w
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !839
  %.not.i.i.i12.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i12.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i = phi i32 [ %i.eo, %bb.z ], [ %i.ey, %bb.aa ]
  %i.ez = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ez, label %bb.ab, label %_ZN5arrow6StatusD2Ev.exit49, !prof !85

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #24
  br label %_ZN5arrow6StatusD2Ev.exit49

bb.ac:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs16CategoryMetadata6levelsEv.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  br label %.body

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fb = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  store ptr %i.fb, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit53, label %.critedge

bb.ad:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs6Column11metadata_asINS2_16CategoryMetadataEEEPKT_v.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.ac
  %.pn24 = phi { ptr, i32 } [ %i.fa, %bb.ac ], [ %i.fd, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.br

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %i.fe = load ptr, ptr %5, align 8, !tbaa !250   ; 2 uses
  %i.ff = load ptr, ptr %6, align 16, !tbaa !253
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !253
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 3 uses
  %i.fh = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 4 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not.i.i.i54, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %.not7.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i55 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i55, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.fn = atomicrmw volatile add ptr %i.fj, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.fo = phi ptr [ %i.fi, %bb.ae ], [ %i.fi, %bb.ag ], [ %.pr.pre.i.i.i, %bb.ah ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 4 uses
  %i.fq = load atomic i64, ptr %i.fp acquire, align 8 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 4294967297
  %i.fs = trunc i64 %i.fq to i32                  ; 2 uses
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.fp, align 8, !tbaa !74
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 0, ptr %i.ft, align 4, !tbaa !79
  %i.fu = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #24, !inline_history !399
  %i.fx = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #24, !inline_history !399
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i9.i.i.i = icmp eq i8 %i.ga, 0
  br i1 %.not.i9.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = add nsw i32 %i.fs, -1
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56

bb.am:                                            ; preds = %bb.ak
  %i.gc = atomicrmw volatile add ptr %i.fp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i57 = phi i32 [ %i.fs, %bb.al ], [ %i.gc, %bb.am ]
  %i.gd = icmp eq i32 %.0.i.i.i.i.i57, 1
  br i1 %i.gd, label %bb.an, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !85

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fo) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i56, %bb.aj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !73
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit53, %_ZN5arrow6StatusD2Ev.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.138") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.ge = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc58 unwind label %bb.bd  ; 4 uses

.noexc58:                                         ; preds = %bb.ao
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ap unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i, !noalias !843

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i: ; preds = %.noexc58
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 104) #25, !noalias !843
  br label %.body59

bb.ap:                                            ; preds = %.noexc58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.gg, ptr %3, align 8, !tbaa !846
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !73 ; 8 uses
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !73
  %.not.i.i.i.i61 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i61, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 4 uses
  %i.gk = load atomic i64, ptr %i.gj acquire, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 4294967297
  %i.gm = trunc i64 %i.gk to i32                  ; 2 uses
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.gj, align 8, !tbaa !74
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 0, ptr %i.gn, align 4, !tbaa !79
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !43
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
end_hunk_7
begin_hunk_8_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.br:                                            ; preds = %bb.be, %.body, %bb.p
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.be ], [ %.pn24, %.body ], [ %i.cc, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.o
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.br ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn26.pn.pn
}

declare void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.258") align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !817    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !808  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !79
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !852
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !852
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !811
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !817    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !856, !noalias !853
  store ptr null, ptr %i.r, align 8, !tbaa !73, !alias.scope !856, !noalias !853
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !853, !noalias !856
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !236, !alias.scope !856, !noalias !853
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.z, %.lr.ph.i.i.i16 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !tbaa !68, !alias.scope !862, !noalias !859
  store ptr null, ptr %i.w, align 8, !tbaa !73, !alias.scope !862, !noalias !859
  store <2 x ptr> %i.x, ptr %.012.i.i.i17, align 8, !tbaa !68, !alias.scope !859, !noalias !862
  store ptr null, ptr %.0911.i.i.i18, align 8, !tbaa !236, !alias.scope !862, !noalias !859
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i16 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !811
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !817
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !808
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !811
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.159", align 16  ; 26 uses
  %6 = alloca %"class.arrow::Result.15", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr.19", align 16 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %15 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %16 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %17 = alloca %"class.std::shared_ptr.141", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.79", align 16 ; 4 uses
  %19 = alloca %"class.std::vector.159", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !3
  %i.l = sext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !120  ; 2 uses
  %i.p = icmp ugt i16 %i.o, 8
  br i1 %i.p, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !120  ; 2 uses
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit: ; preds = %bb.b, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.v = phi i64 [ %i.u, %bb.b ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ] ; 3 uses
  %i.w = icmp ugt i16 %i.o, 14
  br i1 %i.w, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59: ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120  ; 2 uses
  %.not.i.i60 = icmp eq i16 %i.y, 0
  br i1 %.not.i.i60, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit: ; preds = %bb.a, %bb.c, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit
  %i.ac = phi i64 [ %i.v, %bb.c ], [ %i.v, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59 ], [ %i.v, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit ], [ 0, %bb.a ]
  %i.ad = phi i64 [ %i.ab, %bb.c ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59 ], [ 0, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit ], [ 0, %bb.a ]
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ac, i64 noundef %i.ad)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit
  %i.ah = load ptr, ptr %6, align 8, !tbaa !45
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.g

bb.f:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !68, !noalias !870
  store ptr null, ptr %i.an, align 8, !tbaa !73, !noalias !870
  store <2 x ptr> %i.ao, ptr %7, align 16, !tbaa !68, !alias.scope !870
  store ptr null, ptr %i.al, align 8, !tbaa !70, !noalias !870
  %i.ap = load ptr, ptr %2, align 8, !tbaa !253   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !256
  %i.as = icmp eq i32 %i.ar, 29
  br i1 %i.as, label %bb.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !253
  store ptr %i.au, ptr %2, align 8, !tbaa !253
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73 ; 4 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not7.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !73
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.j
  %i.be = phi ptr [ %i.ay, %bb.j ], [ %i.ay, %bb.l ], [ %.pr.pre.i.i.i, %bb.m ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bf, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !79
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24, !inline_history !399
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24, !inline_history !399
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i9.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i9.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bs, %bb.r ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.s, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !85

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !73
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.i, %bb.h
  %i.bu = load i32, ptr %3, align 4, !tbaa !3
  %i.bv = sext i32 %i.bu to i64
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !147    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !68
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !935, !noalias !932
  store ptr null, ptr %i.z, align 8, !tbaa !73, !alias.scope !935, !noalias !932
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !932, !noalias !935
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !136, !alias.scope !935, !noalias !932
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !940, !noalias !937
  store ptr null, ptr %i.ae, align 8, !tbaa !73, !alias.scope !940, !noalias !937
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !937, !noalias !940
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !136, !alias.scope !940, !noalias !937
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !135
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !147
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !135
  ret void
}

declare noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(14) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #24
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.f = load ptr, ptr %2, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %3) #24
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(14) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #24, !inline_history !942
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(144) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2E, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !79
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !806
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !807
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !807
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i2 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ao, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV27versionEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV26schemaEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !68
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::ipc::IpcReadOptions", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds i8, ptr null, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !37
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.m, label %.noexc.i.i.i, label %bb.c, !prof !85

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !420
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !37
  %i.r = icmp samesign ugt i64 %i.i, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !154

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.f, i64 %i.i, i1 false)
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.i, 4
  br i1 %i.s, label %bb.f, label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.f, align 4, !tbaa !3
  store i32 %i.t, ptr %i.n, align 4, !tbaa !3
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit:       ; preds = %.thread6, %bb.d, %bb.e, %bb.f
  %i.u = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.l, %.thread6 ] ; 2 uses
  %i.v = phi ptr [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.k, %.thread6 ]
  %i.w = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.j, %.thread6 ]
  store ptr %i.v, ptr %i.w, align 8, !tbaa !420
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.j:                                             ; preds = %bb.g, %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i4, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit5, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit5

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit5:          ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::shared_ptr.28", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !830    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !830  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.bk, %bb.b ] ; 4 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.bl, %bb.b ] ; 4 uses
  %.sroa.033.052 = phi ptr [ %i.d, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.h, ptr %7, align 8, !tbaa !129
  %i.r = load ptr, ptr %.sroa.033.052, align 8, !tbaa !130 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !131  ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !85

.noexc6.i:                                        ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26
          to label %.noexc21 unwind label %.loopexit ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !130
  store i64 %i.t, ptr %i.h, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.c
  %i.z = phi ptr [ %i.y, %.noexc21 ], [ %i.h, %bb.c ] ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !83
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !83
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  store i64 %i.t, ptr %i.i, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ab, align 1, !tbaa !83
  %i.ac = load ptr, ptr %6, align 8, !tbaa !235
  %i.ad = load ptr, ptr %7, align 8, !tbaa !130
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !131
  %i.af = invoke noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 %i.ae, ptr %i.ad)
          to label %bb.i unwind label %.loopexit36 ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.af, -1                   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !943
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(14) @.str.24)
          to label %.noexc22 unwind label %.loopexit36

.noexc22:                                         ; preds = %bb.j
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc22
  %i.ag = load ptr, ptr %4, align 8, !tbaa !130, !noalias !943 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.l
  br i1 %i.ah, label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !83, !noalias !943
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit

bb.l:                                             ; preds = %.noexc22
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !130, !noalias !943 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.l
  %i.an = load i64, ptr %i.l, align 8, !tbaa !83, !noalias !943
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !943
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !943
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit36:                                      ; preds = %bb.h, %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp37:                             ; preds = %bb.p
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit36, %.loopexit.split-lp37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ] ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !83
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.af, ptr %i.q, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.j, align 8, !tbaa !420
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.p to i64
  %i.av = ptrtoint ptr %i.o to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc23 unwind label %.loopexit.split-lp37

.noexc23:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #26
          to label %.noexc24 unwind label %.loopexit36 ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 %i.af, ptr %i.bf, align 4, !tbaa !3
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.o, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %5, align 8, !tbaa !33
  store ptr %i.bh, ptr %i.j, align 8, !tbaa !420
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.k, align 8, !tbaa !37
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.n, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit
  %i.bj = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.o, %bb.n ], [ %i.o, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bk = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.p, %bb.n ], [ %i.p, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bl = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.at, %bb.n ], [ %i.q, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bm = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !83
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.not, label %.loopexit41, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aa

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.bq = load ptr, ptr %1, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %.loopexit41 unwind label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit41:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bw, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !79
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24, !inline_history !806
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i28 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i28, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bz, %bb.w ], [ %i.cj, %bb.x ]
  %i.ck = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ck, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit41, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cl = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  %.pre = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i30 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pre to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cv) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn17
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

declare void @_ZN5arrow2io12CacheOptions12LazyDefaultsEv(ptr dead_on_unwind writable sret(%"struct.arrow::io::CacheOptions") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %5 = alloca %"class.std::shared_ptr.91", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.295", align 8   ; 12 uses
  %7 = alloca %"class.arrow::Result.300", align 8 ; 12 uses
  %8 = alloca %"class.arrow::Result.307", align 8 ; 13 uses
  %9 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow3ipc21RecordBatchFileReader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.87") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.b = load ptr, ptr %4, align 8, !tbaa !45
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !68, !noalias !954
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !186, !noalias !954 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !73, !noalias !954
  store <2 x ptr> %i.h, ptr %5, align 16, !tbaa !68, !alias.scope !954
  store ptr null, ptr %i.e, align 8, !tbaa !186, !noalias !954
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.i       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.f, label %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.e
  store i64 0, ptr %6, align 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 4                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26
          to label %.noexc40 unwind label %bb.j   ; 4 uses

.noexc40:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.q, ptr %6, align 8, !tbaa !955
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.n
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.q, i64 %i.p
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc40
  %.sink.i = phi ptr [ %i.r, %.noexc40 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc40 ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.t, align 8, !tbaa !958
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !959
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit ], [ 0, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EEC2EmRKS4_.exit.thread.i ] ; 4 uses
  %i.w = load ptr, ptr %5, align 16, !tbaa !186   ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.aa to i64
  %.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not, label %bb.l, label %.critedge

bb.i:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  invoke void %i.ah(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.300") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i32 noundef %i.ai)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %7, align 8, !tbaa !45
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  br i1 %i.ak, label %bb.q, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit42 unwind label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.p:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bv

bb.q:                                             ; preds = %bb.m
  %i.an = load <2 x ptr>, ptr %i.u, align 8, !tbaa !68, !noalias !960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !955
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 8 uses
  store <2 x ptr> %i.an, ptr %i.ap, align 8, !tbaa !68
  %.not.i.i.i.i43 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i43, label %_ZN5arrow6StatusC2ERKS0_.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.as, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !79
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !965
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24, !inline_history !965
  br label %_ZN5arrow6StatusC2ERKS0_.exit42

bb.t:                                             ; preds = %bb.r
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.u ], [ %i.bf, %bb.v ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.w, label %_ZN5arrow6StatusC2ERKS0_.exit42, !prof !85

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #24
  br label %_ZN5arrow6StatusC2ERKS0_.exit42

_ZN5arrow6StatusC2ERKS0_.exit42:                  ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %bb.n
  %i.bh = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
end_hunk_9
