Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix?download=true
inline.NumInlined: 721
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv3Mat6createEiii:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false), !tbaa !22
  %i.i = and i32 %3, 4095                         ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !70
  %i.k = icmp slt i32 %i.j, 3
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp eq i32 %i.l, %1
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = load i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %i.n, %2
  %or.cond11.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8, !tbaa !71
  %i.q = and i32 %i.p, 4095
  %i.r = icmp ne i32 %i.q, %i.i
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.s, null
  %or.cond13.i = select i1 %i.r, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %1, ptr %i.a, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.t, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i64 %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false), !tbaa !22
  %i.i = and i32 %2, 4095                         ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !70
  %i.k = icmp slt i32 %i.j, 3
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp eq i32 %i.l, %.sroa.2.0.extract.trunc
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = load i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %i.n, %.sroa.0.0.extract.trunc
  %or.cond11.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8, !tbaa !71
  %i.q = and i32 %i.p, 4095
  %i.r = icmp ne i32 %i.q, %i.i
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.s, null
  %or.cond13.i = select i1 %i.r, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.t, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false), !tbaa !22
  %i.i = and i32 %2, 4095                         ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !70
  %i.k = icmp slt i32 %i.j, 3
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp eq i32 %i.l, %.sroa.2.0.extract.trunc
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = load i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %i.n, %.sroa.0.0.extract.trunc
  %or.cond11.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8, !tbaa !71
  %i.q = and i32 %i.p, 4095
  %i.r = icmp ne i32 %i.q, %i.i
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.s, null
  %or.cond13.i = select i1 %i.r, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.t, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2EiPKii(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false), !tbaa !22
  tail call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !32
  %i.c = icmp eq i32 %1, 0
  %spec.select = select i1 %i.c, ptr %i.a, ptr %2 ; 5 uses
  %spec.select74 = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 5 uses
  %or.cond = icmp ult i32 %1, 33
  %i.d = icmp ne ptr %spec.select, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3Mat6createEiPKii, ptr noundef nonnull @.str.10, i32 noundef 1093) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %8, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.l = and i32 %3, 4095                         ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %.not = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %spec.select74, %i.p
  %or.cond77 = select i1 %.not, i1 %i.q, i1 false
  br i1 %or.cond77, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %0, align 8, !tbaa !71
  %i.s = and i32 %i.r, 4095
  %i.t = icmp eq i32 %i.l, %i.s
  br i1 %i.t, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !29
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count = zext nneg i32 %narrow.i to i64
  %wide.trip.count95 = zext nneg i32 %spec.select74 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.j, label %_ZN2cv8MatShapeixEm.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ba, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.df, %bb.w ], [ %.pn70.pn.pn, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %.not60 = icmp eq i32 %i.ae, %i.ag
  br i1 %.not60, label %bb.m, label %_ZN2cv8MatShapeixEm.exit._crit_edge

bb.m:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next, %wide.trip.count95
  br i1 %exitcond96.not, label %_ZN2cv8MatShapeixEm.exit._crit_edge.thread, label %bb.i, !llvm.loop !162

_ZN2cv8MatShapeixEm.exit._crit_edge:              ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = icmp eq i32 %spec.select74, %i.ah
  br i1 %i.ai, label %_ZN2cv8MatShapeixEm.exit._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %_ZN2cv8MatShapeixEm.exit._crit_edge, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 12 uses
  %i.al = icmp eq ptr %spec.select, %i.ak
  br i1 %i.al, label %.lr.ph93.preheader, label %.loopexit

.lr.ph93.preheader:                               ; preds = %bb.n
  %i.am = shl nuw nsw i32 %spec.select74, 2
  %i.an = zext nneg i32 %i.am to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %spec.select, i64 %i.an, i1 false), !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph93.preheader, %bb.n
  %.155 = phi ptr [ %spec.select, %bb.n ], [ %i.b, %.lr.ph93.preheader ]
  call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.ao = or disjoint i32 %i.l, 1124007936
  store i32 %i.ao, ptr %0, align 8, !tbaa !71
  call void @_ZN2cv7setSizeERNS_3MatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %spec.select74, ptr noundef nonnull %.155, ptr noundef null, i1 noundef zeroext true)
  %i.ap = load i32, ptr %i.o, align 4, !tbaa !70  ; 4 uses
  %i.aq = icmp slt i32 %i.ap, 3
  br i1 %i.aq, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !29
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.ar, i32 1)
  %i.as = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.at = add nsw i32 %i.ap, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.at
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.p

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.as, 7                    ; 3 uses
  %i.au = icmp ult i32 %i.ap, 8
  br i1 %i.au, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.as, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.o:                                             ; preds = %.loopexit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !73
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !72
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.ba, %i.ax
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.co, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %.069.i, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !32
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !32
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !32
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul i64 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.cj, %i.cn                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.p:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.co, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.cy, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.epil
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %.069.i.epil, %i.cx             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !163

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.o
  %.07.i = phi i64 [ %i.bb, %bb.o ], [ %i.co, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.cy, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %.not61 = icmp eq i64 %.07.i, 0
  br i1 %.not61, label %bb.ay, label %bb.s

bb.s:                                             ; preds = %_ZNK2cv3Mat5totalEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !80 ; 2 uses
  %i.db = load atomic i8, ptr @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator acquire, align 8
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.t, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit, !prof !66

bb.t:                                             ; preds = %bb.s
  %i.dd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  %.not.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = invoke noundef ptr @_ZN2cv3Mat15getStdAllocatorEv()
          to label %bb.v unwind label %bb.w, !inline_history !8

bb.v:                                             ; preds = %bb.u
  store ptr %i.de, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  br label %_ZN2cv3Mat19getDefaultAllocatorEv.exit

bb.w:                                             ; preds = %bb.u
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  br label %common.resume

_ZN2cv3Mat19getDefaultAllocatorEv.exit:           ; preds = %bb.s, %bb.t, %bb.v
  %i.dg = load ptr, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67 ; 5 uses
  %.not62 = icmp eq ptr %i.da, null
  %spec.select78 = select i1 %.not62, ptr %i.dg, ptr %i.da ; 4 uses
  %i.dh = load i32, ptr %i.o, align 4, !tbaa !70
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dj = load ptr, ptr %spec.select78, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %spec.select78, i32 noundef %i.dh, ptr noundef nonnull %i.ak, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.di, i32 noundef 50331648, i32 noundef 0)
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %_ZN2cv3Mat19getDefaultAllocatorEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !74
  %.not63 = icmp eq ptr %i.dm, null
  br i1 %.not63, label %bb.z, label %bb.ag

bb.y:                                             ; preds = %_ZN2cv3Mat19getDefaultAllocatorEv.exit
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
end_hunk_0
begin_hunk_1_@_ZNK2cv15StdMatAllocator8allocateEiPKiiPvPmNS_10AccessFlagENS_14UMatUsageFlagsE:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 104) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  ret ptr %i.cx

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.de, %bb.m ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv15StdMatAllocator8allocateEPNS_8UMatDataENS_10AccessFlagENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %.not = icmp ne ptr %1, null
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.104, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE, ptr noundef nonnull @.str.10, i32 noundef 595) #25
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.105, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE, ptr noundef nonnull @.str.10, i32 noundef 596) #25
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.m:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.s = load i64, ptr %i.q, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.l
  %.pn13 = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.o, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i32, ptr %i.u, align 8, !tbaa !99
  %i.v = and i32 %.val, 32
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98
  tail call void @_ZN2cv8fastFreeEPv(ptr noundef %i.x)
  store ptr null, ptr %i.w, align 8, !tbaa !98
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  tail call void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 104) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn13.pn
}

declare noundef ptr @_ZN2cv10fastMallocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

declare void @_ZN2cv8fastFreeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #18

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = distinct !{null}
!5 = distinct !{!5, !33}
!6 = distinct !{!6, !33}
!7 = distinct !{!7, !33}
!8 = distinct !{ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !13, i64 16}
!24 = !{!23, !18, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{!23, !21, i64 8}
!27 = !{!"_ZTSN2cv10DataLayoutE", !13, i64 0}
!28 = !{!"_ZTSN2cv8MatShapeE", !14, i64 0, !27, i64 4, !14, i64 8, !13, i64 12}
!29 = !{!28, !14, i64 0}
!30 = !{!28, !27, i64 4}
!31 = !{!28, !14, i64 8}
!32 = !{!14, !14, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !37, i64 8}
!41 = !{!"vtable pointer", !12, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!44 = !{!"_ZTSN2cv8UMatData10MemoryFlagE", !13, i64 0}
!45 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!46 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!47 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !47, i64 8}
!49 = !{!"_ZTSSt10shared_ptrIvE", !48, i64 0}
!50 = !{!"_ZTSN2cv8UMatDataE", !43, i64 0, !43, i64 8, !14, i64 16, !14, i64 20, !18, i64 24, !18, i64 32, !21, i64 40, !44, i64 48, !17, i64 56, !17, i64 64, !14, i64 72, !14, i64 76, !45, i64 80, !49, i64 88}
!51 = !{!50, !14, i64 16}
!52 = !{!50, !14, i64 20}
!53 = !{!50, !18, i64 24}
!54 = !{!"p1 _ZTSN2cv3MatE", !17, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"any p2 pointer", !17, i64 0}
!57 = !{!"p2 _ZTSN2cv3MatE", !56, i64 0}
!58 = !{!"p2 omnipotent char", !56, i64 0}
!59 = !{!"_ZTSN2cv15NAryMatIteratorE", !57, i64 0, !54, i64 8, !58, i64 16, !14, i64 24, !21, i64 32, !21, i64 40, !14, i64 48, !21, i64 56}
!60 = !{!59, !21, i64 40}
!61 = !{!59, !21, i64 32}
!62 = !{!18, !18, i64 0}
!63 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !17, i64 0}
!64 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !63, i64 0, !14, i64 8}
!65 = !{!64, !14, i64 8}
!66 = !{!"branch_weights", i32 1, i32 1048575}
!67 = !{!43, !43, i64 0}
!68 = !{!"_ZTSN2cv7MatStepE", !13, i64 0}
!69 = !{!"_ZTSN2cv3MatE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !43, i64 56, !45, i64 64, !28, i64 72, !68, i64 128}
!70 = !{!69, !14, i64 4}
!71 = !{!69, !14, i64 0}
!72 = !{!69, !14, i64 12}
!73 = !{!69, !14, i64 8}
!74 = !{!69, !45, i64 64}
!75 = !{!69, !18, i64 24}
!76 = !{!69, !18, i64 32}
!77 = !{!69, !18, i64 48}
!78 = !{!69, !18, i64 40}
!79 = !{!69, !14, i64 16}
!80 = !{!69, !43, i64 56}
!81 = !{!69, !14, i64 72}
!82 = !{!17, !17, i64 0}
!83 = !{i64 0, i64 80, !25}
!84 = !{!50, !43, i64 8}
!85 = !{!"_ZTSN2cv5Size_IiEE", !14, i64 0, !14, i64 4}
!86 = !{!"_ZTSN2cv11_InputArrayE", !14, i64 0, !17, i64 8, !85, i64 16}
!87 = !{!86, !14, i64 0}
!88 = !{!86, !17, i64 8}
!89 = !{!50, !21, i64 40}
!90 = !{!"_ZTSN2cv5RangeE", !14, i64 0, !14, i64 4}
!91 = !{!90, !14, i64 0}
!92 = !{!90, !14, i64 4}
!93 = !{!"_ZTSN2cv6Point_IiEE", !14, i64 0, !14, i64 4}
!94 = !{!93, !14, i64 4}
!95 = !{!93, !14, i64 0}
!96 = !{!85, !14, i64 4}
!97 = !{!85, !14, i64 0}
!98 = !{!50, !18, i64 32}
!99 = !{!44, !44, i64 0}
!100 = distinct !{!100, !33, !34, !35}
!101 = distinct !{!101, !33, !35, !34}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !33, !34, !35}
!107 = distinct !{!107, !33, !34}
!108 = distinct !{!108, !33, !34, !35}
!109 = distinct !{!109, !33, !34, !35}
!110 = distinct !{!110, !33, !34}
!111 = distinct !{!111, !33, !35, !34}
!112 = distinct !{!112, !33, !34, !35}
!113 = distinct !{!113, !33, !34, !35}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !33, !34}
!116 = distinct !{!116, !33, !34}
!117 = distinct !{!117, !33, !34, !35}
!118 = distinct !{!118, !33, !35, !34}
!119 = distinct !{!119, !36}
!120 = !{!38, !37, i64 16}
!121 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!122 = distinct !{!122, !36}
!123 = distinct !{!123, !33, !128}
!124 = distinct !{!124, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!125 = distinct !{!125, !124, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!126 = distinct !{!126, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!127 = distinct !{!127, !126, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!128 = !{!"llvm.loop.peeled.count", i32 1}
!129 = !{!125}
!130 = !{!127}
!131 = !{!127, !125}
!132 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!133 = !{!"_ZTSSt6locale", !132, i64 0}
!134 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !133, i64 56}
!135 = !{!134, !18, i64 40}
!136 = !{!134, !18, i64 32}
!137 = !{!"_ZTSSi", !21, i64 8}
!138 = !{!137, !21, i64 8}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !36}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !36}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
end_hunk_1
