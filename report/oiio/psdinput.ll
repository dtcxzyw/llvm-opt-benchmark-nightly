inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput18load_resource_1010Ej:_ZN11OpenImageIO4v3_18PSDInput9read_bigeIaaEEbRT0_.exit
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1033Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput23load_resource_thumbnailEjb(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1036Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput23load_resource_thumbnailEjb(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1039Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.b) #39 ; 7 uses
  %i.d = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef %i.b, i64 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %._crit_edge.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.f, ptr noundef nonnull align 1 dereferenceable(10) @.str.68, i64 10, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 10, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.h, align 2, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.j, align 8, !tbaa !19
  %.sroa.9.0.insert.shift = shl nuw i64 %i.b, 32
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, 258 ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull dead_on_return %3, i64 %.sroa.039.0.insert.insert, ptr noundef nonnull %i.c)
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.l, ptr %4, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.g, align 8, !tbaa !11
  store i64 %i.n, ptr %i.m, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull dead_on_return %4, i64 %.sroa.039.0.insert.insert, ptr noundef nonnull %i.c)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.o = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.f, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !11
  store i8 0, ptr %i.s, align 8, !tbaa !14
  %i.u = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_118decode_icc_profileENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_118decode_icc_profileENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.v, label %bb.l, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store ptr @.str.69, ptr %2, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 17, ptr %i.w, align 8, !tbaa !19
  %i.x = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv(ptr noundef nonnull dead_on_return %2, i64 263, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %.critedge
  %i.y = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not65 = icmp ne i32 %i.y, 0
  %.not.not = select i1 %i.x, i1 %.not65, i1 false
  br i1 %.not.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.noexc18, %._crit_edge.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.j
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

bb.k:                                             ; preds = %.critedge, %bb.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.k
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !14
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  %i.aj = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.s
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  %i.al = load i64, ptr %i.s, align 8, !tbaa !14
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ false, %bb.b ]
  call void @_ZdaPv(ptr noundef nonnull %i.c) #38
  ret i1 %.1

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.c
  %.pn15.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  call void @_ZdaPv(ptr noundef nonnull %i.c) #38
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1047Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 %1) #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.c = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.c, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !26
  %i.d = call i16 @llvm.bswap.i16(i16 %.promoted.i) ; 2 uses
  store i16 %i.d, ptr %i.b, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.e = icmp ugt i16 %i.d, 767
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.71, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1058Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.a, i8 noundef signext 0)
  %i.c = load ptr, ptr %2, align 8, !tbaa !20
  %i.d = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef %i.a, i64 noundef 1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.d, label %bb.c, label %bb.h

bb.b:                                             ; preds = %bb.g, %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.j, ptr %3, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  store i64 %i.m, ptr %i.k, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(160) %i.n)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.p, ptr %4, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.l, align 8, !tbaa !11
  store i64 %i.r, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.t = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(160) %i.s)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.72)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.06 = phi i1 [ false, %bb.g ], [ false, %bb.a ], [ true, %bb.f ]
  %i.u = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.w = load i64, ptr %i.b, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i1 %.06

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1059Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1058Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1060Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.a, i8 noundef signext 0)
  %i.c = load ptr, ptr %2, align 8, !tbaa !20
  %i.d = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef %i.a, i64 noundef 1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.d, label %bb.c, label %bb.h

bb.b:                                             ; preds = %bb.g, %bb.e, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.j, ptr %3, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  store i64 %i.m, ptr %i.k, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110decode_xmpENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(160) %i.n)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.p, ptr %4, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.l, align 8, !tbaa !11
  store i64 %i.r, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.t = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110decode_xmpENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(160) %i.s)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.73)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.06 = phi i1 [ false, %bb.g ], [ false, %bb.a ], [ true, %bb.f ]
  %i.u = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.w = load i64, ptr %i.b, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i1 %.06

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1064Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1)
  br i1 %i.f, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = call i32 @llvm.bswap.i32(i32 %.promoted.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.h = add i32 %i.g, -3
  %or.cond = icmp ult i32 %i.h, -2
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.74)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.i = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 1)
  br i1 %i.i, label %.noexc.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIddEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIddEEbRT0_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.g

.noexc.i:                                         ; preds = %bb.d
  %.promoted.i8 = load i64, ptr %i.d, align 8, !tbaa !28
  %i.j = call i64 @llvm.bswap.i64(i64 %.promoted.i8)
  %i.k = bitcast i64 %i.j to double
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 16, ptr %i.c, align 8, !tbaa !25
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !20
  %i.n = load i64, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !11
  %i.p = load ptr, ptr %4, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.r = fptrunc double %i.k to float             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.t = load ptr, ptr %4, align 8, !tbaa !20
  %i.u = load i64, ptr %i.o, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store float %i.r, ptr %i.b, align 4, !tbaa !15
  store ptr %i.t, ptr %3, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull dead_on_return %3, i64 267, ptr noundef nonnull %i.b)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = load ptr, ptr %4, align 8, !tbaa !20
  %i.y = load i64, ptr %i.o, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store float %i.r, ptr %i.a, align 4, !tbaa !15
  store ptr %i.x, ptr %2, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !19
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull dead_on_return %2, i64 267, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.l
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.g

bb.f:                                             ; preds = %.noexc9, %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !14
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.ae

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIddEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIddEEbRT0_.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #2 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 424), align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 408), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 408), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #40
  unreachable

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 384), align 16, !tbaa !30 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.1, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 368), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 368), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.1 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.1: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 344), align 8, !tbaa !30 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.2, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.2, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.1
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 328), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 328), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.2 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.2: ; preds = %bb.e, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 304), align 16, !tbaa !30 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.3, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.3, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.2
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 288), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 288), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.3 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.3: ; preds = %bb.f, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.2
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 264), align 8, !tbaa !30 ; 2 uses
  %.not.i.i.4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.4, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.4, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.3
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 248), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 248), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.4 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.4: ; preds = %bb.g, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.3
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 224), align 16, !tbaa !30 ; 2 uses
  %.not.i.i.5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.5, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.5, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.4
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 208), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 208), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.5 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.5: ; preds = %bb.h, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.4
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 184), align 8, !tbaa !30 ; 2 uses
  %.not.i.i.6 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.6, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.6, label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.5
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 168), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 168), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.6 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.6: ; preds = %bb.i, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.5
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 144), align 16, !tbaa !30 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.7, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.7, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.6
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 128), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 128), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.7 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.7: ; preds = %bb.j, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.6
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 104), align 8, !tbaa !30 ; 2 uses
  %.not.i.i.8 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.8, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.8, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.7
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 88), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 88), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.8 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.8: ; preds = %bb.k, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.7
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 64), align 16, !tbaa !30 ; 2 uses
  %.not.i.i.9 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.9, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.9, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 48), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 48), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.9 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.9: ; preds = %bb.l, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 24), align 8, !tbaa !30 ; 2 uses
  %.not.i.i.10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.10, label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.10, label %bb.m

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.9
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 8), ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 8), i32 noundef 3)
          to label %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.10 unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.10: ; preds = %bb.m, %_ZN11OpenImageIO4v3_18PSDInput14ResourceLoaderD2Ev.exit.9
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18PSDInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !20
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
  br i1 %i.f, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.h = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput11read_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.h, label %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit, label %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit.thread

_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit: ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15validate_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit.thread

_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit.thread: ; preds = %bb.b, %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit
  %i.j = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15load_color_dataEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput14load_resourcesEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.l = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput11load_layersEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.m = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput21load_global_mask_infoEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.m, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.n = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput22load_global_additionalEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.n, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.o = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15load_image_dataEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.o, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !141
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !140
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 192
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.y, ptr %i.z, align 4, !tbaa !108
  call void @_ZN11OpenImageIO4v3_18PSDInput13set_type_descEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  call void @_ZN11OpenImageIO4v3_18PSDInput5setupEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  %i.aa = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef 0, i32 noundef 0)
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.ab) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @_ZN11OpenImageIO4v3_18PSDInput4initEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.a, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit.thread
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %_ZN11OpenImageIO4v3_18PSDInput11load_headerEv.exit.thread ], [ false, %bb.q ], [ true, %bb.p ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput11load_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput11read_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15validate_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37, !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !164
  %i.b = load ptr, ptr %2, align 8, !tbaa !20, !noalias !164
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11, !noalias !164
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !164
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !164
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !164
  %i.f = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.f, ptr %4, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  store i64 %i.i, ptr %i.g, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !14
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15load_color_dataEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.c = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
  br i1 %i.c, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.a, align 4, !tbaa !3 ; 4 uses
  %i.d = call i32 @llvm.bswap.i32(i32 %.promoted.i) ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 674
  %i.f = load i16, ptr %i.e, align 2, !tbaa !167  ; 2 uses
  %i.g = icmp eq i16 %i.f, 8
  %i.h = icmp eq i32 %.promoted.i, 0
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_18PSDInput19validate_color_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ne i16 %i.f, 2
  %.not.i = icmp eq i32 %.promoted.i, 196608
  %or.cond5.i = select i1 %i.i, i1 true, i1 %.not.i
  br i1 %or.cond5.i, label %bb.d, label %_ZN11OpenImageIO4v3_18PSDInput19validate_color_dataEv.exit

_ZN11OpenImageIO4v3_18PSDInput19validate_color_dataEv.exit: ; preds = %bb.b, %bb.c
  %.str.58.sink.i = phi ptr [ @.str.57, %bb.b ], [ @.str.58, %bb.c ]
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %.str.58.sink.i)
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.promoted.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.k = zext i32 %i.d to i64                     ; 2 uses
  %i.l = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #39 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.m) #38
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !38
  %.pre4 = load i32, ptr %i.b, align 8, !tbaa !168
  %.pre5 = zext i32 %.pre4 to i64
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %.pre-phi = phi i64 [ %i.k, %bb.e ], [ %.pre5, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i ]
  %i.n = phi ptr [ %i.l, %bb.e ], [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i ]
  %i.o = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.n, i64 noundef %.pre-phi, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput19validate_color_dataEv.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %bb.d, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  %.0 = phi i1 [ %i.o, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput19validate_color_dataEv.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput14load_resourcesEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.OpenImageIO::v3_1::psd_pvt::ImageResourceBlock", align 8 ; 11 uses
  %2 = alloca %"class.std::map", align 8          ; 11 uses
  %3 = alloca %"struct.std::pair.104", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.e = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
  br i1 %i.e, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.z

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.g, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store i32 0, ptr %i.i, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr null, ptr %i.j, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.i, ptr %i.k, align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.i, ptr %i.l, align 8, !tbaa !171
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !172
  %i.n = invoke noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 @llvm.bswap.i32(i32 %.promoted.i)
  %i.p = zext i32 %i.o to i64
  %i.q = add nsw i64 %i.n, %i.p                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit, %bb.c
  %i.y = invoke noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit

bb.e:                                             ; preds = %bb.d
  %i.z = icmp slt i64 %i.y, %i.q
  br i1 %i.z, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput13read_resourceERNS0_7psd_pvt18ImageResourceBlockE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit

bb.g:                                             ; preds = %bb.f
  br i1 %i.aa, label %bb.h, label %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit

bb.h:                                             ; preds = %bb.g
  %lhsv.i = load i32, ptr %1, align 8
  %.not.i = icmp eq i32 %lhsv.i, 1296646712
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull @.str.60)
          to label %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.v, %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.f, %bb.d
  %lpad.loopexit48 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.i, %.loopexit47
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ac = load i16, ptr %i.r, align 4, !tbaa !26, !noalias !173
  store i16 %i.ac, ptr %3, align 8, !tbaa !176, !alias.scope !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 6, i1 false)
  store ptr %i.u, ptr %i.t, align 8, !tbaa !7, !alias.scope !173
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !173 ; 2 uses
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !11, !noalias !173 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37, !noalias !173
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !25, !noalias !173
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.k
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc15 unwind label %bb.r   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.ag, ptr %i.t, align 8, !tbaa !20, !alias.scope !173
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !173
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !14, !alias.scope !173
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc15, %bb.k
  %i.ai = phi ptr [ %i.ag, %.noexc15 ], [ %i.u, %bb.k ] ; 2 uses
  switch i64 %i.ae, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aj = load i8, ptr %i.ad, align 1, !tbaa !14
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !14
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !173 ; 2 uses
  store i64 %i.ak, ptr %i.v, align 8, !tbaa !11, !alias.scope !173
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !20, !alias.scope !173
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37, !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !146 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n
  %i.ao = load i16, ptr %3, align 8, !tbaa !26    ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.o ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.o ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !26
  %i.ar = icmp ult i16 %i.aq, %i.ao               ; 3 uses
  %.19.i.i.i.i = select i1 %i.ar, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ar, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, label %bb.o, !llvm.loop !180

_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.o
  %i.as = icmp eq ptr %.19.i.i.i.i, %i.i
  br i1 %i.as, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ar, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.at = load i16, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2, !tbaa !26
  %i.au = icmp ult i16 %i.ao, %i.at
  br i1 %i.au, label %.critedge.i, label %bb.q

.critedge.i:                                      ; preds = %bb.p, %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, %bb.n
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.p ], [ %.19.i.i.i.i, %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i ], [ %i.i, %bb.n ]
  %i.av = invoke ptr @_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJS0_ItS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p, %.critedge.i
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !20  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.u
  br i1 %i.ax, label %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ay = load i64, ptr %i.u, align 8, !tbaa !14
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #38
  br label %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit

_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.d, !llvm.loop !181

bb.r:                                             ; preds = %.noexc.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit19

bb.s:                                             ; preds = %.critedge.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !20  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.u
  br i1 %i.bd, label %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17: ; preds = %bb.s
  %i.be = load i64, ptr %i.u, align 8, !tbaa !14
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #38
  br label %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit19

_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit19: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i17 ], [ %i.bb, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !146 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.loopexit47, label %.split.i

.splitthread-pre-split.i:                         ; preds = %.critedge.i29
  %.pr.i = load ptr, ptr %i.j, align 8, !tbaa !146
  br label %.split.i

.split.i:                                         ; preds = %bb.t, %.splitthread-pre-split.i
  %i.bi = phi ptr [ %.pr.i, %.splitthread-pre-split.i ], [ %i.bg, %bb.t ] ; 2 uses
  %.016.idx27.i = phi i64 [ %.016.add.i, %.splitthread-pre-split.i ], [ 0, %bb.t ] ; 2 uses
  %.016.ptr28.i = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 %.016.idx27.i ; 4 uses
  %.not10.i.i.i.i20 = icmp eq ptr %i.bi, null
  br i1 %.not10.i.i.i.i20, label %.critedge.i29, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %.split.i
  %i.bj = load i16, ptr %.016.ptr28.i, align 8, !tbaa !26 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i21
  %.012.i.i.i.i22 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i21 ], [ %.1.i.i.i.i27, %bb.u ] ; 6 uses
  %.0811.i.i.i.i23 = phi ptr [ %i.i, %.lr.ph.i.i.i.i21 ], [ %.19.i.i.i.i24, %bb.u ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i22, i64 32
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !26
  %i.bm = icmp ult i16 %i.bl, %i.bj               ; 5 uses
  %.19.i.i.i.i24 = select i1 %i.bm, ptr %.0811.i.i.i.i23, ptr %.012.i.i.i.i22 ; 2 uses
  %.1.in.v.i.i.i.i25 = select i1 %i.bm, i64 24, i64 16
  %.1.in.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i22, i64 %.1.in.v.i.i.i.i25
  %.1.i.i.i.i27 = load ptr, ptr %.1.in.i.i.i.i26, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %.1.i.i.i.i27, null
  br i1 %.not.i.i.i.i28, label %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %bb.u, !llvm.loop !180

_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %bb.u
  %i.bn = icmp eq ptr %.19.i.i.i.i24, %i.i
  br i1 %i.bn, label %.critedge.i29, label %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i

_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %.19.i.i.i.i24.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bm, ptr %.0811.i.i.i.i23, ptr %.012.i.i.i.i22
  %.19.i.i.i.i24.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bo = load i16, ptr %.19.i.i.i.i24.sroa.sel.v.sroa.sel.v.sroa.sel, align 2, !tbaa !26
  %i.bp = icmp ult i16 %i.bj, %i.bo
  br i1 %i.bp, label %.critedge.i29, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i
  %.19.i.i.i.i24.sroa.sel39.v.sroa.sel.v.sroa.sel.v = select i1 %i.bm, ptr %.0811.i.i.i.i23, ptr %.012.i.i.i.i22
  %.19.i.i.i.i24.sroa.sel39.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24.sroa.sel39.v.sroa.sel.v.sroa.sel.v, i64 88
  %i.bq = load i64, ptr %.19.i.i.i.i24.sroa.sel39.v.sroa.sel.v.sroa.sel, align 8, !tbaa !182
  %i.br = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %i.bq, i32 noundef 0)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.v
  br i1 %i.br, label %bb.w, label %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit

bb.w:                                             ; preds = %.noexc31
  %.19.i.i.i.i24.sroa.sel42.v.sroa.sel.v.sroa.sel.v = select i1 %i.bm, ptr %.0811.i.i.i.i23, ptr %.012.i.i.i.i22
  %.19.i.i.i.i24.sroa.sel42.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i24.sroa.sel42.v.sroa.sel.v.sroa.sel.v, i64 80
  %i.bs = load i32, ptr %.19.i.i.i.i24.sroa.sel42.v.sroa.sel.v.sroa.sel, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.a, align 8, !tbaa !185
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.016.ptr28.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %bb.x, label %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt25__throw_bad_function_callv() #41
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %bb.x
  unreachable

_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit.i: ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %.016.ptr28.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.016.ptr28.i, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !187
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc33 unwind label %.loopexit, !inline_history !189

.noexc33:                                         ; preds = %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.by, label %.critedge.i29, label %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit

.critedge.i29:                                    ; preds = %.noexc33, %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i, %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %.split.i
  %.016.add.i = add nuw nsw i64 %.016.idx27.i, 40 ; 2 uses
  %.not.i30 = icmp eq i64 %.016.add.i, 440
  br i1 %.not.i30, label %.loopexit47, label %.splitthread-pre-split.i, !llvm.loop !190

.loopexit47:                                      ; preds = %.critedge.i29, %bb.t
  %i.bz = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.q, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit: ; preds = %bb.g, %.noexc31, %.noexc33, %bb.i, %.loopexit47
  %.0 = phi i1 [ false, %.noexc31 ], [ false, %bb.i ], [ %i.bz, %.loopexit47 ], [ false, %.noexc33 ], [ false, %bb.g ]
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ca)
          to label %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #40
  unreachable

_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.g
  br i1 %i.ce, label %_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEED2Ev.exit
  %i.cf = load i64, ptr %i.g, align 8, !tbaa !14
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #38
  br label %_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit

_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit: ; preds = %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.z

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit19, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %.pn, %_ZNSt4pairItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEED2Ev.exit19 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit48, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp49, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.g
  br i1 %i.ci, label %_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %.loopexit.split-lp
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !14
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #38
  br label %_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit36

_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit36: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit
  %.1 = phi i1 [ %.0, %_ZN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockD2Ev.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput11load_layersEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !192
  %i.h = icmp eq i16 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.i = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.i, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.promoted.i = load i32, ptr %i.e, align 4, !tbaa !3
  %i.k = call i32 @llvm.bswap.i32(i32 %.promoted.i)
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr %i.j, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit: ; preds = %bb.b, %.lr.ph.i.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.m = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 8, i64 noundef 1) ; 2 uses
  br i1 %i.m, label %.lr.ph.i.preheader.i49, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit

.lr.ph.i.preheader.i49:                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.promoted.i50 = load i64, ptr %i.d, align 8, !tbaa !25
  %i.o = call i64 @llvm.bswap.i64(i64 %.promoted.i50)
  store i64 %i.o, ptr %i.n, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit: ; preds = %bb.c, %.lr.ph.i.preheader.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit
  %.039.in = phi i1 [ %i.i, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %i.m, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %i.p = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %i.p, ptr %i.r, align 8, !tbaa !193
  %i.s = load i64, ptr %i.q, align 8, !tbaa !194  ; 2 uses
  %i.t = add i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i64 %i.t, ptr %i.u, align 8, !tbaa !195
  br i1 %.039.in, label %bb.e, label %.loopexit61

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %.loopexit61, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.w = load i16, ptr %i.f, align 4, !tbaa !192
  %i.x = icmp eq i16 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.y, label %.lr.ph.i.preheader.i51, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit53

.lr.ph.i.preheader.i51:                           ; preds = %bb.g
  %.promoted.i52 = load i32, ptr %i.c, align 4, !tbaa !3
  %i.z = call i32 @llvm.bswap.i32(i32 %.promoted.i52)
  %i.aa = zext i32 %i.z to i64
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit53

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit53: ; preds = %bb.g, %.lr.ph.i.preheader.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1) ; 2 uses
  br i1 %i.ab, label %.lr.ph.i.preheader.i54, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit56

.lr.ph.i.preheader.i54:                           ; preds = %bb.h
  %.promoted.i55 = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ac = call i64 @llvm.bswap.i64(i64 %.promoted.i55)
  store i64 %i.ac, ptr %i.v, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit56

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit56: ; preds = %bb.h, %.lr.ph.i.preheader.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit56, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit53
  %.140.in = phi i1 [ %i.y, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit53 ], [ %i.ab, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit56 ]
  %i.ad = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !196
  %i.af = load i64, ptr %i.v, align 8, !tbaa !197 ; 2 uses
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !198
  br i1 %.140.in, label %bb.j, label %.loopexit61

bb.j:                                             ; preds = %bb.i
  %.not46 = icmp eq i64 %i.af, 0
  br i1 %.not46, label %.loopexit61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 4 uses
  br i1 %i.aj, label %.lr.ph.i.preheader.i57, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split

.lr.ph.i.preheader.i57:                           ; preds = %bb.k
  %.promoted.i58 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.ak = call i16 @llvm.bswap.i16(i16 %.promoted.i58) ; 2 uses
  store i16 %i.ak, ptr %i.ai, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split: ; preds = %bb.k
  %.pr = load i16, ptr %i.ai, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split, %.lr.ph.i.preheader.i57
  %i.al = phi i16 [ %.pr, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split ], [ %i.ak, %.lr.ph.i.preheader.i57 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.am = icmp slt i16 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i8 1, ptr %i.an, align 8, !tbaa !127
  %i.ao = sub i16 0, %i.al                        ; 2 uses
  store i16 %i.ao, ptr %i.ai, align 8, !tbaa !199
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  %i.ap = phi i16 [ %i.ao, %bb.l ], [ %i.al, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.ar = sext i16 %i.ap to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.ar)
  %i.as = load i16, ptr %i.ai, align 8, !tbaa !199
  %.not4764 = icmp sgt i16 %i.as, 0
  br i1 %.not4764, label %.lr.ph, label %.loopexit61

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i16, ptr %i.ai, align 8, !tbaa !199 ; 3 uses
  %i.au = sext i16 %i.at to i64
  %.not47 = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %.not47, label %.lr.ph, label %.critedge.preheader, !llvm.loop !200

.critedge.preheader:                              ; preds = %bb.n
  %.not4866 = icmp slt i16 %i.at, 1
  br i1 %.not4866, label %.loopexit61, label %.lr.ph69

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !140
  %i.aw = getelementptr inbounds nuw [192 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput10load_layerERNS1_5LayerE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.aw)
  br i1 %i.ax, label %bb.n, label %.loopexit61

.lr.ph69:                                         ; preds = %.critedge.preheader, %.critedge
  %i.ay = phi i16 [ %i.bk, %.critedge ], [ %i.at, %.critedge.preheader ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !140
  %i.ba = getelementptr inbounds nuw [192 x i8], ptr %i.az, i64 %indvars.iv72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !201
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph69
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = load i16, ptr %i.bb, align 8, !tbaa !201
  %i.bg = zext i16 %i.bf to i64
  %.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.bg
  br i1 %.not.i, label %bb.p, label %.critedge.loopexit, !llvm.loop !212

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw [112 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.ba, ptr noundef nonnull align 8 dereferenceable(112) %i.bi)
  br i1 %i.bj, label %bb.o, label %.loopexit61

.critedge.loopexit:                               ; preds = %bb.o
  %.pre = load i16, ptr %i.ai, align 8, !tbaa !199
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph69
  %i.bk = phi i16 [ %.pre, %.critedge.loopexit ], [ %i.ay, %.lr.ph69 ] ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.bl = sext i16 %i.bk to i64
  %.not48.not = icmp slt i64 %indvars.iv.next73, %i.bl
  br i1 %.not48.not, label %.lr.ph69, label %.loopexit61, !llvm.loop !213

.loopexit61:                                      ; preds = %.lr.ph, %.critedge, %bb.p, %bb.m, %.critedge.preheader, %bb.i, %bb.j, %bb.e, %bb.d
  %.7 = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ true, %bb.j ], [ %i.aj, %.critedge ], [ false, %bb.i ], [ false, %bb.p ], [ %i.aj, %.critedge.preheader ], [ %i.aj, %bb.m ], [ false, %.lr.ph ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput21load_global_mask_infoEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 16 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.g = load i64, ptr %i.f, align 8, !tbaa !194
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.i = load i64, ptr %i.h, align 8, !tbaa !214
  %i.j = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.i, i32 noundef 0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !195
  %i.m = tail call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.n = sub nsw i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 17
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.k, align 8, !tbaa !195
  %i.q = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.p, i32 noundef 0)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.r = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1)
  br i1 %i.r, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit.thread

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.s = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 0 uses
  br label %bb.g

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.d
  %.promoted.i = load i32, ptr %i.e, align 4, !tbaa !3 ; 2 uses
  %i.t = call i32 @llvm.bswap.i32(i32 %.promoted.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.u = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.v = zext i32 %i.t to i64
  %i.w = add nsw i64 %i.u, %i.v
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit
  %.not18 = icmp eq i32 %.promoted.i, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.x, label %.lr.ph.i.preheader.i19, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

.lr.ph.i.preheader.i19:                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 776
  %.promoted.i20 = load i16, ptr %i.d, align 2, !tbaa !26
  %i.z = call i16 @llvm.bswap.i16(i16 %.promoted.i20)
  store i16 %i.z, ptr %i.y, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.f, %.lr.ph.i.preheader.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.aa = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.aa, label %.lr.ph.i.preheader.i26, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28

.lr.ph.i.preheader.i21:                           ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 786
  %.promoted.i22 = load i16, ptr %i.c, align 2, !tbaa !26
  %i.ac = call i16 @llvm.bswap.i16(i16 %.promoted.i22)
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3, %.lr.ph.i.preheader.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.ad = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.ad, label %.lr.ph.i.preheader.i24, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit

.lr.ph.i.preheader.i24:                           ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 788
  %.promoted.i25 = load i16, ptr %i.b, align 2, !tbaa !26
  %i.af = lshr i16 %.promoted.i25, 8
  %i.ag = trunc nuw i16 %i.af to i8
  store i8 %i.ag, ptr %i.ae, align 4, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23, %.lr.ph.i.preheader.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.ah = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.w, i32 noundef 0)
  %i.ai = and i1 %i.ad, %i.ah
  %i.aj = and i1 %i.ba, %i.ai
  %i.ak = and i1 %i.aa, %i.aj
  %i.al = and i1 %i.ak, %i.x
  %i.am = and i1 %i.al, %i.ar
  %i.an = and i1 %i.am, %i.au
  %i.ao = and i1 %i.an, %i.ax
  br label %bb.g

.lr.ph.i.preheader.i26:                           ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 778
  %.promoted.i27 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.aq = call i16 @llvm.bswap.i16(i16 %.promoted.i27)
  store i16 %i.aq, ptr %i.ap, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %.lr.ph.i.preheader.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ar = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.ar, label %.lr.ph.i.preheader.i26.1, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1

.lr.ph.i.preheader.i26.1:                         ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 780
  %.promoted.i27.1 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.at = call i16 @llvm.bswap.i16(i16 %.promoted.i27.1)
  store i16 %i.at, ptr %i.as, align 4, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1: ; preds = %.lr.ph.i.preheader.i26.1, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.au = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.au, label %.lr.ph.i.preheader.i26.2, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2

.lr.ph.i.preheader.i26.2:                         ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 782
  %.promoted.i27.2 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.aw = call i16 @llvm.bswap.i16(i16 %.promoted.i27.2)
  store i16 %i.aw, ptr %i.av, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2: ; preds = %.lr.ph.i.preheader.i26.2, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.ax, label %.lr.ph.i.preheader.i26.3, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3

.lr.ph.i.preheader.i26.3:                         ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.promoted.i27.3 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.az = call i16 @llvm.bswap.i16(i16 %.promoted.i27.3)
  store i16 %i.az, ptr %i.ay, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3: ; preds = %.lr.ph.i.preheader.i26.3, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.ba = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.ba, label %.lr.ph.i.preheader.i21, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23

bb.g:                                             ; preds = %bb.c, %bb.e, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit.thread, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %i.q, %bb.c ], [ %i.ao, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ], [ true, %bb.e ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput22load_global_additionalEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [4 x i8], align 1                 ; 5 uses
  %i.d = alloca [4 x i8], align 1                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.f = load i64, ptr %i.e, align 8, !tbaa !194  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.g = tail call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load i64, ptr %i.h, align 8, !tbaa !193
  %.neg = sub i64 %i.f, %i.g
  %i.j = add i64 %.neg, %i.i                      ; 2 uses
  %i.k = icmp ugt i64 %i.j, 11
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.01638 = phi i64 [ %i.j, %.lr.ph ], [ %.2, %bb.n ]
  %.03037 = phi i64 [ 0, %.lr.ph ], [ %.232, %bb.n ] ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  br i1 %i.m, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 1
  %i.o = icmp ne i32 %i.n, 1296646712
  %i.p = zext i1 %i.o to i32
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.c, align 1
  %i.r = icmp ne i32 %i.q, 875971128
  %i.s = zext i1 %i.r to i32
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.90)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
  br i1 %i.t, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.u = load i16, ptr %i.l, align 4, !tbaa !192
  %i.v = icmp eq i16 %i.u, 2
  br i1 %i.v, label %bb.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput22is_additional_info_psbEPKc(ptr nonnull align 8 poison, ptr noundef nonnull %i.d)
  br i1 %i.w, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1) ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8
  %i.y = call i64 @llvm.bswap.i64(i64 %.promoted.i)
  %.3 = select i1 %i.x, i64 %i.y, i64 %.03037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.j

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.z = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  %.promoted.i28 = load i32, ptr %i.a, align 4
  %i.aa = call i32 @llvm.bswap.i32(i32 %.promoted.i28)
  %i.ab = zext i32 %i.aa to i64
  %.4 = select i1 %i.z, i64 %i.ab, i64 %.03037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit
  %.sink = phi i64 [ -12, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ -16, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %.131 = phi i64 [ %.4, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %.3, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ] ; 3 uses
  %.119.in = phi i1 [ %i.z, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %i.x, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %i.ac = add i64 %.01638, %.sink                 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 1
  %i.ae = icmp ne i32 %i.ad, 909210188
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.d, align 1
  %i.ai = icmp ne i32 %i.ah, 842232396
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.am = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %.131)
  %i.an = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %.neg26 = add i64 %i.al, %i.ac
  %i.ao = sub i64 %.neg26, %i.an
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = add i64 %.131, 3
  %i.aq = and i64 %i.ap, -4                       ; 3 uses
  %i.ar = sub i64 %i.ac, %i.aq
  %i.as = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aq, i32 noundef 1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.232 = phi i64 [ %.131, %bb.l ], [ %i.aq, %bb.m ]
  %.pn = phi i1 [ %i.am, %bb.l ], [ %i.as, %bb.m ]
  %.2 = phi i64 [ %i.ao, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %.220.in.in = and i1 %.119.in, %.pn             ; 2 uses
  %i.at = icmp ugt i64 %.2, 11
  %i.au = select i1 %.220.in.in, i1 %i.at, i1 false
  br i1 %i.au, label %bb.c, label %._crit_edge, !llvm.loop !215

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.018.lcssa = phi i1 [ true, %bb.b ], [ %.220.in.in, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !195
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aw, i32 noundef 0)
  %i.ay = and i1 %.018.lcssa, %i.ax
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.c, %._crit_edge, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %i.ay, %._crit_edge ], [ false, %bb.c ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i1 [ %.0, %.loopexit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15load_image_dataEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !217
  %i.g = zext i16 %i.f to i32
  %i.h = mul i32 %i.d, %i.g
  %i.i = add i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.k, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !26 ; 2 uses
  %i.l = call i16 @llvm.bswap.i16(i16 %.promoted.i) ; 3 uses
  store i16 %i.l, ptr %i.b, align 2, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %or.cond = icmp ugt i16 %i.l, 1
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 662
  %i.o = load i16, ptr %i.n, align 2, !tbaa !218
  %i.p = zext i16 %i.o to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.p)
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !219  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !219  ; 4 uses
  %.not65 = icmp eq ptr %i.q, %i.s
  br i1 %.not65, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.u = icmp eq i16 %.promoted.i, 256
  br i1 %i.u, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = load i32, ptr %i.c, align 4, !tbaa !216
  %i.w = load i32, ptr %i.t, align 8, !tbaa !220  ; 2 uses
  %i.x = mul i32 %i.w, %i.j
  %i.y = zext i32 %i.x to i64
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us, %.lr.ph.split.us
  %.04967.us = phi i16 [ 0, %.lr.ph.split.us ], [ %i.ac, %.critedge.us ] ; 2 uses
  %.sroa.060.066.us = phi ptr [ %i.q, %.lr.ph.split.us ], [ %i.af, %.critedge.us ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 28
  store i32 %i.v, ptr %i.z, align 4, !tbaa !221
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 32
  store i32 %i.w, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 24
  store i16 0, ptr %i.ab, align 8, !tbaa !233
  %i.ac = add i16 %.04967.us, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 4
  store i16 %.04967.us, ptr %i.ad, align 4, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 8
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !235
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 112 ; 2 uses
  %.not.us = icmp eq ptr %i.af, %i.s
  br i1 %.not.us, label %.critedge55, label %.critedge.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph, %.critedge
  %.04967 = phi i16 [ %i.ar, %.critedge ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.060.066 = phi ptr [ %i.as, %.critedge ], [ %i.q, %.lr.ph ] ; 7 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 28
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !221
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !220 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 32
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !232
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 24
  store i16 1, ptr %i.ak, align 8, !tbaa !233
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 4
  store i16 %.04967, ptr %i.al, align 4, !tbaa !234
  %i.am = mul i32 %i.ai, %i.j
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !235
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 64
  %i.aq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  br i1 %i.aq, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %.lr.ph.split.preheader
  %i.ar = add i16 %.04967, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.s
  br i1 %.not, label %.critedge55.loopexit, label %.lr.ph.split.preheader, !llvm.loop !236

.critedge55.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !219
  %.pre86 = load ptr, ptr %i.r, align 8, !tbaa !219
  br label %.critedge55

.critedge55:                                      ; preds = %.critedge.us, %.critedge55.loopexit
  %i.at = phi ptr [ %.pre86, %.critedge55.loopexit ], [ %i.s, %.critedge.us ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.critedge55.loopexit ], [ %i.q, %.critedge.us ] ; 2 uses
  %.not6374 = icmp eq ptr %i.au, %i.at
  br i1 %.not6374, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.critedge55
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.aw = zext nneg i32 %i.j to i64               ; 4 uses
  %trunc = trunc nuw i16 %i.l to i1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ax = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %i.ay = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> %i.ax, %broadcast.splat
  %invariant.op114 = add <2 x i64> %i.ax, %i.ax
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph77, %bb.m
  %.05076 = phi i1 [ true, %.lr.ph77 ], [ %i.ej, %bb.m ]
  %.sroa.056.075 = phi ptr [ %i.au, %.lr.ph77 ], [ %i.ek, %bb.m ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 88 ; 3 uses
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !220
  %i.bb = zext i32 %i.ba to i64                   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 96 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !237 ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !114 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.bb
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = sub nuw nsw i64 %i.bb, %i.bi
  call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.bk)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.bl = icmp ugt i64 %i.bi, %i.bb
  br i1 %i.bl, label %bb.h, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.bm
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !237
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.bn = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !238
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !216
  %i.bq = load i16, ptr %i.e, align 8, !tbaa !217
  %i.br = zext i16 %i.bq to i32
  %i.bs = mul i32 %i.bp, %i.br
  %i.bt = add i32 %i.bs, 7
  %i.bu = lshr i32 %i.bt, 3
  store i32 %i.bu, ptr %.sroa.056.075, align 8, !tbaa !239
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !114 ; 8 uses
  store i64 %i.bn, ptr %i.bv, align 8, !tbaa !25
  %i.bw = load i32, ptr %i.av, align 8, !tbaa !220 ; 5 uses
  %i.bx = icmp ugt i32 %i.bw, 1                   ; 2 uses
  br i1 %trunc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  br i1 %i.bx, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %bb.i
  %wide.trip.count84 = zext i32 %i.bw to i64      ; 2 uses
  %i.by = add nsw i64 %wide.trip.count84, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 5
  br i1 %min.iters.check, label %.lr.ph72.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.preheader
  %n.vec = and i64 %i.by, -4                      ; 4 uses
  %i.bz = mul nsw i64 %n.vec, %i.aw
  %i.ca = add i64 %i.bn, %i.bz
  %i.cb = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert106 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat107 = shufflevector <2 x i64> %broadcast.splatinsert106, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat107, %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %i.cc = add nsw <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !25
  store <2 x i64> %.reass, ptr %i.cf, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add <2 x i64> %vec.ind, %invariant.op114
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge73, label %.lr.ph72.preheader109

.lr.ph72.preheader109:                            ; preds = %.lr.ph72.preheader, %middle.block
  %.ph = phi i64 [ %i.bn, %.lr.ph72.preheader ], [ %i.ca, %middle.block ]
  %indvars.iv81.ph = phi i64 [ 1, %.lr.ph72.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph72

._crit_edge73:                                    ; preds = %.lr.ph72, %middle.block, %bb.i
  %i.ch = load ptr, ptr %i.bc, align 8, !tbaa !243
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !25
  %i.ck = add nsw i64 %i.cj, %i.aw
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_:bb.a
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !367
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 2, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !367
  %i.c = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  store i64 %i.f, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.l
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !295    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !301 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #38
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !332

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !295
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !299
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #38
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141  ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #38
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 152 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !14
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #40
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #37
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !141
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i
  ret void
}

declare void @_ZN11OpenImageIO4v3_18ImageBuf5clearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput11read_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.i = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  br i1 %i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.promoted.i = load i16, ptr %i.f, align 2, !tbaa !26
  %i.k = call i16 @llvm.bswap.i16(i16 %.promoted.i)
  store i16 %i.k, ptr %i.j, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.l = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 6, i32 noundef 1)
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.m = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.m, label %bb.e, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit3

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit3: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 662
  %.promoted.i2 = load i16, ptr %i.e, align 2, !tbaa !26
  %i.o = call i16 @llvm.bswap.i16(i16 %.promoted.i2)
  store i16 %i.o, ptr %i.n, align 2, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
  br i1 %i.p, label %bb.f, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.promoted.i5 = load i32, ptr %i.d, align 4, !tbaa !3
  %i.r = call i32 @llvm.bswap.i32(i32 %.promoted.i5)
  store i32 %i.r, ptr %i.q, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  br i1 %i.s, label %bb.g, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit8

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit8: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 668
  %.promoted.i7 = load i32, ptr %i.c, align 4, !tbaa !3
  %i.u = call i32 @llvm.bswap.i32(i32 %.promoted.i7)
  store i32 %i.u, ptr %i.t, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.v = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1)
  br i1 %i.v, label %bb.h, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit11

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit11: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.promoted.i10 = load i16, ptr %i.b, align 2, !tbaa !26
  %i.x = call i16 @llvm.bswap.i16(i16 %.promoted.i10)
  store i16 %i.x, ptr %i.w, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.y, label %.lr.ph.i.preheader.i12, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit14

.lr.ph.i.preheader.i12:                           ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 674
  %.promoted.i13 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.aa = call i16 @llvm.bswap.i16(i16 %.promoted.i13)
  store i16 %i.aa, ptr %i.z, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit14

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit14: ; preds = %bb.h, %.lr.ph.i.preheader.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit11, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit8, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit3, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit14, %bb.c, %bb.a
  %i.ab = phi i1 [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit11 ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit8 ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit3 ], [ false, %bb.c ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit ], [ false, %bb.a ], [ %i.y, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit14 ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15validate_headerEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %lhsv = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %lhsv, 1397768760
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.47)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.c = load i16, ptr %i.b, align 4, !tbaa !192  ; 2 uses
  %.off = add i16 %i.c, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.48)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 662
  %i.e = load i16, ptr %i.d, align 2, !tbaa !218
  %i.f = add i16 %i.e, -57
  %or.cond = icmp ult i16 %i.f, -56
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.49)
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i16 %i.c, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !220  ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.j = add i32 %i.i, -30001
  %or.cond14 = icmp ult i32 %i.j, -30000
  br i1 %or.cond14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.50)
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.l = load i32, ptr %i.k, align 4, !tbaa !216
  %i.m = add i32 %i.l, -30001
  %or.cond15 = icmp ult i32 %i.m, -30000
  br i1 %or.cond15, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.51)
  br label %bb.v

bb.l:                                             ; preds = %bb.g
  %i.n = add i32 %i.i, -300001
  %or.cond16 = icmp ult i32 %i.n, -300000
  br i1 %or.cond16, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.52, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !216
  %i.q = add i32 %i.p, -300001
  %or.cond17 = icmp ult i32 %i.q, -300000
  br i1 %or.cond17, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %bb.v

bb.p:                                             ; preds = %bb.n, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !217  ; 2 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.s)
  %i.u = icmp eq i16 %i.t, 1
  br i1 %i.u, label %.split, label %bb.q

.split:                                           ; preds = %bb.p
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.s, i1 true)
  switch i16 %i.v, label %bb.q [
    i16 0, label %bb.r
    i16 3, label %bb.r
    i16 4, label %bb.r
    i16 5, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %.split
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.54, ptr noundef nonnull align 2 dereferenceable(2) %i.r)
  br label %bb.v

bb.r:                                             ; preds = %.split, %.split, %.split, %.split
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.x = load i8, ptr %i.w, align 8, !tbaa !111, !range !249, !noundef !250
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 674 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !167
  switch i16 %i.aa, label %bb.u [
    i16 0, label %bb.v
    i16 2, label %bb.v
    i16 3, label %bb.v
    i16 1, label %bb.v
    i16 4, label %bb.v
    i16 7, label %bb.v
    i16 8, label %bb.t
    i16 9, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.55, ptr noundef nonnull align 2 dereferenceable(2) %i.z)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.56, ptr noundef nonnull align 2 dereferenceable(2) %i.z)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.r, %bb.u, %bb.t, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.q ], [ false, %bb.b ], [ false, %bb.u ], [ true, %bb.r ], [ false, %bb.t ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ true, %bb.s ], [ true, %bb.s ], [ true, %bb.s ], [ true, %bb.s ], [ true, %bb.s ], [ true, %bb.s ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.245", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !370
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !370
  %i.b = load ptr, ptr %4, align 8, !tbaa !20
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !14
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.244", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37, !noalias !373
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37, !noalias !373
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !373
  %.sroa.03.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !373
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 2, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !373
  %i.c = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  store i64 %i.f, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput19validate_color_dataEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 674
  %i.b = load i16, ptr %i.a, align 2, !tbaa !167  ; 2 uses
  %i.c = icmp eq i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ne i16 %i.b, 2
  %.not = icmp eq i32 %i.e, 768
  %or.cond5 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond5, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.str.58.sink = phi ptr [ @.str.57, %bb.a ], [ @.str.58, %bb.b ]
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %.str.58.sink)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %.sink.split ]
  ret i1 %.0
}

declare noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput13read_resourceERNS0_7psd_pvt18ImageResourceBlockE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %1, i64 noundef 4, i64 noundef 1)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.d = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1)
  br i1 %i.d, label %bb.c, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.promoted.i = load i16, ptr %i.b, align 2, !tbaa !26
  %i.f = call i16 @llvm.bswap.i16(i16 %.promoted.i)
  store i16 %i.f, ptr %i.e, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = call noundef i32 @_ZN11OpenImageIO4v3_18PSDInput18read_pascal_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i16 noundef zeroext 2)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.i = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.i, label %.lr.ph.i.preheader.i11, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

.lr.ph.i.preheader.i11:                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.promoted.i12 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.k = call i32 @llvm.bswap.i32(i32 %.promoted.i12)
  store i32 %i.k, ptr %i.j, align 8, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.d, %.lr.ph.i.preheader.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %bb.c, %bb.a
  %i.l = phi i1 [ false, %bb.c ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit ], [ false, %bb.a ], [ %i.i, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ]
  %i.m = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.m, ptr %i.n, align 8, !tbaa !376
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !377
  %i.q = zext i32 %i.p to i64
  %i.r = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.q, i32 noundef 1)
  %i.s = and i1 %i.l, %i.r                        ; 2 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !377
  %i.u = and i32 %i.t, 1
  %.not10 = icmp eq i32 %i.u, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 1, i32 noundef 1)
  %i.w = and i1 %i.s, %i.v
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.in = phi i1 [ %i.w, %bb.f ], [ %i.s, %bb.e ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput17validate_resourceERNS0_7psd_pvt18ImageResourceBlockE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %lhsv = load i32, ptr %1, align 8
  %.not = icmp eq i32 %lhsv, 1296646712           ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.60)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16handle_resourcesERSt3mapItNS0_7psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS4_EEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge18, label %.split

.splitthread-pre-split:                           ; preds = %.critedge
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !146
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %i.g = phi ptr [ %.pr, %.splitthread-pre-split ], [ %i.e, %bb.a ] ; 2 uses
  %.016.idx27 = phi i64 [ %.016.add, %.splitthread-pre-split ], [ 0, %bb.a ] ; 2 uses
  %.016.ptr28 = getelementptr inbounds nuw i8, ptr @_ZN11OpenImageIO4v3_18PSDInput16resource_loadersE, i64 %.016.idx27 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.split
  %i.h = load i16, ptr %.016.ptr28, align 8, !tbaa !26 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.j = load i16, ptr %i.i, align 2, !tbaa !26
  %i.k = icmp ult i16 %i.j, %i.h                  ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.b, !llvm.loop !180

_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.l, label %.critedge, label %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit

_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2, !tbaa !26
  %i.o = icmp ult i16 %i.h, %i.n
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !182
  %i.r = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.q, i32 noundef 0)
  br i1 %i.r, label %bb.d, label %.critedge18

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.a, align 8, !tbaa !185
  store i32 %i.t, ptr %i.b, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %.016.ptr28, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZSt25__throw_bad_function_callv() #41
  unreachable

_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.016.ptr28, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.016.ptr28, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !187
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.z, label %.critedge, label %.critedge18

.critedge:                                        ; preds = %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.split, %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit, %_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit
  %.016.add = add nuw nsw i64 %.016.idx27, 40     ; 2 uses
  %.not = icmp eq i64 %.016.add, 440
  br i1 %.not, label %.critedge18, label %.splitthread-pre-split, !llvm.loop !190

.critedge18:                                      ; preds = %.critedge, %bb.c, %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit, %bb.a
  %.us-phi = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ false, %_ZNKSt8functionIFbPN11OpenImageIO4v3_18PSDInputEjEEclES3_j.exit ], [ false, %bb.c ]
  ret i1 %.us-phi
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapItN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockESt4lessItESaISt4pairIKtS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #40
  unreachable

_ZNSt8_Rb_treeItSt4pairIKtN11OpenImageIO4v3_17psd_pvt18ImageResourceBlockEESt10_Select1stIS6_ESt4lessItESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN11OpenImageIO4v3_18PSDInput18read_pascal_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %1, i16 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.c, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.d = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !14    ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext i16 %2 to i32                       ; 2 uses
  %i.h = add nsw i32 %i.g, -1
  %i.i = sext i32 %i.h to i64
  %i.j = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.i, i32 noundef 1)
  %spec.select = select i1 %i.j, i32 %i.g, i32 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i8 %i.e to i64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.k, i8 noundef signext 0)
  %i.l = load ptr, ptr %1, align 8, !tbaa !20
  %i.m = load i8, ptr %i.a, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i64
  %i.o = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.l, i64 noundef %i.n, i64 noundef 1)
  br i1 %i.o, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, 1                  ; 4 uses
  %i.s = zext i16 %2 to i32
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.lhs.trunc = trunc nuw nsw i32 %i.r to i16
  %i.t = urem i16 %.lhs.trunc, %2
  %.not1516 = icmp eq i16 %i.t, 0
  br i1 %.not1516, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.018 = phi i32 [ %i.v, %bb.f ], [ %i.r, %.preheader ] ; 2 uses
  %i.u = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 1, i32 noundef 1)
  br i1 %i.u, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.v = add nuw nsw i32 %.018, 1                 ; 3 uses
  %i.w = urem i32 %i.v, %i.s
  %.not15 = icmp eq i32 %i.w, 0
  br i1 %.not15, label %.loopexit, label %.lr.ph, !llvm.loop !379

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %.preheader, %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ %spec.select, %bb.c ], [ %i.r, %bb.e ], [ %i.r, %.preheader ], [ %.018, %.lr.ph ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !7
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !11
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput23load_resource_thumbnailEjb(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i16, align 2                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.OpenImageIO::v3_1::Filesystem::IOMemReader", align 8 ; 17 uses
  %8 = alloca %"class.std::unique_ptr.108", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  %11 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::allocator.13", align 1 ; 4 uses
  %19 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 7 uses
  %i.q = alloca [3 x i32], align 4                ; 7 uses
  %20 = alloca %"class.OpenImageIO::v3_1::span.87", align 8 ; 2 uses
  %21 = alloca %"class.OpenImageIO::v3_1::span.117", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #37
  %i.r = add i32 %1, -28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1)
  br i1 %i.s, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.k, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  %i.t = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
  br i1 %i.t, label %bb.c, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit59

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit59: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %.promoted.i58 = load i32, ptr %i.j, align 4, !tbaa !3
  %i.u = call i32 @llvm.bswap.i32(i32 %.promoted.i58)
  store i32 %i.u, ptr %i.l, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  %i.v = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1)
  br i1 %i.v, label %bb.d, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit62

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit62: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %.promoted.i61 = load i32, ptr %i.i, align 4, !tbaa !3
  %i.w = call i32 @llvm.bswap.i32(i32 %.promoted.i61) ; 2 uses
  store i32 %i.w, ptr %i.m, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1)
  br i1 %i.x, label %bb.e, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit65

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit65: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %.promoted.i64 = load i32, ptr %i.h, align 4, !tbaa !3
  %i.y = call i32 @llvm.bswap.i32(i32 %.promoted.i64) ; 4 uses
  store i32 %i.y, ptr %i.n, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  %i.z = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
  br i1 %i.z, label %bb.f, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit68

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit68: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %.promoted.i67 = load i32, ptr %i.g, align 4, !tbaa !3
  %i.aa = call i32 @llvm.bswap.i32(i32 %.promoted.i67) ; 2 uses
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br i1 %i.ab, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.ac = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.ac, label %bb.h, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %.promoted.i73 = load i16, ptr %i.e, align 2, !tbaa !26
  %i.ad = call i16 @llvm.bswap.i16(i16 %.promoted.i73)
  store i16 %i.ad, ptr %i.p, align 2, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.ae = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  br i1 %i.ae, label %bb.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit76

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit76: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  %.promoted.i75 = load i16, ptr %i.d, align 2, !tbaa !26 ; 2 uses
  %i.af = call i16 @llvm.bswap.i16(i16 %.promoted.i75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.ag = load i16, ptr %i.p, align 2, !tbaa !26  ; 3 uses
  %i.ah = icmp ne i16 %i.ag, 24
  switch i16 %i.ag, label %bb.j [
    i16 24, label %bb.k
    i16 8, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.76, ptr noundef nonnull align 2 dereferenceable(2) %i.p)
  br label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ai = lshr exact i16 %i.ag, 3
  %i.aj = zext nneg i16 %i.ai to i32
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !3
  %i.al = mul i32 %i.ak, %i.aj                    ; 2 uses
  %i.am = icmp ugt i32 %i.al, %i.y
  %i.an = add i32 %i.al, 3
  %i.ao = icmp ult i32 %i.an, %i.y
  %or.cond = or i1 %i.am, %i.ao
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjtjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.77, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 2 dereferenceable(2) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ap = zext i16 %i.af to i32
  %i.aq = mul i32 %i.y, %i.ap
  %i.ar = mul i32 %i.aq, %i.w
  %.not = icmp eq i32 %i.ar, %i.aa
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjjtjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.78, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 2 dereferenceable(2) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.as = icmp ne i32 %.promoted.i, 16777216
  %i.at = icmp ne i16 %.promoted.i75, 256
  %i.au = or i1 %i.as, %i.at
  %or.cond8 = or i1 %i.au, %i.ah
  br i1 %or.cond8, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.79)
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.av = zext i32 %i.r to i64                    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !7
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.av, i8 noundef signext 0)
  %i.ax = load ptr, ptr %6, align 8, !tbaa !20
  %i.ay = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.ax, i64 noundef %i.av, i64 noundef 1)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  br i1 %i.ay, label %bb.s, label %bb.bp

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.ba = load ptr, ptr %6, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.bd, align 8, !tbaa !11
  store i8 0, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !380
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 114, ptr %i.bf, align 8, !tbaa !161
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %i.bi, align 8, !tbaa !11
  store i8 0, ptr %i.bh, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11OpenImageIO4v3_110Filesystem11IOMemReaderE, i64 16), ptr %7, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.ba, ptr %i.bj, align 8, !tbaa !381
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.av, ptr %i.bk, align 8, !tbaa !383
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 12 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11OpenImageIO4v3_110ImageInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_9ImageSpecEPNS0_10Filesystem7IOProxyE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.108") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef null, ptr noundef nonnull %7)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.br = load ptr, ptr %8, align 8, !tbaa !384   ; 3 uses
  %.not126 = icmp eq ptr %i.br, null
  br i1 %.not126, label %bb.aj, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8 %11, ptr noundef nonnull align 8 dereferenceable(184) %i.br, i32 noundef 0, i32 noundef 0)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(160) %11, i32 noundef 0)
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %8, align 8, !tbaa !384   ; 2 uses
  %i.bw = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !304
  %i.bz = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %.sroa.09.0.copyload = load i64, ptr %i.ca, align 8
  %i.cb = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(184) %i.bv, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.by, i64 %.sroa.09.0.copyload, ptr noundef %i.cb, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, ptr noundef null, ptr noundef null)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load ptr, ptr %8, align 8, !tbaa !384   ; 3 uses
  store ptr null, ptr %8, align 8, !tbaa !384
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_110ImageInputESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_110ImageInputEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_110ImageInputEEclEPS2_.exit.i.i: ; preds = %bb.ac
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.cg) #37, !inline_history !386
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_110ImageInputESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_110ImageInputESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.ac, %_ZNKSt14default_deleteIN11OpenImageIO4v3_110ImageInputEEclEPS2_.exit.i.i
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %i.cf, label %bb.aq, label %bb.al

bb.ad:                                            ; preds = %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ae:                                            ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.af:                                            ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.af
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !14
  %i.cr = add i64 %i.cq, 1
end_hunk_2
begin_hunk_3_@_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjjtjEEEvPKcDpRKT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  resume { ptr, i32 } %i.s
}

declare void @_ZN11OpenImageIO4v3_110ImageInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_9ImageSpecEPNS0_10Filesystem7IOProxyE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.108") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf11localpixelsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZNK11OpenImageIO4v3_18ImageBuf8geterrorB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11OpenImageIO4v3_112ImageBufAlgo8channelsERKNS0_8ImageBufEiNS0_4spanIKiLm18446744073709551615EEENS5_IKfLm18446744073709551615EEENS5_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEEbi(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr, i64, ptr noundef byval(%"class.OpenImageIO::v3_1::span.87") align 8, ptr noundef byval(%"class.OpenImageIO::v3_1::span.117") align 8, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN11OpenImageIO4v3_18ImageBufaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_110Filesystem7IOProxyD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11OpenImageIO4v3_110Filesystem7IOProxyE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !14
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !140    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 192                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 152 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.aa)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #40
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #37
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !141
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput10load_layerERNS1_5LayerE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i16, align 2                      ; 4 uses
  %i.r = alloca i16, align 2                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca [4 x i8], align 1                 ; 4 uses
  %i.x = alloca [4 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #37
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.v, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.y, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.z = call i32 @llvm.bswap.i32(i32 %.promoted.i)
  store i32 %i.z, ptr %1, align 8, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.u, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.ab, label %.lr.ph.i.preheader.i117, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit119

.lr.ph.i.preheader.i117:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit
  %.promoted.i118 = load i32, ptr %i.u, align 4, !tbaa !3
  %i.ac = call i32 @llvm.bswap.i32(i32 %.promoted.i118)
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit119

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit119: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %.lr.ph.i.preheader.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  %i.ad = and i1 %i.y, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #37
  %i.ae = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.ae, label %.lr.ph.i.preheader.i120, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit122

.lr.ph.i.preheader.i120:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit119
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i121 = load i32, ptr %i.t, align 4, !tbaa !3
  %i.ag = call i32 @llvm.bswap.i32(i32 %.promoted.i121)
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit122

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit122: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit119, %.lr.ph.i.preheader.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  %i.ah = and i1 %i.ad, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #37
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.s, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.aj, label %.lr.ph.i.preheader.i123, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit125

.lr.ph.i.preheader.i123:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit122
  %.promoted.i124 = load i32, ptr %i.s, align 4, !tbaa !3
  %i.ak = call i32 @llvm.bswap.i32(i32 %.promoted.i124)
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit125

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit125: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit122, %.lr.ph.i.preheader.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #37
  %i.am = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.r, i64 noundef 2, i64 noundef 1)
  br i1 %i.am, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit.thread

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  br label %bb.ag

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit125
  %i.an = and i1 %i.ah, %i.aj
  %.promoted.i127 = load i16, ptr %i.r, align 2, !tbaa !26
  %i.ao = call i16 @llvm.bswap.i16(i16 %.promoted.i127) ; 2 uses
  store i16 %i.ao, ptr %i.al, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  br i1 %i.an, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !406
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %1, align 8, !tbaa !407
  %i.as = load <2 x i32>, ptr %i.aa, align 4, !tbaa !3
  %i.at = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %i.ar, i64 1
  %i.av = sub nsw <2 x i32> %i.as, %i.au
  %i.aw = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.av, i1 true)
  store <2 x i32> %i.aw, ptr %i.aq, align 8, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ay = zext i16 %i.ao to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %i.ay)
  %i.az = load i16, ptr %i.al, align 8, !tbaa !201
  %.not185 = icmp eq i16 %i.az, 0
  br i1 %.not185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.096.lcssa = phi i1 [ true, %bb.b ], [ %.197.in, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #37
  %i.bc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.w, i64 noundef 4, i64 noundef 1)
  %.not.not = select i1 %i.bc, i1 %.096.lcssa, i1 false
  br i1 %.not.not, label %bb.g, label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.096180 = phi i1 [ true, %.lr.ph ], [ %.197.in, %bb.f ]
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !112
  %i.be = getelementptr inbounds nuw [112 x i8], ptr %i.bd, i64 %indvars.iv ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #37
  %i.bg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.q, i64 noundef 2, i64 noundef 1)
  br i1 %i.bg, label %.lr.ph.i.preheader.i128, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

.lr.ph.i.preheader.i128:                          ; preds = %bb.c
  %.promoted.i129 = load i16, ptr %i.q, align 2, !tbaa !26
  %i.bh = call i16 @llvm.bswap.i16(i16 %.promoted.i129)
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit: ; preds = %bb.c, %.lr.ph.i.preheader.i128
  %i.bi = phi i1 [ false, %bb.c ], [ %.096180, %.lr.ph.i.preheader.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  %i.bj = load i16, ptr %i.ba, align 4, !tbaa !192
  %i.bk = icmp eq i16 %i.bj, 1
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #37
  %i.bl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.p, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.bl, label %.lr.ph.i.preheader.i130, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

.lr.ph.i.preheader.i130:                          ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.promoted.i131 = load i32, ptr %i.p, align 4, !tbaa !3
  %i.bn = call i32 @llvm.bswap.i32(i32 %.promoted.i131)
  %i.bo = zext i32 %i.bn to i64
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit: ; preds = %bb.d, %.lr.ph.i.preheader.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #37
  br label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  %i.bp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.o, i64 noundef 8, i64 noundef 1) ; 2 uses
  br i1 %i.bp, label %.lr.ph.i.preheader.i132, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit

.lr.ph.i.preheader.i132:                          ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.promoted.i133 = load i64, ptr %i.o, align 8, !tbaa !25
  %i.br = call i64 @llvm.bswap.i64(i64 %.promoted.i133)
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit: ; preds = %bb.e, %.lr.ph.i.preheader.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  br label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit
  %.pn116 = phi i1 [ %i.bl, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %i.bp, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %.197.in = and i1 %i.bi, %.pn116                ; 2 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 2 dereferenceable(2) %i.bf)
  store ptr %i.be, ptr %i.bs, align 8, !tbaa !219
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i16, ptr %i.al, align 8, !tbaa !201
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !408

bb.g:                                             ; preds = %._crit_edge
  %i.bw = load i32, ptr %i.w, align 1
  %i.bx = icmp ne i32 %i.bw, 1296646712
  %i.by = zext i1 %i.bx to i32
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.86)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.bz, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.cb, label %bb.j, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cd = load i8, ptr %i.n, align 1, !tbaa !14
  store i8 %i.cd, ptr %i.cc, align 4, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  %i.ce = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.ce, label %bb.k, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit134

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.cg = load i8, ptr %i.m, align 1, !tbaa !14
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit134

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit134: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  %i.ch = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.ch, label %bb.l, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit134
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.cj = load i8, ptr %i.l, align 1, !tbaa !14
  store i8 %i.cj, ptr %i.ci, align 2, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit134, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  %i.ck = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 1, i32 noundef 1)
  %i.cl = and i1 %i.ca, %i.ck
  %i.cm = and i1 %i.cb, %i.cl
  %i.cn = and i1 %i.ce, %i.cm
  %i.co = and i1 %i.ch, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  %i.cq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.cq, label %.lr.ph.i.preheader.i136, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138_crit_edge

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135
  %.pre = load i32, ptr %i.cp, align 8, !tbaa !409
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138

.lr.ph.i.preheader.i136:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135
  %.promoted.i137 = load i32, ptr %i.k, align 4, !tbaa !3
  %i.cr = call i32 @llvm.bswap.i32(i32 %.promoted.i137) ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138_crit_edge, %.lr.ph.i.preheader.i136
  %i.cs = phi i32 [ %.pre, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138_crit_edge ], [ %i.cr, %.lr.ph.i.preheader.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  %i.ct = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
  br i1 %i.ct, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141.thread

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141.thread: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  br label %.loopexit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit138
  %i.cu = and i1 %i.cq, %i.co
  %.promoted.i140 = load i32, ptr %i.j, align 4, !tbaa !3 ; 2 uses
  %i.cv = call i32 @llvm.bswap.i32(i32 %.promoted.i140) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  br i1 %i.cu, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141
  %.not111 = icmp eq i32 %.promoted.i140, 0
  br i1 %.not111, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.cx = zext i32 %i.cv to i64
  %i.cy = add nsw i64 %i.cw, %i.cx
  %i.cz = icmp ugt i32 %i.cv, 17
  br i1 %i.cz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  %i.da = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.da, label %.lr.ph.i.preheader.i142, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit144

.lr.ph.i.preheader.i142:                          ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 116
  %.promoted.i143 = load i32, ptr %i.i, align 4, !tbaa !3
  %i.dc = call i32 @llvm.bswap.i32(i32 %.promoted.i143)
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit144

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit144: ; preds = %bb.o, %.lr.ph.i.preheader.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  %i.dd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.dd, label %.lr.ph.i.preheader.i145, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit147

.lr.ph.i.preheader.i145:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit144
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.promoted.i146 = load i32, ptr %i.h, align 4, !tbaa !3
  %i.df = call i32 @llvm.bswap.i32(i32 %.promoted.i146)
  store i32 %i.df, ptr %i.de, align 8, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit147

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit147: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit144, %.lr.ph.i.preheader.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %i.dg = and i1 %i.da, %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  %i.dh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.dh, label %.lr.ph.i.preheader.i148, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit150

.lr.ph.i.preheader.i148:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit147
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 124
  %.promoted.i149 = load i32, ptr %i.g, align 4, !tbaa !3
  %i.dj = call i32 @llvm.bswap.i32(i32 %.promoted.i149)
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit150

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit150: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit147, %.lr.ph.i.preheader.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  %i.dk = and i1 %i.dg, %i.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.dl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.dl, label %.lr.ph.i.preheader.i151, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit153

.lr.ph.i.preheader.i151:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit150
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.promoted.i152 = load i32, ptr %i.f, align 4, !tbaa !3
  %i.dn = call i32 @llvm.bswap.i32(i32 %.promoted.i152)
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit153

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit153: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit150, %.lr.ph.i.preheader.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.do = and i1 %i.dk, %i.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  %i.dp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.dp, label %bb.p, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit154

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit153
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.dr = load i8, ptr %i.e, align 1, !tbaa !14
  store i8 %i.dr, ptr %i.dq, align 4, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit154

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit154: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit153, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.ds = and i1 %i.do, %i.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.dt = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.dt, label %bb.q, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit155

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit154
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.dv = load i8, ptr %i.d, align 1, !tbaa !14
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit155

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit155: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit154, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %i.dw = and i1 %i.ds, %i.dt
  br label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit155, %bb.n
  %.298 = phi i1 [ %i.dw, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit155 ], [ true, %bb.n ]
  %i.dx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.cy, i32 noundef 0)
  %i.dy = and i1 %.298, %i.dx
  br i1 %i.dy, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.dz = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  br i1 %i.dz, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158.thread

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158.thread: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.ea = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 0, i32 noundef 1) ; 0 uses
  br label %.loopexit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158: ; preds = %bb.s
  %.promoted.i157 = load i32, ptr %i.c, align 4, !tbaa !3
  %i.eb = call i32 @llvm.bswap.i32(i32 %.promoted.i157) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.ec = zext i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ec, i32 noundef 1)
  br i1 %i.ed, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ef = call noundef i32 @_ZN11OpenImageIO4v3_18PSDInput18read_pascal_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i16 noundef zeroext 4)
  %.neg173 = add i32 %i.cs, -8
  %i.eg = add i32 %i.cv, %i.eb
  %i.eh = add i32 %i.eg, %i.ef
  %i.ei = sub i32 %.neg173, %i.eh                 ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, 11
  br i1 %i.ej, label %.lr.ph183, label %.loopexit

.lr.ph183:                                        ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph183, %bb.af
  %.0105181 = phi i32 [ %i.ei, %.lr.ph183 ], [ %i.gl, %bb.af ]
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !410 ; 3 uses
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !410
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.el, align 8, !tbaa !410
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.es = load ptr, ptr %i.ek, align 8, !tbaa !142 ; 4 uses
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 6 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.x, label %_ZNKSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.156) #41
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.ex = sdiv exact i64 %i.ev, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 384307168202282325)
  %i.fb = select i1 %i.ez, i64 384307168202282325, i64 %i.fa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fc = mul nuw nsw i64 %i.fb, 24
  %i.fd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #39 ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ev ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i8 0, i64 24, i1 false)
  %i.ff = icmp sgt i64 %i.ev, 0
  br i1 %i.ff, label %bb.y, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr align 8 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i: ; preds = %bb.y, %_ZNKSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i16.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ev) #38
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit15.i.i
  store ptr %i.fd, ptr %i.ek, align 8, !tbaa !142
  store ptr %i.fg, ptr %i.el, align 8, !tbaa !410
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fh, ptr %i.em, align 8, !tbaa !145
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit: ; preds = %bb.v, %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.fi = phi ptr [ %i.er, %bb.v ], [ %i.fg, %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 4 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #37
  %i.fk = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.x, i64 noundef 4, i64 noundef 1)
  %i.fl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.fj, i64 noundef 4, i64 noundef 1)
  %i.fm = and i1 %i.fk, %i.fl
  %i.fn = load i32, ptr %i.x, align 1
  %i.fo = icmp ne i32 %i.fn, 1296646712
  %i.fp = zext i1 %i.fo to i32
  %.not113 = icmp eq i32 %i.fp, 0
  br i1 %.not113, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  %i.fq = load i32, ptr %i.x, align 1
  %i.fr = icmp ne i32 %i.fq, 875971128
  %i.fs = zext i1 %i.fr to i32
  %.not115 = icmp eq i32 %i.fs, 0
  br i1 %.not115, label %bb.ab, label %.critedge

.critedge:                                        ; preds = %bb.aa
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #37
  br label %.loopexit

bb.ab:                                            ; preds = %bb.aa, %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  %i.ft = load i16, ptr %i.en, align 4, !tbaa !192
  %i.fu = icmp eq i16 %i.ft, 2
  br i1 %i.fu, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput22is_additional_info_psbEPKc(ptr nonnull align 8 poison, ptr noundef nonnull %i.fj)
  br i1 %i.fv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.fw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1) ; 2 uses
  br i1 %i.fw, label %.lr.ph.i.preheader.i159, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit161

.lr.ph.i.preheader.i159:                          ; preds = %bb.ad
  %i.fx = getelementptr inbounds i8, ptr %i.fi, i64 -16
  %.promoted.i160 = load i64, ptr %i.b, align 8, !tbaa !25
  %i.fy = call i64 @llvm.bswap.i64(i64 %.promoted.i160)
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit161

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit161: ; preds = %bb.ad, %.lr.ph.i.preheader.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.fz = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.fz, label %.lr.ph.i.preheader.i162, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit164

.lr.ph.i.preheader.i162:                          ; preds = %bb.ae
  %i.ga = getelementptr inbounds i8, ptr %i.fi, i64 -16
  %.promoted.i163 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.gb = call i32 @llvm.bswap.i32(i32 %.promoted.i163)
  %i.gc = zext i32 %i.gb to i64
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !25
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit164

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit164: ; preds = %bb.ae, %.lr.ph.i.preheader.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.af

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit164, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit161
  %.sink = phi i32 [ -12, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit164 ], [ -16, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit161 ]
  %.pn = phi i1 [ %i.fz, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit164 ], [ %i.fw, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit161 ]
  %i.gd = add i32 %.0105181, %.sink
  %i.ge = getelementptr inbounds i8, ptr %i.fi, i64 -16 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !411
  %i.gg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.gf, i32 noundef 1)
  %i.gh = and i1 %.pn, %i.gg
  %i.gi = and i1 %i.fm, %i.gh                     ; 2 uses
  %i.gj = load i64, ptr %i.ge, align 8, !tbaa !411
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = sub i32 %i.gd, %i.gk                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #37
  %i.gm = icmp ugt i32 %i.gl, 11
  %i.gn = select i1 %i.gi, i1 %i.gm, i1 false
  br i1 %i.gn, label %bb.u, label %.loopexit, !llvm.loop !413

.loopexit:                                        ; preds = %bb.af, %bb.t, %bb.r, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141.thread, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158.thread, %.critedge, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158, %._crit_edge, %bb.h
  %.6 = phi i1 [ false, %bb.h ], [ false, %._crit_edge ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141.thread ], [ false, %bb.r ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit141 ], [ false, %.critedge ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158 ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit158.thread ], [ true, %bb.t ], [ %i.gi, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #37
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit.thread, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %.loopexit
  %.7 = phi i1 [ %.6, %.loopexit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit.thread ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !201
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i16, ptr %i.a, align 8, !tbaa !201
  %i.f = zext i16 %i.e to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %.not, label %bb.c, label %._crit_edge, !llvm.loop !212

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw [112 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.h) ; 3 uses
  br i1 %i.i, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 112                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput11ChannelInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput11ChannelInfoEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.e, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #38
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i:          ; preds = %bb.f, %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !122 ; 3 uses
  %.not.i.i.i2.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput11ChannelInfoEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #38
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput11ChannelInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput11ChannelInfoEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput11ChannelInfoES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !125

_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput11ChannelInfoES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput11ChannelInfoEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput11ChannelInfoES3_EvT_S5_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i16, ptr %1, align 2, !tbaa !26    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !26
  %i.f = icmp slt i16 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !179 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEE11lower_boundERS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !265

_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEE11lower_boundERS8_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEE11lower_boundERS8_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !26
  %i.j = icmp slt i16 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEE11lower_boundERS8_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEE11lower_boundERS8_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i16 %.pre, ptr %i.l, align 8, !tbaa !266
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %i.m, align 8, !tbaa !268
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 2 dereferenceable(2) %i.l)
          to label %bb.c unwind label %_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEEixERS8_:bb.a
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !172
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !172
  br label %_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #38
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #38
  br label %_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit

_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput22is_additional_info_psbEPKc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, align 16, !tbaa !38
  %i.b = load i32, ptr %i.a, align 1
  %i.c = load i32, ptr %1, align 1
  %i.d = icmp ne i32 %i.b, %i.c
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 8), align 8, !tbaa !38
  %i.h = load i32, ptr %i.g, align 1
  %i.i = load i32, ptr %1, align 1
  %i.j = icmp ne i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 16), align 16, !tbaa !38
  %i.n = load i32, ptr %i.m, align 1
  %i.o = load i32, ptr %1, align 1
  %i.p = icmp ne i32 %i.n, %i.o
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 24), align 8, !tbaa !38
  %i.t = load i32, ptr %i.s, align 1
  %i.u = load i32, ptr %1, align 1
  %i.v = icmp ne i32 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 32), align 16, !tbaa !38
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = load i32, ptr %1, align 1
  %i.ab = icmp ne i32 %i.z, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 40), align 8, !tbaa !38
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = load i32, ptr %1, align 1
  %i.ah = icmp ne i32 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 48), align 16, !tbaa !38
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = load i32, ptr %1, align 1
  %i.an = icmp ne i32 %i.al, %i.am
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 56), align 8, !tbaa !38
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = load i32, ptr %1, align 1
  %i.at = icmp ne i32 %i.ar, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 64), align 16, !tbaa !38
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = load i32, ptr %1, align 1
  %i.az = icmp ne i32 %i.ax, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 72), align 8, !tbaa !38
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = load i32, ptr %1, align 1
  %i.bf = icmp ne i32 %i.bd, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 80), align 16, !tbaa !38
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = load i32, ptr %1, align 1
  %i.bl = icmp ne i32 %i.bj, %i.bk
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 88), align 8, !tbaa !38
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = load i32, ptr %1, align 1
  %i.br = icmp ne i32 %i.bp, %i.bq
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 96), align 16, !tbaa !38
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = load i32, ptr %1, align 1
  %i.bx = icmp ne i32 %i.bv, %i.bw
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 104), align 8, !tbaa !38
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = load i32, ptr %1, align 1
  %i.cd = icmp ne i32 %i.cb, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 112), align 16, !tbaa !38
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = load i32, ptr %1, align 1
  %i.cj = icmp ne i32 %i.ch, %i.ci
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 120), align 8, !tbaa !38
  %i.cn = load i32, ptr %i.cm, align 1
  %i.co = load i32, ptr %1, align 1
  %i.cp = icmp ne i32 %i.cn, %i.co
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ %i.cr, %bb.p ], [ true, %bb.c ], [ true, %bb.k ], [ true, %bb.d ], [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.j ], [ true, %bb.f ], [ true, %bb.n ], [ true, %bb.g ], [ true, %bb.l ], [ true, %bb.h ], [ true, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = tail call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !235
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.f, label %bb.c, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !26
  %i.h = call i16 @llvm.bswap.i16(i16 %.promoted.i)
  store i16 %i.h, ptr %i.g, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.pr = load i64, ptr %i.c, align 8, !tbaa !235
  %i.i = icmp ult i64 %.pr, 3
  br i1 %i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit137, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i16, ptr %i.j, align 4, !tbaa !234
  %i.l = icmp eq i16 %i.k, -2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load i32, ptr %i.n, align 8, !tbaa !414
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !415
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.u = load i32, ptr %i.t, align 4, !tbaa !416
  %i.v = load i32, ptr %i.m, align 4, !tbaa !417
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !418
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !419
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.088 = phi i32 [ %i.s, %bb.e ], [ %i.z, %bb.f ] ; 5 uses
  %.087 = phi i32 [ %i.x, %bb.e ], [ %i.ab, %bb.f ] ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.088, ptr %i.ac, align 4, !tbaa !221
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.087, ptr %i.ad, align 8, !tbaa !232
  %i.ae = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !238
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ah = zext i32 %.087 to i64                   ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !237 ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !114 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nuw nsw i64 %i.ah, %i.ao
  call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.aq)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !237
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.au = load i16, ptr %i.at, align 8, !tbaa !217 ; 3 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = mul i32 %.088, %i.av
  %i.ax = add i32 %i.aw, 7
  %i.ay = lshr i32 %i.ax, 3                       ; 3 uses
  store i32 %i.ay, ptr %2, align 8, !tbaa !239
  %i.az = load i16, ptr %i.g, align 8, !tbaa !233
  switch i16 %i.az, label %bb.ar [
    i16 0, label %bb.k
    i16 1, label %bb.m
    i16 2, label %bb.r
    i16 3, label %bb.ae
  ]

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %.not101 = icmp eq i32 %.087, 0
  br i1 %.not101, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.af, align 8, !tbaa !238 ; 4 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !114 ; 3 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !25
  %.not180 = icmp eq i32 %.087, 1
  br i1 %.not180, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.l
  %i.bc = zext nneg i32 %i.ay to i64              ; 3 uses
  %i.bd = add nsw i64 %i.ah, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.087, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph178
  %n.vec = and i64 %i.bd, -4                      ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.be = mul nsw i64 %n.vec, %i.bc
  %i.bf = add i64 %i.ba, %i.be
  %i.bg = or disjoint i64 %n.vec, 1
  %i.bh = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert205 = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat206 = shufflevector <2 x i64> %broadcast.splatinsert205, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bi = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %induction = add nsw <2 x i64> %broadcast.splat206, %i.bi
  %invariant.op = add <2 x i64> %i.bh, %broadcast.splat
  %invariant.op209 = add <2 x i64> %i.bh, %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %i.bj = add nsw <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x i64> %i.bj, ptr %i.bl, align 8, !tbaa !25
  store <2 x i64> %.reass, ptr %i.bm, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add <2 x i64> %vec.ind, %invariant.op209
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !420

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph178, %middle.block
  %.ph = phi i64 [ %i.ba, %.lr.ph178 ], [ %i.bf, %middle.block ]
  %indvars.iv182.ph = phi i64 [ 1, %.lr.ph178 ], [ %i.bg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bo = phi i64 [ %i.bp, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph ], [ %indvars.iv182.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bp = add nsw i64 %i.bo, %i.bc                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv182
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !25
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %i.ah
  br i1 %exitcond186.not, label %.loopexit, label %scalar.ph, !llvm.loop !421

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.l, %bb.k
  %i.br = mul i32 %i.ay, %.087
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !235
  %i.bt = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.bs, i32 noundef 1)
  br i1 %i.bt, label %_ZNSt6vectorIcSaIcEED2Ev.exit112, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %.087, ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
  br i1 %i.bv, label %bb.n, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.n:                                             ; preds = %bb.m
  %i.bw = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 5 uses
  store i64 %i.bw, ptr %i.af, align 8, !tbaa !238
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !235
  %.neg = sub i64 %i.b, %i.bw
  %i.by = add i64 %.neg, %i.bx
  store i64 %i.by, ptr %i.c, align 8, !tbaa !235
  %.not = icmp eq i32 %.087, 0
  br i1 %.not, label %.loopexit175, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !114 ; 6 uses
  store i64 %i.bw, ptr %i.bz, align 8, !tbaa !25
  %.not179 = icmp eq i32 %.087, 1
  br i1 %.not179, label %.loopexit175, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !118 ; 5 uses
  %i.cb = add nsw i64 %i.ah, -1                   ; 2 uses
  %xtraiter = and i64 %i.cb, 3                    ; 3 uses
  %i.cc = add i32 %.087, -2
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cb, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.new
  %i.ce = phi i64 [ %i.bw, %.lr.ph.new ], [ %i.db, %bb.p ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.p ] ; 6 uses
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE:bb.a

.noexc126:                                        ; preds = %bb.ag
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn  ; 3 uses
  store i8 0, ptr %i.fo, align 1, !tbaa !14
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  %i.fr = add nsw i64 %i.fn, -1                   ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit127, label %bb.ah

bb.ah:                                            ; preds = %.noexc126
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fq, i8 0, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit127

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit127:            ; preds = %bb.ah, %.noexc126, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit121
  %.sroa.0143.0 = phi ptr [ %i.fo, %bb.ah ], [ %i.fo, %.noexc126 ], [ null, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit121 ]
  %.sroa.11.0 = phi ptr [ %i.fp, %bb.ah ], [ %i.fp, %.noexc126 ], [ null, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit121 ]
  %.0.i.i.i.i.i124 = phi ptr [ %i.fp, %bb.ah ], [ %i.fq, %.noexc126 ], [ null, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit121 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !122 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !124
  store ptr %.sroa.0143.0, ptr %i.ft, align 8, !tbaa !122
  store ptr %.0.i.i.i.i.i124, ptr %i.fv, align 8, !tbaa !345
  store ptr %.sroa.11.0, ptr %i.fw, align 8, !tbaa !124
  %.not.i.i.i.i.i128 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i128, label %_ZNSt6vectorIcSaIcEED2Ev.exit131, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit127
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fu to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.ga) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit131

_ZNSt6vectorIcSaIcEED2Ev.exit131:                 ; preds = %bb.ai, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit127
  %i.gb = load i64, ptr %i.af, align 8, !tbaa !238
  %i.gc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.gb, i32 noundef 0)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit131
  br i1 %i.gc, label %bb.am, label %.critedge103

bb.ak:                                            ; preds = %bb.ag
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %bb.ao, %bb.am, %_ZNSt6vectorIcSaIcEED2Ev.exit131
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %bb.aj
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !235
  %i.gg = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.0147.0, i64 noundef %i.gf, i64 noundef 1)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  br i1 %i.gg, label %bb.ao, label %.critedge103

bb.ao:                                            ; preds = %bb.an
  %i.gh = ptrtoint ptr %.0.i.i.i.i.i117 to i64
  %i.gi = ptrtoint ptr %.sroa.0147.0 to i64       ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = load ptr, ptr %i.ft, align 8, !tbaa !122 ; 2 uses
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !345
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput25decompress_zip_predictionENS0_4spanIcLm18446744073709551615EEES3_jj(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %.sroa.0147.0, i64 %i.gj, ptr %i.gk, i64 %i.go, i32 noundef %.088, i32 noundef %.087)
          to label %bb.ap unwind label %bb.al     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i132 = icmp eq ptr %.sroa.0147.0, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIcSaIcEED2Ev.exit112, label %_ZNSt6vectorIcSaIcEED2Ev.exit112.sink.split

bb.aq:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.ge, %bb.al ], [ %i.gd, %bb.ak ] ; 2 uses
  %.not.i.i.i134 = icmp eq ptr %.sroa.0147.0, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIcSaIcEED2Ev.exit114, label %_ZNSt6vectorIcSaIcEED2Ev.exit114.sink.split

bb.ar:                                            ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.89, ptr noundef nonnull align 2 dereferenceable(2) %i.g)
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit137

_ZNSt6vectorIcSaIcEED2Ev.exit112.sink.split:      ; preds = %bb.ap, %bb.ac
  %.sroa.14.0.sink = phi ptr [ %.sroa.14171.0, %bb.ac ], [ %.sroa.14.0, %bb.ap ]
  %.sink199 = phi i64 [ %i.et, %bb.ac ], [ %i.gi, %bb.ap ]
  %.sroa.0147.0.sink = phi ptr [ %.sroa.0165.0, %bb.ac ], [ %.sroa.0147.0, %bb.ap ]
  %i.gq = ptrtoint ptr %.sroa.14.0.sink to i64
  %i.gr = sub i64 %i.gq, %.sink199
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0.sink, i64 noundef %i.gr) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit112

_ZNSt6vectorIcSaIcEED2Ev.exit112:                 ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit112.sink.split, %bb.ap, %bb.ac, %.loopexit175, %.loopexit
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit137

.critedge:                                        ; preds = %bb.w, %bb.aa
  %.not.i.i.i136 = icmp eq ptr %.sroa.0165.0, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIcSaIcEED2Ev.exit137, label %bb.as

bb.as:                                            ; preds = %.critedge
  %i.gs = ptrtoint ptr %.sroa.14171.0 to i64
  %i.gt = ptrtoint ptr %.sroa.0165.0 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0165.0, i64 noundef %i.gu) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit137

.critedge103:                                     ; preds = %bb.aj, %bb.an
  %.not.i.i.i138 = icmp eq ptr %.sroa.0147.0, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIcSaIcEED2Ev.exit137, label %bb.at

bb.at:                                            ; preds = %.critedge103
  %i.gv = ptrtoint ptr %.sroa.14.0 to i64
  %i.gw = ptrtoint ptr %.sroa.0147.0 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0, i64 noundef %i.gx) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit137

_ZNSt6vectorIcSaIcEED2Ev.exit114.sink.split:      ; preds = %bb.aq, %bb.ad
  %.sroa.14.0.sink204 = phi ptr [ %.sroa.14171.0, %bb.ad ], [ %.sroa.14.0, %bb.aq ]
  %.sroa.0147.0.sink203 = phi ptr [ %.sroa.0165.0, %bb.ad ], [ %.sroa.0147.0, %bb.aq ] ; 2 uses
  %.pn97.pn.pn.ph = phi { ptr, i32 } [ %.pn97, %bb.ad ], [ %.pn, %bb.aq ]
  %i.gy = ptrtoint ptr %.sroa.14.0.sink204 to i64
  %i.gz = ptrtoint ptr %.sroa.0147.0.sink203 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0.sink203, i64 noundef %i.ha) #38
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit114

_ZNSt6vectorIcSaIcEED2Ev.exit114:                 ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit114.sink.split, %bb.aq, %bb.ad
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97, %bb.ad ], [ %.pn, %bb.aq ], [ %.pn97.pn.pn.ph, %_ZNSt6vectorIcSaIcEED2Ev.exit114.sink.split ]
  resume { ptr, i32 } %.pn97.pn.pn

_ZNSt6vectorIcSaIcEED2Ev.exit137:                 ; preds = %bb.a, %bb.at, %.critedge103, %bb.as, %.critedge, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %bb.ar, %_ZNSt6vectorIcSaIcEED2Ev.exit112, %.loopexit, %bb.m, %.loopexit175, %bb.c
  %.394 = phi i1 [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit ], [ true, %bb.c ], [ false, %bb.ar ], [ true, %_ZNSt6vectorIcSaIcEED2Ev.exit112 ], [ false, %bb.as ], [ false, %bb.m ], [ false, %.loopexit ], [ false, %bb.at ], [ false, %.loopexit175 ], [ false, %.critedge ], [ false, %.critedge103 ], [ true, %bb.a ]
  ret i1 %.394
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !424  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !424
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.e

._crit_edge:                                      ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.013.lcssa = phi i1 [ true, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.pn.in, %bb.h ]
  ret i1 %.013.lcssa

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.p = load i16, ptr %i.o, align 4, !tbaa !192
  %i.q = icmp eq i16 %i.p, 1
  %i.r = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.s, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %.promoted.i = load i16, ptr %i.b, align 2, !tbaa !26
  %i.u = call i16 @llvm.bswap.i16(i16 %.promoted.i)
  %i.v = zext i16 %i.u to i32
  store i32 %i.v, ptr %i.t, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit: ; preds = %bb.f, %.lr.ph.i.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.w = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.w, label %.lr.ph.i.preheader.i14, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

.lr.ph.i.preheader.i14:                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %.promoted.i15 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.y = call i32 @llvm.bswap.i32(i32 %.promoted.i15)
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.g, %.lr.ph.i.preheader.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit
  %.pn.in = phi i1 [ %i.s, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit ], [ %i.w, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.c
  %i.aa = and i1 %.pn.in, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge, !llvm.loop !425
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput14decompress_zipENS0_4spanIcLm18446744073709551615EEES3_(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %struct.z_stream_s, align 8         ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.g = trunc i64 %2 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 104, i1 false)
  store i32 %i.g, ptr %i.h, align 8, !tbaa !426
  store ptr %1, ptr %5, align 8, !tbaa !429
  %i.j = trunc i64 %4 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.j, ptr %i.k, align 8, !tbaa !430
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.l, align 8, !tbaa !431
  %i.m = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str.101, i32 noundef 112)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 %4, ptr %i.b, align 8, !tbaa !25
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.102, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 4)
  %.not2 = icmp eq i32 %i.n, 1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 %2, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 %4, ptr %i.d, align 8, !tbaa !25
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.103, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = call i32 @inflateEnd(ptr noundef nonnull %5)
  %.not3 = icmp eq i32 %i.o, 0
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i64 %2, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store i64 %4, ptr %i.f, align 8, !tbaa !25
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.104, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput25decompress_zip_predictionENS0_4spanIcLm18446744073709551615EEES3_jj(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %1, i64 %2, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = mul i32 %6, %5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !217
  %i.d = lshr i16 %i.c, 3
  %i.e = zext nneg i16 %i.d to i32
  %i.f = mul i32 %i.a, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp eq i64 %4, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !346

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 2337, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput25decompress_zip_predictionENS0_4spanIcLm18446744073709551615EEES3_jj, ptr noundef nonnull @.str.105) #42 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput14decompress_zipENS0_4spanIcLm18446744073709551615EEES3_(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %1, i64 %2, ptr %3, i64 %4) ; 9 uses
  %i.l = load i16, ptr %i.b, align 8, !tbaa !217
  switch i16 %i.l, label %bb.h [
    i16 8, label %.preheader78
    i16 16, label %bb.e
    i16 32, label %.preheader83
  ]

.preheader83:                                     ; preds = %bb.c
  %i.m = zext i32 %6 to i64                       ; 2 uses
  %.not = icmp eq i32 %6, 0
  %.pre108 = zext i32 %5 to i64                   ; 3 uses
  br i1 %.not, label %._crit_edge90.split, label %.preheader82.lr.ph

.preheader82.lr.ph:                               ; preds = %.preheader83
  %i.n = shl nuw nsw i64 %.pre108, 2
  %.not98 = icmp eq i32 %5, 0
  br i1 %.not98, label %._crit_edge90.split, label %.preheader82.preheader

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.o = icmp eq i32 %5, 1
  br label %.preheader82

.preheader78:                                     ; preds = %bb.c
  %i.p = zext i32 %6 to i64
  %.not100 = icmp eq i32 %6, 0
  br i1 %.not100, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader78
  %i.q = zext i32 %5 to i64                       ; 3 uses
  %i.r = icmp ugt i32 %5, 1
  br i1 %i.r, label %.preheader.preheader, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  %xtraiter152 = and i64 %i.s, 3                  ; 3 uses
  %i.t = add i32 %5, -2
  %i.u = icmp ult i32 %i.t, 3
  %unroll_iter156 = and i64 %i.s, -4
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod155 = icmp ne i64 %xtraiter152, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge96
  %.05197 = phi i64 [ %i.aa, %._crit_edge96 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.v = mul i64 %.05197, %i.q
  %scevgep = getelementptr i8, ptr %3, i64 %i.v
  %i.w = mul nuw i64 %.05197, %i.q
  %invariant.gep117 = getelementptr i8, ptr %3, i64 %i.w ; 5 uses
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  br i1 %i.u, label %.epil.preheader151, label %.preheader.new

._crit_edge96.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod154.not, label %._crit_edge96, label %.epil.preheader151

.epil.preheader151:                               ; preds = %._crit_edge96.unr-lcssa, %.preheader
  %store_forwarded.epil.init = phi i8 [ %load_initial, %.preheader ], [ %i.al, %._crit_edge96.unr-lcssa ]
  %.05795.epil.init = phi i64 [ 1, %.preheader ], [ %i.am, %._crit_edge96.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader151
  %store_forwarded.epil = phi i8 [ %store_forwarded.epil.init, %.epil.preheader151 ], [ %i.y, %bb.d ]
  %.05795.epil = phi i64 [ %.05795.epil.init, %.epil.preheader151 ], [ %i.z, %bb.d ] ; 2 uses
  %epil.iter153 = phi i64 [ 0, %.epil.preheader151 ], [ %epil.iter153.next, %bb.d ]
  %gep118.epil = getelementptr i8, ptr %invariant.gep117, i64 %.05795.epil ; 2 uses
  %i.x = load i8, ptr %gep118.epil, align 1, !tbaa !14
  %i.y = add i8 %i.x, %store_forwarded.epil       ; 2 uses
  store i8 %i.y, ptr %gep118.epil, align 1, !tbaa !14
  %i.z = add nuw nsw i64 %.05795.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %._crit_edge96, label %bb.d, !llvm.loop !432

._crit_edge96:                                    ; preds = %bb.d, %._crit_edge96.unr-lcssa
  %i.aa = add nuw nsw i64 %.05197, 1              ; 2 uses
  %exitcond107.not = icmp eq i64 %i.aa, %i.p
  br i1 %exitcond107.not, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader, !llvm.loop !433

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %store_forwarded = phi i8 [ %i.al, %.preheader.new ], [ %load_initial, %.preheader ]
  %.05795 = phi i64 [ %i.am, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %niter157 = phi i64 [ %niter157.next.3, %.preheader.new ], [ 0, %.preheader ]
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %.05795 ; 2 uses
  %i.ab = load i8, ptr %gep118, align 1, !tbaa !14
  %i.ac = add i8 %i.ab, %store_forwarded          ; 2 uses
  store i8 %i.ac, ptr %gep118, align 1, !tbaa !14
  %i.ad = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.1 = getelementptr i8, ptr %i.ad, i64 1  ; 2 uses
  %i.ae = load i8, ptr %gep118.1, align 1, !tbaa !14
  %i.af = add i8 %i.ae, %i.ac                     ; 2 uses
  store i8 %i.af, ptr %gep118.1, align 1, !tbaa !14
  %i.ag = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.2 = getelementptr i8, ptr %i.ag, i64 2  ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_18PSDInput25decompress_zip_predictionENS0_4spanIcLm18446744073709551615EEES3_jj:bb.a
  %i.bj = mul nuw i64 %.05694, %i.bc
  %invariant.gep = getelementptr [2 x i8], ptr %3, i64 %i.bj ; 5 uses
  %load_initial143 = load i16, ptr %scevgep142, align 2 ; 2 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader79.new

._crit_edge93.unr-lcssa:                          ; preds = %.preheader79.new
  br i1 %lcmp.mod149.not, label %._crit_edge93, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge93.unr-lcssa, %.preheader79
  %store_forwarded144.epil.init = phi i16 [ %load_initial143, %.preheader79 ], [ %i.by, %._crit_edge93.unr-lcssa ]
  %.05592.epil.init = phi i64 [ 1, %.preheader79 ], [ %i.bz, %._crit_edge93.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %store_forwarded144.epil = phi i16 [ %store_forwarded144.epil.init, %.epil.preheader ], [ %i.bl, %bb.f ]
  %.05592.epil = phi i64 [ %.05592.epil.init, %.epil.preheader ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592.epil ; 2 uses
  %i.bk = load i16, ptr %gep.epil, align 2, !tbaa !26
  %i.bl = add i16 %i.bk, %store_forwarded144.epil ; 2 uses
  store i16 %i.bl, ptr %gep.epil, align 2, !tbaa !26
  %i.bm = add nuw nsw i64 %.05592.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter148
  br i1 %epil.iter.cmp.not, label %._crit_edge93, label %bb.f, !llvm.loop !438

._crit_edge93:                                    ; preds = %bb.f, %._crit_edge93.unr-lcssa
  %i.bn = add nuw nsw i64 %.05694, 1              ; 2 uses
  %exitcond105.not = icmp eq i64 %i.bn, %i.bb
  br i1 %exitcond105.not, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader79, !llvm.loop !439

.preheader79.new:                                 ; preds = %.preheader79, %.preheader79.new
  %store_forwarded144 = phi i16 [ %i.by, %.preheader79.new ], [ %load_initial143, %.preheader79 ]
  %.05592 = phi i64 [ %i.bz, %.preheader79.new ], [ 1, %.preheader79 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader79.new ], [ 0, %.preheader79 ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592 ; 2 uses
  %i.bo = load i16, ptr %gep, align 2, !tbaa !26
  %i.bp = add i16 %i.bo, %store_forwarded144      ; 2 uses
  store i16 %i.bp, ptr %gep, align 2, !tbaa !26
  %i.bq = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.1 = getelementptr i8, ptr %i.bq, i64 2     ; 2 uses
  %i.br = load i16, ptr %gep.1, align 2, !tbaa !26
  %i.bs = add i16 %i.br, %i.bp                    ; 2 uses
  store i16 %i.bs, ptr %gep.1, align 2, !tbaa !26
  %i.bt = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.2 = getelementptr i8, ptr %i.bt, i64 4     ; 2 uses
  %i.bu = load i16, ptr %gep.2, align 2, !tbaa !26
  %i.bv = add i16 %i.bu, %i.bs                    ; 2 uses
  store i16 %i.bv, ptr %gep.2, align 2, !tbaa !26
  %i.bw = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.3 = getelementptr i8, ptr %i.bw, i64 6     ; 2 uses
  %i.bx = load i16, ptr %gep.3, align 2, !tbaa !26
  %i.by = add i16 %i.bx, %i.bv                    ; 3 uses
  store i16 %i.by, ptr %gep.3, align 2, !tbaa !26
  %i.bz = add nuw nsw i64 %.05592, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge93.unr-lcssa, label %.preheader79.new, !llvm.loop !440

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge
  %.05389 = phi i64 [ %i.cp, %._crit_edge ], [ 0, %.preheader82.preheader ]
  %.05488 = phi i64 [ %i.ca, %._crit_edge ], [ 0, %.preheader82.preheader ] ; 3 uses
  %i.ca = add i64 %i.n, %.05488                   ; 2 uses
  %.184 = or disjoint i64 %.05488, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 %.05488
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader82
  %i.cb = phi i8 [ %.pre, %.preheader82 ], [ %i.ce, %bb.g ]
  %.187.prol = phi i64 [ %.184, %.preheader82 ], [ %.1.prol, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ 0, %.preheader82 ], [ %prol.iter.next, %bb.g ]
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %.187.prol ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14
  %i.ce = add i8 %i.cb, %i.cd                     ; 3 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !14
  %.1.prol = add i64 %.187.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, 3
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.g, !llvm.loop !441

.prol.loopexit:                                   ; preds = %bb.g
  br i1 %i.o, label %._crit_edge, label %.preheader82.new

._crit_edge90.split:                              ; preds = %._crit_edge, %.preheader83, %.preheader82.lr.ph
  %.pre-phi = phi i64 [ %.pre108, %.preheader83 ], [ 0, %.preheader82.lr.ph ], [ %.pre108, %._crit_edge ]
  tail call void @_ZN11OpenImageIO4v3_18PSDInput27float_planar_to_interleavedENS0_4spanIcLm18446744073709551615EEEmm(ptr nonnull align 8 poison, ptr %3, i64 %4, i64 noundef %.pre-phi, i64 noundef %i.m)
  %i.cf = lshr i64 %4, 2                          ; 4 uses
  %.not.i61 = icmp eq i64 %i.cf, 0
  br i1 %.not.i61, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %._crit_edge90.split
  %min.iters.check = icmp ult i64 %4, 32
  br i1 %min.iters.check, label %.lr.ph.i62.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i62.preheader
  %n.vec = and i64 %i.cf, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cg, align 4, !tbaa !3
  %wide.load121 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !3
  %i.ci = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.cj = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load121)
  store <4 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !3
  store <4 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62.preheader146

.lr.ph.i62.preheader146:                          ; preds = %.lr.ph.i62.preheader, %middle.block
  %.06.i63.ph = phi i64 [ 0, %.lr.ph.i62.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader146, %.lr.ph.i62
  %.06.i63 = phi i64 [ %i.co, %.lr.ph.i62 ], [ %.06.i63.ph, %.lr.ph.i62.preheader146 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06.i63 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = tail call noundef i32 @llvm.bswap.i32(i32 %i.cm)
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = add nuw nsw i64 %.06.i63, 1             ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.co, %i.cf
  br i1 %exitcond.not.i64, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62, !llvm.loop !443

._crit_edge:                                      ; preds = %.preheader82.new, %.prol.loopexit
  %i.cp = add nuw nsw i64 %.05389, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.cp, %i.m
  br i1 %exitcond103.not, label %._crit_edge90.split, label %.preheader82, !llvm.loop !444

.preheader82.new:                                 ; preds = %.prol.loopexit, %.preheader82.new
  %i.cq = phi i8 [ %i.df, %.preheader82.new ], [ %i.ce, %.prol.loopexit ]
  %.187 = phi i64 [ %.1.3, %.preheader82.new ], [ %.1.prol, %.prol.loopexit ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %.187 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !14
  %i.ct = add i8 %i.cq, %i.cs                     ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !14
  %i.cu = getelementptr i8, ptr %3, i64 %.187
  %i.cv = getelementptr i8, ptr %i.cu, i64 1      ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = add i8 %i.ct, %i.cw                     ; 2 uses
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !14
  %i.cy = getelementptr i8, ptr %3, i64 %.187
  %i.cz = getelementptr i8, ptr %i.cy, i64 2      ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14
  %i.db = add i8 %i.cx, %i.da                     ; 2 uses
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !14
  %i.dc = getelementptr i8, ptr %3, i64 %.187
  %i.dd = getelementptr i8, ptr %i.dc, i64 3      ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = add i8 %i.db, %i.de                     ; 2 uses
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !14
  %.1.3 = add i64 %.187, 4                        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %.1.3, %i.ca
  br i1 %exitcond.not.3, label %._crit_edge, label %.preheader82.new, !llvm.loop !445

bb.h:                                             ; preds = %bb.c
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.106, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit

_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit: ; preds = %.lr.ph.i62, %._crit_edge93, %._crit_edge96, %middle.block, %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, %.preheader79.lr.ph, %.preheader78, %.preheader.lr.ph, %._crit_edge90.split, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ %i.k, %.preheader78 ], [ %i.k, %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit ], [ %i.k, %._crit_edge90.split ], [ %i.k, %.preheader.lr.ph ], [ %i.k, %middle.block ], [ %i.k, %.preheader79.lr.ph ], [ %i.k, %._crit_edge93 ], [ %i.k, %._crit_edge96 ], [ %i.k, %.lr.ph.i62 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !346

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1847, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em, ptr noundef nonnull @.str.91) #42 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store i64 %1, ptr %i.c, align 8, !tbaa !197
  %i.h = tail call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.j = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !26
  %i.k = call i16 @llvm.bswap.i16(i16 %.promoted.i) ; 2 uses
  store i16 %i.k, ptr %i.i, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split: ; preds = %bb.d
  %.pr = load i16, ptr %i.i, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split, %.lr.ph.i.preheader.i
  %i.l = phi i16 [ %.pr, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split ], [ %i.k, %.lr.ph.i.preheader.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.m = icmp slt i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i8 1, ptr %i.n, align 8, !tbaa !127
  %i.o = sub i16 0, %i.l                          ; 2 uses
  store i16 %i.o, ptr %i.i, align 8, !tbaa !199
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  %i.p = phi i16 [ %i.o, %bb.e ], [ %i.l, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.r = sext i16 %i.p to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.r)
  %i.s = load i16, ptr %i.i, align 8, !tbaa !199
  %.not47 = icmp sgt i16 %i.s, 0
  br i1 %.not47, label %.lr.ph, label %.critedge44

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i16, ptr %i.i, align 8, !tbaa !199  ; 3 uses
  %i.u = sext i16 %i.t to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.lr.ph, label %.critedge.preheader, !llvm.loop !446

.critedge.preheader:                              ; preds = %bb.g
  %.not4249 = icmp sgt i16 %i.t, 0
  br i1 %.not4249, label %.lr.ph51, label %.critedge44

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw [192 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput10load_layerERNS1_5LayerE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.w)
  br i1 %i.x, label %bb.g, label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit

.lr.ph51:                                         ; preds = %.critedge.preheader, %.critedge
  %i.y = phi i16 [ %i.ak, %.critedge ], [ %i.t, %.critedge.preheader ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw [192 x i8], ptr %i.z, i64 %indvars.iv54 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !201
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = load i16, ptr %i.ab, align 8, !tbaa !201
  %i.ag = zext i16 %i.af to i64
  %.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ag
  br i1 %.not.i, label %bb.i, label %.critedge.loopexit, !llvm.loop !212

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.ai)
  br i1 %i.aj, label %bb.h, label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit

.critedge.loopexit:                               ; preds = %bb.h
  %.pre = load i16, ptr %i.i, align 8, !tbaa !199
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph51
  %i.ak = phi i16 [ %.pre, %.critedge.loopexit ], [ %i.y, %.lr.ph51 ] ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.al = sext i16 %i.ak to i64
  %.not42 = icmp slt i64 %indvars.iv.next55, %i.al
  br i1 %.not42, label %.lr.ph51, label %.critedge44, !llvm.loop !447

.critedge44:                                      ; preds = %.critedge, %bb.f, %.critedge.preheader
  %i.am = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.an = sub i64 %i.am, %i.h                     ; 2 uses
  %i.ao = add i64 %i.an, 3
  %i.ap = and i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.an                    ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.j, label %.thread, !prof !346

.thread:                                          ; preds = %.critedge44
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1875, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em, ptr noundef nonnull @.str.92) #42 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %.critedge44
  %i.au = icmp samesign ult i64 %i.aq, 4
  br i1 %i.au, label %bb.l, label %bb.k, !prof !448

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1876, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em, ptr noundef nonnull @.str.93) #42 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.j, %bb.k
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aq, i32 noundef 1) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit

_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit: ; preds = %.lr.ph, %bb.i, %bb.l, %bb.a
  %.7 = phi i1 [ false, %bb.a ], [ %i.j, %bb.l ], [ false, %bb.i ], [ false, %.lr.ph ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_18PSDInput18fill_channel_namesERNS0_9ImageSpecEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 674 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !167  ; 3 uses
  %i.m = icmp eq i16 %i.l, 7
  br i1 %i.m, label %bb.b, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.n = add i16 %i.l, -5
  %.not = icmp ult i16 %i.n, 4
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.o = zext i16 %i.l to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  tail call void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #37
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  br i1 %2, label %bb.c, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA2_KcEEERS5_DpOT_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.p = phi i64 [ %i.o, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr @_ZN11OpenImageIO4v3_18PSDInput18mode_channel_namesE, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i16, ptr %i.k, align 2, !tbaa !167
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_18PSDInput18mode_channel_countE, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !449

bb.c:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !21   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.d, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !7
  store i8 65, ptr %i.ac, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %i.ad, align 8, !tbaa !11
end_hunk_6
