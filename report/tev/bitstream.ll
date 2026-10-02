Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/bitstream?download=true
inline.NumInlined: 906
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN14BitstreamRange6read24Ev:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56, !noalias !108 ; 7 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !56, !alias.scope !108
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN14BitstreamRange11get_istreamEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !108 ; 0 uses
  br label %_ZN14BitstreamRange11get_istreamEv.exit

_ZN14BitstreamRange11get_istreamEv.exit:          ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull %i.a, i64 noundef 3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN14BitstreamRange11get_istreamEv.exit
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14BitstreamRange21set_eof_while_readingEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN14BitstreamRange11get_istreamEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.a, align 1, !tbaa !30
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !30
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.0 = phi i32 [ %i.y, %bb.g ], [ 0, %bb.e ]
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aa = atomicrmw add ptr %i.z, i64 -1 acq_rel, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  br label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit
  %.1 = phi i32 [ %.0, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %1 = alloca %"class.std::__1::shared_ptr", align 8 ; 6 uses
  %i.b = tail call noundef zeroext i1 @_ZN14BitstreamRange12prepare_readEm(ptr noundef nonnull align 8 dereferenceable(41) %0, i64 noundef 4)
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.c = load ptr, ptr %0, align 8, !tbaa !55, !noalias !111 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !55, !alias.scope !111
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56, !noalias !111 ; 7 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !56, !alias.scope !111
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN14BitstreamRange11get_istreamEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !111 ; 0 uses
  br label %_ZN14BitstreamRange11get_istreamEv.exit

_ZN14BitstreamRange11get_istreamEv.exit:          ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN14BitstreamRange11get_istreamEv.exit
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14BitstreamRange21set_eof_while_readingEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN14BitstreamRange11get_istreamEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.a, align 4
  %i.o = call i32 @llvm.bswap.i32(i32 %i.n)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.0 = phi i32 [ %i.o, %bb.g ], [ 0, %bb.e ]
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = atomicrmw add ptr %i.p, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  br label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit
  %.1 = phi i32 [ %.0, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN14BitstreamRange9read_uintEi(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 29)
  switch i32 %i.a, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.c = zext i8 %i.b to i64
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.e = zext i16 %i.d to i64
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN14BitstreamRange6read24Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.g = zext nneg i32 %i.f to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.i = zext i32 %i.h to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @_ZN14BitstreamRange6read64Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.j, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN14BitstreamRange6read64Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  %1 = alloca %"class.std::__1::shared_ptr", align 8 ; 6 uses
  %i.b = tail call noundef zeroext i1 @_ZN14BitstreamRange12prepare_readEm(ptr noundef nonnull align 8 dereferenceable(41) %0, i64 noundef 8)
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.c = load ptr, ptr %0, align 8, !tbaa !55, !noalias !114 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !55, !alias.scope !114
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56, !noalias !114 ; 7 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !56, !alias.scope !114
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN14BitstreamRange11get_istreamEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !114 ; 0 uses
  br label %_ZN14BitstreamRange11get_istreamEv.exit

_ZN14BitstreamRange11get_istreamEv.exit:          ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN14BitstreamRange11get_istreamEv.exit
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14BitstreamRange21set_eof_while_readingEv(ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN14BitstreamRange11get_istreamEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %i.m

bb.g:                                             ; preds = %bb.d
  %2 = load i8, ptr %i.a, align 1, !tbaa !30
  %3 = zext i8 %2 to i64
  %4 = shl nuw i64 %3, 56
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !30
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 48
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !30
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 40
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !30
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 32
  %19 = or disjoint i64 %14, %18
  %20 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %21 = load i8, ptr %20, align 1, !tbaa !30
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 24
  %24 = or disjoint i64 %19, %23
  %25 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %26 = load i8, ptr %25, align 1, !tbaa !30
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 16
  %29 = or disjoint i64 %24, %28
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %31 = load i8, ptr %30, align 1, !tbaa !30
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 8
  %34 = or i64 %29, %33
  %35 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %36 = load i8, ptr %35, align 1, !tbaa !30
  %37 = zext i8 %36 to i64
  %38 = or i64 %34, %37
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.0 = phi i64 [ %38, %bb.g ], [ 0, %bb.e ]
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 -1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25
  br label %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit
  %.1 = phi i64 [ %.0, %_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev.exit ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN14BitstreamRange7read32sEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN14BitstreamRange7read64sEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN14BitstreamRange6read64Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN14BitstreamRange12read_float32Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.b = bitcast i32 %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12StreamWriter13write_float32Ef(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i, label %_ZN12StreamWriter7write32Ej.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i: ; preds = %bb.a
  %i.k = sub nuw i64 %i.c, %i.i
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !61
  %.pre6.i = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZN12StreamWriter7write32Ej.exit

_ZN12StreamWriter7write32Ej.exit:                 ; preds = %bb.a, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i
  %i.l = phi ptr [ %.pre6.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i ], [ %i.f, %bb.a ]
  %i.m = phi i64 [ %.pre.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = bitcast float %1 to i32                  ; 4 uses
  %i.o = lshr i32 %i.n, 24
  %i.p = trunc nuw i32 %i.o to i8
  %i.q = add i64 %i.m, 1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 %i.p, ptr %i.r, align 1, !tbaa !30
  %i.s = lshr i32 %i.n, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.a, align 8, !tbaa !61
  %i.w = load ptr, ptr %0, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 %i.t, ptr %i.x, align 1, !tbaa !30
  %i.y = lshr i32 %i.n, 8
  %i.z = trunc i32 %i.y to i8
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !61
  %i.ac = load ptr, ptr %0, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 %i.z, ptr %i.ad, align 1, !tbaa !30
  %i.ae = trunc i32 %i.n to i8
  %i.af = load i64, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !61
  %i.ah = load ptr, ptr %0, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 %i.ae, ptr %i.ai, align 1, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12StreamWriter7write32Ej(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, label %bb.b

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.a
  %i.k = sub nuw i64 %i.c, %i.i
  tail call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !61
  %.pre6 = load ptr, ptr %0, align 8, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %bb.a
  %i.l = phi ptr [ %.pre6, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ %i.f, %bb.a ]
  %i.m = phi i64 [ %.pre, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = lshr i32 %1, 24
  %i.o = trunc nuw i32 %i.n to i8
  %i.p = add i64 %i.m, 1
  store i64 %i.p, ptr %i.a, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 %i.o, ptr %i.q, align 1, !tbaa !30
  %i.r = lshr i32 %1, 16
  %i.s = trunc i32 %i.r to i8
  %i.t = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.a, align 8, !tbaa !61
  %i.v = load ptr, ptr %0, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 %i.s, ptr %i.w, align 1, !tbaa !30
  %i.x = lshr i32 %1, 8
  %i.y = trunc i32 %i.x to i8
  %i.z = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !61
  %i.ab = load ptr, ptr %0, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 %i.y, ptr %i.ac, align 1, !tbaa !30
  %i.ad = trunc i32 %1 to i8
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.a, align 8, !tbaa !61
  %i.ag = load ptr, ptr %0, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN14BitstreamRange11read_stringEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::basic_string") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__1::shared_ptr", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.e = load ptr, ptr %1, align 8, !tbaa !55, !noalias !117 ; 3 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !55, !alias.scope !117
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56, !noalias !117 ; 7 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !56, !alias.scope !117
  %.not.i.i = icmp eq ptr %i.h, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN14BitstreamRange11get_istreamEv.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !117 ; 0 uses
  br label %_ZN14BitstreamRange11get_istreamEv.exit.preheader

_ZN14BitstreamRange11get_istreamEv.exit.preheader: ; preds = %bb.b, %bb.c
  br label %_ZN14BitstreamRange11get_istreamEv.exit

end_hunk_0
begin_hunk_1_@_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:bb.a
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136) %i.aq)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej.exit
  ret ptr %0

bb.o:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ar

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #29
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(ptr %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i8 noundef signext %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !289  ; 2 uses
  %.not45 = icmp sgt i64 %i.f, %i.d
  %i.g = sub nsw i64 %i.f, %i.d                   ; 8 uses
  %i.h = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.i = sub i64 %i.h, %i.c                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %i.i), !inline_history !288
  %.not = icmp eq i64 %i.n, %i.i
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not45, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.o = icmp samesign ult i64 %i.g, 23
  br i1 %i.o, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  %i.p = or i64 %i.g, 7                           ; 2 uses
  %i.q = icmp eq i64 %i.p, 23
  %i.r = add nuw i64 %i.p, 1
  %i.s = select i1 %i.q, i64 25, i64 %i.r         ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = or i64 %i.s, 1
  store i64 %i.v, ptr %6, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit

bb.f:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i64 %i.g to i8
  %i.y = shl nuw nsw i8 %i.x, 1
  store i8 %i.y, ptr %6, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit: ; preds = %.thread.i.i, %bb.f
  %.017.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %i.z, %bb.f ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.017.i.i, i8 %5, i64 %i.g, i1 false), !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 %i.g
  store i8 0, ptr %i.aa, align 1, !tbaa !30
  %i.ab = load i8, ptr %6, align 8
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.ag = select i1 %i.ac, ptr %i.ae, ptr %i.af
  %i.ah = load ptr, ptr %0, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.ag, i64 noundef %i.g)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit unwind label %bb.h, !inline_history !288

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %.not42 = icmp eq i64 %i.ak, %i.g
  %i.al = load i8, ptr %6, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.ao = load i64, ptr %6, align 8
  %i.ap = and i64 %i.ao, -2
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not42, label %bb.j, label %bb.m

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load i8, ptr %6, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.au = load i64, ptr %6, align 8
  %i.av = and i64 %i.au, -2
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.aq

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.d
  %i.aw = sub i64 %i.b, %i.h                      ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %0, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %2, i64 noundef %i.aw), !inline_history !288
  %.not43 = icmp eq i64 %i.bb, %i.aw
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !289
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c, %bb.k, %bb.a
  %.sroa.034.2 = phi ptr [ null, %bb.a ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ null, %bb.c ], [ %0, %bb.l ], [ null, %bb.k ]
  ret ptr %.sroa.034.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #19

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null, null}
!1 = distinct !{ptr @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev, null, null}
!2 = distinct !{!2, !64}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTSNSt3__113basic_istreamIcNS_11char_traitsIcEEEE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_13basic_istreamIcNS_11char_traitsIcEEEELi0ELb0EEE", !14, i64 0}
!17 = !{!"_ZTS15heif_error_code", !7, i64 0}
!18 = !{!"_ZTS18heif_suberror_code", !7, i64 0}
!19 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !7, i64 0}
!20 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !19, i64 0}
!21 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !20, i64 0}
!22 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !21, i64 0}
!23 = !{!"_ZTS5Error", !17, i64 0, !18, i64 4, !22, i64 8}
!24 = !{!"_ZTS12StreamReader", !23, i64 8}
!25 = !{!"_ZTSNSt3__117__compressed_pairIPNS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEEE", !16, i64 0}
!26 = !{!"_ZTSNSt3__110unique_ptrINS_13basic_istreamIcNS_11char_traitsIcEEEENS_14default_deleteIS4_EEEE", !25, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTS20StreamReader_istream", !24, i64 0, !26, i64 40, !27, i64 48}
!29 = !{!28, !27, i64 48}
!30 = !{!7, !7, i64 0}
!31 = !{ptr @_ZN12StreamReaderD2Ev}
!32 = !{!"p1 omnipotent char", !13, i64 0}
!33 = !{!"_ZTS19StreamReader_memory", !24, i64 0, !32, i64 40, !27, i64 48, !27, i64 56, !32, i64 64}
!34 = !{!33, !27, i64 48}
!35 = !{!33, !32, i64 64}
!36 = !{!33, !32, i64 40}
!37 = !{!33, !27, i64 56}
!38 = !{!"p1 _ZTS11heif_reader", !13, i64 0}
!39 = !{!"_ZTS17StreamReader_CApi", !24, i64 0, !38, i64 40, !13, i64 48}
!40 = !{!39, !38, i64 40}
!41 = !{!39, !13, i64 48}
!42 = !{!"_ZTS11heif_reader", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!43 = !{!42, !13, i64 32}
!44 = !{!13, !13, i64 0}
!45 = !{!"p1 _ZTS12StreamReader", !13, i64 0}
!46 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !13, i64 0}
!47 = !{!"_ZTSNSt3__110shared_ptrI12StreamReaderEE", !45, i64 0, !46, i64 8}
!48 = !{!"p1 _ZTS14BitstreamRange", !13, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"_ZTS14BitstreamRange", !47, i64 0, !48, i64 16, !8, i64 24, !27, i64 32, !49, i64 40}
!51 = !{!50, !48, i64 16}
!52 = !{!50, !8, i64 24}
!53 = !{!50, !27, i64 32}
!54 = !{!50, !49, i64 40}
!55 = !{!47, !45, i64 0}
!56 = !{!47, !46, i64 8}
!57 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !32, i64 0}
!58 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !57, i64 0}
!59 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !32, i64 0, !32, i64 8, !58, i64 16}
!60 = !{!"_ZTS12StreamWriter", !59, i64 0, !27, i64 24}
!61 = !{!60, !27, i64 24}
!62 = !{!59, !32, i64 8}
!63 = !{!59, !32, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"_ZTS9BitReader", !32, i64 0, !32, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !8, i64 40}
!66 = !{!65, !32, i64 0}
!67 = !{!65, !27, i64 16}
!68 = !{!65, !32, i64 8}
!69 = !{!65, !27, i64 24}
!70 = !{!65, !27, i64 32}
!71 = !{!65, !8, i64 40}
!72 = !{!32, !32, i64 0}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!"branch_weights", i32 8, i32 24}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!8, !8, i64 0}
!78 = !{!"_ZTS9BitWriter", !59, i64 0, !7, i64 24, !8, i64 28}
!79 = !{!78, !8, i64 28}
!80 = !{!78, !7, i64 24}
!81 = !{!42, !13, i64 8}
!82 = !{!42, !8, i64 0}
!83 = !{!"p1 _ZTSNSt3__16locale5__impE", !13, i64 0}
!84 = !{!"_ZTSNSt3__16localeE", !83, i64 0}
!85 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !84, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56}
!86 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !85, i64 0, !22, i64 64, !32, i64 88, !8, i64 96}
!87 = !{!86, !8, i64 96}
!88 = !{!"any p2 pointer", !13, i64 0}
!89 = !{!"p1 int", !13, i64 0}
!90 = !{!"p1 long", !13, i64 0}
!91 = !{!"_ZTSNSt3__18ios_baseE", !8, i64 8, !27, i64 16, !27, i64 24, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 48, !88, i64 56, !89, i64 64, !27, i64 72, !27, i64 80, !90, i64 88, !27, i64 96, !27, i64 104, !88, i64 112, !27, i64 120, !27, i64 128}
!92 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !13, i64 0}
!93 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !91, i64 0, !92, i64 136, !8, i64 144}
!94 = !{!93, !8, i64 144}
!95 = !{!16, !14, i64 0}
!96 = !{ptr @_ZN19StreamReader_memoryD2Ev}
!97 = !{ptr @_ZN19StreamReader_memoryD2Ev, ptr @_ZN12StreamReaderD2Ev}
!98 = distinct !{null, null}
!99 = distinct !{!99, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!100 = distinct !{!100, !99, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!101 = !{!100}
!102 = distinct !{null, null}
!103 = distinct !{!103, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!104 = distinct !{!104, !103, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!105 = !{!104}
!106 = distinct !{!106, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!107 = distinct !{!107, !106, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!108 = !{!107}
!109 = distinct !{!109, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!110 = distinct !{!110, !109, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!111 = !{!110}
!112 = distinct !{!112, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!113 = distinct !{!113, !112, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!114 = !{!113}
!115 = distinct !{!115, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!116 = distinct !{!116, !115, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!117 = !{!116}
!118 = distinct !{!118, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!119 = distinct !{!119, !118, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!120 = distinct !{!120, !64}
!121 = distinct !{null}
!122 = !{!119}
!123 = distinct !{!123, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!124 = distinct !{!124, !123, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!125 = !{!124}
!126 = distinct !{!126, i1 false, !"_ZN14BitstreamRange11get_istreamEv"}
!127 = distinct !{!127, !126, !"_ZN14BitstreamRange11get_istreamEv: argument 0"}
!128 = !{!127}
!129 = distinct !{!129, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!130 = distinct !{!130, !129, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!132 = distinct !{!132, !131, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!133 = distinct !{!133, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!134 = distinct !{!134, !133, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!136 = distinct !{!136, !135, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!137 = distinct !{!137, !64, !73, !74}
!138 = distinct !{!138, !64, !73, !74}
!139 = distinct !{!139, !76}
!140 = distinct !{!140, !64, !73}
!141 = distinct !{!141, !64}
!142 = !{!136, !134, !132, !130}
!143 = distinct !{!143, !64}
!144 = distinct !{!144, !64}
!145 = distinct !{!145, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!146 = distinct !{!146, !145, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!147 = distinct !{!147, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!148 = distinct !{!148, !147, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!149 = distinct !{!149, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!150 = distinct !{!150, !149, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!151 = distinct !{!151, i1 false, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!152 = distinct !{!152, !151, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!153 = distinct !{!153, !64, !73, !74}
!154 = distinct !{!154, !64, !73, !74}
!155 = distinct !{!155, !76}
!156 = distinct !{!156, !64, !73}
!157 = distinct !{!157, !64}
!158 = !{!152, !150, !148, !146}
!159 = distinct !{!159, i1 false, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!160 = distinct !{!160, !159, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!161 = distinct !{!161, i1 false, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!162 = distinct !{!162, !161, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!163 = distinct !{!163, i1 false, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
end_hunk_1
