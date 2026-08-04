inline.NumInlined: 593
inline.NumDeleted: 266
begin_hunk_0_@_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #13

declare void @_ZN7Iex_3_413throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN19MemoryMappedIStream4readEPci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 72) #34 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64                       ; 3 uses
  %i.h = add i64 %i.b, %i.g
  %i.i = icmp ugt i64 %i.h, %i.d
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #34 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.n, i64 %i.g, i1 false)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !59
  %i.p = add i64 %i.o, %i.g                       ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !59
  %i.q = load i64, ptr %i.c, align 8, !tbaa !22
  %i.r = icmp ult i64 %i.p, %i.q
  ret i1 %i.r

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.j, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN19MemoryMappedIStream5tellgEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN19MemoryMappedIStream5seekgEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 64)) %0, i64 noundef %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN19MemoryMappedIStream16readMemoryMappedEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 72) #34 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  %i.h = add i64 %i.b, %i.g                       ; 2 uses
  %i.i = icmp ugt i64 %i.h, %i.d
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #34 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  store i64 %i.h, ptr %i.a, align 8, !tbaa !59
  ret ptr %i.n

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.j, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_Z23mergeOverlappingSamplesffffRfS_(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #16 {
bb.a:
  %i.a = fcmp ogt float %0, 1.000000e+00
  %.sroa.speculated46 = select i1 %i.a, float 1.000000e+00, float %0 ; 2 uses
  %i.b = fcmp ogt float %.sroa.speculated46, 0.000000e+00
  %.sroa.speculated34 = select i1 %i.b, float %.sroa.speculated46, float 0.000000e+00 ; 5 uses
  %i.c = fcmp ogt float %2, 1.000000e+00
  %.sroa.speculated40 = select i1 %i.c, float 1.000000e+00, float %2 ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated40, 0.000000e+00
  %.sroa.speculated = select i1 %i.d, float %.sroa.speculated40, float 0.000000e+00 ; 6 uses
  %i.e = fadd float %.sroa.speculated34, %.sroa.speculated
  %i.f = fneg float %.sroa.speculated34           ; 2 uses
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float %.sroa.speculated, float %i.e) ; 3 uses
  store float %i.g, ptr %4, align 4, !tbaa !60
  %i.h = fcmp oeq float %.sroa.speculated34, 1.000000e+00 ; 3 uses
  %i.i = fcmp oeq float %.sroa.speculated, 1.000000e+00 ; 2 uses
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = fadd float %1, %3
  %i.k = fmul float %i.j, 5.000000e-01
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %brmerge = or i1 %i.h, %i.i
  %.mux = select i1 %i.h, float %1, float %3
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef float @log1pf(float noundef %i.f) #34 ; 2 uses
  %i.m = fneg float %i.l                          ; 2 uses
  %i.n = fmul nnan float %.sroa.speculated34, f0x7F7FFFFF
  %i.o = fcmp ogt float %i.n, %i.m
  %i.p = fdiv float %i.m, %.sroa.speculated34
  %i.q = select i1 %i.o, float %i.p, float 1.000000e+00
  %i.r = fneg float %.sroa.speculated
  %i.s = tail call noundef float @log1pf(float noundef %i.r) #34
  %i.t = fneg float %i.s                          ; 3 uses
  %i.u = fmul nnan float %.sroa.speculated, f0x7F7FFFFF
  %i.v = fcmp ogt float %i.u, %i.t
  %i.w = fsub float %i.t, %i.l                    ; 3 uses
  %i.x = fcmp ogt float %i.w, 1.000000e+00
  %i.y = fmul float %i.w, f0x7F7FFFFF
  %i.z = fcmp olt float %i.g, %i.y
  %or.cond49 = or i1 %i.x, %i.z
  %6 = insertelement <2 x float> poison, float %i.t, i64 0
  %7 = insertelement <2 x float> %6, float %i.g, i64 1
  %8 = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %9 = insertelement <2 x float> %8, float %i.w, i64 1
  %10 = fdiv <2 x float> %7, %9
  %11 = insertelement <2 x i1> poison, i1 %i.v, i64 0
  %12 = insertelement <2 x i1> %11, i1 %or.cond49, i64 1
  %13 = select <2 x i1> %12, <2 x float> %10, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0
  %i.aa = fmul float %3, %14
  %i.ab = tail call float @llvm.fmuladd.f32(float %1, float %i.q, float %i.aa)
  %15 = extractelement <2 x float> %13, i64 1
  %i.ac = fmul float %i.ab, %15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi float [ %i.k, %bb.b ], [ %i.ac, %bb.d ], [ %.mux, %bb.c ]
  store float %.sink, ptr %5, align 4, !tbaa !60
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress uwtable
define dso_local void @_Z20readDeepScanLineFilePKcRN9Imath_3_23BoxINS1_4Vec2IiEEEES6_RN7Imf_3_47Array2DIPfEERNS8_IPNS1_4halfEEERNS8_IjEE(ptr noundef %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Imf_3_4::DeepScanLineInputFile", align 8 ; 11 uses
  %7 = alloca %"class.Imf_3_4::DeepFrameBuffer", align 8 ; 16 uses
  %8 = alloca %"struct.Imf_3_4::Slice", align 8   ; 5 uses
  %9 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  %10 = alloca %"struct.Imf_3_4::DeepSlice", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.a = tail call noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
  call void @_ZN7Imf_3_421DeepScanLineInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %0, i32 noundef %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_421DeepScanLineInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.s       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.c unwind label %bb.s       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !62
  store <2 x i32> %i.e, ptr %2, align 4, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !62
  store <2 x i32> %i.i, ptr %i.f, align 4, !tbaa !62
  %i.j = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
          to label %bb.d unwind label %bb.s       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = load <2 x i32>, ptr %i.j, align 4, !tbaa !62
  store <2 x i32> %i.k, ptr %1, align 4, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !62
  store <2 x i32> %i.n, ptr %i.l, align 4, !tbaa !62
  %i.o = load i32, ptr %i.f, align 4, !tbaa !63   ; 3 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !66     ; 3 uses
  %i.q = sub nsw i32 %i.o, %i.p                   ; 3 uses
  %i.r = add nsw i32 %i.q, 1                      ; 4 uses
  %i.s = load i32, ptr %i.h, align 4, !tbaa !67   ; 3 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !68   ; 3 uses
  %i.u = sub nsw i32 %i.s, %i.t                   ; 3 uses
  %i.v = add nsw i32 %i.u, 1
  %i.w = sext i32 %i.v to i64                     ; 4 uses
  %i.x = sext i32 %i.r to i64                     ; 6 uses
  %i.y = mul nsw i64 %i.w, %i.x                   ; 4 uses
  %i.z = icmp ugt i64 %i.y, 4611686018427387903
  %i.aa = shl nuw i64 %i.y, 2
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #37
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc
  store i64 %i.w, ptr %5, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.ag, align 8, !tbaa !73
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !69
  %i.ah = icmp ugt i64 %i.y, 2305843009213693951
  %i.ai = shl nuw i64 %i.y, 3
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai      ; 2 uses
  %i.ak = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #37
          to label %.noexc86 unwind label %bb.t

.noexc86:                                         ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc86
  call void @_ZdaPv(ptr noundef nonnull %i.am) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc86
  store i64 %i.w, ptr %3, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.x, ptr %i.ao, align 8, !tbaa !79
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !74
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #37
          to label %.noexc87 unwind label %bb.t

.noexc87:                                         ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc87
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc87
  store i64 %i.w, ptr %4, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.x, ptr %i.at, align 8, !tbaa !84
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.au, align 8, !tbaa !85
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !93
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.az, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %7) #34
  br label %.body

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.bc = load i32, ptr %2, align 4, !tbaa !66
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !68
  %i.bh = mul nsw i32 %i.bg, %i.r
  %i.bi = sext i32 %i.bh to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = shl nsw i64 %i.x, 2
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %8, i32 noundef 0, ptr noundef %i.bk, i64 noundef 4, i64 noundef %i.bl, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(50) %8)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.bn = load i32, ptr %2, align 4, !tbaa !66
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i32, ptr %i.d, align 4, !tbaa !68
  %i.bs = mul nsw i32 %i.br, %i.r
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = shl nsw i64 %i.x, 3                     ; 2 uses
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef 2, ptr noundef %i.bv, i64 noundef 8, i64 noundef %i.bw, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.by = load i32, ptr %2, align 4, !tbaa !66
  %i.bz = sext i32 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i32, ptr %i.d, align 4, !tbaa !68
  %i.cd = mul nsw i32 %i.cc, %i.r
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cf
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 1, ptr noundef %i.cg, i64 noundef 8, i64 noundef %i.bw, i64 noundef 2, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.q unwind label %bb.w
end_hunk_0
