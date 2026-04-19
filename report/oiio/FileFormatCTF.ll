inline.NumInlined: 2807
inline.NumDeleted: 1170
begin_hunk_0_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt3endEv:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca i64, align 8                        ; 6 uses
  %6 = alloca i64, align 8                        ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %10 = load ptr, ptr %9, align 8, !tbaa !234     ; 2 uses
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb.a, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @__dynamic_cast(ptr nonnull %10, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_521CTFReaderTransformEltE, i64 0) #27
  br label %bb.a

bb.a:                                             ; preds = %4, %12
  %14 = phi ptr [ %13, %12 ], [ null, %4 ]        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt12getTransformEv(ptr noundef nonnull align 8 dereferenceable(97) %14)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 %i.g, ptr %6, align 8, !tbaa !69
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !29
  %i.j = load i64, ptr %6, align 8, !tbaa !69
  store i64 %i.j, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %6, align 8, !tbaa !69     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = load ptr, ptr %7, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !13
  %i.r = icmp eq ptr %1, null
  %i.s = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.r, %i.s
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  unreachable

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i64 %2, ptr %5, align 8, !tbaa !69
  %i.t = icmp ugt i64 %2, 15
  br i1 %i.t, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %.noexc14 unwind label %bb.k   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.u, ptr %8, align 8, !tbaa !29
  %i.v = load i64, ptr %5, align 8, !tbaa !69
  store i64 %i.v, ptr %i.q, align 8, !tbaa !19
  br label %._crit_edge.i.i12

end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i12
  %i.y = load i64, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !16
  %i.aa = load ptr, ptr %8, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ae = sub i64 4611686018427387903, %i.ad
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.ag = load ptr, ptr %8, align 8, !tbaa !29
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ai = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.am = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt12getTransformEv(ptr noundef nonnull align 8 dereferenceable(97) %14)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN16OpenColorIO_v2_518CTFReaderTransform18setInputDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN16OpenColorIO_v2_518CTFReaderTransform18setInputDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j
  %i.ap = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZN16OpenColorIO_v2_518CTFReaderTransform18setInputDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.k:                                             ; preds = %.noexc.i13, %bb.d
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.q
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_8
begin_hunk_9_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn10 = phi { ptr, i32 } [ %i.az, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  %i.ba = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

end_hunk_9
begin_hunk_10_@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_527CTFReaderInputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn10
}

end_hunk_10
begin_hunk_11_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt3endEv:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca i64, align 8                        ; 6 uses
  %6 = alloca i64, align 8                        ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %10 = load ptr, ptr %9, align 8, !tbaa !234     ; 2 uses
  %11 = icmp eq ptr %10, null
  br i1 %11, label %bb.a, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @__dynamic_cast(ptr nonnull %10, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_521CTFReaderTransformEltE, i64 0) #27
  br label %bb.a

bb.a:                                             ; preds = %4, %12
  %14 = phi ptr [ %13, %12 ], [ null, %4 ]        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt12getTransformEv(ptr noundef nonnull align 8 dereferenceable(97) %14)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 %i.g, ptr %6, align 8, !tbaa !69
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !29
  %i.j = load i64, ptr %6, align 8, !tbaa !69
  store i64 %i.j, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i

end_hunk_11
begin_hunk_12_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %6, align 8, !tbaa !69     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = load ptr, ptr %7, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !13
  %i.r = icmp eq ptr %1, null
  %i.s = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.r, %i.s
end_hunk_12
begin_hunk_13_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  unreachable

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i64 %2, ptr %5, align 8, !tbaa !69
  %i.t = icmp ugt i64 %2, 15
  br i1 %i.t, label %.noexc.i13, label %._crit_edge.i.i12

.noexc.i13:                                       ; preds = %bb.e
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %.noexc14 unwind label %bb.k   ; 2 uses

.noexc14:                                         ; preds = %.noexc.i13
  store ptr %i.u, ptr %8, align 8, !tbaa !29
  %i.v = load i64, ptr %5, align 8, !tbaa !69
  store i64 %i.v, ptr %i.q, align 8, !tbaa !19
  br label %._crit_edge.i.i12

end_hunk_13
begin_hunk_14_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i12
  %i.y = load i64, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !16
  %i.aa = load ptr, ptr %8, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !16  ; 2 uses
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ae = sub i64 4611686018427387903, %i.ad
end_hunk_14
begin_hunk_15_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.ag = load ptr, ptr %8, align 8, !tbaa !29
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ai = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_15
begin_hunk_16_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.am = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CTFReaderTransformElt12getTransformEv(ptr noundef nonnull align 8 dereferenceable(97) %14)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN16OpenColorIO_v2_518CTFReaderTransform19setOutputDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m

_ZN16OpenColorIO_v2_518CTFReaderTransform19setOutputDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j
  %i.ap = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.d
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

end_hunk_16
begin_hunk_17_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZN16OpenColorIO_v2_518CTFReaderTransform19setOutputDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.k:                                             ; preds = %.noexc.i13, %bb.d
end_hunk_17
begin_hunk_18_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.q
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

end_hunk_18
begin_hunk_19_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.k
  %.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_19
begin_hunk_20_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn10 = phi { ptr, i32 } [ %i.az, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ]
  %i.ba = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

end_hunk_20
begin_hunk_21_@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj:bb.a/@_ZN16OpenColorIO_v2_528CTFReaderOutputDescriptorElt10setRawDataEPKcmj
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn10
}

end_hunk_21
