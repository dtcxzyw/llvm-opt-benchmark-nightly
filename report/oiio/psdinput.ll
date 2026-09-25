Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/psdinput?download=true
inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput18load_resource_1005Ej:_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjfEEbRT0_.exit
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.l
  %i.cw = load i64, ptr %i.cg, align 8, !tbaa !63
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
  store ptr %i.c, ptr %2, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !62
  store i8 0, ptr %i.c, align 8, !tbaa !63
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.013 = phi i32 [ %1, %.lr.ph ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ]
  store i64 0, ptr %i.d, align 8, !tbaa !62
  %i.i = load ptr, ptr %2, align 8, !tbaa !69
  store i8 0, ptr %i.i, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.j = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.noexc
  %i.k = load i8, ptr %i.b, align 1, !tbaa !63    ; 2 uses
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
  %i.o = load ptr, ptr %2, align 8, !tbaa !69
  %i.p = load i8, ptr %i.b, align 1, !tbaa !63
  %i.q = zext i8 %i.p to i64
  %i.r = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.o, i64 noundef %i.q, i64 noundef 1)
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %.noexc6
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc7
  %i.s = load i8, ptr %i.b, align 1, !tbaa !63
  %i.t = zext i8 %i.s to i32
  %.neg = xor i32 %i.t, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc7, %.noexc, %bb.d
  %.1.i.neg = phi i32 [ 0, %.noexc ], [ -1, %.noexc7 ], [ %.neg, %bb.f ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.u = add nsw i32 %.1.i.neg, %.013             ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !72   ; 8 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !59
  %i.y = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.z = load i64, ptr %i.d, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.z, ptr %i.a, align 8, !tbaa !74
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.l    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !69
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !63
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc8, %bb.h
  %i.ad = phi ptr [ %i.ab, %.noexc8 ], [ %i.x, %bb.h ] ; 2 uses
  switch i64 %i.z, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !63
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.y, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !62
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !72
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
  %i.an = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !63
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.am

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.ar = icmp eq ptr %.pre, %i.c
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %._crit_edge
  %i.as = load i64, ptr %i.c, align 8, !tbaa !63
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 636
  %2 = lshr i32 %.0, 24
  %3 = lshr i32 %.0, 16
  %4 = lshr i32 %.0, 8
  %5 = trunc nuw i32 %2 to i8
  %6 = trunc i32 %3 to i8
  %7 = trunc i32 %4 to i8
  %8 = trunc i32 %.0 to i8
  %9 = insertelement <4 x i8> poison, i8 %8, i64 0
  %10 = insertelement <4 x i8> %9, i8 %7, i64 1
  %11 = insertelement <4 x i8> %10, i8 %6, i64 2
  %12 = insertelement <4 x i8> %11, i8 %5, i64 3
  %13 = uitofp <4 x i8> %12 to <4 x float>
  %14 = fmul nnan <4 x float> %13, splat (float f0x3B808081)
  store <4 x float> %14, ptr %i.g, align 4, !tbaa !65
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
  store ptr %i.f, ptr %5, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.f, ptr noundef nonnull align 1 dereferenceable(10) @.str.68, i64 10, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 10, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.h, align 2, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.j, align 8, !tbaa !68
  %.sroa.9.0.insert.shift = shl nuw i64 %i.b, 32
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.shift, 258 ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull dead_on_return %3, i64 %.sroa.039.0.insert.insert, ptr noundef nonnull %i.c)
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.l, ptr %4, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.g, align 8, !tbaa !62
  store i64 %i.n, ptr %i.m, align 8, !tbaa !68
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull dead_on_return %4, i64 %.sroa.039.0.insert.insert, ptr noundef nonnull %i.c)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.o = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.f
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.f, align 8, !tbaa !63
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !62
  store i8 0, ptr %i.s, align 8, !tbaa !63
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
  store ptr @.str.69, ptr %2, align 8, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 17, ptr %i.w, align 8, !tbaa !68
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
  %i.aa = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.j
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !63
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

bb.k:                                             ; preds = %.critedge, %bb.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.k
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !63
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit32

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.012 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  %i.aj = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.s
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.l
  %i.al = load i64, ptr %i.s, align 8, !tbaa !63
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.113 = phi i1 [ %.012, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ false, %bb.b ]
  call void @_ZdaPv(ptr noundef nonnull %i.c) #38
  ret i1 %.113

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
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !76
end_hunk_0
