Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CTFTransform?download=true
inline.NumInlined: 3283
inline.NumDeleted: 894
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_111Lut3DWriter12writeContentEv:bb.a
  %i.ex = getelementptr i8, ptr %i.ev, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %1, i64 %i.ey
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !79
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.fa, align 8, !tbaa !245
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fb) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.s:                                             ; preds = %bb.e, %_ZNSolsEm.exit30, %bb.d, %_ZNSolsEm.exit28, %bb.c, %_ZNSolsEm.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #27
  %i.fe = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ab
  br i1 %i.ff, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.g
  %.sink = phi ptr [ %i.ap, %bb.g ], [ %i.fe, %bb.t ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.fd, %bb.t ]
  %i.fg = load i64, ptr %i.ab, align 8, !tbaa !53
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fh) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.fd, %bb.t ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.cn
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.u
  %i.fl = load i64, ptr %i.cn, align 8, !tbaa !53
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.x

bb.v:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i41
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.dh
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.w
  %i.fr = load i64, ptr %i.dh, align 8, !tbaa !53
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %.body
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.fn, %bb.v ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn, %bb.x ], [ %i.fc, %bb.s ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn23.pn.pn.pn
}

declare noundef ptr @_ZN16OpenColorIO_v2_522GetInterpolation3DNameENS_13InterpolationE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterE, i64 16), ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !77
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !28
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit, !prof !80

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !225
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriterD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN16OpenColorIO_v2_516XmlElementWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(56) %0) #27, !inline_history !225
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #29
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter5getOpEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !82
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !82
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !59
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !59
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IKNS0_12MatrixOpDataEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter10getTagNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @_ZN16OpenColorIO_v2_5L10TAG_MATRIXE
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.89", align 16 ; 9 uses
  %2 = alloca %"class.std::shared_ptr.93", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca [20 x double], align 16           ; 23 uses
  %i.b = alloca [16 x double], align 16           ; 13 uses
  %i.c = alloca [12 x double], align 16           ; 10 uses
  %i.d = alloca [9 x double], align 16            ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.e, @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E
  br i1 %i.f, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.h = load i32, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, align 8, !tbaa !56 ; 2 uses
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %i.g, %i.h
  br i1 %i.j, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57   ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 4), align 4, !tbaa !57 ; 2 uses
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i32 %i.l, %i.m
  br i1 %i.o, label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L28CTF_PROCESS_LIST_VERSION_2_0E, i64 8), align 8, !tbaa !58
  %i.s = icmp ult i32 %i.q, %i.r
  br label %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit

_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit:  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ %i.s, %bb.f ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !220  ; 3 uses
  store ptr %i.u, ptr %1, align 16, !tbaa !220
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74   ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !59
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !59
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %1, align 16, !tbaa !220
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit: ; preds = %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit, %bb.h, %bb.i
  %i.ad = phi ptr [ %i.u, %_ZNK16OpenColorIO_v2_510CTFVersionltERKS0_.exit ], [ %i.u, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !780
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %bb.y

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNK16OpenColorIO_v2_512MatrixOpData12getAsForwardEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %2, ptr noundef nonnull align 8 dereferenceable(260) %i.ad)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x ptr>, ptr %2, align 16, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !74  ; 8 uses
  store <2 x ptr> %i.ai, ptr %1, align 16, !tbaa !82
  %.not.i.i.i.i143 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i143, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !77
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27, !inline_history !775
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27, !inline_history !775
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.q, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, !prof !80

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #27
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !74  ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.az, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !77
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !29
  %i.bh = load ptr, ptr %.pr, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i144 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i144, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.u ], [ %i.bm, %bb.v ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.w, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS3_E4typeEOSC_.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ca

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bp = load ptr, ptr %1, align 16, !tbaa !220  ; 10 uses
  %i.bq = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData8hasAlphaEv(ptr noundef nonnull align 8 dereferenceable(260) %i.bp)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 216 ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.ag
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_112MatrixWriter12writeContentEv:bb.a
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !783 ; 2 uses
  %i.co = icmp ugt ptr %i.cl, %i.cn
  %.08.i.i.i = select i1 %i.co, ptr %i.cl, ptr %i.cn ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i149 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i149, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !103, !noalias !783 ; 2 uses
  %i.cr = ptrtoint ptr %.08.i.i.i to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.cq, i64 noundef %i.ct)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %6, align 8, !tbaa !51, !alias.scope !783 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ci
  br i1 %i.cx, label %.body, label %.body.sink.split

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ak

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.al, %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.cz, ptr %5, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cz, ptr noundef nonnull align 1 dereferenceable(3) @_ZN16OpenColorIO_v2_5L14ATTR_DIMENSIONE, i64 3, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 3, ptr %i.da, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %i.db, align 1, !tbaa !53
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 10 uses
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !60
  %i.de = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ci
  br i1 %i.df, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dg = load i64, ptr %i.cj, align 8, !tbaa !52 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dh)
  %i.di = add nuw nsw i64 %i.dg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.di, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !51
  %i.dj = load i64, ptr %i.ci, align 8, !tbaa !53
  store i64 %i.dj, ptr %i.dd, align 8, !tbaa !53
  %.pre184 = load i64, ptr %i.cj, align 8, !tbaa !52
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.am
  %i.dk = phi i64 [ %.pre184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dg, %bb.am ]
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !52
  store ptr %i.ci, ptr %6, align 8, !tbaa !51
  store i64 0, ptr %i.cj, align 8, !tbaa !52
  store i8 0, ptr %i.ci, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !106 ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !107
  %.not.i.i150 = icmp eq ptr %i.dn, %i.dp
  br i1 %.not.i.i150, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 3 uses
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !60
  %i.dr = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cz
  br i1 %i.ds, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151

bb.ap:                                            ; preds = %bb.ao
  %i.dt = load i32, ptr %i.cz, align 8
  store i32 %i.dt, ptr %i.dq, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151: ; preds = %bb.ao
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !51
  %i.du = load i64, ptr %i.cz, align 8, !tbaa !53
  store i64 %i.du, ptr %i.dq, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151, %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 3, ptr %i.dv, align 8, !tbaa !52
  store ptr %i.cz, ptr %5, align 8, !tbaa !51
  store i64 0, ptr %i.da, align 8, !tbaa !52
  store i8 0, ptr %i.cz, align 8, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 3 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !60
  %i.dy = load ptr, ptr %i.dc, align 8, !tbaa !51 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dd
  br i1 %i.dz, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.ea = load i64, ptr %i.dl, align 8, !tbaa !52 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nuw nsw i64 %i.ea, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dd, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !51
  %i.ed = load i64, ptr %i.dd, align 8, !tbaa !53
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !53
  %.pre185 = load i64, ptr %i.dl, align 8, !tbaa !52
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.ee = phi i64 [ %.pre185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.ea, %bb.aq ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !52
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !51
  store i64 0, ptr %i.dl, align 8, !tbaa !52
  store i8 0, ptr %i.dd, align 8, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  store ptr %i.eg, ptr %i.dm, align 8, !tbaa !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ar:                                            ; preds = %bb.an
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.dn, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.az

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.ar
  %.pre186 = load ptr, ptr %i.dc, align 8, !tbaa !51 ; 2 uses
  %i.eh = icmp eq ptr %.pre186, %i.dd
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ei = load i64, ptr %i.dd, align 8, !tbaa !53
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %.pre186, i64 noundef %i.ej) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ek = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cz
  br i1 %i.el, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = load i64, ptr %i.cz, align 8, !tbaa !53
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.eo = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ci
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.eq = load i64, ptr %i.ci, align 8, !tbaa !53
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !166, !nonnull !98, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.eu, ptr %7, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.eu, ptr noundef nonnull align 1 dereferenceable(5) @_ZN16OpenColorIO_v2_5L9TAG_ARRAYE, i64 5, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.ev, align 8, !tbaa !52
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.ew, align 1, !tbaa !53
  invoke void @_ZN16OpenColorIO_v2_512XmlFormatter13writeStartTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt4pairIS6_S6_ESaISB_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ex = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.eu
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.as
  %i.ez = load i64, ptr %i.eu, align 8, !tbaa !53
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bp, i64 192 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bp, i64 216 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !175
  %i.ff = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.fe)
          to label %bb.at unwind label %bb.bb     ; 7 uses

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !174
  %i.fi = invoke noundef double @_ZN16OpenColorIO_v2_519GetBitDepthMaxValueENS_8BitDepthE(i32 noundef %i.fh)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.fj = fdiv double %i.ff, %i.fi                ; 20 uses
  %i.fk = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData8hasAlphaEv(ptr noundef nonnull align 8 dereferenceable(260) %i.bp)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  br i1 %i.fk, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.fl = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit159 unwind label %bb.bc

_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit159: ; preds = %bb.aw
  br i1 %i.fl, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.fm = load ptr, ptr %i.fb, align 8, !tbaa !177 ; 14 uses
  %i.fn = load <2 x double>, ptr %i.fm, align 8, !tbaa !139
  %i.fo = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fmul <2 x double> %i.fp, %i.fn
  store <2 x double> %i.fq, ptr %i.a, align 16, !tbaa !139
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.ft = load <2 x double>, ptr %i.fs, align 8, !tbaa !139
  %i.fu = fmul <2 x double> %i.fp, %i.ft
  store <2 x double> %i.fu, ptr %i.fr, align 16, !tbaa !139
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fw = load double, ptr %i.fc, align 8, !tbaa !139
  %i.fx = fmul double %i.ff, %i.fw
  store double %i.fx, ptr %i.fv, align 16, !tbaa !139
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !139
  %i.gb = fmul double %i.fj, %i.ga
  store double %i.gb, ptr %i.fy, align 8, !tbaa !139
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !139
  %i.gf = fmul double %i.fj, %i.ge
  store double %i.gf, ptr %i.gc, align 16, !tbaa !139
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !139
  %i.gj = fmul double %i.fj, %i.gi
  store double %i.gj, ptr %i.gg, align 8, !tbaa !139
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !139
  %i.gn = fmul double %i.fj, %i.gm
  store double %i.gn, ptr %i.gk, align 16, !tbaa !139
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !139
  %i.gr = fmul double %i.ff, %i.gq
  store double %i.gr, ptr %i.go, align 8, !tbaa !139
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !139
  %i.gv = fmul double %i.fj, %i.gu
  store double %i.gv, ptr %i.gs, align 16, !tbaa !139
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !139
  %i.gz = fmul double %i.fj, %i.gy
  store double %i.gz, ptr %i.gw, align 8, !tbaa !139
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !139
  %i.hd = fmul double %i.fj, %i.hc
  store double %i.hd, ptr %i.ha, align 16, !tbaa !139
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !139
  %i.hh = fmul double %i.fj, %i.hg
  store double %i.hh, ptr %i.he, align 8, !tbaa !139
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !139
  %i.hl = fmul double %i.ff, %i.hk
  store double %i.hl, ptr %i.hi, align 16, !tbaa !139
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !139
  %i.hp = fmul double %i.fj, %i.ho
  store double %i.hp, ptr %i.hm, align 8, !tbaa !139
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fm, i64 104
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !139
  %i.ht = fmul double %i.fj, %i.hs
  store double %i.ht, ptr %i.hq, align 16, !tbaa !139
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !139
  %i.hx = fmul double %i.fj, %i.hw
  store double %i.hx, ptr %i.hu, align 8, !tbaa !139
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !139
  %i.ib = fmul double %i.fj, %i.ia
  store double %i.ib, ptr %i.hy, align 16, !tbaa !139
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.id = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.ie = load double, ptr %i.id, align 8, !tbaa !139
  %i.if = fmul double %i.ff, %i.ie
  store double %i.if, ptr %i.ic, align 8, !tbaa !139
  %i.ig = load ptr, ptr %i.es, align 8, !tbaa !166, !nonnull !98, !align !167
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef %i.a, ptr noundef %i.ih, i32 noundef 5)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %._crit_edge.i.i168

bb.az:                                            ; preds = %bb.ar
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #27
  %i.ij = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ci
  br i1 %i.ik, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.az, %bb.ak
  %.sink = phi ptr [ %i.cw, %bb.ak ], [ %i.ij, %bb.az ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.cv, %bb.ak ], [ %i.ii, %bb.az ]
  %i.il = load i64, ptr %i.ci, align 8, !tbaa !53
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.im) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.az, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.ak ], [ %i.ii, %bb.az ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bx

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.eu
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ba
  %i.iq = load i64, ptr %i.eu, align 8, !tbaa !53
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bx

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bc:                                            ; preds = %bb.bh, %bb.aw, %bb.au, %bb.at
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bd:                                            ; preds = %bb.ax
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bx

bb.be:                                            ; preds = %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.iv = load ptr, ptr %i.fb, align 8, !tbaa !177 ; 8 uses
  %i.iw = load <2 x double>, ptr %i.iv, align 8, !tbaa !139
  %i.ix = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.iz = fmul <2 x double> %i.iy, %i.iw
  store <2 x double> %i.iz, ptr %i.b, align 16, !tbaa !139
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jc = load <2 x double>, ptr %i.jb, align 8, !tbaa !139
  %i.jd = fmul <2 x double> %i.iy, %i.jc
  store <2 x double> %i.jd, ptr %i.ja, align 16, !tbaa !139
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jg = load <2 x double>, ptr %i.jf, align 8, !tbaa !139
  %i.jh = fmul <2 x double> %i.iy, %i.jg
  store <2 x double> %i.jh, ptr %i.je, align 16, !tbaa !139
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.jk = load <2 x double>, ptr %i.jj, align 8, !tbaa !139
  %i.jl = fmul <2 x double> %i.iy, %i.jk
  store <2 x double> %i.jl, ptr %i.ji, align 16, !tbaa !139
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.jo = load <2 x double>, ptr %i.jn, align 8, !tbaa !139
  %i.jp = fmul <2 x double> %i.iy, %i.jo
  store <2 x double> %i.jp, ptr %i.jm, align 16, !tbaa !139
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  %i.js = load <2 x double>, ptr %i.jr, align 8, !tbaa !139
  %i.jt = fmul <2 x double> %i.iy, %i.js
  store <2 x double> %i.jt, ptr %i.jq, align 16, !tbaa !139
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  %i.jw = load <2 x double>, ptr %i.jv, align 8, !tbaa !139
  %i.jx = fmul <2 x double> %i.iy, %i.jw
  store <2 x double> %i.jx, ptr %i.ju, align 16, !tbaa !139
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iv, i64 112
  %i.ka = load <2 x double>, ptr %i.jz, align 8, !tbaa !139
  %i.kb = fmul <2 x double> %i.iy, %i.ka
  store <2 x double> %i.kb, ptr %i.jy, align 16, !tbaa !139
  %i.kc = load ptr, ptr %i.es, align 8, !tbaa !166, !nonnull !98, !align !167
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef %i.b, ptr noundef %i.kd, i32 noundef 4)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %._crit_edge.i.i168

bb.bg:                                            ; preds = %bb.be
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.bx

bb.bh:                                            ; preds = %bb.av
  %i.kf = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData7Offsets9isNotNullEv(ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit167 unwind label %bb.bc

_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit167: ; preds = %bb.bh
  br i1 %i.kf, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.kg = load ptr, ptr %i.fb, align 8, !tbaa !177 ; 6 uses
  %i.kh = load <2 x double>, ptr %i.kg, align 8, !tbaa !139
  %i.ki = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x double> %i.kj, %i.kh
  store <2 x double> %i.kk, ptr %i.c, align 16, !tbaa !139
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %9 = load double, ptr %i.km, align 8, !tbaa !139
  %i.kn = load double, ptr %i.fc, align 8, !tbaa !139
  %10 = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %11 = load <2 x double>, ptr %10, align 8, !tbaa !139
  %12 = insertelement <4 x double> poison, double %i.fj, i64 0
  %13 = insertelement <4 x double> %12, double %i.ff, i64 1
  %14 = shufflevector <4 x double> %13, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %15 = insertelement <4 x double> poison, double %9, i64 0
  %16 = insertelement <4 x double> %15, double %i.kn, i64 1
  %17 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x double> %16, <4 x double> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %19 = fmul <4 x double> %14, %18
  store <4 x double> %19, ptr %i.kl, align 16, !tbaa !139
  %i.ko = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !139
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %20 = load double, ptr %i.kr, align 8, !tbaa !139
  %21 = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  %22 = load <2 x double>, ptr %21, align 8, !tbaa !139
  %23 = insertelement <4 x double> poison, double %i.kq, i64 0
  %24 = insertelement <4 x double> %23, double %20, i64 1
  %25 = shufflevector <2 x double> %22, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %26 = shufflevector <4 x double> %24, <4 x double> %25, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %27 = fmul <4 x double> %14, %26
  store <4 x double> %27, ptr %i.ko, align 16, !tbaa !139
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !139
  %i.kv = fmul double %i.fj, %i.ku
  store double %i.kv, ptr %i.ks, align 16, !tbaa !139
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bp, i64 232
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !139
  %i.kz = fmul double %i.ff, %i.ky
  store double %i.kz, ptr %i.kw, align 8, !tbaa !139
  %i.la = load ptr, ptr %i.es, align 8, !tbaa !166, !nonnull !98, !align !167
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef %i.c, ptr noundef %i.lb, i32 noundef 4)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %._crit_edge.i.i168

bb.bk:                                            ; preds = %bb.bi
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.bx

bb.bl:                                            ; preds = %_ZNK16OpenColorIO_v2_512MatrixOpData10hasOffsetsEv.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ld = load ptr, ptr %i.fb, align 8, !tbaa !177 ; 6 uses
  %i.le = load <2 x double>, ptr %i.ld, align 8, !tbaa !139
  %i.lf = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lh = fmul <2 x double> %i.lg, %i.le
  store <2 x double> %i.lh, ptr %i.d, align 16, !tbaa !139
  %i.li = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !139
  %28 = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %29 = load double, ptr %28, align 8, !tbaa !139
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %30 = load <2 x double>, ptr %i.ll, align 8, !tbaa !139
  %31 = insertelement <4 x double> poison, double %i.fj, i64 0
  %32 = shufflevector <4 x double> %31, <4 x double> poison, <4 x i32> zeroinitializer
  %33 = insertelement <4 x double> poison, double %i.lk, i64 0
  %34 = insertelement <4 x double> %33, double %29, i64 1
  %35 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x double> %34, <4 x double> %35, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %37 = fmul <4 x double> %32, %36
  store <4 x double> %37, ptr %i.li, align 16, !tbaa !139
  %i.lm = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lo = load <2 x double>, ptr %i.ln, align 8, !tbaa !139
  %i.lp = fmul <2 x double> %i.lg, %i.lo
  store <2 x double> %i.lp, ptr %i.lm, align 16, !tbaa !139
  %i.lq = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !139
  %i.lt = fmul double %i.fj, %i.ls
  store double %i.lt, ptr %i.lq, align 16, !tbaa !139
  %i.lu = load ptr, ptr %i.es, align 8, !tbaa !166, !nonnull !98, !align !167
  %i.lv = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111WriteValuesIPKddEEvRNS_12XmlFormatterET_S6_jNS_8BitDepthEjT0_(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, ptr noundef %i.d, ptr noundef %i.lv, i32 noundef 3)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %._crit_edge.i.i168

bb.bn:                                            ; preds = %bb.bl
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.bx

._crit_edge.i.i168:                               ; preds = %bb.bj, %bb.bm, %bb.ay, %bb.bf
  %i.lx = load ptr, ptr %i.es, align 8, !tbaa !166, !nonnull !98, !align !167
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ly, ptr %8, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ly, ptr noundef nonnull align 1 dereferenceable(5) @_ZN16OpenColorIO_v2_5L9TAG_ARRAYE, i64 5, i1 false)
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.lz, align 8, !tbaa !52
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 0, ptr %i.ma, align 1, !tbaa !53
  invoke void @_ZN16OpenColorIO_v2_512XmlFormatter11writeEndTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %._crit_edge.i.i168
  %i.mb = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.ly
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bo
  %i.md = load i64, ptr %i.ly, align 8, !tbaa !53
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.mf = load ptr, ptr %4, align 8, !tbaa !168   ; 3 uses
  %i.mg = load ptr, ptr %i.dm, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mf, %i.mg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ms, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ] ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !51 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !53
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !53
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #29
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.ms, %i.mg
  br i1 %.not.i.i.i175, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.mt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.mu = load ptr, ptr %i.do, align 8, !tbaa !107
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mx) #29
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.my = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.my, ptr %3, align 8, !tbaa !79
  %i.mz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.na = getelementptr i8, ptr %i.my, i64 -24
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = getelementptr inbounds i8, ptr %3, i64 %i.nb
  store ptr %i.mz, ptr %i.nc, align 8, !tbaa !79
  %i.nd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !79
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.nf, align 8, !tbaa !79
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !51 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !53
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nl) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.nf, align 8, !tbaa !79
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.nm) #27
  %i.nn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.nn, ptr %3, align 8, !tbaa !79
  %i.no = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.np = getelementptr i8, ptr %i.nn, i64 -24
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = getelementptr inbounds i8, ptr %3, i64 %i.nq
  store ptr %i.no, ptr %i.nr, align 8, !tbaa !79
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ns, align 8, !tbaa !245
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.nt) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.nu = load ptr, ptr %i.v, align 8, !tbaa !74  ; 8 uses
  %.not.i.i176 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i176, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 4 uses
  %i.nw = load atomic i64, ptr %i.nv acquire, align 8 ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 4294967297
  %i.ny = trunc i64 %i.nw to i32                  ; 2 uses
  br i1 %i.nx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.nv, align 8, !tbaa !76
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  store i32 0, ptr %i.nz, align 4, !tbaa !77
  %i.oa = load ptr, ptr %i.nu, align 8, !tbaa !79
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #27, !inline_history !27
  %i.od = load ptr, ptr %i.nu, align 8, !tbaa !79
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #27, !inline_history !27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bs:                                            ; preds = %bb.bq
  %i.og = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i177 = icmp eq i8 %i.og, 0
  br i1 %.not.i.i.i177, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oh = add nsw i32 %i.ny, -1
  store i32 %i.oh, ptr %i.nv, align 8, !tbaa !59
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178

bb.bu:                                            ; preds = %bb.bs
  %i.oi = atomicrmw volatile add ptr %i.nv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i179 = phi i32 [ %i.ny, %bb.bt ], [ %i.oi, %bb.bu ]
  %i.oj = icmp eq i32 %.0.i.i.i.i179, 1
  br i1 %i.oj, label %bb.bv, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !80

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nu) #27
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512MatrixOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i178, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.bw:                                            ; preds = %._crit_edge.i.i168
  %i.ok = landingpad { ptr, i32 }
end_hunk_1
