Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cv2?download=true
inline.NumInlined: 99483
inline.NumDeleted: 14985
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606059DictValueaSERKS2_:bb.a

.sink.split:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.e, %middle.block, %_ZN2cv10AutoBufferIdLm1EE8allocateEm.exit.i, %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE8allocateEm.exit.i, %_ZN2cv10AutoBufferIlLm1EE8allocateEm.exit.i
  %.sink = phi ptr [ %i.c, %_ZN2cv10AutoBufferIlLm1EE8allocateEm.exit.i ], [ %i.x, %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE8allocateEm.exit.i ], [ %i.cf, %_ZN2cv10AutoBufferIdLm1EE8allocateEm.exit.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ], [ %i.cf, %middle.block ], [ %i.c, %bb.e ], [ %i.cf, %scalar.ph ], [ %i.cf, %scalar.ph.prol.loopexit ]
  tail call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.dy, align 8, !tbaa !743
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.dz = load i32, ptr %1, align 8, !tbaa !1429
  store i32 %i.dz, ptr %0, align 8, !tbaa !1429
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret ptr %0

bb.n:                                             ; preds = %bb.k, %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.loopexit.split-lp46, %.body ], [ %i.dx, %bb.k ]
  resume { ptr, i32 } %.pn
}

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #5

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn14dnn5_v202606059DictValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 3, ptr %0, align 8, !tbaa !1429
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.c, ptr %.ptr.i, align 8, !tbaa !776
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !780
  store i8 0, ptr %i.c, align 8, !tbaa !743
  store ptr %.ptr.i, ptr %i.b, align 8, !tbaa !1439
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !1440
  store ptr %i.b, ptr %i.a, align 8, !tbaa !743
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13pyopencv_fromIN2cv3dnn14dnn5_v202606059DictValueEEP7_objectRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !1429   ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z13pyopencv_fromIiEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, -3
  %spec.select.i = icmp eq i32 %i.d, 0
  br i1 %spec.select.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_Z13pyopencv_fromIfEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %i.a, 3
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef ptr @_Z13pyopencv_fromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._Z13pyopencv_fromIN2cv3dnn14dnn5_v202606059DictValueEEP7_objectRKT_, ptr noundef nonnull @.str.14, i32 noundef 59) #38
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !779    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !743
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.h

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.09 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.g, %bb.f ]
  ret ptr %.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_Z13pyopencv_fromIiEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::vector.103", align 8   ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !1429   ; 4 uses
  switch i32 %i.b, label %bb.b [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.12985, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !779    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !743
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20 ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit33 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.a, %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !743
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.in.i = load i64, ptr %i.k, align 8, !tbaa !781 ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i32
  %i.l = icmp sgt i32 %.0.i, 1
  br i1 %i.l, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  switch i32 %i.b, label %bb.f [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.12985, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !779    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !743
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22: ; preds = %bb.e, %bb.e, %bb.e
  %i.s = and i64 %.0.in.i, 2147483647             ; 4 uses
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39
          to label %bb.i unwind label %bb.p       ; 8 uses

bb.i:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  store ptr %i.u, ptr %4, align 8, !tbaa !1442
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1443
  store i32 0, ptr %i.u, align 4, !tbaa !744
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.t, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !744
  %i.y = getelementptr i8, ptr %i.u, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !1444
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !1429  ; 2 uses
  switch i32 %i.aa, label %bb.k [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.12985, i32 noundef %i.aa)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc29
  unreachable

bb.m:                                             ; preds = %.noexc29
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %1, align 8, !tbaa !779   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.m
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !743
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %.body

bb.n:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !743
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.in.i24 = load i64, ptr %i.ai, align 8, !tbaa !781
  %i.aj = shl i64 %.0.in.i24, 32
  %i.ak = ashr exact i64 %i.aj, 32
  %i.al = icmp slt i64 %indvars.iv, %i.ak
  br i1 %i.al, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = invoke fastcc noundef ptr @_ZL25pyopencv_from_generic_vecIiEP7_objectRKSt6vectorIT_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

bb.q:                                             ; preds = %bb.n
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ao)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.aq = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %i.ar = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 2147483647)
  %i.as = trunc nsw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !744
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.j, !llvm.loop !3690

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o
  %.idx = shl nuw nsw i64 %i.s, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.k, %bb.o
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27 ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.idx45 = shl nuw nsw i64 %i.s, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx45) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit33

_ZNSt6vectorIiSaIiEED2Ev.exit33:                  ; preds = %.body, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume

bb.s:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.au = tail call noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef -1)
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.au, i64 -2147483648)
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.av, i64 2147483647)
  %i.ax = trunc nsw i64 %i.aw to i32
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !744
  %i.ay = call noundef ptr @_Z13pyopencv_fromIiEP7_objectRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.014 = phi ptr [ %i.am, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.ay, %bb.s ]
  ret ptr %.014
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_Z13pyopencv_fromIfEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::vector.219", align 8   ; 7 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !1429   ; 4 uses
  switch i32 %i.b, label %bb.b [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.12985, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !779    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !743
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20 ], [ %.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit33 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.a, %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !743
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.in.i = load i64, ptr %i.k, align 8, !tbaa !781 ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i32
  %i.l = icmp sgt i32 %.0.i, 1
  br i1 %i.l, label %bb.e, label %bb.s

bb.e:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  switch i32 %i.b, label %bb.f [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.12985, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !779    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !743
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22: ; preds = %bb.e, %bb.e, %bb.e
  %i.s = and i64 %.0.in.i, 2147483647             ; 4 uses
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39
          to label %bb.i unwind label %bb.p       ; 8 uses

bb.i:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  store ptr %i.u, ptr %4, align 8, !tbaa !1447
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1448
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !1450
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.t, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !1450
  %i.y = getelementptr i8, ptr %i.u, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !1451
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !1429  ; 2 uses
  switch i32 %i.aa, label %bb.k [
    i32 0, label %bb.n
    i32 3, label %bb.n
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.12985, i32 noundef %i.aa)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc29
  unreachable

bb.m:                                             ; preds = %.noexc29
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %1, align 8, !tbaa !779   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.m
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !743
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %.body

bb.n:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !743
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.in.i24 = load i64, ptr %i.ai, align 8, !tbaa !781
  %i.aj = shl i64 %.0.in.i24, 32
  %i.ak = ashr exact i64 %i.aj, 32
  %i.al = icmp slt i64 %indvars.iv, %i.ak
  br i1 %i.al, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = invoke fastcc noundef ptr @_ZL25pyopencv_from_generic_vecIfEP7_objectRKSt6vectorIT_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit33

bb.q:                                             ; preds = %bb.n
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = invoke noundef double @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIdEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ao)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.aq = fptrunc double %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store float %i.aq, ptr %i.ar, align 4, !tbaa !1450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.j, !llvm.loop !3691

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.o
  %.idx = shl nuw nsw i64 %i.s, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.k, %bb.o
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27 ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.idx45 = shl nuw nsw i64 %i.s, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx45) #40
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit33

_ZNSt6vectorIfSaIfEED2Ev.exit33:                  ; preds = %.body, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume

bb.s:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.as = tail call noundef double @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIdEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef -1)
  %i.at = fptrunc double %i.as to float
  store float %i.at, ptr %i.a, align 4, !tbaa !1450
  %i.au = call noundef ptr @_Z13pyopencv_fromIfEP7_objectRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.014 = phi ptr [ %i.am, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.au, %bb.s ]
  ret ptr %.014
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_Z13pyopencv_fromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::vector.133", align 8   ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !1429   ; 4 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.12985, i32 noundef %i.a)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !779    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !743
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %.pn.pn.pn, %bb.ab ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.a, %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.in.i = load i64, ptr %i.j, align 8, !tbaa !781 ; 4 uses
  %.0.i = trunc i64 %.0.in.i to i32
  %i.k = icmp sgt i32 %.0.i, 1
  br i1 %i.k, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  switch i32 %i.a, label %bb.f [
    i32 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
    i32 3, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
    i32 2, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.12985, i32 noundef %i.a)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !779    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !743
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.e, %bb.e, %bb.e
  %i.r = shl i64 %.0.in.i, 32                     ; 2 uses
  %i.s = and i64 %.0.in.i, 2147483647             ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.t = lshr exact i64 %i.r, 27
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39
          to label %.noexc27 unwind label %bb.o   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.u, ptr %4, align 8, !tbaa !1453
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1454
  %i.x = add nsw i64 %i.s, -1
  %xtraiter = and i64 %.0.in.i, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.u, %.noexc27 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.prol ], [ %i.s, %.noexc27 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc27 ]
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.y, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !776
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !780
  store i8 0, ptr %i.y, align 8, !tbaa !743
  %i.aa = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3692

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc27
  %.lcssa84.unr = phi ptr [ poison, %.noexc27 ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.u, %.noexc27 ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.s, %.noexc27 ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol ]
  %i.ac = icmp ult i64 %i.x, 3
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ad, ptr %.08.i.i.i.i.i, align 8, !tbaa !776
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !780
  store i8 0, ptr %i.ad, align 8, !tbaa !743
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !776
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !780
  store i8 0, ptr %i.ag, align 8, !tbaa !743
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !776
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ak, align 8, !tbaa !780
  store i8 0, ptr %i.aj, align 8, !tbaa !743
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !776
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.an, align 8, !tbaa !780
  store i8 0, ptr %i.am, align 8, !tbaa !743
  %i.ao = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa84.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !1455
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %.loopexit ] ; 4 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !1429  ; 2 uses
  switch i32 %i.at, label %bb.j [
    i32 0, label %bb.m
    i32 3, label %bb.m
end_hunk_0
begin_hunk_1_@_ZL40pyopencv_cv_dnn_blobFromImagesWithParamsP7_objectS0_S0_:bb.a
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #40
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit182

_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit182:      ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i180, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  br i1 %i.iq, label %bb.ei, label %bb.ep

bb.ei:                                            ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.6625, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %bb.ei
  invoke void @_Z26pyRaiseCVOverloadExceptionRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.ek unwind label %bb.eo

bb.ek:                                            ; preds = %bb.ej
  %i.jb = load ptr, ptr %33, align 8, !tbaa !779  ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ek
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !743
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.ep

bb.el:                                            ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.dt
  %.pn142 = phi { ptr, i32 } [ %i.io, %bb.ed ], [ %i.in, %bb.ec ], [ %.pn131.pn, %bb.dt ], [ %i.im, %bb.eb ], [ %i.ip, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.do
  %.pn142.pn = phi { ptr, i32 } [ %.pn142, %bb.el ], [ %i.ht, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  br label %bb.eq

bb.en:                                            ; preds = %bb.ei
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.eo:                                            ; preds = %bb.ej
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %33, align 8, !tbaa !779  ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.eo
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !743
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.en
  %.pn145 = phi { ptr, i32 } [ %i.jg, %bb.en ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.jh, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.eq

bb.ep:                                            ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit182, %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.488 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.387, %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit182 ], [ %.286, %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit ], [ %.185, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161 ], [ %.084, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ]
  ret ptr %.488

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %bb.em, %bb.dn, %bb.ce, %bb.aw
  %.pn145.pn = phi { ptr, i32 } [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %.pn142.pn, %bb.em ], [ %.pn127.pn, %bb.dn ], [ %.pn113.pn, %bb.ce ], [ %.pn98.pn, %bb.aw ]
  resume { ptr, i32 } %.pn145.pn

bb.er:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.cu, %bb.ct, %bb.cs, %bb.bm, %bb.bl, %bb.bk, %bb.ad, %bb.ac, %bb.ab
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL35pyopencv_cv_dnn_getAvailableTargetsP7_objectS0_S0_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::vector.123", align 16  ; 6 uses
  %i.c = alloca [2 x ptr], align 16               ; 7 uses
  %4 = alloca %class.ArgInfo, align 8             ; 7 uses
  %5 = alloca %"class.std::vector.123", align 16  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store ptr null, ptr %i.a, align 8, !tbaa !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !1149
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZL35pyopencv_cv_dnn_getAvailableTargetsP7_objectS0_S0_.keywords, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.d = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.6694, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1377
  store ptr @.str.6693, ptr %4, align 8, !tbaa !1423
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.f, align 8
  %i.g = invoke fastcc noundef zeroext i1 @_ZL16pyopencv_to_safeIN2cv3dnn14dnn5_v202606057BackendEEbP7_objectRT_RK7ArgInfo(ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.g, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = invoke ptr @PyEval_SaveThread()
          to label %_ZN14PyAllowThreadsC2Ev.exit unwind label %bb.g ; 2 uses

_ZN14PyAllowThreadsC2Ev.exit:                     ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.i = load i32, ptr %i.b, align 4, !tbaa !1149
  invoke void @_ZN2cv3dnn14dnn5_v2026060519getAvailableTargetsENS1_7BackendE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.123") align 8 %5, i32 noundef %i.i)
          to label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EEaSEOS5_.exit unwind label %bb.h

_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EEaSEOS5_.exit: ; preds = %_ZN14PyAllowThreadsC2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load <2 x ptr>, ptr %5, align 16, !tbaa !734
  %i.l = load ptr, ptr %5, align 16, !tbaa !6935  ; 6 uses
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !734
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !6936 ; 3 uses
  store ptr %i.n, ptr %i.j, align 16, !tbaa !6936
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  invoke void @PyEval_RestoreThread(ptr noundef %i.h)
          to label %_ZN14PyAllowThreadsD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EEaSEOS5_.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #36
  unreachable

_ZN14PyAllowThreadsD2Ev.exit:                     ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EEaSEOS5_.exit
  %i.q = invoke noundef ptr @_Z13pyopencv_fromIN2cv3dnn14dnn5_v202606056TargetEEP7_objectRKSt6vectorIT_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.s       ; 2 uses

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.thread34

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZN14PyAllowThreadsD2Ev.exit22

bb.h:                                             ; preds = %_ZN14PyAllowThreadsC2Ev.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  invoke void @PyEval_RestoreThread(ptr noundef %i.h)
          to label %_ZN14PyAllowThreadsD2Ev.exit22 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

_ZN14PyAllowThreadsD2Ev.exit22:                   ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  %.010 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN2cv9ExceptionE) #37
  %i.x = icmp eq i32 %.0, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN14PyAllowThreadsD2Ev.exit22
  %i.y = call ptr @__cxa_begin_catch(ptr %.010) #37
  invoke void @_Z18pyRaiseCVExceptionRKN2cv9ExceptionE(ptr noundef nonnull align 8 dereferenceable(148) %i.y)
          to label %.invoke unwind label %bb.p

bb.k:                                             ; preds = %_ZN14PyAllowThreadsD2Ev.exit22
  %i.z = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #37
  %i.aa = icmp eq i32 %.0, %i.z
  %i.ab = call ptr @__cxa_begin_catch(ptr %.010) #37 ; 2 uses
  %i.ac = load ptr, ptr @opencv_error, align 8, !tbaa !1377 ; 2 uses
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !742
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #37
  invoke void @PyErr_SetString(ptr noundef %i.ac, ptr noundef %i.ag)
          to label %.invoke unwind label %bb.o

.invoke:                                          ; preds = %bb.m, %bb.l, %bb.j
  call void @__cxa_end_catch()
  br label %.thread

bb.m:                                             ; preds = %bb.k
  invoke void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.2227)
          to label %.invoke unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.thread34 unwind label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.thread34 unwind label %bb.u

bb.p:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.thread34 unwind label %bb.u

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.thread

.thread:                                          ; preds = %.invoke, %.critedge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit24

bb.q:                                             ; preds = %_ZN14PyAllowThreadsD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %.not.i.i.i23 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit24, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = ptrtoint ptr %i.n to i64
  %i.al = ptrtoint ptr %i.l to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.am) #40
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit24

_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit24: ; preds = %.thread, %bb.q, %bb.r
  %.01432 = phi ptr [ null, %.thread ], [ %i.q, %bb.q ], [ %i.q, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %.01432

.thread34:                                        ; preds = %bb.p, %bb.o, %bb.f, %bb.n
  %.pn20.ph = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.r, %bb.f ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit26

bb.s:                                             ; preds = %_ZN14PyAllowThreadsD2Ev.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %.not.i.i.i25 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit26, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = ptrtoint ptr %i.n to i64
  %i.ao = ptrtoint ptr %i.l to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #40
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit26

_ZNSt6vectorIN2cv3dnn14dnn5_v202606056TargetESaIS3_EED2Ev.exit26: ; preds = %.thread34, %bb.s, %bb.t
  %.pn2037 = phi { ptr, i32 } [ %.pn20.ph, %.thread34 ], [ %lpad.thr_comm.split-lp, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  resume { ptr, i32 } %.pn2037

bb.u:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL45pyopencv_cv_dnn_getInferenceEngineBackendTypeP7_objectS0_S0_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !776
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !780
  store i8 0, ptr %i.a, align 8, !tbaa !743
  %i.c = invoke i64 @PyObject_Size(ptr noundef %1)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke i64 @PyObject_Size(ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.y

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.g = invoke ptr @PyEval_SaveThread()
          to label %_ZN14PyAllowThreadsC2Ev.exit unwind label %bb.n ; 2 uses

_ZN14PyAllowThreadsC2Ev.exit:                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZN2cv3dnn14dnn5_v2026060529getInferenceEngineBackendTypeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZN14PyAllowThreadsC2Ev.exit
  %i.h = load ptr, ptr %3, align 8, !tbaa !779    ; 6 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !779    ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.l, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.l, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !780  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  switch i64 %i.n, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = load i8, ptr %i.j, align 1, !tbaa !743
  store i8 %i.p, ptr %i.h, align 1, !tbaa !743
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.q = load i64, ptr %i.m, align 8, !tbaa !780  ; 2 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !780
  %i.r = load ptr, ptr %3, align 8, !tbaa !779
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !743
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !779
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.j, ptr %3, align 8, !tbaa !779
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load <2 x i64>, ptr %i.t, align 8, !tbaa !743
  store <2 x i64> %i.u, ptr %i.b, align 8, !tbaa !743
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !743
  store ptr %i.j, ptr %3, align 8, !tbaa !779
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x i64>, ptr %i.w, align 8, !tbaa !743
  store <2 x i64> %i.x, ptr %i.b, align 8, !tbaa !743
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %4, align 8, !tbaa !779
  store i64 %i.v, ptr %i.k, align 8, !tbaa !743
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %4, align 8, !tbaa !779
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %bb.k ], [ %i.k, %bb.l ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !780
  store i8 0, ptr %i.y, align 1, !tbaa !743
  %i.aa = load ptr, ptr %4, align 8, !tbaa !779   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !743
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke void @PyEval_RestoreThread(ptr noundef %i.g)
          to label %_ZN14PyAllowThreadsD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #36
  unreachable

_ZN14PyAllowThreadsD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = invoke noundef ptr @_Z13pyopencv_fromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEP7_objectRKT_(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.y unwind label %bb.x

bb.n:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr @_ZTIN2cv9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZN14PyAllowThreadsD2Ev.exit24
end_hunk_1
