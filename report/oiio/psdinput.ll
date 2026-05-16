inline.NumInlined: 4893
inline.NumDeleted: 1786
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput18load_resource_1005Ej:_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjfEEbRT0_.exit
          cleanup
  %i.cu = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cg
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.l
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !14
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.n

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit40.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit40, %bb.d, %bb.b
  %.017 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit40 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit40.thread ]
  ret i1 %.017

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn24.pn = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  resume { ptr, i32 } %.pn24.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1006Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !11
  store i8 0, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.013 = phi i32 [ %1, %.lr.ph ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ]
  store i64 0, ptr %i.d, align 8, !tbaa !11
  %i.i = load ptr, ptr %2, align 8, !tbaa !20
  store i8 0, ptr %i.i, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.j = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.noexc
  %i.k = load i8, ptr %i.b, align 1, !tbaa !14    ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef 0, i32 noundef 1)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %bb.c
  %i.n = zext i8 %i.k to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.n, i8 noundef signext 0)
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !20
  %i.p = load i8, ptr %i.b, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i64
  %i.r = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.o, i64 noundef %i.q, i64 noundef 1)
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %.noexc6
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc7
  %i.s = load i8, ptr %i.b, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  %.neg = xor i32 %i.t, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc7, %.noexc, %bb.d
  %.1.i.neg = phi i32 [ 0, %.noexc ], [ -1, %.noexc7 ], [ %.neg, %bb.f ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.u = add nsw i32 %.1.i.neg, %.013             ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !21   ; 8 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !7
  %i.y = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.z, ptr %i.a, align 8, !tbaa !25
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !20
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.h
  %i.ad = phi ptr [ %i.ab, %.noexc8 ], [ %i.x, %bb.h ] ; 2 uses
  switch i64 %i.z, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !14
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.y, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !11
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.l

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = icmp sgt i32 %i.u, 1
  br i1 %i.al, label %bb.b, label %._crit_edge

bb.l:                                             ; preds = %bb.k, %.noexc.i.i, %.noexc6, %bb.e, %bb.d, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !14
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.am

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ar = icmp eq ptr %.pre, %i.c
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %._crit_edge
  %i.as = load i64, ptr %i.c, align 8, !tbaa !14
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.at) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %._crit_edge, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_resource_1010Ej(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 %1) #1 align 2 {
_ZN11OpenImageIO4v3_18PSDInput9read_bigeIaaEEbRT0_.exit:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.c = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br i1 %i.c, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIiiEEbRT0_.exit, label %bb.a

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIiiEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIaaEEbRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.d = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  %.promoted.i = load i32, ptr %i.a, align 4
  %i.e = call i32 @llvm.bswap.i32(i32 %.promoted.i)
  %.1 = select i1 %i.d, i32 %i.e, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.a

bb.a:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIiiEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIaaEEbRT0_.exit
  %.0 = phi i32 [ %.1, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIiiEEbRT0_.exit ], [ 0, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIaaEEbRT0_.exit ] ; 4 uses
  %i.f = phi i1 [ %i.d, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIiiEEbRT0_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIaaEEbRT0_.exit ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 636
  %3 = lshr i32 %.0, 24
  %4 = lshr i32 %.0, 16
  %i.g = lshr i32 %.0, 8
  %5 = trunc nuw i32 %3 to i8
  %i.h = trunc i32 %4 to i8
  %6 = trunc i32 %i.g to i8
  %i.i = trunc i32 %.0 to i8
  %7 = insertelement <4 x i8> poison, i8 %i.i, i64 0
  %8 = insertelement <4 x i8> %7, i8 %6, i64 1
  %9 = insertelement <4 x i8> %8, i8 %i.h, i64 2
  %10 = insertelement <4 x i8> %9, i8 %5, i64 3
  %11 = uitofp <4 x i8> %10 to <4 x float>
  %12 = fmul nnan <4 x float> %11, splat (float f0x3B808081)
  store <4 x float> %12, ptr %2, align 4, !tbaa !15
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
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18PSDInput11load_layersEv:bb.a
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
  %i.ak = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i58) ; 2 uses
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
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i)
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
  %i.z = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i20)
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
  %i.ac = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i22)
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
  %1 = lshr i16 %.promoted.i25, 8
  %2 = trunc nuw i16 %1 to i8
  store i8 %2, ptr %i.ae, align 4, !tbaa !14
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23, %.lr.ph.i.preheader.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.af = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.w, i32 noundef 0)
  %i.ag = and i1 %i.ad, %i.af
  %i.ah = and i1 %i.ay, %i.ag
  %i.ai = and i1 %i.aa, %i.ah
  %i.aj = and i1 %i.ai, %i.x
  %i.ak = and i1 %i.aj, %i.ap
  %i.al = and i1 %i.ak, %i.as
  %i.am = and i1 %i.al, %i.av
  br label %bb.g

.lr.ph.i.preheader.i26:                           ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 778
  %.promoted.i27 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.ao = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i27)
  store i16 %i.ao, ptr %i.an, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %.lr.ph.i.preheader.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ap = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.ap, label %.lr.ph.i.preheader.i26.1, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1

.lr.ph.i.preheader.i26.1:                         ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 780
  %.promoted.i27.1 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.ar = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i27.1)
  store i16 %i.ar, ptr %i.aq, align 4, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1: ; preds = %.lr.ph.i.preheader.i26.1, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.as = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.as, label %.lr.ph.i.preheader.i26.2, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2

.lr.ph.i.preheader.i26.2:                         ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 782
  %.promoted.i27.2 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.au = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i27.2)
  store i16 %i.au, ptr %i.at, align 2, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2: ; preds = %.lr.ph.i.preheader.i26.2, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.av = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.av, label %.lr.ph.i.preheader.i26.3, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3

.lr.ph.i.preheader.i26.3:                         ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.promoted.i27.3 = load i16, ptr %i.a, align 2, !tbaa !26
  %i.ax = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i27.3)
  store i16 %i.ax, ptr %i.aw, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.3: ; preds = %.lr.ph.i.preheader.i26.3, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit28.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.ay = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.ay, label %.lr.ph.i.preheader.i21, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit23

bb.g:                                             ; preds = %bb.c, %bb.e, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit.thread, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %i.q, %bb.c ], [ %i.am, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIsaEEbRT0_.exit ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ], [ true, %bb.e ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit.thread ]
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
end_hunk_1
