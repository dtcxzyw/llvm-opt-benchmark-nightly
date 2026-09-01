Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/HilbertCode?download=true
inline.NumInlined: 96
inline.NumDeleted: 45
begin_hunk_0_@_ZN4geos5shape7fractal11HilbertCode12deinterleaveEj
define noundef range(i32 0, 65536) i32 @_ZN4geos5shape7fractal11HilbertCode12deinterleaveEj(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %0, 1431655765                   ; 2 uses
  %i.b = lshr i32 %i.a, 1
  %i.c = or disjoint i32 %i.b, %i.a
  %i.d = and i32 %i.c, 858993459                  ; 2 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = or disjoint i32 %i.e, %i.d
  %i.g = and i32 %i.f, 252645135                  ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = or disjoint i32 %i.h, %i.g               ; 2 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = and i32 %i.j, 65280
  %.masked = and i32 %i.i, 255
  %i.l = or disjoint i32 %i.k, %.masked
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 1431655766) i32 @_ZN4geos5shape7fractal11HilbertCode10interleaveEj(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = shl i32 %0, 8
  %i.b = or i32 %i.a, %0
  %i.c = and i32 %i.b, 16711935                   ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 4
  %i.e = or i32 %i.d, %i.c
  %i.f = and i32 %i.e, 252645135                  ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 2
  %i.h = or i32 %i.g, %i.f
  %i.i = and i32 %i.h, 858993459                  ; 2 uses
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = or i32 %i.j, %i.i
  %i.l = and i32 %i.k, 1431655765
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4geos5shape7fractal11HilbertCode10prefixScanEj(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = lshr i32 %0, 8
  %i.b = xor i32 %i.a, %0                         ; 2 uses
  %i.c = lshr i32 %i.b, 4
  %i.d = xor i32 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i32 %i.d, 2
  %i.f = xor i32 %i.e, %i.d                       ; 2 uses
  %i.g = lshr i32 %i.f, 1
  %i.h = xor i32 %i.g, %i.f
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4geos5shape7fractal11HilbertCode6descanEj(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = lshr i32 %0, 1
  %i.b = xor i32 %i.a, %0
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5shape7fractal11HilbertCode10checkLevelEj(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = icmp ugt i32 %0, 16
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #15
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 24, ptr %i.a, align 8, !tbaa !15
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !8
  %i.d = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = load ptr, ptr %2, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !18
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos5shape7fractal11HilbertCode6decodeEjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.geos::geom::Coordinate") align 8 captures(none) initializes((0, 24)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4geos5shape7fractal11HilbertCode10checkLevelEj(i32 noundef %1)
  %i.a = shl i32 %1, 1
  %i.b = sub i32 32, %i.a
  %i.c = shl i32 %2, %i.b                         ; 2 uses
  %i.d = lshr i32 %i.c, 1
  %3 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.c, i64 1
  %5 = and <2 x i32> %4, splat (i32 1431655765)   ; 2 uses
  %6 = lshr <2 x i32> %5, splat (i32 1)
  %7 = or disjoint <2 x i32> %6, %5
  %8 = and <2 x i32> %7, splat (i32 858993459)    ; 2 uses
  %9 = lshr <2 x i32> %8, splat (i32 2)
  %10 = or disjoint <2 x i32> %9, %8
  %11 = and <2 x i32> %10, splat (i32 252645135)  ; 2 uses
  %12 = lshr <2 x i32> %11, splat (i32 4)
  %13 = or disjoint <2 x i32> %12, %11            ; 2 uses
  %14 = lshr <2 x i32> %13, splat (i32 8)
  %15 = and <2 x i32> %14, splat (i32 65280)
  %16 = and <2 x i32> %13, splat (i32 255)
  %17 = or disjoint <2 x i32> %15, %16            ; 4 uses
  %18 = extractelement <2 x i32> %17, i64 0       ; 2 uses
  %19 = extractelement <2 x i32> %17, i64 1       ; 4 uses
  %i.e = or i32 %18, %19
  %i.f = and i32 %18, %19
  %i.g = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %i.e, i64 1
  %i.i = xor <2 x i32> %i.h, <i32 0, i32 65535>   ; 2 uses
  %i.j = lshr <2 x i32> %i.i, splat (i32 8)
  %i.k = xor <2 x i32> %i.j, %i.i                 ; 2 uses
  %i.l = lshr <2 x i32> %i.k, splat (i32 4)
  %i.m = xor <2 x i32> %i.l, %i.k                 ; 2 uses
  %i.n = lshr <2 x i32> %i.m, splat (i32 2)
  %i.o = xor <2 x i32> %i.n, %i.m                 ; 2 uses
  %i.p = lshr <2 x i32> %i.o, splat (i32 1)
  %i.q = xor <2 x i32> %i.p, %i.o
  %20 = xor i32 %19, 65535
  %i.r = insertelement <2 x i32> %17, i32 %20, i64 0
  %i.s = and <2 x i32> %i.q, %i.r                 ; 2 uses
  %shift = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %shift, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +qnan, ptr %i.t, align 8, !tbaa !20
  %foldExtExtBinop24 = xor <2 x i32> %foldExtExtBinop, %17
  %21 = extractelement <2 x i32> %foldExtExtBinop24, i64 0 ; 2 uses
  %i.u = sub i32 16, %1                           ; 2 uses
  %i.v = lshr i32 %21, %i.u
  %i.w = uitofp nneg i32 %i.v to double
  store double %i.w, ptr %0, align 8, !tbaa !23
  %i.x = xor i32 %21, %19
  %i.y = lshr i32 %i.x, %i.u
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4geos5shape7fractal11HilbertCode6encodeEjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4geos5shape7fractal11HilbertCode10checkLevelEj(i32 noundef %0)
  %i.a = sub i32 16, %0                           ; 2 uses
  %i.b = shl i32 %1, %i.a                         ; 3 uses
  %i.c = shl i32 %2, %i.a                         ; 3 uses
  %i.d = or i32 %i.c, %i.b
  %i.e = xor i32 %i.d, 65535                      ; 2 uses
  %i.f = xor i32 %i.c, 65535
  %i.g = and i32 %i.f, %i.b                       ; 2 uses
  %i.h = lshr i32 %i.e, 1                         ; 2 uses
  %i.i = lshr i32 %i.g, 1                         ; 2 uses
  %i.j = xor i32 %i.c, %i.b                       ; 7 uses
  %i.k = xor i32 %i.j, 65535                      ; 2 uses
  %i.l = lshr i32 %i.k, 1
  %i.m = or i32 %i.l, %i.j                        ; 5 uses
  %i.n = lshr i32 %i.j, 1
  %i.o = xor i32 %i.n, %i.j                       ; 6 uses
  %i.p = and i32 %i.i, %i.k
  %i.q = xor i32 %i.e, %i.p
  %i.r = xor i32 %i.q, %i.h                       ; 2 uses
  %i.s = and i32 %i.h, %i.j
  %i.t = xor i32 %i.g, %i.s
  %i.u = xor i32 %i.t, %i.i                       ; 2 uses
  %i.v = lshr i32 %i.m, 2
  %i.w = and i32 %i.v, %i.m
  %i.x = lshr i32 %i.o, 2                         ; 2 uses
  %i.y = and i32 %i.x, %i.o
  %i.z = xor i32 %i.w, %i.y                       ; 5 uses
  %i.aa = and i32 %i.m, %i.x
  %i.ab = xor i32 %i.m, %i.o                      ; 2 uses
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = and i32 %i.ac, %i.o
  %i.ae = xor i32 %i.ad, %i.aa                    ; 6 uses
  %i.af = lshr i32 %i.r, 2                        ; 2 uses
  %i.ag = and i32 %i.af, %i.m
  %i.ah = lshr i32 %i.u, 2                        ; 2 uses
  %i.ai = and i32 %i.ah, %i.o
  %i.aj = xor i32 %i.ai, %i.ag
  %i.ak = xor i32 %i.aj, %i.r                     ; 2 uses
  %i.al = and i32 %i.af, %i.o
  %i.am = and i32 %i.ah, %i.ab
  %i.an = xor i32 %i.am, %i.al
  %i.ao = xor i32 %i.an, %i.u                     ; 2 uses
  %i.ap = lshr i32 %i.z, 4
  %i.aq = and i32 %i.ap, %i.z
  %i.ar = lshr i32 %i.ae, 4                       ; 2 uses
  %i.as = and i32 %i.ar, %i.ae
  %i.at = xor i32 %i.as, %i.aq                    ; 2 uses
  %i.au = and i32 %i.ar, %i.z
  %i.av = xor i32 %i.ae, %i.z                     ; 2 uses
  %i.aw = lshr i32 %i.av, 4
  %i.ax = and i32 %i.aw, %i.ae
  %i.ay = xor i32 %i.ax, %i.au                    ; 3 uses
  %i.az = lshr i32 %i.ak, 4                       ; 2 uses
  %i.ba = and i32 %i.az, %i.z
  %i.bb = lshr i32 %i.ao, 4                       ; 2 uses
  %i.bc = and i32 %i.bb, %i.ae
  %i.bd = xor i32 %i.bc, %i.ba
  %i.be = xor i32 %i.bd, %i.ak                    ; 2 uses
  %i.bf = and i32 %i.az, %i.ae
  %i.bg = and i32 %i.bb, %i.av
  %i.bh = xor i32 %i.bg, %i.bf
  %i.bi = xor i32 %i.bh, %i.ao                    ; 2 uses
  %i.bj = lshr i32 %i.be, 8                       ; 2 uses
  %i.bk = and i32 %i.bj, %i.at
  %i.bl = lshr i32 %i.bi, 8                       ; 2 uses
  %i.bm = and i32 %i.bl, %i.ay
  %i.bn = xor i32 %i.bm, %i.bk
  %i.bo = xor i32 %i.bn, %i.be                    ; 2 uses
  %i.bp = and i32 %i.bj, %i.ay
  %i.bq = xor i32 %i.ay, %i.at
  %i.br = and i32 %i.bl, %i.bq
  %i.bs = xor i32 %i.br, %i.bp
  %i.bt = xor i32 %i.bs, %i.bi                    ; 2 uses
  %i.bu = lshr i32 %i.bo, 1
  %i.bv = xor i32 %i.bu, %i.bo
  %i.bw = lshr i32 %i.bt, 1
  %i.bx = xor i32 %i.bw, %i.bt
  %i.by = or i32 %i.bv, %i.j
  %i.bz = xor i32 %i.by, 65535
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %i.cc = insertelement <2 x i32> %i.cb, i32 %i.j, i64 1 ; 2 uses
  %i.cd = shl <2 x i32> %i.cc, splat (i32 8)
  %i.ce = or <2 x i32> %i.cd, %i.cc
  %i.cf = and <2 x i32> %i.ce, splat (i32 16711935) ; 2 uses
  %i.cg = shl nuw nsw <2 x i32> %i.cf, splat (i32 4)
  %i.ch = or <2 x i32> %i.cg, %i.cf
  %i.ci = and <2 x i32> %i.ch, splat (i32 252645135) ; 2 uses
  %i.cj = shl nuw nsw <2 x i32> %i.ci, splat (i32 2)
  %i.ck = or <2 x i32> %i.cj, %i.ci
  %i.cl = and <2 x i32> %i.ck, splat (i32 858993459) ; 3 uses
  %i.cm = extractelement <2 x i32> %i.cl, i64 0
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = shl nuw <2 x i32> %i.cl, <i32 2, i32 1>
  %i.cp = insertelement <2 x i32> %i.cl, i32 %i.cn, i64 0
  %i.cq = or <2 x i32> %i.co, %i.cp
  %i.cr = and <2 x i32> %i.cq, <i32 -1431655766, i32 1431655765>
  %i.cs = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %i.cr)
  %i.ct = shl i32 %0, 1
  %i.cu = sub i32 32, %i.ct
  %i.cv = lshr i32 %i.cs, %i.cu
  ret i32 %i.cv
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.a = load ptr, ptr %1, align 8, !tbaa !8, !noalias !25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !14, !alias.scope !28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !17, !alias.scope !28
  store i8 0, ptr %i.d, align 8, !tbaa !16, !alias.scope !28
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !17, !alias.scope !28
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !17, !alias.scope !28
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !8, !alias.scope !28 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #16
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17, !noalias !31 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !31
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !8, !noalias !31
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

end_hunk_0
