Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregates?download=true
inline.NumInlined: 3981
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4pbrt12BVHAggregateC2ESt6vectorINS_9PrimitiveESaIS2_EEiNS0_11SplitMethodE:bb.a
  %i.iw = load ptr, ptr %i.ac, align 8, !tbaa !238
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #35
  br label %_ZNSt6vectorIN4pbrt12BVHPrimitiveESaIS1_EED2Ev.exit51

_ZNSt6vectorIN4pbrt12BVHPrimitiveESaIS1_EED2Ev.exit51: ; preds = %bb.bg, %bb.bf, %bb.g
  %.pn30.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %.pn30, %bb.bf ], [ %.pn30, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN4pbrt12BVHPrimitiveESaIS1_EED2Ev.exit51, %bb.d
  %.pn33 = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn30.pn, %_ZNSt6vectorIN4pbrt12BVHPrimitiveESaIS1_EED2Ev.exit51 ]
  %i.ja = load ptr, ptr %i.i, align 8, !tbaa !35  ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN4pbrt9PrimitiveESaIS1_EED2Ev.exit53, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jb = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.je) #35
  br label %_ZNSt6vectorIN4pbrt9PrimitiveESaIS1_EED2Ev.exit53

_ZNSt6vectorIN4pbrt9PrimitiveESaIS1_EED2Ev.exit53: ; preds = %bb.bh, %bb.bi
  resume { ptr, i32 } %.pn33
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA20_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(20) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !59, !alias.scope !244
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !61, !alias.scope !244
  store i8 0, ptr %i.a, align 8, !tbaa !62, !alias.scope !244
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA20_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(20) %4)
          to label %_ZN4pbrt12StringPrintfIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !63, !alias.scope !244 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62, !alias.scope !244
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !63
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA20_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK4pbrt9Primitive6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEC2EOSt8functionIFS5_vEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = tail call noundef i32 @_ZN4pbrt14RunningThreadsEv() ; 3 uses
  %i.c = shl nsw i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #31
  unreachable

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i: ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  br label %bb.b

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  %i.f = mul nuw nsw i64 %i.d, 24                 ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EEC2EmRKSB_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %.sink.i, ptr %i.j, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !81
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !81
  br label %_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

_ZNSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEC2ERKS6_.exit: ; preds = %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.e, %bb.f
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #35
  br label %_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit

_ZNSt6vectorIN4pstd8optionalIN4pbrt11ThreadLocalINS0_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEESaISA_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS_12BVHPrimitiveESaIS7_EEPSt6atomicIiERS6_INS_9PrimitiveESaISF_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.106", align 8 ; 11 uses
  %i.a = alloca [64 x i32], align 16              ; 13 uses
  %i.b = alloca [64 x i32], align 16              ; 14 uses
  %6 = alloca %"class.std::function.106", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.pbrt::Bounds3", align 16    ; 11 uses
  %8 = alloca %"class.std::vector.40", align 8    ; 21 uses
  %9 = alloca %"class.std::function.37", align 8  ; 11 uses
  %10 = alloca %"class.std::vector.46", align 8   ; 17 uses
  %11 = alloca %"struct.std::atomic", align 4     ; 5 uses
  %12 = alloca %"class.std::function.37", align 8 ; 11 uses
  %13 = alloca %"class.std::vector.52", align 8   ; 13 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 20
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, ptr %7, align 16
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.f, align 16
  %i.h = load ptr, ptr %2, align 8, !tbaa !255    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !255  ; 4 uses
  %.not128144 = icmp eq ptr %i.h, %i.j
  br i1 %.not128144, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted140 = load <2 x float>, ptr %i.e, align 4
  %.promoted = load <2 x float>, ptr %7, align 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc, label %_ZNSt12_Vector_baseIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.thread.i

.thread:                                          ; preds = %.lr.ph
  store <2 x float> %i.bj, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 5                   ; 3 uses
  %i.s = icmp ugt i64 %i.r, 1152921504606846975
  br i1 %i.s, label %.noexc, label %.noexc57

.noexc:                                           ; preds = %.thread, %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #31
  unreachable

_ZNSt12_Vector_baseIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.loopexit136

.noexc57:                                         ; preds = %.thread
  %i.t = ashr exact i64 %i.q, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 7 uses
  store ptr %i.u, ptr %8, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !256
  store i64 0, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 7 uses
  %i.y = add nsw i64 %i.r, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit136, label %iter.check

iter.check:                                       ; preds = %.noexc57
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i ; 4 uses
  %i.ab = ashr exact i64 %i.q, 2
  %i.ac = add nsw i64 %i.ab, -16                  ; 3 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, 4611686018427387888     ; 4 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ai ; 4 uses
  %i.aj = load i64, ptr %i.u, align 4, !tbaa !53
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 32
  %i.al = getelementptr i8, ptr %next.gep, i64 64
  %i.am = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %next.gep, align 4, !tbaa !53
  store <4 x i64> %broadcast.splat, ptr %i.ak, align 4, !tbaa !53
  store <4 x i64> %broadcast.splat, ptr %i.al, align 4, !tbaa !53
  store <4 x i64> %broadcast.splat, ptr %i.am, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit136, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec227 = and i64 %i.ae, 4611686018427387900  ; 3 uses
  %i.ao = shl i64 %n.vec227, 3
  %i.ap = getelementptr i8, ptr %i.x, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index228 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next232, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index228, 3
  %next.gep229 = getelementptr i8, ptr %i.x, i64 %i.aq
  %i.ar = load i64, ptr %i.u, align 4, !tbaa !53
  %broadcast.splatinsert230 = insertelement <4 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat231 = shufflevector <4 x i64> %broadcast.splatinsert230, <4 x i64> poison, <4 x i32> zeroinitializer
  store <4 x i64> %broadcast.splat231, ptr %next.gep229, align 4, !tbaa !53
  %index.next232 = add nuw i64 %index228, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n233 = icmp eq i64 %i.ae, %n.vec227
  br i1 %cmp.n233, label %.loopexit136, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.at = load i64, ptr %i.u, align 4, !tbaa !53
  store i64 %i.at, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit136, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !247

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0124.0149 = phi ptr [ %i.bn, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 5 uses
  %.sroa.015.4.vec.insert.i.i137148 = phi <2 x float> [ %i.bj, %.lr.ph ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %.sroa.speculated.i.i139147 = phi float [ %.sroa.speculated.i.i, %.lr.ph ], [ f0x7F7FFFFF, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.4.vec.insert.i35.i141146 = phi <2 x float> [ %i.bl, %.lr.ph ], [ %.promoted140, %.lr.ph.preheader ] ; 2 uses
  %.sroa.speculated.i33.i143145 = phi float [ %.sroa.speculated.i33.i, %.lr.ph ], [ f0xFF7FFFFF, %.lr.ph.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0124.0149, i64 8
  %.sroa.021.0.copyload.i = load <2 x float>, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0124.0149, i64 16
  %.sroa.222.0.copyload.i = load float, ptr %.sroa.222.0..sroa_idx.i, align 8, !tbaa !56
  %i.aw = fmul float %.sroa.222.0.copyload.i, 5.000000e-01
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0124.0149, i64 20
  %.sroa.011.0.copyload.i = load <2 x float>, ptr %i.ax, align 4, !tbaa !56 ; 2 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0124.0149, i64 28
  %.sroa.212.0.copyload.i = load float, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !56
  %i.ay = shufflevector <2 x float> %.sroa.021.0.copyload.i, <2 x float> %.sroa.011.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.az = fmul <2 x float> %i.ay, splat (float 5.000000e-01) ; 2 uses
  %i.ba = fmul float %.sroa.212.0.copyload.i, 5.000000e-01
  %i.bb = fadd float %i.aw, %i.ba                 ; 4 uses
  %i.bc = fcmp olt float %i.bb, %.sroa.speculated.i.i139147
  %.sroa.speculated.i.i = select i1 %i.bc, float %i.bb, float %.sroa.speculated.i.i139147 ; 2 uses
  %i.bd = shufflevector <2 x float> %.sroa.021.0.copyload.i, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.be = fmul <2 x float> %i.bd, <float 5.000000e-01, float 1.000000e+00>
  %i.bf = shufflevector <2 x float> %.sroa.011.0.copyload.i, <2 x float> %i.az, <2 x i32> <i32 0, i32 3>
  %i.bg = fmul <2 x float> %i.bf, <float 5.000000e-01, float 1.000000e+00>
  %i.bh = fadd <2 x float> %i.be, %i.bg           ; 4 uses
  %i.bi = fcmp olt <2 x float> %i.bh, %.sroa.015.4.vec.insert.i.i137148
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bh, <2 x float> %.sroa.015.4.vec.insert.i.i137148 ; 2 uses
  %i.bk = fcmp olt <2 x float> %.sroa.015.4.vec.insert.i35.i141146, %i.bh
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bh, <2 x float> %.sroa.015.4.vec.insert.i35.i141146 ; 2 uses
  %i.bm = fcmp olt float %.sroa.speculated.i33.i143145, %i.bb
  %.sroa.speculated.i33.i = select i1 %i.bm, float %i.bb, float %.sroa.speculated.i33.i143145 ; 2 uses
  store float %.sroa.speculated.i.i, ptr %i.d, align 8
  store <2 x float> %i.bl, ptr %i.e, align 4
  store float %.sroa.speculated.i33.i, ptr %i.g, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0124.0149, i64 32 ; 2 uses
  %.not128 = icmp eq ptr %i.bn, %i.j
  br i1 %.not128, label %.thread, label %.lr.ph

.loopexit136:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc57, %_ZNSt12_Vector_baseIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.thread.i
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.x, %.noexc57 ], [ %i.aa, %middle.block ], [ %i.aa, %vec.epilog.middle.block ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store ptr %.0.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !257
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.bq = load ptr, ptr %2, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.bs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %bb.f unwind label %bb.c       ; 4 uses

bb.c:                                             ; preds = %.loopexit136
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
end_hunk_0
begin_hunk_1_@_ZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS_12BVHPrimitiveESaIS7_EEPSt6atomicIiERS6_INS_9PrimitiveESaISF_EE:bb.a
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #34
  unreachable

bb.f:                                             ; preds = %.loopexit136
  %i.by = ptrtoint ptr %i.bp to i64
  %i.bz = ptrtoint ptr %i.bq to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 5
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %i.bs, align 16, !tbaa !89
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %2, ptr %.sroa.5117.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %7, ptr %.sroa.6118.0..sroa_idx, align 16, !tbaa !93
  store ptr %i.bs, ptr %9, align 8, !tbaa !81
  store ptr @"_ZNSt17_Function_handlerIFvlEZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS1_12BVHPrimitiveESaIS9_EEPSt6atomicIiERS8_INS1_9PrimitiveESaISH_EEE3$_0E9_M_invokeERKSt9_Any_dataOl", ptr %i.cc, align 8, !tbaa !95
  store ptr @"_ZNSt17_Function_handlerIFvlEZN4pbrt12BVHAggregate10buildHLBVHEN4pstd3pmr21polymorphic_allocatorISt4byteEERKSt6vectorINS1_12BVHPrimitiveESaIS9_EEPSt6atomicIiERS8_INS1_9PrimitiveESaISH_EEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation", ptr %i.br, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cf, align 8
  %i.cg = ptrtoint ptr %9 to i64
  store i64 %i.cg, ptr %6, align 8, !tbaa !97
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E9_M_invokeERKSt9_Any_dataOlSA_, ptr %i.ce, align 8, !tbaa !99
  store ptr @_ZNSt17_Function_handlerIFvllEZN4pbrt11ParallelForEllSt8functionIFvlEEEUlllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.cd, align 8, !tbaa !50
  invoke void @_ZN4pbrt11ParallelForEllSt8functionIFvllEE(i64 noundef 0, i64 noundef %i.cb, ptr nofree noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i60, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = invoke noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.m unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #34
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.cm, null
  br i1 %.not.i3.i, label %.body62, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body62 unwind label %bb.l    ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #34
  unreachable

bb.m:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cq = load ptr, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !257 ; 2 uses
  %i.cv = load ptr, ptr %8, align 8, !tbaa !86    ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = icmp ugt i64 %i.cz, 1152921504606846975
  br i1 %i.da, label %.noexc.i, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc.i:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #31
          to label %.noexc66 unwind label %bb.y

.noexc66:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i, label %.noexc35.i

.noexc35.i:                                       ; preds = %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #33
          to label %.noexc67 unwind label %bb.y   ; 10 uses

.noexc67:                                         ; preds = %.noexc35.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy ; 4 uses
  store i64 0, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 7 uses
  %i.de = add nsw i64 %i.cz, -1                   ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i, label %iter.check249

iter.check249:                                    ; preds = %.noexc67
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i.i.i.i.i.i.i ; 4 uses
  %i.dh = add i64 %i.cy, -16                      ; 3 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 5 uses
  %min.iters.check235 = icmp ult i64 %i.dh, 24
  br i1 %min.iters.check235, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check236

vector.main.loop.iter.check236:                   ; preds = %iter.check249
  %min.iters.check237 = icmp ult i64 %i.dh, 120
  br i1 %min.iters.check237, label %vec.epilog.ph253, label %vector.ph238

vector.ph238:                                     ; preds = %vector.main.loop.iter.check236
  %i.dk = and i64 %i.dj, 12
  %n.vec239 = and i64 %i.dj, 4611686018427387888  ; 4 uses
  %i.dl = shl i64 %n.vec239, 3
  %i.dm = getelementptr i8, ptr %i.dd, i64 %i.dl
  br label %vector.body240

vector.body240:                                   ; preds = %vector.ph238, %vector.body240
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next245, %vector.body240 ] ; 2 uses
  %i.dn = shl i64 %index241, 3
  %next.gep242 = getelementptr i8, ptr %i.dd, i64 %i.dn ; 4 uses
  %i.do = load i64, ptr %i.db, align 4, !tbaa !53
  %broadcast.splatinsert243 = insertelement <4 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat244 = shufflevector <4 x i64> %broadcast.splatinsert243, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dp = getelementptr i8, ptr %next.gep242, i64 32
  %i.dq = getelementptr i8, ptr %next.gep242, i64 64
  %i.dr = getelementptr i8, ptr %next.gep242, i64 96
  store <4 x i64> %broadcast.splat244, ptr %next.gep242, align 4, !tbaa !53
  store <4 x i64> %broadcast.splat244, ptr %i.dp, align 4, !tbaa !53
  store <4 x i64> %broadcast.splat244, ptr %i.dq, align 4, !tbaa !53
  store <4 x i64> %broadcast.splat244, ptr %i.dr, align 4, !tbaa !53
  %index.next245 = add nuw i64 %index241, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next245, %n.vec239
  br i1 %i.ds, label %middle.block246, label %vector.body240, !llvm.loop !248

middle.block246:                                  ; preds = %vector.body240
  %cmp.n247 = icmp eq i64 %i.dj, %n.vec239
  br i1 %cmp.n247, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block246
  %min.epilog.iters.check252 = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph253, !prof !87

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check236, %vec.epilog.iter.check251
  %vec.epilog.resume.val248 = phi i64 [ %n.vec239, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check236 ]
  %n.vec254 = and i64 %i.dj, 4611686018427387900  ; 3 uses
  %i.dt = shl i64 %n.vec254, 3
  %i.du = getelementptr i8, ptr %i.dd, i64 %i.dt
  br label %vec.epilog.vector.body255

vec.epilog.vector.body255:                        ; preds = %vec.epilog.vector.body255, %vec.epilog.ph253
  %index256 = phi i64 [ %vec.epilog.resume.val248, %vec.epilog.ph253 ], [ %index.next260, %vec.epilog.vector.body255 ] ; 2 uses
  %i.dv = shl i64 %index256, 3
  %next.gep257 = getelementptr i8, ptr %i.dd, i64 %i.dv
  %i.dw = load i64, ptr %i.db, align 4, !tbaa !53
  %broadcast.splatinsert258 = insertelement <4 x i64> poison, i64 %i.dw, i64 0
  %broadcast.splat259 = shufflevector <4 x i64> %broadcast.splatinsert258, <4 x i64> poison, <4 x i32> zeroinitializer
  store <4 x i64> %broadcast.splat259, ptr %next.gep257, align 4, !tbaa !53
  %index.next260 = add nuw i64 %index256, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next260, %n.vec254
  br i1 %i.dx, label %vec.epilog.middle.block261, label %vec.epilog.vector.body255, !llvm.loop !249

vec.epilog.middle.block261:                       ; preds = %vec.epilog.vector.body255
  %cmp.n262 = icmp eq i64 %i.dj, %n.vec254
  br i1 %cmp.n262, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block261
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dd, %iter.check249 ], [ %i.dm, %vec.epilog.iter.check251 ], [ %i.du, %vec.epilog.middle.block261 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.dy = load i64, ptr %i.db, align 4, !tbaa !53
  store i64 %i.dy, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.dg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !250

_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block246, %vec.epilog.middle.block261, %.noexc67, %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.sroa.16.0.i = phi ptr [ null, %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.dc, %.noexc67 ], [ %i.dc, %middle.block246 ], [ %i.dc, %vec.epilog.middle.block261 ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.048.0.i = phi ptr [ null, %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.db, %.noexc67 ], [ %i.db, %middle.block246 ], [ %i.db, %vec.epilog.middle.block261 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.0.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.dd, %.noexc67 ], [ %i.dg, %middle.block246 ], [ %i.dg, %vec.epilog.middle.block261 ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.not667086.i = icmp eq ptr %.sroa.048.0.i, %.0.i.i.i.i.i.i
  %.else.val.i = load ptr, ptr %8, align 8        ; 3 uses
  %.then.val.i = load ptr, ptr %i.bo, align 8     ; 2 uses
  %.not6670.i = icmp eq ptr %.else.val.i, %.then.val.i
  br label %.cont51.i

bb.p:                                             ; preds = %._crit_edge73.i
  %14 = load ptr, ptr %8, align 8, !tbaa !86      ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !256
  store ptr %.sroa.048.0.i, ptr %8, align 8, !tbaa !86
  store ptr %.0.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !257
  store ptr %.sroa.16.0.i, ptr %i.ea, align 8, !tbaa !256
  %.not.i.i.i.i65 = icmp eq ptr %14, null
  br i1 %.not.i.i.i.i65, label %_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %14 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %14, i64 noundef %i.ee) #35
  %.pre = load ptr, ptr %i.bo, align 8, !tbaa !257
  %.pre163 = load ptr, ptr %8, align 8, !tbaa !86
  br label %_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit

.cont51.i:                                        ; preds = %._crit_edge73.i, %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i
  %.03474.i = phi i32 [ 0, %_ZNSt6vectorIN4pbrt15MortonPrimitiveESaIS1_EEC2EmRKS2_.exit.i ], [ %i.gy, %._crit_edge73.i ] ; 3 uses
  %i.ef = mul nuw nsw i32 %.03474.i, 6            ; 3 uses
  %i.eg = and i32 %.03474.i, 1
  %.not.i64 = icmp eq i32 %i.eg, 0                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.then.val63.i = load ptr, ptr %8, align 8
  %.then.val53.i = load ptr, ptr %i.bo, align 8
  %i.eh = select i1 %.not.i64, ptr %.then.val63.i, ptr %.sroa.048.0.i ; 2 uses
  %i.ei = select i1 %.not.i64, ptr %.then.val53.i, ptr %.0.i.i.i.i.i.i ; 2 uses
  %.not6567.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not6567.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.cont51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i32 0, ptr %i.b, align 16, !tbaa !53
  br label %bb.s

.lr.ph.i:                                         ; preds = %.cont51.i, %.lr.ph.i
  %.sroa.040.068.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.eh, %.cont51.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.040.068.i, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !101
  %i.el = lshr i32 %i.ek, %i.ef
  %i.em = and i32 %i.el, 63
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !53
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.040.068.i, i64 8 ; 2 uses
  %.not65.i = icmp eq ptr %i.er, %i.ei
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

bb.r:                                             ; preds = %bb.s
  br i1 %.not.i64, label %.cont.i, label %.cont.thread.i

.cont.i:                                          ; preds = %bb.r
  br i1 %.not6670.i, label %._crit_edge73.i, label %.cont55.us.i

.cont.thread.i:                                   ; preds = %bb.r
  br i1 %.not667086.i, label %._crit_edge73.i, label %.else.i

.cont55.us.i:                                     ; preds = %.cont.i, %.cont55.us.i
  %.sroa.036.071.us.i = phi ptr [ %i.fd, %.cont55.us.i ], [ %.else.val.i, %.cont.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.036.071.us.i, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !101
  %i.eu = lshr i32 %i.et, %i.ef
  %i.ev = and i32 %i.eu, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !53 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !53
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.048.0.i, i64 %i.fa
  %i.fc = load i64, ptr %.sroa.036.071.us.i, align 4, !tbaa !53
  store i64 %i.fc, ptr %i.fb, align 4, !tbaa !53
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.036.071.us.i, i64 8 ; 2 uses
  %.not66.us.i = icmp eq ptr %i.fd, %.then.val.i
  br i1 %.not66.us.i, label %._crit_edge73.i, label %.cont55.us.i

bb.s:                                             ; preds = %bb.s, %._crit_edge.i
  %i.fe = phi i32 [ 0, %._crit_edge.i ], [ %i.gw, %bb.s ]
  %indvars.iv.i = phi i64 [ 1, %._crit_edge.i ], [ %indvars.iv.next.i.8, %bb.s ] ; 11 uses
  %i.ff = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.fg = getelementptr i8, ptr %i.ff, i64 -4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !53
  %i.fi = add nsw i32 %i.fh, %i.fe                ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !53
  %i.fn = add nsw i32 %i.fm, %i.fi                ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !53
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  %i.fq = getelementptr i8, ptr %i.fp, i64 -4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !53
  %i.fs = add nsw i32 %i.fr, %i.fn                ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !53
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  %i.fv = getelementptr i8, ptr %i.fu, i64 -4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !53
  %i.fx = add nsw i32 %i.fw, %i.fs                ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.2
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.3
  %i.ga = getelementptr i8, ptr %i.fz, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !53
  %i.gc = add nsw i32 %i.gb, %i.fx                ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.3
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !53
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.4
  %i.gf = getelementptr i8, ptr %i.ge, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !53
  %i.gh = add nsw i32 %i.gg, %i.gc                ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.4
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !53
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.5
  %i.gk = getelementptr i8, ptr %i.gj, i64 -4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !53
  %i.gm = add nsw i32 %i.gl, %i.gh                ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.5
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !53
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.go = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.6
  %i.gp = getelementptr i8, ptr %i.go, i64 -4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !53
  %i.gr = add nsw i32 %i.gq, %i.gm                ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.6
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !53
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.7
  %i.gu = getelementptr i8, ptr %i.gt, i64 -4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !53
  %i.gw = add nsw i32 %i.gv, %i.gr                ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.7
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !53
  %indvars.iv.next.i.8 = add nuw nsw i64 %indvars.iv.i, 9 ; 2 uses
  %exitcond.not.i.8 = icmp eq i64 %indvars.iv.next.i.8, 64
  br i1 %exitcond.not.i.8, label %bb.r, label %bb.s, !llvm.loop !251

._crit_edge73.i:                                  ; preds = %.else.i, %.cont55.us.i, %.cont.thread.i, %.cont.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.gy = add nuw nsw i32 %.03474.i, 1            ; 2 uses
  %exitcond77.not.i = icmp eq i32 %i.gy, 5
  br i1 %exitcond77.not.i, label %bb.p, label %.cont51.i, !llvm.loop !252

.else.i:                                          ; preds = %.cont.thread.i, %.else.i
  %.sroa.036.071.i = phi ptr [ %i.hk, %.else.i ], [ %.sroa.048.0.i, %.cont.thread.i ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.036.071.i, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !101
  %i.hb = lshr i32 %i.ha, %i.ef
  %i.hc = and i32 %i.hb, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !53 ; 2 uses
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !53
  %i.hh = sext i32 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.else.val.i, i64 %i.hh
  %i.hj = load i64, ptr %.sroa.036.071.i, align 4, !tbaa !53
  store i64 %i.hj, ptr %i.hi, align 4, !tbaa !53
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.036.071.i, i64 8 ; 2 uses
  %.not66.i = icmp eq ptr %i.hk, %.0.i.i.i.i.i.i
  br i1 %.not66.i, label %._crit_edge73.i, label %.else.i

_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit: ; preds = %bb.q, %bb.p
  %i.hl = phi ptr [ %.pre163, %bb.q ], [ %.sroa.048.0.i, %bb.p ] ; 2 uses
  %i.hm = phi ptr [ %.pre, %bb.q ], [ %.0.i.i.i.i.i.i, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %.not150 = icmp eq i64 %i.hp, 0
  br i1 %.not150, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  br label %bb.z

._crit_edge154.loopexit:                          ; preds = %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit
  %.pre164 = load ptr, ptr %10, align 8, !tbaa !104
  %i.hs = ptrtoint ptr %i.kc to i64
  %i.ht = ptrtoint ptr %.pre164 to i64
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %._crit_edge154.loopexit, %_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit
  %i.hu = phi i64 [ %i.ht, %._crit_edge154.loopexit ], [ 0, %_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit ]
  %i.hv = phi i64 [ %i.hs, %._crit_edge154.loopexit ], [ 0, %_ZN4pbrtL9RadixSortEPSt6vectorINS_15MortonPrimitiveESaIS1_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i32 0, ptr %11, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.hy = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #33
          to label %bb.ah unwind label %bb.t      ; 8 uses

bb.t:                                             ; preds = %._crit_edge154
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !50 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i68, label %.body70, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ib = invoke noundef zeroext i1 %i.ia(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body70 unwind label %bb.v    ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #34
  unreachable

.body62:                                          ; preds = %bb.j, %bb.k
  %i.ie = load ptr, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ie, null
  br i1 %.not.i72, label %.body, label %bb.w

bb.w:                                             ; preds = %.body62
  %i.if = invoke noundef zeroext i1 %i.ie(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body unwind label %bb.x      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #34
  unreachable

bb.y:                                             ; preds = %.noexc35.i, %.noexc.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph153, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit
  %i.ij = phi ptr [ null, %.lr.ph153 ], [ %i.kc, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit ]
  %i.ik = phi i64 [ %i.hp, %.lr.ph153 ], [ %i.ki, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit ]
  %i.il = phi ptr [ %i.hl, %.lr.ph153 ], [ %i.kf, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.0152 = phi i64 [ 1, %.lr.ph153 ], [ %i.kd, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %.034151 = phi i64 [ 0, %.lr.ph153 ], [ %.1, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.im = shl i64 %i.ik, 29
  %i.in = ashr exact i64 %i.im, 32
  %i.io = icmp eq i64 %.0152, %i.in
  br i1 %i.io, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.034151
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !101
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.0152
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !101
  %i.iv = xor i32 %i.iu, %i.ir
  %i.iw = and i32 %i.iv, 1073479680
  %.not51 = icmp eq i32 %i.iw, 0
  br i1 %.not51, label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ix = sub i64 %.0152, %.034151                ; 3 uses
  %.tr = trunc i64 %i.ix to i32
  %i.iy = shl i32 %.tr, 1
  %i.iz = add i32 %i.iy, -1
  %i.ja = sext i32 %i.iz to i64
  %i.jb = mul nsw i64 %i.ja, 56
  %i.jc = load ptr, ptr %1, align 8, !tbaa !37
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = invoke noundef ptr %i.je(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.jb, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !253 ; 2 uses

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit: ; preds = %bb.ab
  %i.jg = load ptr, ptr %i.hq, align 8, !tbaa !258 ; 6 uses
  %i.jh = load ptr, ptr %i.hr, align 8, !tbaa !259
  %.not.i.i75 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i.i75, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit
  store i64 %.034151, ptr %i.jg, align 8, !tbaa !54
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.ix, ptr %.sroa.6110.0..sroa_idx, align 8, !tbaa !54
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.jf, ptr %.sroa.7113.0..sroa_idx, align 8, !tbaa !106
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24 ; 2 uses
  store ptr %i.ji, ptr %i.hq, align 8, !tbaa !258
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit

bb.ad:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE15allocate_objectIN4pbrt12BVHBuildNodeEEEPT_m.exit
  %i.jj = load ptr, ptr %10, align 8, !tbaa !104  ; 4 uses
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jm = sub i64 %i.jk, %i.jl                    ; 5 uses
  %i.jn = icmp eq i64 %i.jm, 9223372036854775800
  br i1 %i.jn, label %bb.ae, label %_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #31
          to label %.noexc77 unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.jo = sdiv exact i64 %i.jm, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jo, i64 1)
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jo ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jo
  %i.jr = call i64 @llvm.umin.i64(i64 %i.jp, i64 384307168202282325)
  %i.js = select i1 %i.jq, i64 384307168202282325, i64 %i.jr ; 3 uses
  %.not.i.i.i.i76 = icmp ne i64 %i.js, 0
  call void @llvm.assume(i1 %.not.i.i.i.i76)
  %i.jt = mul nuw nsw i64 %i.js, 24
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #33
          to label %.noexc78 unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 %i.jm ; 4 uses
  store i64 %.034151, ptr %i.jv, align 8, !tbaa !54
  %.sroa.6110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %i.ix, ptr %.sroa.6110.0..sroa_idx111, align 8, !tbaa !54
  %.sroa.7113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store ptr %i.jf, ptr %.sroa.7113.0..sroa_idx114, align 8, !tbaa !106
  %i.jw = icmp sgt i64 %i.jm, 0
  br i1 %i.jw, label %bb.af, label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.af:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ju, ptr align 8 %i.jj, i64 %i.jm, i1 false)
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.af, %.noexc78
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.jy = load ptr, ptr %i.hr, align 8, !tbaa !259
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.ka) #35
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.ju, ptr %10, align 8, !tbaa !104
  store ptr %i.jx, ptr %i.hq, align 8, !tbaa !258
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.js
  store ptr %i.kb, ptr %i.hr, align 8, !tbaa !259
  br label %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit

.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %_ZNKSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp131

_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ac, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aa
  %i.kc = phi ptr [ %i.ij, %bb.aa ], [ %i.jx, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ji, %bb.ac ] ; 2 uses
  %.1 = phi i64 [ %.034151, %bb.aa ], [ %.0152, %_ZNSt6vectorIN4pbrt11LBVHTreeletESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.0152, %bb.ac ]
  %i.kd = add i64 %.0152, 1                       ; 2 uses
  %i.ke = load ptr, ptr %i.bo, align 8, !tbaa !257
  %i.kf = load ptr, ptr %8, align 8, !tbaa !86    ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh                    ; 2 uses
end_hunk_1
