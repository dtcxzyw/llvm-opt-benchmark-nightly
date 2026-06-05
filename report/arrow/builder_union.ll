inline.NumInlined: 1479
inline.NumDeleted: 711
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
define void @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.28", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::vector.31", align 8    ; 14 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::shared_ptr.39", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.42", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.45", align 8    ; 8 uses
  %10 = alloca [2 x %"class.std::shared_ptr.28"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit44, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.cd

_ZN5arrow6StatusD2Ev.exit44:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !49   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ugt i64 %i.m, 9223372036854775792
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit44
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit44
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.critedge40

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #18
          to label %.lr.ph.preheader unwind label %bb.e ; 5 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.q, ptr %5, align 8, !tbaa !50
  %i.r = getelementptr i8, ptr %i.q, i64 %i.m     ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.m, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !53
  store ptr %i.r, ptr %i.s, align 8, !tbaa !54
  br label %.lr.ph

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  %i.u = add nuw i64 %.01887, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %.not = icmp ult i64 %i.u, %i.aa
  br i1 %.not, label %.lr.ph, label %.critedge40, !llvm.loop !55

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.ac = phi ptr [ %i.w, %bb.d ], [ %i.j, %.lr.ph.preheader ]
  %.01887 = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01887
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01887
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %i.af)
          to label %_ZN5arrow6StatusD2Ev.exit47 unwind label %bb.f

_ZN5arrow6StatusD2Ev.exit47:                      ; preds = %.lr.ph
  %i.aj = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %.critedge39.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.bv

.critedge40:                                      ; preds = %bb.d, %.thread
  %i.am = phi ptr [ %i.p, %.thread ], [ %i.t, %bb.d ] ; 2 uses
  %i.an = phi ptr [ %i.o, %.thread ], [ %i.s, %bb.d ] ; 2 uses
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ao = load ptr, ptr %1, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.42") align 8 %8, ptr noundef nonnull align 8 dereferenceable(312) %1)
          to label %bb.g unwind label %bb.bj

bb.g:                                             ; preds = %.critedge40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62 ; 2 uses
  %i.au = load <2 x ptr>, ptr %3, align 16, !tbaa !63
  store <2 x ptr> %i.au, ptr %i.ar, align 16, !tbaa !63
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i52 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.g, %bb.i, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ba = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %.noexc53 unwind label %bb.bk  ; 5 uses

.noexc53:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  store ptr %i.ba, ptr %9, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %10, align 16, !tbaa !63
  store <2 x ptr> %i.bf, ptr %i.ba, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %.noexc53
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !62 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !63
  store <2 x ptr> %i.bo, ptr %i.bl, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.n

bb.n:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %i.bq, 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev:bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !89
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #19
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !90
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !90
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !72
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !91
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !91
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !84

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !50
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #19
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17DenseUnionBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b
  %i.i = add nsw i64 %4, %3
  %.not47 = icmp sgt i64 %4, 0
  br i1 %.not47, label %_ZN5arrow6StatusD2Ev.exit.lr.ph, label %.critedge34

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.m = add nsw i64 %.03148, 1                   ; 2 uses
  %.not = icmp slt i64 %i.m, %i.i
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge34, !llvm.loop !102

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %bb.b
  %.03148 = phi i64 [ %3, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 %.03148
  %i.o = load i8, ptr %i.n, align 1, !tbaa !64    ; 2 uses
  %i.p = sext i8 %i.o to i64                      ; 2 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.03148
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN5arrow17DenseUnionBuilder6AppendEa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %1, i8 noundef signext %i.o)
  %i.v = load ptr, ptr %5, align 8, !tbaa !43     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit42, label %.critedge34

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.p
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110  ; 2 uses
  %i.aa = sext i32 %i.s to i64
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = sext i32 %i.u to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 noundef %i.ad, i64 noundef 1)
  %i.ah = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.b, label %.critedge34

.critedge34:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit42, %bb.b, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ %i.v, %_ZN5arrow6StatusD2Ev.exit ], [ %i.ah, %_ZN5arrow6StatusD2Ev.exit42 ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17DenseUnionBuilder6AppendEa(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, i8 noundef signext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !112 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i64, ptr %i.c, align 8, !tbaa !117, !noalias !112 ; 2 uses
  %.not.i = icmp slt i64 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !118

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = add nsw i64 %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !112
  %i.g = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.f, i64 %i.g)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false), !noalias !112
  %i.h = load ptr, ptr %4, align 8, !tbaa !43, !noalias !112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !112
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %bb.b

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !112
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !43
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.c:                                             ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i
  %i.j = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.b, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119, !noalias !112
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.j
  store i8 %2, ptr %i.m, align 1, !noalias !112
  %i.n = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !112
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr %i.a, align 8, !tbaa !33, !noalias !112
  store ptr null, ptr %0, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = sext i8 %2 to i64                        ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.t)
  %i.y = icmp eq i64 %i.x, 2147483646
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(82) @.str.1)
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %i.ab)
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33, !noalias !126 ; 2 uses
  %i.aj = add nsw i64 %i.ai, 4                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !117, !noalias !126 ; 2 uses
  %i.am = icmp sgt i64 %i.aj, %i.al
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit.i.i14, label %bb.f, !prof !74

_ZN5arrow6StatusD2Ev.exit.i.i14:                  ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !126
  %i.ao = shl nsw i64 %i.al, 1
  %.sroa.speculated.i.i.i15 = call noundef i64 @llvm.smax.i64(i64 %i.aj, i64 %i.ao)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 noundef %.sroa.speculated.i.i.i15, i1 noundef zeroext false), !noalias !126
  %i.ap = load ptr, ptr %3, align 8, !tbaa !43, !noalias !126 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !43, !alias.scope !126
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !126
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16, label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16:       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i14
  %.pre.i.i17 = load i64, ptr %i.ah, align 8, !tbaa !33, !noalias !126
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16, %bb.e
  %i.ar = phi i64 [ %.pre.i.i17, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i16 ], [ %i.ai, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119, !noalias !126
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ar
  store i32 %i.ag, ptr %i.au, align 1, !noalias !126
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !33, !noalias !126
  %i.aw = add nsw i64 %i.av, 4
  store i64 %i.aw, ptr %i.ah, align 8, !tbaa !33, !noalias !126
  store ptr null, ptr %0, align 8, !tbaa !43, !alias.scope !127
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit:  ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i.i14, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17DenseUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr noundef captures(none) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.l

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = load ptr, ptr %2, align 8, !tbaa !80     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 3, %i.k
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
  br label %_ZN5arrow6StatusD2Ev.exit20

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 48
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit20, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !72
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16, !inline_history !130
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16, !inline_history !130
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, !prof !74

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  store ptr %i.n, ptr %i.e, align 8, !tbaa !69
  br label %_ZN5arrow6StatusD2Ev.exit20

_ZN5arrow6StatusD2Ev.exit20:                      ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ah = load ptr, ptr %2, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit20
  store ptr null, ptr %0, align 8, !tbaa !43, !alias.scope !131
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit20, %_ZN5arrow6StatusD2Ev.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17BasicUnionBuilderC2EPNS_10MemoryPoolElRKSt6vectorISt10shared_ptrINS_12ArrayBuilderEESaIS6_EERKS4_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 144)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.f, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.g, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.i, align 8, !tbaa !142
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BasicUnionBuilderE, i64 16), ptr %0, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ugt i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.b, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #18
          to label %.noexc33 unwind label %bb.e   ; 3 uses

.noexc33:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.s, ptr %i.k, align 8, !tbaa !143
  %i.t = getelementptr i8, ptr %i.s, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.q, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, %.noexc33
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.t, %.noexc33 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink.i, ptr %i.v, align 8, !tbaa !146
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.x, i8 0, i64 49, i1 false)
  store ptr %1, ptr %i.aa, align 8, !tbaa !141
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ab, align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.ad, align 8, !tbaa !142
  %i.ae = load ptr, ptr %4, align 8, !tbaa !148   ; 5 uses
  %i.af = invoke noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIaSaIaEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.h, %bb.g, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 3 uses
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !103 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i64 %i.ap, %i.aw
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.ar, i64 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.ap, %i.aw
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ba = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !110
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !168 ; 3 uses
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !106 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.not41 = icmp ugt i64 %i.bj, %i.bb
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = sub nuw nsw i64 %i.bc, %i.bj
  invoke void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.be, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bl = icmp ult i64 %i.bc, %i.bj
  br i1 %i.bl, label %bb.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.be, %i.bm
  br i1 %.not.i.i35, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.p
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !168
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit: ; preds = %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !46  ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %.not43 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ad

bb.r:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ad
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev:bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !192
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !192
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
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
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !193

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !146
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #19
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !72
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !inline_history !194
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16, !inline_history !194
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !182

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !72
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #16, !inline_history !195
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #16, !inline_history !195
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !74

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #16
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.63", align 16 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.42", align 8 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.69", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !63
  store <2 x ptr> %i.h, ptr %i.c, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.d ], [ %.pre.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.b, align 8, !tbaa !46
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ArrayBuilderEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !168  ; 4 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !106  ; 6 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %.promoted.i = load i8, ptr %i.p, align 8, !tbaa !196 ; 2 uses
  %i.y = sext i8 %.promoted.i to i64              ; 2 uses
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit, %bb.g
  %i.aa = phi i64 [ %i.ag, %bb.g ], [ %i.y, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit ]
  %i.ab = phi i8 [ %i.af, %bb.g ], [ %.promoted.i, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN5arrow17BasicUnionBuilder10NextTypeIdEv.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = add i8 %i.ab, 1                         ; 3 uses
  store i8 %i.af, ptr %i.p, align 8, !tbaa !196
  %i.ag = sext i8 %i.af to i64                    ; 2 uses
  %i.ah = icmp ugt i64 %i.x, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !197

._crit_edge.i:                                    ; preds = %bb.g, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !167 ; 4 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !103 ; 5 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %.not.i11 = icmp eq i64 %i.ao, -4
  br i1 %.not.i11, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.ap = ashr exact i64 %i.ao, 2                 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !175 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = icmp ult i64 %i.ap, 2305843009213693952
  tail call void @llvm.assume(i1 %i.at)
  %.not28.i27 = icmp eq ptr %i.ar, %i.ak
  br i1 %.not28.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 4, !tbaa !3
  %i.au = getelementptr i8, ptr %i.ak, i64 4
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.h
  %i.av = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.j
  %.sroa.speculated.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aw = add nuw nsw i64 %.sroa.speculated.i.i29, %i.ap
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951) ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #18 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ao ; 2 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !3
  %i.bb = icmp sgt i64 %i.ao, 0
  br i1 %i.bb, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %.not.i35.i30 = icmp eq ptr %i.al, null
  br i1 %.not.i35.i30, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bc = sub i64 %i.as, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bc) #19
  %.pre.i12.pre.pre = load ptr, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %.pre8.i.pre.pre = load ptr, ptr %i.q, align 8, !tbaa !106 ; 2 uses
  %.pre37 = ptrtoint ptr %.pre.i12.pre.pre to i64
  %.pre = ptrtoint ptr %.pre8.i.pre.pre to i64
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %.pre36.pre-phi = phi i64 [ %.pre, %bb.m ], [ %i.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre.pre-phi = phi i64 [ %.pre37, %bb.m ], [ %i.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre8.i.pre = phi ptr [ %.pre8.i.pre.pre, %bb.m ], [ %i.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre.i12.pre = phi ptr [ %.pre.i12.pre.pre, %bb.m ], [ %i.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !167
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.be, ptr %i.aq, align 8, !tbaa !175
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %._crit_edge.i
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %.pre-phi11.i = phi i64 [ %i.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.v, %bb.i ], [ %.pre36.pre-phi, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %.pre-phi.i = phi i64 [ %i.u, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.u, %bb.i ], [ %.pre.pre-phi, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.bf = phi ptr [ %i.t, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.t, %bb.i ], [ %.pre8.i.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 9 uses
  %i.bg = phi ptr [ %i.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.s, %bb.i ], [ %.pre.i12.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 5 uses
  %i.bh = sub i64 %.pre-phi.i, %.pre-phi11.i
  %.not2.i = icmp eq i64 %i.bh, -8
  br i1 %.not2.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = ashr exact i64 %i.bk, 3                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !176 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = icmp ult i64 %i.bl, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bp)
  %.not28.i = icmp eq ptr %i.bn, %i.bg
  br i1 %.not28.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.bg, align 8, !tbaa !110
  %i.bq = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bq, ptr %i.r, align 8, !tbaa !168
  br label %_ZN5arrow17BasicUnionBuilder10NextTypeIdEv.exit

bb.p:                                             ; preds = %bb.n
  %i.br = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.br, label %bb.q, label %_ZNKSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNKSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bs = add nuw nsw i64 %.sroa.speculated.i.i, %i.bl
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975) ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #18 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bk ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit unwind label %bb.az

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.z, %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.do, align 8, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !72
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16, !inline_history !203
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16, !inline_history !203
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.ae ], [ %i.eb, %bb.af ]
  %i.ec = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ec, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ef, align 8, !tbaa !70
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !72
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !60
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #16, !inline_history !204
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !60
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #16, !inline_history !204
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i15 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i15, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.al:                                            ; preds = %bb.aj
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i17 = phi i32 [ %i.ei, %bb.ak ], [ %i.es, %bb.al ]
  %i.et = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.et, label %bb.am, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #16
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !62 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ew, align 8, !tbaa !70
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !72
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !60
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #16, !inline_history !79
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !60
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #16, !inline_history !79
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i19 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i19, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.ar:                                            ; preds = %bb.ap
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i21 = phi i32 [ %i.ez, %bb.aq ], [ %i.fj, %bb.ar ]
  %i.fk = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.fk, label %bb.as, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #16
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.as
  %i.fl = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.cq
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fn = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !178 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !177
  %.not.i.i22 = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i.i22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 %storemerge.in.i, ptr %i.fr, align 1, !tbaa !64
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !178
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  store ptr %i.fv, ptr %i.fq, align 8, !tbaa !178
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !173 ; 4 uses
  %i.fx = ptrtoint ptr %i.fr to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 8 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775807
  br i1 %i.ga, label %bb.av, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.gb = add i64 %.sroa.speculated.i.i.i.i, %i.fz ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fz
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 9223372036854775807)
  %i.ge = select i1 %i.gc, i64 9223372036854775807, i64 %i.gd ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i, label %7

7:                                                ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  %8 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #18
  br label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i: ; preds = %7, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  %9 = phi ptr [ %8, %7 ], [ null, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %i.fz ; 2 uses
  store i8 %storemerge.in.i, ptr %10, align 1, !tbaa !64
  %11 = icmp sgt i64 %i.fz, 0
  br i1 %11, label %bb.aw, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

bb.aw:                                            ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %i.fw, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aw, %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fz) #19
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  store ptr %9, ptr %i.fp, align 8, !tbaa !173
  store ptr %i.gf, ptr %i.fq, align 8, !tbaa !178
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 %i.ge
  store ptr %i.gg, ptr %i.fs, align 8, !tbaa !177
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

_ZNSt6vectorIaSaIaEE9push_backEOa.exit:           ; preds = %bb.at, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i
  ret i8 %storemerge.in.i

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aa
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.az ], [ %i.gh, %bb.ay ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  %i.gj = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cq
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.ba
  %i.gl = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder10NextTypeIdEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !106  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.promoted = load i8, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %i.j = sext i8 %.promoted to i64                ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.r, %bb.b ], [ %i.j, %bb.a ]
  %i.m = phi i8 [ %i.q, %bb.b ], [ %.promoted, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = add i8 %i.m, 1                           ; 3 uses
  store i8 %i.q, ptr %i.a, align 8, !tbaa !196
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp ugt i64 %i.i, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !197

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, -4
  br i1 %.not, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !168 ; 2 uses
  %.pre8 = load ptr, ptr %i.b, align 8, !tbaa !106 ; 2 uses
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = ptrtoint ptr %.pre8 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.w, ptr %i.u, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi11 = phi i64 [ %.pre10, %bb.c ], [ %i.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.pre-phi = phi i64 [ %.pre9, %bb.c ], [ %i.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aa = phi ptr [ %.pre8, %bb.c ], [ %i.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ac = sub i64 %.pre-phi, %.pre-phi11
  %.not2 = icmp eq i64 %i.ac, -8
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  tail call void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i1 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i1, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !168
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit: ; preds = %.lr.ph, %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %storemerge.in = load i8, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %storemerge = add i8 %storemerge.in, 1
  store i8 %storemerge, ptr %i.a, align 8, !tbaa !196
  ret i8 %storemerge.in
}

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.63") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !90
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !90
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow17BasicUnionBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.42") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.7", align 8     ; 15 uses
  %3 = alloca %"class.std::shared_ptr.63", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.42", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.7", align 8     ; 7 uses
  %6 = alloca %"class.std::vector.12", align 8    ; 12 uses
  %7 = alloca %"class.std::vector.7", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.12", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !143
  %i.l = getelementptr i8, ptr %i.k, i64 %i.g     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.g, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !146
  store ptr %i.l, ptr %i.m, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.thread
  %i.r = phi ptr [ %i.j, %.thread ], [ %i.n, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.s = phi ptr [ %i.i, %.thread ], [ %i.m, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.lcssa102 = phi ptr [ null, %.thread ], [ %i.ch, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ null, %.thread ], [ %i.ci, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = load i32, ptr %i.t, align 8, !tbaa !150
  %.not = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  br i1 %.not, label %bb.z, label %bb.af

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = phi ptr [ %i.k, %.lr.ph ], [ %i.ci, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.019105 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.019105
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.019105
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.42") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.ad)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.63") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.019105 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load <2 x ptr>, ptr %3, align 16, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !63
  %.not.i.i.i.i42 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i42, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.al, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !72
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #16, !inline_history !205
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #16, !inline_history !205
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.j, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, !prof !74

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #16
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit:    ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !62  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bb, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !72
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #16, !inline_history !203
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #16, !inline_history !203
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.n ], [ %i.bo, %bb.o ]
  %i.bp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bp, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #16
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !62  ; 8 uses
  %.not.i.i43 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.br, align 8, !tbaa !70
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !72
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !60
end_hunk_3
begin_hunk_4_@_ZNK5arrow17BasicUnionBuilder4typeEv:bb.a
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67

bb.aw:                                            ; preds = %bb.au
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i.i64 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i.i64, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i65

bb.ay:                                            ; preds = %bb.aw
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i65: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i.i66 = phi i32 [ %i.fu, %bb.ax ], [ %i.ge, %bb.ay ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i66, 1
  br i1 %i.gf, label %bb.az, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67, !prof !74

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i65, %bb.av, %.lr.ph.i.i.i61
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 16 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.gg, %i.fo
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i61, !llvm.loop !193

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67
  %.pr.i70 = load ptr, ptr %5, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69, %_ZNSt6vectorIaSaIaEED2Ev.exit59
  %i.gh = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69 ], [ %i.fn, %_ZNSt6vectorIaSaIaEED2Ev.exit59 ] ; 2 uses
  %.not.i.i1.i72 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i1.i72, label %.critedge39, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71
  %i.gi = load ptr, ptr %i.cr, align 8, !tbaa !146
  br label %.critedge39.sink.split

.critedge39.sink.split:                           ; preds = %bb.as, %bb.ba
  %.sink149 = phi ptr [ %i.gi, %bb.ba ], [ %i.fg, %bb.as ]
  %.sink148 = phi ptr [ %i.gh, %bb.ba ], [ %i.ff, %bb.as ] ; 2 uses
  %i.gj = ptrtoint ptr %.sink149 to i64
  %i.gk = ptrtoint ptr %.sink148 to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sink148, i64 noundef %i.gl) #19
  br label %.critedge39

.critedge39:                                      ; preds = %.critedge39.sink.split, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gm = load ptr, ptr %2, align 8, !tbaa !143   ; 3 uses
  %i.gn = load ptr, ptr %i.s, align 8, !tbaa !147 ; 2 uses
  %.not4.i.i.i74 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not4.i.i.i74, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85, label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.critedge39, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81
  %.05.i.i.i76 = phi ptr [ %i.hf, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81 ], [ %i.gm, %.critedge39 ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !62 ; 8 uses
  %.not.i.i.i.i.i.i.i77 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i77, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i75
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gq, align 8, !tbaa !70
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !72
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #16, !inline_history !208
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !60
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #16, !inline_history !208
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81

bb.bd:                                            ; preds = %bb.bb
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i.i78 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i.i78, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79

bb.bf:                                            ; preds = %bb.bd
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i.i.i80 = phi i32 [ %i.gt, %bb.be ], [ %i.hd, %bb.bf ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i80, 1
  br i1 %i.he, label %bb.bg, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81, !prof !74

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #16
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i79, %bb.bc, %.lr.ph.i.i.i75
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 16 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.hf, %i.gn
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83, label %.lr.ph.i.i.i75, !llvm.loop !193

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81
  %.pr.i84 = load ptr, ptr %2, align 8, !tbaa !143
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83, %.critedge39
  %i.hg = phi ptr [ %.pr.i84, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83 ], [ %i.gm, %.critedge39 ] ; 3 uses
  %.not.i.i1.i86 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i86, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit87, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85
  %i.hh = load ptr, ptr %i.r, align 8, !tbaa !146
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit87

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit87: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.bi:                                            ; preds = %_ZNSt15__new_allocatorIaE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bj:                                            ; preds = %_ZNSt15__new_allocatorIaE8allocateEmPKv.exit.i.i.i.i51, %.noexc.i.i52
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit91

bb.bk:                                            ; preds = %bb.ak
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = load ptr, ptr %8, align 8, !tbaa !173   ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIaSaIaEED2Ev.exit91, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hp = load ptr, ptr %i.ec, align 8, !tbaa !177
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hs) #19
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit91

bb.bm:                                            ; preds = %bb.ae
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %6, align 8, !tbaa !173   ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i90, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !177
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #19
  br label %bb.bo

_ZNSt6vectorIaSaIaEED2Ev.exit91:                  ; preds = %bb.bl, %bb.bk, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.hm, %bb.bj ], [ %i.hn, %bb.bk ], [ %i.hn, %bb.bl ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi, %bb.bm, %bb.bn
  %.pn30.pn.ph = phi { ptr, i32 } [ %i.ht, %bb.bn ], [ %i.ht, %bb.bm ], [ %i.hl, %bb.bi ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit91, %bb.bo, %bb.y
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.y ], [ %.pn30.pn.ph, %bb.bo ], [ %.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit91 ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn33.pn
}

declare void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.63") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN5arrow12sparse_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.42") align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5arrow11dense_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.42") align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18SparseUnionBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit.lr.ph

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = add nuw i64 %.02040, 1                   ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %._crit_edge, !llvm.loop !209

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %bb.b
  %i.o = phi ptr [ %i.d, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.j, %bb.b ]
  %.02040 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.02040
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64
  %i.r = sext i8 %i.q to i64
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110  ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.02040
  %i.x = load i64, ptr %i.g, align 8, !tbaa !92
  %i.y = add nsw i64 %i.x, %3
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.w, i64 noundef %i.y, i64 noundef %4)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !43    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %.critedge27

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !100
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.af
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33, !noalias !210 ; 2 uses
  %i.am = add nsw i64 %i.al, %4                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !117, !noalias !210 ; 2 uses
  %i.ap = icmp sgt i64 %i.am, %i.ao
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit37, !prof !74

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !210
  %i.ar = shl nsw i64 %i.ao, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.am, i64 %i.ar)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false), !noalias !210
  %i.as = load ptr, ptr %5, align 8, !tbaa !43, !noalias !210 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !210
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %.critedge27

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pre.i.i = load i64, ptr %i.ak, align 8, !tbaa !33, !noalias !210
  br label %_ZN5arrow6StatusD2Ev.exit37

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, %._crit_edge
  %i.au = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.al, %._crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !119, !noalias !210
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.aj, i64 %4, i1 false), !noalias !210
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !33, !noalias !210
  %i.az = add nsw i64 %i.ay, %4
  store i64 %i.az, ptr %i.ak, align 8, !tbaa !33, !noalias !210
  br label %.critedge27

.critedge27:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit37
  %.sink = phi ptr [ %i.as, %_ZN5arrow6StatusD2Ev.exit.i.i ], [ null, %_ZN5arrow6StatusD2Ev.exit37 ], [ %i.ac, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17BasicUnionBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow17BasicUnionBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  ret i64 %i.b
}

declare void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) unnamed_addr #3

declare void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #3

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1, i64 noundef) unnamed_addr #3

declare void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::shared_ptr.42", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = load ptr, ptr %1, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.42") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.d = load ptr, ptr %6, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !215
  invoke void @_ZN5arrow8internal12JoinToStringIJRA34_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(34) @.str.6, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %5, align 8, !tbaa !200, !noalias !215 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !64, !noalias !215
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !200, !noalias !215 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !64, !noalias !215
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !215
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !215
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !72
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #16, !inline_history !79
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #16, !inline_history !79
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
end_hunk_4
