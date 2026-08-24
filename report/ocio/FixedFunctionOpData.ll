Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpData?download=true
inline.NumInlined: 581
inline.NumDeleted: 180
begin_hunk_0_@_ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %4, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %i.j)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #19
          to label %bb.o unwind label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.i:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread: ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.x = load i64, ptr %i.v, align 8, !tbaa !14
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0, label %bb.l, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn1325 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  call void @__cxa_free_exception(ptr %i.i) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %bb.l, %bb.j
  %.pn13.pn = phi { ptr, i32 } [ %.pn1325, %bb.l ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.r, %bb.j ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn13.pn.pn

switch.lookup:                                    ; preds = %bb.a
  %i.z = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN16OpenColorIO_v2_519FixedFunctionOpData12ConvertStyleENS0_5StyleE, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  invoke void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.j) #17
  resume { ptr, i32 } %i.c
}

declare void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_56OpDataC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !46

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = load ptr, ptr %2, align 8, !tbaa !47     ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc6
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load double, ptr %i.o, align 8, !tbaa !49
  store double %i.v, ptr %i.k, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !45
  invoke void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData8validateEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %bb.i ], [ %i.y, %bb.j ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ae) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.h) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataD0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_519FixedFunctionOpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18, !inline_history !51
  br label %_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev.exit

_ZN16OpenColorIO_v2_519FixedFunctionOpDataD2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN16OpenColorIO_v2_56OpDataE, i64 16), ptr %0, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.h) #17, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  store ptr null, ptr %0, align 8, !tbaa !55, !alias.scope !52
  %i.d = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #20, !noalias !52 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !60, !noalias !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !62, !noalias !52
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !18, !noalias !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(200) %i.g, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !52

common.resume:                                    ; preds = %bb.b, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ], [ %i.m, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519FixedFunctionOpDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 216) #18, !noalias !52
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.i, align 8, !tbaa !63, !alias.scope !52
  store ptr %i.g, ptr %0, align 8, !tbaa !64, !alias.scope !52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.l = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.j)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  br label %common.resume

bb.c:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_519FixedFunctionOpDataEJNS1_5StyleERKSt6vectorIdSaIdEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_519FixedFunctionOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !62
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !65
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !65
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_519FixedFunctionOpData8validateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
