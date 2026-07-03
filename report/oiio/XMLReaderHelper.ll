inline.NumInlined: 699
inline.NumDeleted: 274
begin_hunk_0_@_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #29
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.g, i64 noundef %i.o)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %bb.b, %bb.c
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !13, !alias.scope !40
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !19, !alias.scope !40
  store i8 0, ptr %i.r, align 8, !tbaa !21, !alias.scope !40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41, !noalias !40 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !40 ; 2 uses
  %i.x = icmp ugt ptr %i.u, %i.w
  %.08.i.i.i = select i1 %i.x, ptr %i.u, ptr %i.w ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43, !noalias !40 ; 2 uses
  %i.aa = ptrtoint ptr %.08.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.z, i64 noundef %i.ac)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !16, !alias.scope !40 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !21, !alias.scope !40
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #30
  br label %.body.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ak = load ptr, ptr %3, align 8, !tbaa !16
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %i.ak)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #32
          to label %bb.l unwind label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.b, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.g ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.r
  br i1 %i.ao, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !21
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0, label %bb.j, label %bb.k

.body.thread:                                     ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

.body:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.thread, %.body
  %.pn15 = phi { ptr, i32 } [ %i.ae, %.body.thread ], [ %i.am, %.body ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #29
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn15, %bb.j ], [ %i.am, %.body ], [ %i.al, %bb.h ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !11
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !21
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aw, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bd) #29
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.be) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_516XmlReaderElement19logParameterWarningEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 27 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.b = load atomic i8, ptr @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11 acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11) #29
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11) #29
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = icmp eq i64 %i.i, 0
  %_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11.val = load ptr, ptr @_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11, align 8
  %.val = load ptr, ptr %i.g, align 8
  %6 = select i1 %i.j, ptr %_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11.val, ptr %.val ; 3 uses
  %.not.i9 = icmp eq ptr %6, null
  br i1 %.not.i9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %3, align 8, !tbaa !11
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = or i32 %i.p, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.n, i32 noundef %i.q)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #29
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %6, i64 noundef %i.r)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g, %bb.h
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22
  %i.w = zext i32 %i.v to i64
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.w)
          to label %_ZNSolsEj.exit unwind label %bb.t

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEj.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %.not.i18 = icmp eq ptr %1, null
  br i1 %.not.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.aa = load ptr, ptr %3, align 8, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !25
  %i.ag = or i32 %i.af, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.t

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, i64 noundef %i.ah)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.i, %bb.j
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.6, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.al, i64 noundef %i.an)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !13, !alias.scope !50
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !19, !alias.scope !50
  store i8 0, ptr %i.aq, align 8, !tbaa !21, !alias.scope !50
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41, !noalias !50 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !50 ; 2 uses
  %i.aw = icmp ugt ptr %i.at, %i.av
  %.08.i.i.i = select i1 %i.aw, ptr %i.at, ptr %i.av ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43, !noalias !50 ; 2 uses
  %i.az = ptrtoint ptr %.08.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ay, i64 noundef %i.bb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !16, !alias.scope !50 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %.body27, label %.body27.sink.split

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %i.bh = load ptr, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !13
  %i.bj = icmp eq ptr %i.bh, null
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #32
          to label %.noexc29 unwind label %bb.u

.noexc29:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !20
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc30 unwind label %bb.u   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i
  store ptr %i.bm, ptr %4, align 8, !tbaa !16
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30, %bb.o
  %i.bo = phi ptr [ %i.bm, %.noexc30 ], [ %i.bi, %bb.o ] ; 2 uses
  switch i64 %i.bk, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !21
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !21
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr nonnull align 1 %i.bh, i64 %i.bk, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !19
  %i.bs = load ptr, ptr %4, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bi
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bw = load i64, ptr %i.bi, align 8, !tbaa !21
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.by = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aq
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cc, ptr %3, align 8, !tbaa !11
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %3, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ch, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !21
  %i.cn = add i64 %i.cm, 1
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_517XmlReaderDummyElt11DummyParent13getIdentifierB5cxx11Ev:bb.a
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_517XmlReaderDummyEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_16XmlReaderElementEEjS8_PKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::shared_ptr.1", align 8 ; 3 uses
  %8 = alloca %"class.std::shared_ptr.7", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 32 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33, !noalias !51 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i32 1, ptr %i.b, align 8, !tbaa !54, !noalias !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !56, !noalias !51
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !11, !noalias !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentC2ERSt10shared_ptrINS_16XmlReaderElementEE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZSt11make_sharedIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentEJRSt10shared_ptrINS0_16XmlReaderElementEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !51

common.resume:                                    ; preds = %bb.z, %bb.ah, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.pn.pn.pn, %bb.ah ], [ %i.cu, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #30, !noalias !51
  br label %common.resume

_ZSt11make_sharedIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentEJRSt10shared_ptrINS0_16XmlReaderElementEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !62
  store ptr %i.a, ptr %i.g, align 8, !tbaa !62
  store ptr null, ptr %8, align 8, !tbaa !63
  invoke void @_ZN16OpenColorIO_v2_516XmlReaderElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.z

bb.b:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentEJRSt10shared_ptrINS0_16XmlReaderElementEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.i, align 8, !tbaa !62
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, label %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread: ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 8, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.b, align 8, !tbaa !3
  br label %bb.c

_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit: ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.g, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit
  %.pr70 = phi ptr [ %i.a, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit.thread ], [ %.pr.pre, %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pr70, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %.pr70, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !56
  %i.s = load ptr, ptr %.pr70, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr70) #29, !inline_history !66
  %i.v = load ptr, ptr %.pr70, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pr70) #29, !inline_history !66
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr70) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_517XmlReaderPlainEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !62  ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !56
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #29, !inline_history !68
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #29, !inline_history !68
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i17 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i19 = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.ar, label %bb.n, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN16OpenColorIO_v2_517XmlReaderDummyEltE, i64 16), ptr %0, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = load atomic i8, ptr @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11 acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.t, !prof !24

bb.p:                                             ; preds = %bb.o
  %i.av = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11) #29
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aw = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11) #29
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11) #29
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = icmp eq i64 %i.ba, 0
  %_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11.val = load ptr, ptr @_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11, align 8
  %.val = load ptr, ptr %i.ay, align 8
  %11 = select i1 %i.bb, ptr %_ZZNK16OpenColorIO_v2_516XmlReaderElement10getXmlFileB5cxx11EvE9emptyNameB5cxx11.val, ptr %.val ; 3 uses
  %.not.i20 = icmp eq ptr %11, null
  br i1 %.not.i20, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %9, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %9, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.bi = or i32 %i.bh, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, i32 noundef %i.bi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #29
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %11, i64 noundef %i.bj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.u, %bb.v
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !22
  %i.bo = zext i32 %i.bn to i64
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.bo)
          to label %_ZNSolsEj.exit unwind label %bb.ab

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZNSolsEj.exit
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.9, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !19
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.bt, i64 noundef %i.bv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ab ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.10, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !16 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ca, null
  br i1 %.not.i33, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.cb = load ptr, ptr %9, align 8, !tbaa !11
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %9, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !25
  %i.ch = or i32 %i.cg, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ce, i32 noundef %i.ch)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.ab

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ca) #29
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.ca, i64 noundef %i.ci)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %bb.w, %bb.x
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.11, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !22
  %i.co = zext i32 %i.cn to i64
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.co)
          to label %_ZNSolsEj.exit40 unwind label %bb.ab

_ZNSolsEj.exit40:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZNSolsEj.exit40
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.y
  %i.cs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %5, i64 noundef %i.cs)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.ab ; 0 uses

bb.z:                                             ; preds = %_ZSt11make_sharedIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentEJRSt10shared_ptrINS0_16XmlReaderElementEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #29
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderDummyElt11DummyParentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %bb.y, %_ZNSolsEj.exit40, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %bb.x, %bb.w, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.v, %bb.u
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cy, ptr %10, align 8, !tbaa !13, !alias.scope !75
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !19, !alias.scope !75
  store i8 0, ptr %i.cy, align 8, !tbaa !21, !alias.scope !75
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !41, !noalias !75 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.db, null
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !75 ; 2 uses
  %i.de = icmp ugt ptr %i.db, %i.dd
  %.08.i.i.i = select i1 %i.de, ptr %i.db, ptr %i.dd ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i51 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i51, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43, !noalias !75 ; 2 uses
  %i.dh = ptrtoint ptr %.08.i.i.i to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.dg, i64 noundef %i.dj)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %10, align 8, !tbaa !16, !alias.scope !75 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cy
  br i1 %i.dn, label %.body52, label %.body52.sink.split

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ad

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ae, %bb.ac
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dp = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cy
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.dr = load i64, ptr %i.cy, align 8, !tbaa !21
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dt = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dt, ptr %9, align 8, !tbaa !11
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dv = getelementptr i8, ptr %i.dt, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %9, i64 %i.dw
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !11
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dy, align 8, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !21
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dy, align 8, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ef) #29
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.eg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret void

bb.ag:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cy
end_hunk_1
