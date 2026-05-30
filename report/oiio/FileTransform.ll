inline.NumInlined: 1682
inline.NumDeleted: 724
begin_hunk_0_@_ZN16OpenColorIO_v2_514FormatRegistryC2Ev:bb.a
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !95  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #34
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EED2Ev.exit

_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EED2Ev.exit: ; preds = %bb.an, %bb.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ar) #31
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN16OpenColorIO_v2_510FileFormatESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #31
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514FormatRegistry18registerFileFormatEPNS_10FileFormatE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.48", align 8    ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !100    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.9, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.10, i64 noundef 55)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.ao = load ptr, ptr %4, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef %i.ao)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #32
          to label %bb.ch unwind label %bb.j

bb.g:                                             ; preds = %_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.p, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.h:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.e
  %.024 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !36
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.024, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.024, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn56150 = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.an) #31
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %bb.i
  %.pn56.pn = phi { ptr, i32 } [ %.pn56150, %bb.k ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ar, %bb.i ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.l ], [ %i.aq, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.cg

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit141
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !102 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !99
  %.not.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  store ptr %1, ptr %i.bb, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !102
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !95 ; 4 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.p, label %_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #30
          to label %.noexc62 unwind label %bb.g   ; 4 uses

.noexc62:                                         ; preds = %_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store ptr %1, ptr %i.br, align 8, !tbaa !103
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.q, label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.q:                                             ; preds = %.noexc62
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.q, %.noexc62
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #34
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.bq, ptr %i.az, align 8, !tbaa !95
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !102
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !99
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit

bb.s:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit141
  %i.bv = phi ptr [ %i.k, %.lr.ph ], [ %i.ls, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit141 ]
  %i.bw = phi i64 [ 0, %.lr.ph ], [ %i.lq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit141 ] ; 10 uses
  %.023172 = phi i32 [ 0, %.lr.ph ], [ %i.lp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit141 ]
  %i.bx = getelementptr inbounds nuw [72 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !105
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.9, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %bb.u
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.11, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.12, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.thread

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.cf = load ptr, ptr %6, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef %i.cf)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #32
          to label %bb.ch unwind label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.v
  %.021 = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ck = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.z
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !36
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.021, label %bb.aa, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.021, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn51153 = phi { ptr, i32 } [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.thread ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ]
  call void @__cxa_free_exception(ptr %i.ce) #31
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %bb.aa, %bb.y
  %.pn51.pn = phi { ptr, i32 } [ %.pn51153, %bb.aa ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.ch, %bb.y ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %bb.ab ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cg

bb.ad:                                            ; preds = %bb.s
  %i.cp = invoke noundef ptr @_ZNK16OpenColorIO_v2_514FormatRegistry19getFileFormatByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.13, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.ag
  %i.cr = load ptr, ptr %2, align 8, !tbaa !109
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %i.bw ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !35
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.ct, i64 noundef %i.cv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ak

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cy = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.cz = load ptr, ptr %8, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef %i.cz)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #32
          to label %bb.ch unwind label %bb.al

.loopexit:                                        ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i89, %.noexc.i.i, %bb.bg, %.noexc.i.i104, %bb.bk, %.noexc.i.i117, %bb.br, %.noexc.i.i124, %bb.bv, %.noexc.i.i131, %bb.ca, %.noexc.i.i138, %bb.ce
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.aj:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73, %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.de = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_514FormatRegistry18registerFileFormatEPNS_10FileFormatE:bb.a

bb.ar:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dl, i64 %i.dn, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !48  ; 2 uses
  store i64 %i.dt, ptr %i.p, align 8, !tbaa !35
  %i.du = load ptr, ptr %10, align 8, !tbaa !47
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.dw = load ptr, ptr %10, align 8, !tbaa !47, !noalias !111 ; 7 uses
  %i.dx = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !111 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %.not6.i.i = icmp samesign eq i64 %i.dx, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.as
  %min.iters.check = icmp ult i64 %i.dx, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check237 = icmp ult i64 %i.dx, 32
  br i1 %min.iters.check237, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dx, 24
  %n.vec = and i64 %i.dx, -32                     ; 4 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dw, i64 %index ; 3 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36, !noalias !111 ; 3 uses
  %wide.load238 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !36, !noalias !111 ; 3 uses
  %i.eb = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ec = add <16 x i8> %wide.load238, splat (i8 -65)
  %i.ed = icmp ult <16 x i8> %i.eb, splat (i8 26)
  %i.ee = icmp ult <16 x i8> %i.ec, splat (i8 26)
  %i.ef = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.eg = or disjoint <16 x i8> %wide.load238, splat (i8 32)
  %i.eh = select <16 x i1> %i.ed, <16 x i8> %i.ef, <16 x i8> %wide.load
  %i.ei = select <16 x i1> %i.ee, <16 x i8> %i.eg, <16 x i8> %wide.load238
  store <16 x i8> %i.eh, ptr %next.gep, align 1, !tbaa !36, !noalias !111
  store <16 x i8> %i.ei, ptr %i.ea, align 1, !tbaa !36, !noalias !111
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec240 = and i64 %i.dx, -8                   ; 3 uses
  %i.ek = getelementptr i8, ptr %i.dw, i64 %n.vec240
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.dw, i64 %index241 ; 2 uses
  %wide.load243 = load <8 x i8>, ptr %next.gep242, align 1, !tbaa !36, !noalias !111 ; 3 uses
  %i.el = add <8 x i8> %wide.load243, splat (i8 -65)
  %i.em = icmp ult <8 x i8> %i.el, splat (i8 26)
  %i.en = or disjoint <8 x i8> %wide.load243, splat (i8 32)
  %i.eo = select <8 x i1> %i.em, <8 x i8> %i.en, <8 x i8> %wide.load243
  store <8 x i8> %i.eo, ptr %next.gep242, align 1, !tbaa !36, !noalias !111
  %index.next244 = add nuw i64 %index241, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !118

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %i.dx, %n.vec240
  br i1 %cmp.n245, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.dw, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ek, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.et, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.eq = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !36, !noalias !111 ; 3 uses
  %i.er = add i8 %i.eq, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.er, 26
  %i.es = or disjoint i8 %i.eq, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.es, i8 %i.eq
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !36, !noalias !111
  %i.et = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.et, %i.dy
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !119

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !47, !noalias !111
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.as
  %i.eu = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.dw, %bb.as ] ; 2 uses
  store ptr %i.q, ptr %9, align 8, !tbaa !34, !alias.scope !111
  %i.ev = icmp eq ptr %i.eu, %i.o
  br i1 %i.ev, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

bb.at:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.ew = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !111 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 16
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %i.ew, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ey, i1 false)
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.eu, ptr %9, align 8, !tbaa !47, !alias.scope !111
  %i.ez = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !111
  store i64 %i.ez, ptr %i.q, align 8, !tbaa !36, !alias.scope !111
  %.pre4.i = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !111
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.at
  %i.fa = phi i64 [ %i.ew, %bb.at ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  store i64 %i.fa, ptr %i.r, align 8, !tbaa !35, !alias.scope !111
  store ptr %i.o, ptr %10, align 8, !tbaa !47, !noalias !111
  store i64 0, ptr %i.p, align 8, !tbaa !35, !noalias !111
  store i8 0, ptr %i.o, align 8, !tbaa !36, !noalias !111
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN16OpenColorIO_v2_510FileFormatESt4lessIS5_ESaISt4pairIKS5_S8_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.av unwind label %bb.bm

bb.av:                                            ; preds = %bb.au
  store ptr %1, ptr %i.fb, align 8, !tbaa !103
  %i.fc = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.q
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.av
  %i.fe = load i64, ptr %i.q, align 8, !tbaa !36
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  %i.fg = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.o
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.fi = load i64, ptr %i.o, align 8, !tbaa !36
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.fk = load ptr, ptr %2, align 8, !tbaa !109
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %i.fk, i64 %i.bw
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS9_EESt4lessIS5_ESaISt4pairIKS5_SB_EEEixERSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.fm)
          to label %bb.aw unwind label %.loopexit ; 4 uses

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !102 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !99
  %.not.i88 = icmp eq ptr %i.fp, %i.fr
  br i1 %.not.i88, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %1, ptr %i.fp, align 8, !tbaa !103
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !102
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit97

bb.ay:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !95 ; 4 uses
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 6 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.az, label %_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i89

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc95.a unwind label %.loopexit.split-lp

.noexc95.a:                                       ; preds = %bb.az
  unreachable

_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i89: ; preds = %bb.ay
  %i.fy = ashr exact i64 %i.fw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i90 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i90, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 1152921504606846975)
  %i.gc = select i1 %i.ga, i64 1152921504606846975, i64 %i.gb ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i91)
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #30
          to label %.noexc96 unwind label %.loopexit ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE12_M_check_lenEmPKc.exit.i.i89
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.fw ; 2 uses
  store ptr %1, ptr %i.gf, align 8, !tbaa !103
  %i.gg = icmp sgt i64 %i.fw, 0
  br i1 %i.gg, label %bb.ba, label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i92

bb.ba:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ge, ptr align 8 %i.ft, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i92

_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i92: ; preds = %bb.ba, %.noexc96
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.not.i17.i.i93 = icmp eq ptr %i.ft, null
  br i1 %.not.i17.i.i93, label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fw) #34
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94

_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94: ; preds = %bb.bb, %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i92
  store ptr %i.ge, ptr %i.fn, align 8, !tbaa !95
  store ptr %i.gh, ptr %i.fo, align 8, !tbaa !102
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  store ptr %i.gi, ptr %i.fq, align 8, !tbaa !99
  br label %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit97

_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit97: ; preds = %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94, %bb.ax
  %i.gj = load ptr, ptr %2, align 8, !tbaa !109
  %i.gk = getelementptr inbounds nuw [72 x i8], ptr %i.gj, i64 %i.bw ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 64
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !105
  %i.gn = and i32 %i.gm, 1
  %.not44 = icmp eq i32 %i.gn, 0
  br i1 %.not44, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit107, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit97
  %i.go = load ptr, ptr %i.t, align 8, !tbaa !49  ; 8 uses
  %i.gp = load ptr, ptr %i.u, align 8, !tbaa !120
  %.not.i98 = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i98, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 3 uses
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !34
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !47 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store i64 %i.gt, ptr %i.f, align 8, !tbaa !48
  %i.gu = icmp ugt i64 %i.gt, 15
  br i1 %i.gu, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bd
  %i.gv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc99 unwind label %.loopexit ; 2 uses

.noexc99:                                         ; preds = %.noexc.i.i
  store ptr %i.gv, ptr %i.go, align 8, !tbaa !47
  %i.gw = load i64, ptr %i.f, align 8, !tbaa !48
  store i64 %i.gw, ptr %i.gq, align 8, !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc99, %bb.bd
  %i.gx = phi ptr [ %i.gv, %.noexc99 ], [ %i.gq, %bb.bd ] ; 2 uses
  switch i64 %i.gt, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i
  %i.gy = load i8, ptr %i.gr, align 1, !tbaa !36
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bf:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.gr, i64 %i.gt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i
  %i.gz = load i64, ptr %i.f, align 8, !tbaa !48  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !35
  %i.hb = load ptr, ptr %i.go, align 8, !tbaa !47
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 0, ptr %i.hc, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  %i.hd = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  store ptr %i.he, ptr %i.t, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bg:                                            ; preds = %bb.bc
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.go, ptr noundef nonnull align 8 dereferenceable(32) %i.gk)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bg
  %i.hf = load ptr, ptr %2, align 8, !tbaa !109
  %i.hg = getelementptr inbounds nuw [72 x i8], ptr %i.hf, i64 %i.bw ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.hi = load ptr, ptr %i.w, align 8, !tbaa !49  ; 8 uses
  %i.hj = load ptr, ptr %i.x, align 8, !tbaa !120
  %.not.i101 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not.i101, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 3 uses
  store ptr %i.hk, ptr %i.hi, align 8, !tbaa !34
  %i.hl = load ptr, ptr %i.hh, align 8, !tbaa !47 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 %i.hn, ptr %i.e, align 8, !tbaa !48
  %i.ho = icmp ugt i64 %i.hn, 15
  br i1 %i.ho, label %.noexc.i.i104, label %._crit_edge.i.i.i102

.noexc.i.i104:                                    ; preds = %bb.bh
  %i.hp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc105 unwind label %.loopexit ; 2 uses

.noexc105:                                        ; preds = %.noexc.i.i104
  store ptr %i.hp, ptr %i.hi, align 8, !tbaa !47
  %i.hq = load i64, ptr %i.e, align 8, !tbaa !48
  store i64 %i.hq, ptr %i.hk, align 8, !tbaa !36
  br label %._crit_edge.i.i.i102

._crit_edge.i.i.i102:                             ; preds = %.noexc105, %bb.bh
  %i.hr = phi ptr [ %i.hp, %.noexc105 ], [ %i.hk, %bb.bh ] ; 2 uses
  switch i64 %i.hn, label %bb.bj [
    i64 1, label %bb.bi
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i103
  ]

bb.bi:                                            ; preds = %._crit_edge.i.i.i102
  %i.hs = load i8, ptr %i.hl, align 1, !tbaa !36
  store i8 %i.hs, ptr %i.hr, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i103

bb.bj:                                            ; preds = %._crit_edge.i.i.i102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hr, ptr align 1 %i.hl, i64 %i.hn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i103: ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i.i102
  %i.ht = load i64, ptr %i.e, align 8, !tbaa !48  ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !35
  %i.hv = load ptr, ptr %i.hi, align 8, !tbaa !47
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ht
  store i8 0, ptr %i.hw, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.hx = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  store ptr %i.hy, ptr %i.w, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit107

bb.bk:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %i.hh)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit107 unwind label %.loopexit

bb.bl:                                            ; preds = %.noexc.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.bm:                                            ; preds = %bb.au
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.q
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bm
  %i.id = load i64, ptr %i.q, align 8, !tbaa !36
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %i.if = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.o
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !36
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.bl
  %.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.bl ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.cg

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i103, %bb.bk, %_ZNSt6vectorIPN16OpenColorIO_v2_510FileFormatESaIS2_EE9push_backERKS2_.exit97
  %i.ij = load ptr, ptr %2, align 8, !tbaa !109
  %i.ik = getelementptr inbounds nuw [72 x i8], ptr %i.ij, i64 %i.bw ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPN16OpenColorIO_v2_510FileFormatESaISB_EEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeD2Ev:bb.a
bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPN16OpenColorIO_v2_510FileFormatESaISB_EEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPN16OpenColorIO_v2_510FileFormatESaISB_EEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESP_IJEEEEEvPSt13_Rb_tree_nodeISE_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !143
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !34
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.h, ptr %i.a, align 8, !tbaa !48
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !47
  %i.k = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.k, ptr %i.e, align 8, !tbaa !36
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !36
  store i8 %i.m, ptr %i.l, align 1, !tbaa !36
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 88) #34
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !35
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPN16OpenColorIO_v2_510FileFormatESaISB_EEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !60  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !337

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !47
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #31 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 4 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !47
  %i.p = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.p, ptr %i.j, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !36
  store i8 %i.r, ptr %i.q, align 1, !tbaa !36
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !35
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !338, !noalias !341
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !47, !alias.scope !341, !noalias !338 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35, !alias.scope !341, !noalias !338 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !343
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !47, !alias.scope !338, !noalias !341
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !36, !alias.scope !341, !noalias !338
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !36, !alias.scope !338, !noalias !341
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !341, !noalias !338
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !35, !alias.scope !338, !noalias !341
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !47, !alias.scope !341, !noalias !338
  store i64 0, ptr %i.ag, align 8, !tbaa !35, !alias.scope !341, !noalias !338
  store i8 0, ptr %i.y, align 8, !tbaa !36, !alias.scope !341, !noalias !338
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !344

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !34, !alias.scope !345, !noalias !348
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !47, !alias.scope !348, !noalias !345 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !35, !alias.scope !348, !noalias !345 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !350
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !47, !alias.scope !345, !noalias !348
  %i.at = load i64, ptr %i.an, align 8, !tbaa !36, !alias.scope !348, !noalias !345
  store i64 %i.at, ptr %i.al, align 8, !tbaa !36, !alias.scope !345, !noalias !348
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !35, !alias.scope !348, !noalias !345
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !35, !alias.scope !345, !noalias !348
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !47, !alias.scope !348, !noalias !345
  store i64 0, ptr %i.av, align 8, !tbaa !35, !alias.scope !348, !noalias !345
  store i8 0, ptr %i.an, align 8, !tbaa !36, !alias.scope !348, !noalias !345
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !344

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !120
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %13, ptr %0, align 8, !tbaa !52
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !120
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #31 ; 0 uses
  %14 = shl nuw nsw i64 %7, 5
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %14) #34
  invoke void @__cxa_rethrow() #32
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(120) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !36
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !19
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !351
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !351
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEvPT_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEvPT_.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEvPT_.exit

_ZSt8_DestroyIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(120) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !324  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #25

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FileTransform.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
