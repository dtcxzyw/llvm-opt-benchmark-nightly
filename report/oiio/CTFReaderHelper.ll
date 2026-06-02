inline.NumInlined: 5804
inline.NumDeleted: 1972
begin_hunk_0_@_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt5startEPPKc:bb.a
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = load ptr, ptr %2, align 8, !tbaa !11
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !160
  %i.au = or i32 %i.at, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, i32 noundef %i.au)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.m

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.av = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #31
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.an, i64 noundef %i.av)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.g, %bb.h
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.40, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  store ptr %i.j, ptr %3, align 8, !tbaa !44, !alias.scope !1204
  store i64 0, ptr %i.k, align 8, !tbaa !47, !alias.scope !1204
  store i8 0, ptr %i.j, align 8, !tbaa !36, !alias.scope !1204
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !59, !noalias !1204 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %i.m, align 8, !noalias !1204 ; 2 uses
  %i.ba = icmp ugt ptr %i.ay, %i.az
  %.08.i.i.i = select i1 %i.ba, ptr %i.ay, ptr %i.az ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !63, !noalias !1204 ; 2 uses
  %i.bc = ptrtoint ptr %.08.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.bb, i64 noundef %i.be)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !1204 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.j
  br i1 %i.bi, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bj = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.j
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !36
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.p, ptr %2, align 8, !tbaa !11
  %i.bn = load i64, ptr %i.r, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.q, ptr %i.bo, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !11
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.t
  br i1 %i.bq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.t, align 8, !tbaa !36
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !11
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.r

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %bb.h, %bb.g, %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.j
  br i1 %i.bw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.bh, %bb.j ], [ %i.bv, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %i.bu, %bb.n ]
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !36
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.by) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.j ], [ %i.bu, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bt, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.b
  %i.bz = call noundef zeroext i1 @_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt11parseCineonEPPKcjRdS4_S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef %.02446, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.bz, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.x, align 8, !tbaa !43
  call void @_ZNK16OpenColorIO_v2_516XmlReaderElement19logParameterWarningEPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.ca)
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.p, %bb.q, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.126 = phi i32 [ %.02545, %bb.q ], [ 0, %bb.c ], [ 1, %bb.d ], [ %.02545, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.02545, %bb.p ], [ 2, %bb.e ] ; 2 uses
  %i.cb = add i32 %.02446, 2                      ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43 ; 2 uses
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1205

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre = load double, ptr %i.a, align 8, !tbaa !147
  %.pre47 = load double, ptr %i.b, align 8, !tbaa !147
  %.pre48 = load double, ptr %i.c, align 8, !tbaa !147
  %.pre49 = load double, ptr %i.d, align 8, !tbaa !147
  %.pre50 = load double, ptr %i.e, align 8, !tbaa !147
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.cf = phi double [ +qnan, %bb.a ], [ %.pre50, %._crit_edge.loopexit ]
  %i.cg = phi double [ +qnan, %bb.a ], [ %.pre49, %._crit_edge.loopexit ]
  %i.ch = phi double [ +qnan, %bb.a ], [ %.pre48, %._crit_edge.loopexit ]
  %i.ci = phi double [ +qnan, %bb.a ], [ %.pre47, %._crit_edge.loopexit ]
  %i.cj = phi double [ +qnan, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.025.lcssa = phi i32 [ -1, %bb.a ], [ %.126, %._crit_edge.loopexit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  call void @_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt9setCineonERNS_7LogUtil9CTFParamsEiddddd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(84) %i.ck, i32 noundef %.025.lcssa, double noundef %i.cj, double noundef %i.ci, double noundef %i.ch, double noundef %i.cg, double noundef %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt3endEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt10setRawDataEPKcmj(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, i64 %2, i32 %3) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525CTFReaderLogParamsElt_2_05startEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readonly captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca double, align 8                   ; 8 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %i.i = alloca double, align 8                   ; 6 uses
  %i.j = alloca double, align 8                   ; 6 uses
  %i.k = alloca double, align 8                   ; 6 uses
  %i.l = alloca double, align 8                   ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::vector.125", align 8   ; 15 uses
  %8 = alloca %"class.std::shared_ptr.204", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.27", align 8 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96, !nonnull !51, !noundef !51
  %i.o = tail call ptr @__dynamic_cast(ptr nonnull %i.n, ptr nonnull @_ZTIN16OpenColorIO_v2_521XmlReaderContainerEltE, ptr nonnull @_ZTIN16OpenColorIO_v2_515CTFReaderLogEltE, i64 0) #31 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1166
  %i.r = and i32 %i.q, -2
  %.not = icmp eq i32 %i.r, 6                     ; 4 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38, !noalias !1206 ; 3 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !38, !alias.scope !1206
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34, !noalias !1206 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !34, !alias.scope !1206
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_514CTFReaderOpElt12getTransformEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36, !noalias !1206
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !1206
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !1206
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpElt12getTransformEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4, !noalias !1206 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !38
  br label %_ZN16OpenColorIO_v2_514CTFReaderOpElt12getTransformEv.exit

_ZN16OpenColorIO_v2_514CTFReaderOpElt12getTransformEv.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ac = phi ptr [ %i.t, %bb.b ], [ %i.t, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_518CTFReaderTransform5isCLFEv(ptr noundef nonnull align 8 dereferenceable(356) %i.ac)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_514CTFReaderOpElt12getTransformEv.exit
  %i.ae = xor i1 %i.ad, true
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !34  ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ag, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !32
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !215
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !215
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.j ], [ %i.at, %bb.k ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.l, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = phi i1 [ %i.ae, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store double +qnan, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store double +qnan, ptr %i.b, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store double +qnan, ptr %i.c, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store double +qnan, ptr %i.d, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store double +qnan, ptr %i.e, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store double +qnan, ptr %i.f, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store double +qnan, ptr %i.g, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store double +qnan, ptr %i.h, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store double +qnan, ptr %i.i, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store double +qnan, ptr %i.j, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store double +qnan, ptr %i.k, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store double +qnan, ptr %i.l, align 8, !tbaa !147
  %i.aw = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %.not106203 = icmp eq ptr %i.aw, null
  br i1 %.not106203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 184 ; 16 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 -24    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 112
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread
  %i.bv = phi ptr [ %i.aw, %.lr.ph ], [ %i.hm, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread ]
  %i.bw = phi ptr [ %1, %.lr.ph ], [ %i.hl, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread ] ; 9 uses
  %.0207 = phi i1 [ true, %.lr.ph ], [ %.1248, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread ] ; 3 uses
  %.090205 = phi i32 [ 0, %.lr.ph ], [ %i.hj, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread ] ; 10 uses
  %.091204 = phi i32 [ -1, %.lr.ph ], [ %.192247, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread ] ; 28 uses
  %i.bx = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L9ATTR_CHANE, ptr noundef nonnull %i.bv)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.bz = or disjoint i32 %.090205, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ca ; 4 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.cd = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @.str.95, ptr noundef %i.cc)
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit, label %bb.p

bb.o:                                             ; preds = %_ZN16OpenColorIO_v2_514CTFReaderOpElt12getTransformEv.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_518CTFReaderTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

bb.p:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.ch = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @.str.96, ptr noundef %i.cg)
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !43
  %i.ck = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @.str.97, ptr noundef %i.cj)
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.145, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_525CTFReaderLogParamsElt_2_05startEPPKc:bb.a
  ]

bb.as:                                            ; preds = %bb.ar
  store i32 2, ptr %i.ax, align 8, !tbaa !1167
  br label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread

bb.at:                                            ; preds = %bb.aq
  %i.fw = call noundef i32 @_ZN16OpenColorIO_v2_58Platform10StrcasecmpEPKcS2_(ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17ATTR_LINSIDEBREAKE, ptr noundef %i.fq)
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fy = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.fz = or disjoint i32 %.090205, 1
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !43
  call void @_ZN16OpenColorIO_v2_516XmlReaderElement20parseScalarAttributeIdEEvPKcS3_RT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.fy, ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.gd = load i32, ptr %i.ax, align 8, !tbaa !1167
  switch i32 %i.gd, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250 [
    i32 0, label %bb.av
    i32 2, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread
  ]

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %i.ax, align 8, !tbaa !1167
  br label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread

bb.aw:                                            ; preds = %bb.at
  br i1 %i.av, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ge = call noundef zeroext i1 @_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt11parseCineonEPPKcjRdS4_S4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef %.090205, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br i1 %i.ge, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.gf = load i32, ptr %i.ax, align 8, !tbaa !1167
  switch i32 %i.gf, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250 [
    i32 0, label %bb.az
    i32 1, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread
  ]

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.ax, align 8, !tbaa !1167
  br label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  %i.gg = load ptr, ptr %i.bw, align 8, !tbaa !43
  call void @_ZNK16OpenColorIO_v2_516XmlReaderElement19logParameterWarningEPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.gg)
  br i1 %.0207, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250

_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit: ; preds = %bb.q, %bb.p, %bb.n
  %.192 = phi i32 [ 2, %bb.q ], [ 0, %bb.n ], [ 1, %bb.p ] ; 2 uses
  br i1 %.0207, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread, label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250

_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250: ; preds = %bb.ac, %bb.ay, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ba, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit
  %.192253 = phi i32 [ %.091204, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.192, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit ], [ %.091204, %bb.ba ], [ %.091204, %bb.af ], [ %.091204, %bb.ai ], [ %.091204, %bb.al ], [ %.091204, %bb.ao ], [ %.091204, %bb.ar ], [ %.091204, %bb.au ], [ %.091204, %bb.ay ], [ %.091204, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull @.str.146, i64 noundef 54)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA55_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i unwind label %bb.bf ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA55_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i: ; preds = %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  store ptr %i.bl, ptr %3, align 8, !tbaa !44, !alias.scope !1222
  store i64 0, ptr %i.bm, align 8, !tbaa !47, !alias.scope !1222
  store i8 0, ptr %i.bl, align 8, !tbaa !36, !alias.scope !1222
  %i.gi = load ptr, ptr %i.bn, align 8, !tbaa !59, !noalias !1222 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.gi, null
  %i.gj = load ptr, ptr %i.bo, align 8, !noalias !1222 ; 2 uses
  %i.gk = icmp ugt ptr %i.gi, %i.gj
  %.08.i.i.i.i = select i1 %i.gk, ptr %i.gi, ptr %i.gj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i145 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i145, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA55_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i
  %i.gl = load ptr, ptr %i.bp, align 8, !tbaa !63, !noalias !1222 ; 2 uses
  %i.gm = ptrtoint ptr %.08.i.i.i.i to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.gl, i64 noundef %i.go)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %3, align 8, !tbaa !46, !alias.scope !1222 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.bl
  br i1 %i.gs, label %.body.i, label %.body.i.sink.split

bb.bd:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA55_cEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.bc

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.bd, %bb.bb
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.gt = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.bl
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.be
  %i.gv = load i64, ptr %i.bl, align 8, !tbaa !36
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  store ptr %i.be, ptr %2, align 8, !tbaa !11
  %i.gx = load i64, ptr %i.bg, align 8
  %i.gy = getelementptr inbounds i8, ptr %2, i64 %i.gx
  store ptr %i.bf, ptr %i.gy, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.br, align 8, !tbaa !11
  %i.gz = load ptr, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.bs
  br i1 %i.ha, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA55_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hb = load i64, ptr %i.bs, align 8, !tbaa !36
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #33
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA55_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_.exit

bb.bf:                                            ; preds = %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread250
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.bl
  br i1 %i.hg, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.bg, %bb.bc
  %.sink268 = phi ptr [ %i.gr, %bb.bc ], [ %i.hf, %bb.bg ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.gq, %bb.bc ], [ %i.he, %bb.bg ]
  %i.hh = load i64, ptr %i.bl, align 8, !tbaa !36
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %.sink268, i64 noundef %i.hi) #33
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.bg, %bb.bc
  %.pn.i = phi { ptr, i32 } [ %i.gq, %bb.bc ], [ %i.he, %bb.bg ], [ %.pn.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bh

common.resume:                                    ; preds = %bb.da, %bb.o, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.bh ], [ %.pn110.pn.pn, %bb.da ], [ %i.cf, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.bh:                                            ; preds = %.body.i, %bb.bf
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.hd, %bb.bf ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA55_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.br, align 8, !tbaa !11
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bu) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread

_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread: ; preds = %bb.az, %bb.ay, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ac, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ba, %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA55_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_.exit, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit
  %.1248 = phi i1 [ true, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ false, %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA55_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_.exit ], [ true, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit ], [ true, %bb.ba ], [ true, %bb.ac ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ai ], [ true, %bb.aj ], [ true, %bb.al ], [ true, %bb.am ], [ true, %bb.ao ], [ true, %bb.ap ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.au ], [ true, %bb.av ], [ true, %bb.ay ], [ true, %bb.az ]
  %.192247 = phi i32 [ %.091204, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.192253, %_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA55_cJEEEvRKNS_16XmlReaderElementERKT_DpT0_.exit ], [ %.192, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit ], [ %.091204, %bb.ba ], [ %.091204, %bb.ac ], [ %.091204, %bb.ad ], [ %.091204, %bb.af ], [ %.091204, %bb.ag ], [ %.091204, %bb.ai ], [ %.091204, %bb.aj ], [ %.091204, %bb.al ], [ %.091204, %bb.am ], [ %.091204, %bb.ao ], [ %.091204, %bb.ap ], [ %.091204, %bb.ar ], [ %.091204, %bb.as ], [ %.091204, %bb.au ], [ %.091204, %bb.av ], [ %.091204, %bb.ay ], [ %.091204, %bb.az ] ; 2 uses
  %i.hj = add i32 %.090205, 2                     ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hk ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !43 ; 2 uses
  %.not106 = icmp eq ptr %i.hm, null
  br i1 %.not106, label %._crit_edge, label %bb.m, !llvm.loop !1223

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread, %.critedge
  %.091.lcssa = phi i32 [ -1, %.critedge ], [ %.192247, %_ZN16OpenColorIO_v2_57LogUtil9CTFParams7setTypeENS1_4TypeE.exit.thread ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !1167
  %i.hp = icmp eq i32 %i.ho, 1
  br i1 %i.hp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %._crit_edge
  %i.hq = load double, ptr %i.h, align 8, !tbaa !147
  %i.hr = load double, ptr %i.i, align 8, !tbaa !147
  %i.hs = load double, ptr %i.j, align 8, !tbaa !147
  %i.ht = load double, ptr %i.k, align 8, !tbaa !147
  %i.hu = load double, ptr %i.l, align 8, !tbaa !147
  call void @_ZN16OpenColorIO_v2_521CTFReaderLogParamsElt9setCineonERNS_7LogUtil9CTFParamsEiddddd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(84) %i.p, i32 noundef %.091.lcssa, double noundef %i.hq, double noundef %i.hr, double noundef %i.hs, double noundef %i.ht, double noundef %i.hu)
  br label %bb.cx

bb.bj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.hv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %bb.bk unwind label %bb.bm     ; 6 uses

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.hv, ptr %7, align 8, !tbaa !522
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !530
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !521
  %i.ia = load double, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.ib = fcmp uno double %i.ia, 0.000000e+00
  %i.ic = select i1 %i.ib, double 1.000000e+00, double %i.ia
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store double %i.ic, ptr %i.id, align 8, !tbaa !147
  %i.ie = load double, ptr %i.b, align 8, !tbaa !147 ; 2 uses
  %.inv = fcmp ord double %i.ie, 0.000000e+00
  %i.if = select i1 %.inv, double %i.ie, double 0.000000e+00
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store double %i.if, ptr %i.ig, align 8, !tbaa !147
  %i.ih = load double, ptr %i.c, align 8, !tbaa !147 ; 2 uses
  %i.ii = fcmp uno double %i.ih, 0.000000e+00
  %i.ij = select i1 %i.ii, double 1.000000e+00, double %i.ih
  store double %i.ij, ptr %i.hv, align 8, !tbaa !147
  %i.ik = load double, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %.inv189 = fcmp ord double %i.ik, 0.000000e+00
  %i.il = select i1 %.inv189, double %i.ik, double 0.000000e+00
  store double %i.il, ptr %i.hy, align 8, !tbaa !147
  %i.im = load double, ptr %i.e, align 8, !tbaa !147 ; 2 uses
  %i.in = fcmp uno double %i.im, 0.000000e+00
  br i1 %i.in, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN16OpenColorIO_v2_515CTFReaderLogElt7setBaseEd(ptr noundef nonnull align 8 dereferenceable(216) %i.o, double noundef %i.im)
          to label %bb.bn unwind label %.thread

bb.bm:                                            ; preds = %bb.bj
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit184

.thread:                                          ; preds = %bb.bz, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i154, %bb.bv, %bb.br, %37, %bb.by, %bb.bx, %.thread186, %35, %33, %bb.bq, %bb.bp, %bb.bl
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bn:                                            ; preds = %bb.bk, %bb.bl
  %i.iq = load double, ptr %i.f, align 8, !tbaa !147
  %i.ir = fcmp uno double %i.iq, 0.000000e+00
  br i1 %i.ir, label %32, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.is = invoke noundef ptr @_ZN16OpenColorIO_v2_57LogUtil20ConvertStyleToStringENS0_8LogStyleE(i32 noundef 6)
          to label %bb.bq unwind label %.thread

bb.bq:                                            ; preds = %bb.bp
  %i.it = invoke noundef ptr @_ZN16OpenColorIO_v2_57LogUtil20ConvertStyleToStringENS0_8LogStyleE(i32 noundef 7)
          to label %bb.br unwind label %.thread

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA12_cJPKcS4_S4_S4_S4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17ATTR_LINSIDEBREAKE, ptr noundef nonnull @.str.148, ptr noundef %i.is, ptr noundef %i.it, ptr noundef nonnull @.str.40)
          to label %bb.bs unwind label %.thread

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %10 = load ptr, ptr %i.hz, align 8, !tbaa !521  ; 4 uses
  %11 = load ptr, ptr %i.hx, align 8, !tbaa !530
  %.not.i149 = icmp eq ptr %10, %11
  br i1 %.not.i149, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %12 = load double, ptr %i.f, align 8, !tbaa !147
  store double %12, ptr %10, align 8, !tbaa !147
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %13, ptr %i.hz, align 8, !tbaa !521
  br label %.thread185.a

bb.bu:                                            ; preds = %bb.bs
  %14 = load ptr, ptr %7, align 8, !tbaa !522     ; 4 uses
  %15 = ptrtoint ptr %10 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16                          ; 6 uses
  %18 = icmp eq i64 %17, 9223372036854775800
  br i1 %18, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %19 = ashr exact i64 %17, 3                     ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %19, i64 1)
  %20 = add nsw i64 %.sroa.speculated.i.i.i, %19  ; 2 uses
  %21 = icmp ult i64 %20, %19
  %22 = call i64 @llvm.umin.i64(i64 %20, i64 1152921504606846975)
  %23 = select i1 %21, i64 1152921504606846975, i64 %22 ; 3 uses
  %.not.i.i.i150 = icmp ne i64 %23, 0
  call void @llvm.assume(i1 %.not.i.i.i150)
  %24 = shl nuw nsw i64 %23, 3
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #32
          to label %.thread187.a unwind label %.thread ; 4 uses

.thread187.a:                                     ; preds = %bb.bv
  %26 = getelementptr inbounds i8, ptr %25, i64 %17 ; 2 uses
  %i.iu = load double, ptr %i.f, align 8, !tbaa !147
  store double %i.iu, ptr %26, align 8, !tbaa !147
  %27 = icmp sgt i64 %17, 0
  br i1 %27, label %28, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

28:                                               ; preds = %.thread187.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %25, ptr align 8 %14, i64 %17, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %28, %.thread187.a
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.not.i17.i.i = icmp eq ptr %14, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %30

30:                                               ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %14, i64 noundef %17) #33
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %30, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %25, ptr %7, align 8, !tbaa !522
  store ptr %29, ptr %i.hz, align 8, !tbaa !521
  %31 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %23
  store ptr %31, ptr %i.hx, align 8, !tbaa !530
  br label %.thread185.a

32:                                               ; preds = %bb.bn
  br i1 %.not, label %33, label %.thread186.a

33:                                               ; preds = %32
  %34 = invoke noundef ptr @_ZN16OpenColorIO_v2_57LogUtil20ConvertStyleToStringENS0_8LogStyleE(i32 noundef 6)
          to label %35 unwind label %.thread

35:                                               ; preds = %33
  %36 = invoke noundef ptr @_ZN16OpenColorIO_v2_57LogUtil20ConvertStyleToStringENS0_8LogStyleE(i32 noundef 7)
          to label %37 unwind label %.thread

37:                                               ; preds = %35
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA12_cJPKcS4_S4_S4_S4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L17ATTR_LINSIDEBREAKE, ptr noundef nonnull @.str.150, ptr noundef %34, ptr noundef %36, ptr noundef nonnull @.str.60)
          to label %bb.bw unwind label %.thread

.thread185.a:                                     ; preds = %bb.bt, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i
  %i.iv = load double, ptr %i.g, align 8, !tbaa !147
  %i.iw = fcmp uno double %i.iv, 0.000000e+00
  br i1 %i.iw, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162, label %42

bb.bw:                                            ; preds = %37
  %38 = load double, ptr %i.g, align 8, !tbaa !147
  %39 = fcmp uno double %38, 0.000000e+00
  br i1 %39, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162, label %.thread188

.thread186.a:                                     ; preds = %32
  %40 = load double, ptr %i.g, align 8, !tbaa !147
  %41 = fcmp uno double %40, 0.000000e+00
  br i1 %41, label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162, label %.thread186

42:                                               ; preds = %.thread185.a
  br i1 %.not, label %.thread188, label %.thread186

.thread186:                                       ; preds = %.thread186.a, %42
  %43 = invoke noundef ptr @_ZN16OpenColorIO_v2_57LogUtil20ConvertStyleToStringENS0_8LogStyleE(i32 noundef 6)
          to label %bb.bx unwind label %.thread

bb.bx:                                            ; preds = %.thread186
  %i.ix = invoke noundef ptr @_ZN16OpenColorIO_v2_57LogUtil20ConvertStyleToStringENS0_8LogStyleE(i32 noundef 7)
          to label %bb.by unwind label %.thread

bb.by:                                            ; preds = %bb.bx
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA12_cJPKcS4_S4_S4_S4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull @_ZN16OpenColorIO_v2_5L16ATTR_LINEARSLOPEE, ptr noundef nonnull @.str.148, ptr noundef %43, ptr noundef %i.ix, ptr noundef nonnull @.str.60)
          to label %.thread188 unwind label %.thread

.thread188:                                       ; preds = %bb.bw, %bb.by, %42
  %44 = load ptr, ptr %i.hz, align 8, !tbaa !521  ; 4 uses
  %45 = load ptr, ptr %i.hx, align 8, !tbaa !530
  %.not.i153 = icmp eq ptr %44, %45
  br i1 %.not.i153, label %.thread188.thread, label %.thread188.thread256

.thread188.thread256:                             ; preds = %.thread188
  %i.iy = load double, ptr %i.g, align 8, !tbaa !147
  store double %i.iy, ptr %44, align 8, !tbaa !147
  %i.iz = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %i.iz, ptr %i.hz, align 8, !tbaa !521
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162

.thread188.thread:                                ; preds = %.thread188
  %46 = load ptr, ptr %7, align 8, !tbaa !522     ; 4 uses
  %i.ja = ptrtoint ptr %44 to i64
  %i.jb = ptrtoint ptr %46 to i64
  %i.jc = sub i64 %i.ja, %i.jb                    ; 6 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775800
  br i1 %i.jd, label %bb.bz, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i154

bb.bz:                                            ; preds = %.thread188.thread, %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.193) #34
          to label %.noexc160 unwind label %.thread

.noexc160:                                        ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i154: ; preds = %.thread188.thread
  %i.je = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i155 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i.i155, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jf, i64 1152921504606846975)
  %i.ji = select i1 %i.jg, i64 1152921504606846975, i64 %i.jh ; 3 uses
  %.not.i.i.i156 = icmp ne i64 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i.i156)
  %i.jj = shl nuw nsw i64 %i.ji, 3
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #32
          to label %.noexc161 unwind label %.thread ; 4 uses

.noexc161:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i154
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.jc ; 2 uses
  %i.jm = load double, ptr %i.g, align 8, !tbaa !147
  store double %i.jm, ptr %i.jl, align 8, !tbaa !147
  %i.jn = icmp sgt i64 %i.jc, 0
  br i1 %i.jn, label %bb.ca, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i157

bb.ca:                                            ; preds = %.noexc161
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jk, ptr align 8 %46, i64 %i.jc, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i157

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i157: ; preds = %bb.ca, %.noexc161
  %47 = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.not.i17.i.i158 = icmp eq ptr %46, null
  br i1 %.not.i17.i.i158, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i159, label %48

48:                                               ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i157
  call void @_ZdlPvm(ptr noundef nonnull %46, i64 noundef %i.jc) #33
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i159

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i159: ; preds = %48, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i157
  store ptr %i.jk, ptr %7, align 8, !tbaa !522
  store ptr %47, ptr %i.hz, align 8, !tbaa !521
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ji
  store ptr %i.jo, ptr %i.hx, align 8, !tbaa !530
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162

_ZNSt6vectorIdSaIdEE9push_backERKd.exit162:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i159, %.thread188.thread256, %bb.bw, %.thread186.a, %.thread185.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.jp = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.jr = load ptr, ptr %i.jq, align 8
  invoke void %i.jr(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %9, ptr noundef nonnull align 8 dereferenceable(216) %i.o)
          to label %bb.cb unwind label %.thread261

bb.cb:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.js = load ptr, ptr %9, align 8, !tbaa !149, !noalias !1224 ; 2 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59LogOpDataEEC2INS0_6OpDataEEERKS_IT_EPS1_.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ju = call ptr @__dynamic_cast(ptr nonnull %i.js, ptr nonnull @_ZTIN16OpenColorIO_v2_56OpDataE, ptr nonnull @_ZTIN16OpenColorIO_v2_59LogOpDataE, i64 0) #31, !noalias !1224 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ju, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_59LogOpDataEEC2INS0_6OpDataEEERKS_IT_EPS1_.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.ju, ptr %8, align 8, !tbaa !1164, !alias.scope !1224
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !34, !noalias !1224 ; 3 uses
  store ptr %i.jx, ptr %i.jv, align 8, !tbaa !34, !alias.scope !1224
  %.not.i.i.i.i163 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i163, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 3 uses
  %i.jz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36, !noalias !1224
  %.not.i.i.i.i.i164 = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i.i.i164, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !3, !noalias !1224
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jy, align 4, !tbaa !3, !noalias !1224
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.cg:                                            ; preds = %bb.ce
  %i.kc = atomicrmw volatile add ptr %i.jy, i32 1 acq_rel, align 4, !noalias !1224 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_59LogOpDataEEC2INS0_6OpDataEEERKS_IT_EPS1_.exit.i: ; preds = %bb.cc, %bb.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !1224
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.cd, %bb.cf, %bb.cg, %_ZNSt10shared_ptrIN16OpenColorIO_v2_59LogOpDataEEC2INS0_6OpDataEEERKS_IT_EPS1_.exit.i
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !34 ; 8 uses
  %.not.i.i165 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i165, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 4 uses
  %i.kg = load atomic i64, ptr %i.kf acquire, align 8 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 4294967297
  %i.ki = trunc i64 %i.kg to i32                  ; 2 uses
  br i1 %i.kh, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.kf, align 8, !tbaa !27
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 0, ptr %i.kj, align 4, !tbaa !32
  %i.kk = load ptr, ptr %i.ke, align 8, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #31, !inline_history !152
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !11
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #31, !inline_history !152
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cj:                                            ; preds = %bb.ch
  %i.kq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i166 = icmp eq i8 %i.kq, 0
  br i1 %.not.i.i.i166, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kr = add nsw i32 %i.ki, -1
  store i32 %i.kr, ptr %i.kf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i167

bb.cl:                                            ; preds = %bb.cj
  %i.ks = atomicrmw volatile add ptr %i.kf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i167

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i167: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i168 = phi i32 [ %i.ki, %bb.ck ], [ %i.ks, %bb.cl ]
  %i.kt = icmp eq i32 %.0.i.i.i.i168, 1
  br i1 %i.kt, label %bb.cm, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i167
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_59LogOpDataENS0_6OpDataEESt10shared_ptrIT_ERKS3_IT0_E.exit, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i167, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.ku = load ptr, ptr %8, align 8, !tbaa !1164  ; 3 uses
  switch i32 %.091.lcssa, label %default.unreachable244 [
    i32 -1, label %bb.cn
    i32 0, label %.invoke257
    i32 1, label %bb.co
    i32 2, label %bb.cp
  ]

.thread261:                                       ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit162
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %52

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 168
  %i.kx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kw, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN16OpenColorIO_v2_59LogOpData12setRedParamsERKSt6vectorIdSaIdEE.exit unwind label %_ZN16OpenColorIO_v2_59LogOpData14setGreenParamsERKSt6vectorIdSaIdEE.exit.invoke ; 0 uses

_ZN16OpenColorIO_v2_59LogOpData12setRedParamsERKSt6vectorIdSaIdEE.exit: ; preds = %bb.cn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 192
  %i.kz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.invoke257 unwind label %_ZN16OpenColorIO_v2_59LogOpData14setGreenParamsERKSt6vectorIdSaIdEE.exit.invoke ; 0 uses

_ZN16OpenColorIO_v2_59LogOpData14setGreenParamsERKSt6vectorIdSaIdEE.exit.invoke: ; preds = %.invoke257, %_ZN16OpenColorIO_v2_59LogOpData12setRedParamsERKSt6vectorIdSaIdEE.exit, %bb.cn
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #31
  br label %52

bb.co:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br label %.invoke257

bb.cp:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br label %.invoke257

.invoke257:                                       ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN16OpenColorIO_v2_59LogOpData12setRedParamsERKSt6vectorIdSaIdEE.exit, %bb.co, %bb.cp
  %.sink = phi i64 [ 216, %bb.cp ], [ 216, %_ZN16OpenColorIO_v2_59LogOpData12setRedParamsERKSt6vectorIdSaIdEE.exit ], [ 192, %bb.co ], [ 168, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %50 = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.sink
  %51 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN16OpenColorIO_v2_59LogOpData13setBlueParamsERKSt6vectorIdSaIdEE.exit unwind label %_ZN16OpenColorIO_v2_59LogOpData14setGreenParamsERKSt6vectorIdSaIdEE.exit.invoke ; 0 uses

default.unreachable244:                           ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  unreachable

_ZN16OpenColorIO_v2_59LogOpData13setBlueParamsERKSt6vectorIdSaIdEE.exit: ; preds = %.invoke257
  %i.la = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !34 ; 8 uses
  %.not.i.i178 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i178, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZN16OpenColorIO_v2_59LogOpData13setBlueParamsERKSt6vectorIdSaIdEE.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 4 uses
  %i.ld = load atomic i64, ptr %i.lc acquire, align 8 ; 2 uses
  %i.le = icmp eq i64 %i.ld, 4294967297
  %i.lf = trunc i64 %i.ld to i32                  ; 2 uses
  br i1 %i.le, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.lc, align 8, !tbaa !27
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  store i32 0, ptr %i.lg, align 4, !tbaa !32
  %i.lh = load ptr, ptr %i.lb, align 8, !tbaa !11
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #31, !inline_history !1227
  %i.lk = load ptr, ptr %i.lb, align 8, !tbaa !11
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #31, !inline_history !1227
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.ln = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i179 = icmp eq i8 %i.ln, 0
  br i1 %.not.i.i.i179, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lo = add nsw i32 %i.lf, -1
  store i32 %i.lo, ptr %i.lc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i180

bb.cu:                                            ; preds = %bb.cs
  %i.lp = atomicrmw volatile add ptr %i.lc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i180

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i180: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i181 = phi i32 [ %i.lf, %bb.ct ], [ %i.lp, %bb.cu ]
  %i.lq = icmp eq i32 %.0.i.i.i.i181, 1
  br i1 %i.lq, label %bb.cv, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i180
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lb) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN16OpenColorIO_v2_59LogOpData13setBlueParamsERKSt6vectorIdSaIdEE.exit, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i180, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.lr = load ptr, ptr %7, align 8, !tbaa !522   ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ls = load ptr, ptr %i.hx, align 8, !tbaa !530
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lr to i64
  %i.lv = sub i64 %i.lt, %i.lu
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lv) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void

52:                                               ; preds = %_ZN16OpenColorIO_v2_59LogOpData14setGreenParamsERKSt6vectorIdSaIdEE.exit.invoke, %.thread261
  %.pn = phi { ptr, i32 } [ %49, %_ZN16OpenColorIO_v2_59LogOpData14setGreenParamsERKSt6vectorIdSaIdEE.exit.invoke ], [ %i.kv, %.thread261 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.cy

bb.cy:                                            ; preds = %52, %.thread
  %.pn.pn = phi { ptr, i32 } [ %.pn, %52 ], [ %i.ip, %.thread ] ; 2 uses
  %.pre211.pre = load ptr, ptr %7, align 8, !tbaa !522 ; 3 uses
  %.not.i.i.i183 = icmp eq ptr %.pre211.pre, null
  br i1 %.not.i.i.i183, label %_ZNSt6vectorIdSaIdEED2Ev.exit184, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lw = load ptr, ptr %i.hx, align 8, !tbaa !530
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %.pre211.pre to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %.pre211.pre, i64 noundef %i.lz) #33
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit184

_ZNSt6vectorIdSaIdEED2Ev.exit184:                 ; preds = %bb.cz, %bb.cy, %bb.bm
  %.pn.pn.pn = phi { ptr, i32 } [ %i.io, %bb.bm ], [ %.pn.pn, %bb.cy ], [ %.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit184, %bb.aa
  %.pn110.pn.pn = phi { ptr, i32 } [ %.pn110.pn, %bb.aa ], [ %.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA12_cJPKcS4_S4_S4_S4_S4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull @.str.147, i64 noundef 11)
          to label %.noexc unwind label %bb.l     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.b = load ptr, ptr %6, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %6, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !160
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i unwind label %bb.l

bb.c:                                             ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull %1, i64 noundef %i.i)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i unwind label %bb.l ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i: ; preds = %bb.c, %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i
  %i.k = load ptr, ptr %6, align 8, !tbaa !11
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %6, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !160
  %i.q = or i32 %i.p, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.n, i32 noundef %i.q)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i.i unwind label %bb.l

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull %2, i64 noundef %i.r)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i.i unwind label %bb.l ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.not.i.i.i.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i.i
  %i.t = load ptr, ptr %6, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %6, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !160
  %i.z = or i32 %i.y, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_S3_S3_S3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.l

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_.exit.i.i.i
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #31
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull %3, i64 noundef %i.aa)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_S3_S3_S3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i unwind label %bb.l ; 0 uses

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_S3_S3_S3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i: ; preds = %bb.g, %bb.f
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull @.str.149, i64 noundef 6)
          to label %.noexc19 unwind label %bb.l   ; 0 uses

.noexc19:                                         ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_S3_S3_S3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr %4, ptr noundef %5)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA12_cJPKcS4_S4_S4_S4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.l

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA12_cJPKcS4_S4_S4_S4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit: ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !44, !alias.scope !1234
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !47, !alias.scope !1234
  store i8 0, ptr %i.ad, align 8, !tbaa !36, !alias.scope !1234
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59, !noalias !1234 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1234 ; 2 uses
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  %.08.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ai ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA12_cJPKcS4_S4_S4_S4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63, !noalias !1234 ; 2 uses
  %i.am = ptrtoint ptr %.08.i.i.i to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.al, i64 noundef %i.ao)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !46, !alias.scope !1234 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %.body, label %.body.sink.split

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA12_cJPKcS4_S4_S4_S4_S4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ad
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ay = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ay, ptr %6, align 8, !tbaa !11
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %6, i64 %i.bb
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bd, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !36
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bd, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #31
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bl) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

bb.l:                                             ; preds = %.noexc19, %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_S3_S3_S3_S3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %7, align 8, !tbaa !46    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ad
  br i1 %i.bp, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.i
  %.sink = phi ptr [ %i.ar, %bb.i ], [ %i.bo, %bb.m ]
end_hunk_1
