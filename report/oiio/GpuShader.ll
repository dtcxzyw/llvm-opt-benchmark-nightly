inline.NumInlined: 768
inline.NumDeleted: 312
begin_hunk_0_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev:bb.a

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i2:                ; preds = %bb.f, %_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 2 uses
  %.not.i1.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i1.i3, label %_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i2
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i32 noundef 3)
          to label %_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i2, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev.exit, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %.not.i4 = icmp eq ptr %i.af, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 2 uses
  %.not.i6 = icmp eq ptr %i.al, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7TextureD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !54
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !54
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(240) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataaSERKS1_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.7", align 16  ; 11 uses
  %3 = alloca %"class.std::function.5", align 16  ; 11 uses
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFdvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !90
  br label %_ZNSt8functionIFdvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.aa, %bb.l ], [ %i.at, %bb.s ], [ %i.at, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFdvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.b, align 16, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt8functionIFdvEEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFdvEEC2ERKS1_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFdvEEaSERKS1_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

_ZNSt8functionIFdvEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFdvEEC2ERKS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i8, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFdvEEaSERKS1_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !90
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 16, !tbaa !88 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i9, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #24
  unreachable

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.j, %_ZNSt8functionIFdvEEaSERKS1_.exit
  %i.af = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFdvEEaSERKS1_.exit ], [ %i.z, %bb.j ]
  %.sroa.0.i.i.i7.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i7.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !90
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ah, ptr %i.u, align 16, !tbaa !90
  store <2 x ptr> %i.af, ptr %i.ag, align 8, !tbaa !90
  %.not.i.i11 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbvEEaSERKS1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFbvEEaSERKS1_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #24
  unreachable

_ZNSt8functionIFbvEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.not.i.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i13, label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFbvEEaSERKS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 2)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.as = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !90
  br label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.an, align 16, !tbaa !88 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i14, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #24
  unreachable

_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i: ; preds = %bb.q, %_ZNSt8functionIFbvEEaSERKS1_.exit
  %i.ay = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbvEEaSERKS1_.exit ], [ %i.as, %bb.q ]
  %.sroa.0.i.i.i12.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i12.sroa.0.0.copyload, ptr %i.am, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !90
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.an, align 16, !tbaa !90
  store <2 x ptr> %i.ay, ptr %i.az, align 8, !tbaa !90
  %.not.i.i16 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i16, label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEaSERKS5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEaSERKS5_.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #24
  unreachable

_ZNSt8functionIFRKSt5arrayIfLm3EEvEEaSERKS5_.exit: ; preds = %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.bg) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bk = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bj) ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloataSERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.11", align 16 ; 11 uses
  %3 = alloca %"class.std::function.9", align 16  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !90
  br label %_ZNSt8functionIFivEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.y, %bb.l ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !90
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 16, !tbaa !90
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFivEEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFivEEC2ERKS1_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFivEEaSERKS1_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZNSt8functionIFivEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFivEEC2ERKS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFivEEaSERKS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !90
  br label %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i5, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #24
  unreachable

_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i:            ; preds = %bb.j, %_ZNSt8functionIFivEEaSERKS1_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFivEEaSERKS1_.exit ], [ %i.x, %bb.j ]
  %.sroa.0.i.i.i3.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i3.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !90
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !90
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !90
  %.not.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i7, label %_ZNSt8functionIFPKfvEEaSERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFPKfvEEaSERKS3_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #24
  unreachable

_ZNSt8functionIFPKfvEEaSERKS3_.exit:              ; preds = %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntaSERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.13", align 16 ; 11 uses
  %3 = alloca %"class.std::function.9", align 16  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !90
  br label %_ZNSt8functionIFivEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.y, %bb.l ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !90
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 16, !tbaa !90
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFivEEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFivEEC2ERKS1_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFivEEaSERKS1_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZNSt8functionIFivEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFivEEC2ERKS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i4, label %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFivEEaSERKS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !90
  br label %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i5, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #24
  unreachable

_ZNSt8functionIFPKivEEC2ERKS3_.exit.i:            ; preds = %bb.j, %_ZNSt8functionIFivEEaSERKS1_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFivEEaSERKS1_.exit ], [ %i.x, %bb.j ]
  %.sroa.0.i.i.i3.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i3.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !90
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !90
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !90
  %.not.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i7, label %_ZNSt8functionIFPKivEEaSERKS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFPKivEEaSERKS3_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #24
  unreachable

_ZNSt8functionIFPKivEEaSERKS3_.exit:              ; preds = %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl15uniformNameUsedEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %2 = alloca %"struct.OpenColorIO_v2_5::GPUShaderImpl::PrivateImpl::Uniform", align 8 ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %.not27.not = icmp eq ptr %i.d, %i.f
  br i1 %.not27.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.k = icmp eq ptr %1, null
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.g, ptr %2, align 8, !tbaa !93
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !94   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.o, ptr %i.b, align 8, !tbaa !83
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.us, label %._crit_edge.i.i.i.us

.noexc.i.i.us:                                    ; preds = %.lr.ph.split.us
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !50
  %i.r = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.r, ptr %i.g, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.us

._crit_edge.i.i.i.us:                             ; preds = %.noexc.i.i.us, %.lr.ph.split.us
  %i.s = phi ptr [ %i.q, %.noexc.i.i.us ], [ %i.g, %.lr.ph.split.us ] ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.us
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.us
  %i.t = load i8, ptr %i.m, align 1, !tbaa !54
  store i8 %i.t, ptr %i.s, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.us

bb.c:                                             ; preds = %._crit_edge.i.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.us: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.us
  %i.u = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  store i64 %i.u, ptr %i.h, align 8, !tbaa !94
  %i.v = load ptr, ptr %2, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(240) %i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.x)
          to label %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit.us unwind label %.split.us

_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.j, ptr %3, align 8, !tbaa !93
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc unwind label %.loopexit.split-lp

.split.us:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.us
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev.exit
  %.sroa.015.028 = phi ptr [ %i.bp, %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev.exit ], [ %i.d, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.g, ptr %2, align 8, !tbaa !93
  %i.z = load ptr, ptr %.sroa.015.028, align 8, !tbaa !50 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.028, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !94 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !83
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph.split
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !50
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.ae, ptr %i.g, align 8, !tbaa !54
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %.lr.ph.split
  %i.af = phi ptr [ %i.ad, %.noexc.i.i ], [ %i.g, %.lr.ph.split ] ; 2 uses
  switch i64 %i.ab, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !54
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  store i64 %i.ah, ptr %i.h, align 8, !tbaa !94
  %i.ai = load ptr, ptr %2, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.028, i64 32
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(240) %i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.ak)
          to label %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit unwind label %.split

.split:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %.split
  %.us-phi32 = phi { ptr, i32 } [ %i.al, %.split ], [ %i.y, %.split.us ] ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !54
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.l ], [ %.us-phi32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.us-phi32, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.j, ptr %3, align 8, !tbaa !93
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !83
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i, label %._crit_edge.i.i

.noexc:                                           ; preds = %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit.us
  unreachable

.noexc.i:                                         ; preds = %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %.loopexit ; 2 uses

.noexc10:                                         ; preds = %.noexc.i
  store ptr %i.as, ptr %3, align 8, !tbaa !50
  %i.at = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.at, ptr %i.j, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc10, %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit
  %i.au = phi ptr [ %i.as, %.noexc10 ], [ %i.j, %_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2ERKS2_.exit ] ; 2 uses
  switch i64 %i.aq, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %1, align 1, !tbaa !54
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataC2ERKS1_:bb.a
  tail call void @__clang_call_terminate(ptr %i.cn) #24
  unreachable

_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData9VectorIntC2ERKS2_.exit: ; preds = %bb.ai, %_ZNSt8functionIFivEEC2ERKS1_.exit.i29
  ret void

.body34:                                          ; preds = %bb.ae, %bb.af, %.body.i32, %bb.am
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.cf, %bb.am ], [ %i.bt, %bb.ae ], [ %i.bt, %bb.af ], [ %i.cf, %.body.i32 ]
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformData11VectorFloatD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ak) #22
  br label %.body23

.body23:                                          ; preds = %bb.aa, %.body.i, %bb.t, %bb.s, %.body34
  %.pn = phi { ptr, i32 } [ %eh.lpad-body35, %.body34 ], [ %i.bd, %bb.aa ], [ %i.ar, %bb.s ], [ %i.ar, %bb.t ], [ %i.bd, %.body.i ] ; 2 uses
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %.body20, label %bb.ao

bb.ao:                                            ; preds = %.body23
  %i.cp = invoke noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef 3)
          to label %.body20 unwind label %bb.ap   ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  tail call void @__clang_call_terminate(ptr %i.cr) #24
  unreachable

.body20:                                          ; preds = %bb.ao, %.body23, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.n ], [ %.pn, %bb.ao ], [ %i.af, %bb.o ], [ %.pn, %.body23 ] ; 2 uses
  %i.cs = load ptr, ptr %i.n, align 8, !tbaa !88  ; 2 uses
  %.not.i36 = icmp eq ptr %i.cs, null
  br i1 %.not.i36, label %.body, label %bb.aq

bb.aq:                                            ; preds = %.body20
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3)
          to label %.body unwind label %bb.ar     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #24
  unreachable

.body:                                            ; preds = %bb.aq, %.body20, %bb.j, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn.pn, %bb.aq ], [ %i.t, %bb.j ], [ %.pn.pn, %.body20 ] ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %.not.i38 = icmp eq ptr %i.cw, null
  br i1 %.not.i38, label %common.resume, label %bb.as

bb.as:                                            ; preds = %.body
  %i.cx = invoke noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %common.resume unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  tail call void @__clang_call_terminate(ptr %i.cz) #24
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFdvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 272                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !55
  %i.s = load i64, ptr %4, align 8, !tbaa !83
  invoke void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFdvEEm(ptr noundef nonnull align 8 dereferenceable(272) %i.q, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFdvEERmEEEvRS4_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFdvEERmEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.d

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFdvEERmEEEvRS4_PT_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.v = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.u)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 unwind label %bb.e

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.w) #22
  %i.x = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !54
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !84

_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #25
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !49
  store ptr %i.v, ptr %i.a, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw [272 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !56
  ret void

bb.d:                                             ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFdvEERmEEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #22 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.q) #22
  br label %bb.g

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.ph = phi ptr [ %i.p, %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.am

bb.i:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #24
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFdvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFdvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !90
  br label %_ZNSt8functionIFdvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt8functionIFdvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFdvEEC2ERKS1_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZNSt8functionIFdvEEC2ERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.t, align 8, !tbaa !107
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #22
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !93
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !50
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !54
  store i8 %i.i, ptr %i.h, align 1, !tbaa !54
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94
  %i.l = load ptr, ptr %0, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 5, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.o, i8 0, i64 232, i1 false)
  %i.p = load i64, ptr %i.k, align 8, !tbaa !94
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
          to label %bb.l unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.r) #22
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.s, %bb.h ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.n) #22
  %i.u = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.b, align 8, !tbaa !54
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.g
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit
  %.021 = phi ptr [ %i.w, %_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01220 = phi ptr [ %i.v, %_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 5 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !93
  %i.c = load ptr, ptr %.01220, align 8, !tbaa !50 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !94   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !83
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(272) %.021, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.021, align 8, !tbaa !50
  %i.h = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.h, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !54
  store i8 %i.j, ptr %i.i, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !94
  %i.m = load ptr, ptr %.021, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01220, i64 32
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(240) %i.o, ptr noundef nonnull align 8 dereferenceable(240) %i.p)
          to label %_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.021, align 8, !tbaa !50  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !54
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %.body

_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01220, i64 272 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021, i64 272 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %_ZSt10_ConstructIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFbvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 272
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !55
  %i.t = load i64, ptr %4, align 8, !tbaa !83
  invoke void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFbvEEm(ptr noundef nonnull align 8 dereferenceable(272) %i.r, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFbvEERmEEEvRS4_PT_DpOT0_.exit unwind label %bb.f

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFbvEERmEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.e

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFbvEERmEEEvRS4_PT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 2 uses
  %i.w = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.v)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 unwind label %bb.f

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.x) #22
  %i.y = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !84

_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #25
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !49
  store ptr %i.w, ptr %i.a, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [272 x i8], ptr %i.q, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !56
  ret void

bb.e:                                             ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFbvEERmEEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #22 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.r) #22
  br label %bb.h

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %.0.ph = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit ], [ %i.v, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ao = mul nuw nsw i64 %i.l, 272
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ao) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.an

bb.j:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFbvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.5", align 16  ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !90
  br label %_ZNSt8functionIFbvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt8functionIFbvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbvEEC2ERKS1_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZNSt8functionIFbvEEC2ERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.t, align 8, !tbaa !107
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #22
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFRKSt5arrayIfLm3EEvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 272
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !55
  %i.t = load i64, ptr %4, align 8, !tbaa !83
  invoke void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFRKSt5arrayIfLm3EEvEEm(ptr noundef nonnull align 8 dereferenceable(272) %i.r, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFRKSt5arrayIfLm3EEvEERmEEEvRS4_PT_DpOT0_.exit unwind label %bb.f

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFRKSt5arrayIfLm3EEvEERmEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.e

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFRKSt5arrayIfLm3EEvEERmEEEvRS4_PT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 2 uses
  %i.w = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.v)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 unwind label %bb.f

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.x) #22
  %i.y = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !84

_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #25
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !49
  store ptr %i.w, ptr %i.a, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [272 x i8], ptr %i.q, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !56
  ret void

bb.e:                                             ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFRKSt5arrayIfLm3EEvEERmEEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #22 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.r) #22
  br label %bb.h

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %.0.ph = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit ], [ %i.v, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ao = mul nuw nsw i64 %i.l, 272
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ao) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.an

bb.j:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFRKSt5arrayIfLm3EEvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.7", align 16  ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !90
  br label %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZNSt8functionIFRKSt5arrayIfLm3EEvEEC2ERKS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.t, align 8, !tbaa !107
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #22
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFivEERKSA_IFPKfvEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 272
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !55
  %i.t = load i64, ptr %5, align 8, !tbaa !83
  invoke void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm(ptr noundef nonnull align 8 dereferenceable(272) %i.r, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKfvEERmEEEvRS4_PT_DpOT0_.exit unwind label %bb.f

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKfvEERmEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.e

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKfvEERmEEEvRS4_PT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 2 uses
  %i.w = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.v)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31 unwind label %bb.f

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31 ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.x) #22
  %i.y = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !84

_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #25
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !49
  store ptr %i.w, ptr %i.a, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [272 x i8], ptr %i.q, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !56
  ret void

bb.e:                                             ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKfvEERmEEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #22 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.r) #22
  br label %bb.h

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %.0.ph = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit ], [ %i.v, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ao = mul nuw nsw i64 %i.l, 272
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ao) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.an

bb.j:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKfvEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.11", align 16 ; 11 uses
  %6 = alloca %"class.std::function.9", align 16  ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !90
  br label %_ZNSt8functionIFivEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFivEEC2ERKS1_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZNSt8functionIFivEEC2ERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !90
  br label %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 16, !tbaa !88 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i8, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i:            ; preds = %bb.k, %bb.i
  %i.ae = phi <2 x ptr> [ splat (ptr null), %bb.i ], [ %i.y, %bb.k ]
  %.sroa.0.i.i.i6.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i6.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !90
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ag, ptr %i.u, align 16, !tbaa !90
  store <2 x ptr> %i.ae, ptr %i.af, align 8, !tbaa !90
  %.not.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i10, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

bb.q:                                             ; preds = %bb.o, %_ZNSt8functionIFPKfvEEC2ERKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %4, ptr %i.al, align 8, !tbaa !107
  ret void

.body:                                            ; preds = %bb.m, %bb.l, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.z, %bb.l ], [ %i.z, %bb.m ]
  call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE17_M_realloc_insertIJRPKcRKSt8functionIFivEERKSA_IFPKivEERmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 272
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !55
  %i.t = load i64, ptr %5, align 8, !tbaa !83
  invoke void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm(ptr noundef nonnull align 8 dereferenceable(272) %i.r, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKivEERmEEEvRS4_PT_DpOT0_.exit unwind label %bb.f

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKivEERmEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.e

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKivEERmEEEvRS4_PT_DpOT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 272 ; 2 uses
  %i.w = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.v)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31 unwind label %bb.f

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31 ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  tail call void @_ZN16OpenColorIO_v2_513GpuShaderDesc11UniformDataD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.x) #22
  %i.y = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !84

_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #25
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_.exit, %bb.d
  store ptr %i.q, ptr %0, align 8, !tbaa !49
  store ptr %i.w, ptr %i.a, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [272 x i8], ptr %i.q, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !56
  ret void

bb.e:                                             ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEE9constructIS3_JRPKcRKSt8functionIFivEERKSA_IFPKivEERmEEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #22 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.r) #22
  br label %bb.h

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit
  %.0.ph = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformESaIS3_EE11_M_allocateEm.exit ], [ %i.v, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformEEvT_S5_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.ph)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ao = mul nuw nsw i64 %i.l, 272
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ao) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.an

bb.j:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKcRKSt8functionIFivEERKS5_IFPKivEEm(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.13", align 16 ; 11 uses
  %6 = alloca %"class.std::function.9", align 16  ; 11 uses
  tail call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformC2EPKc(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFivEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !90
  br label %_ZNSt8functionIFivEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !88  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNSt8functionIFivEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !90
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  store <2 x ptr> %i.o, ptr %i.c, align 16, !tbaa !90
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFivEEC2ERKS1_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZNSt8functionIFivEEC2ERKS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !90
  br label %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 16, !tbaa !88 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i8, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.n      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZNSt8functionIFPKivEEC2ERKS3_.exit.i:            ; preds = %bb.k, %bb.i
  %i.ae = phi <2 x ptr> [ splat (ptr null), %bb.i ], [ %i.y, %bb.k ]
  %.sroa.0.i.i.i6.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 16, i1 false), !tbaa.struct !91
  store <2 x i64> %.sroa.0.i.i.i6.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !90
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ag, ptr %i.u, align 16, !tbaa !90
  store <2 x ptr> %i.ae, ptr %i.af, align 8, !tbaa !90
  %.not.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i10, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

bb.q:                                             ; preds = %bb.o, %_ZNSt8functionIFPKivEEC2ERKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %4, ptr %i.al, align 8, !tbaa !107
  ret void

.body:                                            ; preds = %bb.m, %bb.l, %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.z, %bb.l ], [ %i.z, %bb.m ]
  call void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7UniformD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513GPUShaderImpl11PrivateImpl7TextureC2EPKcS4_jjjNS_16GpuShaderCreator11TextureTypeEjNS_13InterpolationEjPKf(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !93
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.e, ptr %i.b, align 8, !tbaa !83
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !50
  %i.h = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.h, ptr %i.c, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !54
  store i8 %i.j, ptr %i.i, align 1, !tbaa !54
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !94
  %i.m = load ptr, ptr %0, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !93
  %i.q = icmp eq ptr %2, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc48 unwind label %bb.l

.noexc48:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.r, ptr %i.a, align 8, !tbaa !83
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i47, label %._crit_edge.i.i46

.noexc.i47:                                       ; preds = %bb.g
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc49 unwind label %bb.l   ; 2 uses

.noexc49:                                         ; preds = %.noexc.i47
  store ptr %i.t, ptr %i.o, align 8, !tbaa !50
  %i.u = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.u, ptr %i.p, align 8, !tbaa !54
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc49, %bb.g
  %i.v = phi ptr [ %i.t, %.noexc49 ], [ %i.p, %bb.g ] ; 2 uses
  switch i64 %i.r, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i46
  %i.w = load i8, ptr %2, align 1, !tbaa !54
  store i8 %i.w, ptr %i.v, align 1, !tbaa !54
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %2, i64 %i.r, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i46, %bb.h, %bb.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !94
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.ab, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %4, ptr %i.ac, align 4, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %5, ptr %i.ad, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %6, ptr %i.ae, align 4, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %7, ptr %i.af, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %8, ptr %i.ag, align 4, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %9, ptr %i.ah, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = load i8, ptr %1, align 1, !tbaa !54
  %.not36 = icmp eq i8 %i.aj, 0
  br i1 %.not36, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.10)
          to label %.invoke unwind label %bb.m

bb.l:                                             ; preds = %.noexc.i47, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ak) #22
  br label %.body

bb.n:                                             ; preds = %.invoke, %bb.ag
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.j
  %i.ao = load i8, ptr %2, align 1, !tbaa !54
  %.not38 = icmp eq i8 %i.ao, 0
  br i1 %.not38, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ap = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.11)
          to label %.invoke unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ap) #22
  br label %.body
end_hunk_1
