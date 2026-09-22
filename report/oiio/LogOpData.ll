Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/LogOpData?download=true
inline.NumInlined: 665
inline.NumDeleted: 238
begin_hunk_0_@_ZN16OpenColorIO_v2_518getParameterStringILi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl:bb.a
  %i.m = sub i64 %i.l, %i.j                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.u = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.v = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !41  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not.i = icmp eq i64 %i.m, %i.af
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.d
  %.011.i.i.i.i.i3.i = phi ptr [ %i.ak, %bb.d ], [ %i.ac, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.aj, %bb.d ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ag = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ah = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i.i.i.i5.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.am = load double, ptr %i.i, align 8, !tbaa !44
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.am)
          to label %_ZNSolsEd.exit10 unwind label %bb.e

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !44
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.aq)
          to label %_ZNSolsEd.exit11 unwind label %bb.e

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink = phi ptr [ %i.au, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %bb.d ]
  %i.av = load double, ptr %.sink, align 8, !tbaa !44
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.av)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

bb.f:                                             ; preds = %bb.a
  %i.ax = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull @.str.24)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.l unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ax) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !64, !alias.scope !129
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !55, !alias.scope !129
  store i8 0, ptr %i.az, align 8, !tbaa !47, !alias.scope !129
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66, !noalias !129 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !129 ; 2 uses
  %i.bf = icmp ugt ptr %i.bc, %i.be
  %.08.i.i.i = select i1 %i.bf, ptr %i.bc, ptr %i.be ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSolsEd.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67, !noalias !129 ; 2 uses
  %i.bi = ptrtoint ptr %.08.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bh, i64 noundef %i.bk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !129 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.az
  br i1 %i.bo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bp = load i64, ptr %i.az, align 8, !tbaa !47, !alias.scope !129
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #20
  br label %.body

bb.k:                                             ; preds = %_ZNSolsEd.exit
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.bs = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !10
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !47
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #21
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cf) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.h ], [ %i.al, %bb.e ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bm, %bb.j ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi2EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 16
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %i.am = icmp eq ptr %i.ak, %i.h
  br i1 %i.am, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !44
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ap)
          to label %_ZNSolsEd.exit10 unwind label %bb.d

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !44
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.au)
          to label %_ZNSolsEd.exit11 unwind label %bb.d

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink26, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ba)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.24)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.k unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !64, !alias.scope !136
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !55, !alias.scope !136
  store i8 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !136
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66, !noalias !136 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !136 ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  %.08.i.i.i = select i1 %i.bk, ptr %i.bh, ptr %i.bj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67, !noalias !136 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !136 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.be
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.be, align 8, !tbaa !47, !alias.scope !136
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !10
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.an, %bb.d ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.br, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi3EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 24
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %i.am = icmp eq ptr %i.ak, %i.h
  br i1 %i.am, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !44
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ap)
          to label %_ZNSolsEd.exit10 unwind label %bb.d

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load double, ptr %i.at, align 8, !tbaa !44
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.au)
          to label %_ZNSolsEd.exit11 unwind label %bb.d

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink26, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ba)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.24)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.k unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !64, !alias.scope !143
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !55, !alias.scope !143
  store i8 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !143
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66, !noalias !143 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !143 ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  %.08.i.i.i = select i1 %i.bk, ptr %i.bh, ptr %i.bj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67, !noalias !143 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !143 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.be
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.be, align 8, !tbaa !47, !alias.scope !143
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !10
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.an, %bb.d ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.br, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 8
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %i.am = icmp eq ptr %i.ak, %i.h
  br i1 %i.am, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !44
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ap)
          to label %_ZNSolsEd.exit10 unwind label %bb.d

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !44
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.au)
          to label %_ZNSolsEd.exit11 unwind label %bb.d

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink26, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ba)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.24)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.k unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !64, !alias.scope !150
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !55, !alias.scope !150
  store i8 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !150
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66, !noalias !150 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !150 ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  %.08.i.i.i = select i1 %i.bk, ptr %i.bh, ptr %i.bj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67, !noalias !150 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !150 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.be
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.be, align 8, !tbaa !47, !alias.scope !150
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !10
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.an, %bb.d ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.br, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi4EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 32
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %i.am = icmp eq ptr %i.ak, %i.h
  br i1 %i.am, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !44
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ap)
          to label %_ZNSolsEd.exit10 unwind label %bb.d

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load double, ptr %i.at, align 8, !tbaa !44
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.au)
          to label %_ZNSolsEd.exit11 unwind label %bb.d

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink26, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ba)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.24)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.k unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !64, !alias.scope !157
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !55, !alias.scope !157
  store i8 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !157
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66, !noalias !157 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !157 ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  %.08.i.i.i = select i1 %i.bk, ptr %i.bh, ptr %i.bj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67, !noalias !157 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !157 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.be
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.be, align 8, !tbaa !47, !alias.scope !157
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !10
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.an, %bb.d ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.br, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_518getParameterStringILi5EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9LogOpDataEl(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !10
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41   ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 40
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.l, %i.t
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.011.i.i.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.v = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.w = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp eq i64 %i.l, %i.ag
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit
  %.011.i.i.i.i.i3.i = phi ptr [ %i.al, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.ad, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ak, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ], [ %i.i, %.loopexit.i ] ; 2 uses
  %i.ah = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ai = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit: ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %i.am = icmp eq ptr %i.ak, %i.h
  br i1 %i.am, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke, %_ZNSolsEd.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEd.exit10, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !44
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ap)
          to label %_ZNSolsEd.exit10 unwind label %bb.d

_ZNSolsEd.exit10:                                 ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEd.exit10
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !44
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.au)
          to label %_ZNSolsEd.exit11 unwind label %bb.d

_ZNSolsEd.exit11:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZNSolsEd.exit11
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke: ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %.sink26 = phi ptr [ %i.ay, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 ], [ %i.i, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sink26, i64 40
  %i.ba = load double, ptr %i.az, align 8, !tbaa !44
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.ba)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.24)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.k unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #21
  br label %.body

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12.invoke
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !64, !alias.scope !164
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !55, !alias.scope !164
  store i8 0, ptr %i.be, align 8, !tbaa !47, !alias.scope !164
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66, !noalias !164 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !164 ; 2 uses
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  %.08.i.i.i = select i1 %i.bk, ptr %i.bh, ptr %i.bj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67, !noalias !164 ; 2 uses
  %i.bn = ptrtoint ptr %.08.i.i.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bm, i64 noundef %i.bp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !164 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.be
  br i1 %i.bt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.be, align 8, !tbaa !47, !alias.scope !164
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #20
  br label %.body

bb.j:                                             ; preds = %_ZNSolsEd.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %3, align 8, !tbaa !10
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.g ], [ %i.an, %bb.d ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.br, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_59LogOpData11isSimpleLogEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(252) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !41   ; 8 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ne i64 %i.h, %i.n
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  %or.cond = or i1 %i.o, %.not9.i.i.i.i.i.i
  br i1 %or.cond, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %.011.i.i.i.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.s, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.p = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !44
  %i.q = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !44
  %i.r = fcmp oeq double %i.p, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.not.i = icmp eq i64 %i.h, %i.aa
  br i1 %.not.i, label %.lr.ph.i.i.i.i.i2.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.loopexit.i, %bb.c
  %.011.i.i.i.i.i3.i = phi ptr [ %i.af, %bb.c ], [ %i.x, %.loopexit.i ] ; 2 uses
  %.0810.i.i.i.i.i4.i = phi ptr [ %i.ae, %bb.c ], [ %i.e, %.loopexit.i ] ; 2 uses
  %i.ab = load double, ptr %.0810.i.i.i.i.i4.i, align 8, !tbaa !44
  %i.ac = load double, ptr %.011.i.i.i.i.i3.i, align 8, !tbaa !44
  %i.ad = fcmp oeq double %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i4.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i3.i, i64 8
  %.not.i.i.i.i.i5.i = icmp eq ptr %i.ae, %i.d
  br i1 %.not.i.i.i.i.i5.i, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !0

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2: ; preds = %bb.c
  %i.ag = icmp eq i64 %i.h, 32
  br i1 %i.ag, label %bb.d, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.d:                                             ; preds = %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2
  %i.ah = load double, ptr %i.e, align 8, !tbaa !44
  %i.ai = fcmp oeq double %i.ah, 1.000000e+00
  br i1 %i.ai, label %bb.e, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !44
  %i.al = fcmp oeq double %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.f, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !44
  %i.ao = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.g, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !44
  %i.ar = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread

_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i2.i, %.loopexit.i, %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread
  %.0 = phi i1 [ false, %_ZNK16OpenColorIO_v2_59LogOpData18allComponentsEqualEv.exit.thread ], [ true, %bb.g ]
end_hunk_0
