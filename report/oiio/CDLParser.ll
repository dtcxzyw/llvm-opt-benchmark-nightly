inline.NumInlined: 1754
inline.NumDeleted: 606
begin_hunk_0_@_ZN16OpenColorIO_v2_59CDLParser4Impl20CharacterDataHandlerEPvPKci:bb.a
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::shared_ptr.4", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::shared_ptr.55", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::shared_ptr.64", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.17)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #30
  br label %bb.ct

bb.e:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.cq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %2, -1
  %i.k = icmp ne ptr %1, null
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.g, label %.noexc.i

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %1, align 1, !tbaa !34      ; 2 uses
  %.not50 = icmp eq i8 %i.l, 0
  br i1 %.not50, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 20, ptr %i.d, align 8, !tbaa !33
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %3, align 8, !tbaa !31
  %i.o = load i64, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.n, ptr noundef nonnull align 1 dereferenceable(20) @.str.34, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !32
  %i.q = load ptr, ptr %3, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable unwind label %bb.i

.unreachable:                                     ; preds = %.noexc
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.i:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.i
  %i.w = load i64, ptr %i.m, align 8, !tbaa !34
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ct

bb.j:                                             ; preds = %bb.g
  %i.y = icmp eq i32 %2, 1
  %i.z = icmp eq i8 %i.l, 10
  %or.cond244 = and i1 %i.y, %i.z
  br i1 %or.cond244, label %bb.cq, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ab = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %.not195 = icmp eq ptr %i.ab, null
  br i1 %.not195, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ac = call ptr @__dynamic_cast(ptr nonnull %i.ab, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_523XmlReaderDescriptionEltE, i64 0) #30, !noalias !100 ; 4 uses
  %.not.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread240, label %bb.aa

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.35, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ae = zext nneg i32 %2 to i64                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !33
  %i.ag = icmp samesign ugt i32 %2, 15
  br i1 %i.ag, label %.noexc.i83, label %._crit_edge.i.i82

.noexc.i83:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc85 unwind label %bb.v   ; 2 uses

.noexc85:                                         ; preds = %.noexc.i83
  store ptr %i.ah, ptr %6, align 8, !tbaa !31
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !34
  br label %._crit_edge.i.i82

._crit_edge.i.i82:                                ; preds = %.noexc85, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = phi ptr [ %i.ah, %.noexc85 ], [ %i.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %cond243 = icmp eq i32 %2, 1
  br i1 %cond243, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i82
  %i.ak = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !34
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.ae, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = load i64, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !32
  %i.an = load ptr, ptr %6, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.ap = load ptr, ptr %6, align 8, !tbaa !31
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ap, i64 noundef %i.aq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.w

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.p
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.at = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.af
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.av = load i64, ptr %i.af, align 8, !tbaa !34
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ax, ptr %7, align 8, !tbaa !30, !alias.scope !109
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !32, !alias.scope !109
  store i8 0, ptr %i.ax, align 8, !tbaa !34, !alias.scope !109
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %17 = load ptr, ptr %16, align 8, !tbaa !110, !noalias !109 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %17, null
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !109 ; 2 uses
  %18 = icmp ugt ptr %17, %i.ba
  %.08.i.i.i = select i1 %18, ptr %17, ptr %i.ba  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !112, !noalias !109 ; 2 uses
  %i.bd = ptrtoint ptr %.08.i.i.i to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.bc, i64 noundef %i.bf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %7, align 8, !tbaa !31, !alias.scope !109 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ax
  br i1 %i.bj, label %.body, label %.body.sink.split

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.r

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.s, %bb.q
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.unreachable192 unwind label %bb.x

.unreachable192:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.t:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %.noexc.i83
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.w:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.af
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.w
  %i.br = load i64, ptr %i.af, align 8, !tbaa !34
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.v
  %.pn52 = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.bo, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ax
  br i1 %i.bv, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.r
  %.sink = phi ptr [ %i.bi, %bb.r ], [ %i.bu, %bb.x ]
  %.pn54.ph = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bt, %bb.x ]
  %i.bw = load i64, ptr %i.ax, align 8, !tbaa !34
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bx) #31
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bt, %bb.x ], [ %.pn54.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.y

bb.y:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.u
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %.body ], [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.bm, %bb.u ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %bb.y ], [ %i.bl, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.cs

bb.aa:                                            ; preds = %.thread
  store ptr %i.ac, ptr %8, align 8, !tbaa !113, !alias.scope !100
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !37, !noalias !100 ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !37, !alias.scope !100
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !100
  %.not.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !3, !noalias !100
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !3, !noalias !100
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread240: ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !100
  br label %bb.ae

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.ab
  %i.cf = atomicrmw volatile add ptr %i.cb, i32 1 acq_rel, align 4, !noalias !100 ; 0 uses
  %.pr190.pre = load ptr, ptr %8, align 8, !tbaa !113 ; 2 uses
  %.not196 = icmp eq ptr %.pr190.pre, null
  br i1 %.not196, label %bb.ae, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread: ; preds = %bb.aa, %bb.ac, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  %i.cg = phi ptr [ %.pr190.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit ], [ %i.ac, %bb.ac ], [ %i.ac, %bb.aa ] ; 2 uses
  %i.ch = zext nneg i32 %2 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !53
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(129) %i.cg, ptr noundef nonnull %1, i64 noundef %i.ch, i32 noundef %i.cj)
          to label %bb.cd unwind label %bb.ad

bb.ad:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.ae:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread240, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 0, ptr %i.e, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.co = zext nneg i32 %2 to i64                 ; 6 uses
  store i64 %i.co, ptr %i.f, align 8, !tbaa !33
  invoke void @_ZN16OpenColorIO_v2_513FindSubStringEPKcmRmS2_(ptr noundef nonnull %1, i64 noundef %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.af unwind label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !33
  %.not58 = icmp eq i64 %i.cp, 0
  br i1 %.not58, label %bb.cb, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(80) %i.cq)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.cu, label %bb.ai, label %bb.ay

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.36, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cw, ptr %10, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.co, ptr %i.b, align 8, !tbaa !33
  %i.cx = icmp samesign ugt i32 %2, 15
  br i1 %i.cx, label %.noexc.i105, label %._crit_edge.i.i104

.noexc.i105:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc107 unwind label %bb.at ; 2 uses

.noexc107:                                        ; preds = %.noexc.i105
  store ptr %i.cy, ptr %10, align 8, !tbaa !31
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !34
  br label %._crit_edge.i.i104

._crit_edge.i.i104:                               ; preds = %.noexc107, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102
  %i.da = phi ptr [ %i.cy, %.noexc107 ], [ %i.cw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 ] ; 2 uses
  %cond242 = icmp eq i32 %2, 1
  br i1 %cond242, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i104
  %i.db = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.db, ptr %i.da, align 1, !tbaa !34
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr nonnull align 1 %1, i64 %i.co, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !32
  %i.de = load ptr, ptr %10, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.dg = load ptr, ptr %10, align 8, !tbaa !31
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.dg, i64 noundef %i.dh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit110 unwind label %bb.au

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit110: ; preds = %bb.am
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit110
  %i.dk = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cw
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.dm = load i64, ptr %i.cw, align 8, !tbaa !34
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.do, ptr %11, align 8, !tbaa !30, !alias.scope !122
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !32, !alias.scope !122
  store i8 0, ptr %i.do, align 8, !tbaa !34, !alias.scope !122
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !110, !noalias !122 ; 3 uses
  %.not.i.not.i.i116 = icmp eq ptr %20, null
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !122 ; 2 uses
  %21 = icmp ugt ptr %20, %i.dr
  %.08.i.i.i117 = select i1 %21, ptr %20, ptr %i.dr ; 2 uses
  %.not5.i.i118 = icmp eq ptr %.08.i.i.i117, null
  %.not.i.i119 = select i1 %.not.i.not.i.i116, i1 true, i1 %.not5.i.i118
  br i1 %.not.i.i119, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !112, !noalias !122 ; 2 uses
  %i.du = ptrtoint ptr %.08.i.i.i117 to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.dt, i64 noundef %i.dw)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit125 unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !122 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.do
  br i1 %i.ea, label %.body123, label %.body123.sink.split

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.eb)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit125 unwind label %bb.ao

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit125: ; preds = %bb.ap, %bb.an
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.unreachable194 unwind label %bb.av

.unreachable194:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit125
  unreachable

bb.aq:                                            ; preds = %bb.ag, %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ar:                                            ; preds = %bb.ai
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %bb.aj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.at:                                            ; preds = %.noexc.i105
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.au:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit110, %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %10, align 8, !tbaa !31   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cw
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.au
  %i.ej = load i64, ptr %i.cw, align 8, !tbaa !34
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.at
  %.pn67 = phi { ptr, i32 } [ %i.ef, %bb.at ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.eg, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.aw

bb.av:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit125
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.do
  br i1 %i.en, label %.body123, label %.body123.sink.split

.body123.sink.split:                              ; preds = %bb.av, %bb.ao
  %.sink247 = phi ptr [ %i.dz, %bb.ao ], [ %i.em, %bb.av ]
  %.pn69.ph = phi { ptr, i32 } [ %i.dy, %bb.ao ], [ %i.el, %bb.av ]
  %i.eo = load i64, ptr %i.do, align 8, !tbaa !34
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %.sink247, i64 noundef %i.ep) #31
  br label %.body123

.body123:                                         ; preds = %.body123.sink.split, %bb.av, %bb.ao
  %.pn69 = phi { ptr, i32 } [ %i.dy, %bb.ao ], [ %i.el, %bb.av ], [ %.pn69.ph, %.body123.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aw

bb.aw:                                            ; preds = %.body123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.as
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %.body123 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.ee, %bb.as ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.aw ], [ %i.ed, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.cc

bb.ay:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.eq = load ptr, ptr %4, align 8, !tbaa !87, !noalias !123 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.es = call ptr @__dynamic_cast(ptr nonnull %i.eq, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 0) #30, !noalias !123 ; 4 uses
  %.not.not.i138 = icmp eq ptr %i.es, null
  br i1 %.not.not.i138, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.es, ptr %12, align 8, !tbaa !126, !alias.scope !123
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !37, !noalias !123 ; 3 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !37, !alias.scope !123
  %.not.i.i.i.i139 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i139, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !123
  %.not.i.i.i.i.i140 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i140, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !3, !noalias !123
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !3, !noalias !123
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i: ; preds = %bb.az, %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !123
  br label %bb.bd

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split: ; preds = %bb.bb
  %i.fa = atomicrmw volatile add ptr %i.ew, i32 1 acq_rel, align 4, !noalias !123 ; 0 uses
  %.pr191.pre = load ptr, ptr %12, align 8, !tbaa !126 ; 2 uses
  %i.fb = icmp eq ptr %.pr191.pre, null
  br i1 %i.fb, label %bb.bd, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.be unwind label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.36, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142 unwind label %bb.bm ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.fd, ptr %14, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.co, ptr %i.a, align 8, !tbaa !33
  %i.fe = icmp samesign ugt i32 %2, 15
  br i1 %i.fe, label %.noexc.i145, label %._crit_edge.i.i144

.noexc.i145:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc147 unwind label %bb.bn ; 2 uses

.noexc147:                                        ; preds = %.noexc.i145
  store ptr %i.ff, ptr %14, align 8, !tbaa !31
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.fg, ptr %i.fd, align 8, !tbaa !34
  br label %._crit_edge.i.i144

._crit_edge.i.i144:                               ; preds = %.noexc147, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142
  %i.fh = phi ptr [ %i.ff, %.noexc147 ], [ %i.fd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142 ] ; 2 uses
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i144
  %i.fi = load i8, ptr %1, align 1, !tbaa !34
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !34
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i144
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr nonnull align 1 %1, i64 %i.co, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !32
  %i.fl = load ptr, ptr %14, align 8, !tbaa !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.fn = load ptr, ptr %14, align 8, !tbaa !31
  %i.fo = load i64, ptr %i.fk, align 8, !tbaa !32
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.fn, i64 noundef %i.fo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit150 unwind label %bb.bo

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit150: ; preds = %bb.bh
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit150
  %i.fr = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fd
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152
  %i.ft = load i64, ptr %i.fd, align 8, !tbaa !34
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.fv, ptr %15, align 8, !tbaa !30, !alias.scope !135
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.fw, align 8, !tbaa !32, !alias.scope !135
  store i8 0, ptr %i.fv, align 8, !tbaa !34, !alias.scope !135
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %23 = load ptr, ptr %22, align 8, !tbaa !110, !noalias !135 ; 3 uses
  %.not.i.not.i.i156 = icmp eq ptr %23, null
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !135 ; 2 uses
  %24 = icmp ugt ptr %23, %i.fy
  %.08.i.i.i157 = select i1 %24, ptr %23, ptr %i.fy ; 2 uses
  %.not5.i.i158 = icmp eq ptr %.08.i.i.i157, null
  %.not.i.i159 = select i1 %.not.i.not.i.i156, i1 true, i1 %.not5.i.i158
  br i1 %.not.i.i159, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !112, !noalias !135 ; 2 uses
  %i.gb = ptrtoint ptr %.08.i.i.i157 to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.ga, i64 noundef %i.gd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit165 unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %15, align 8, !tbaa !31, !alias.scope !135 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.fv
  br i1 %i.gh, label %.body163, label %.body163.sink.split

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.gi)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit165 unwind label %bb.bj

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit165: ; preds = %bb.bk, %bb.bi
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.unreachable193 unwind label %bb.bp

.unreachable193:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit165
  unreachable

bb.bl:                                            ; preds = %bb.bd
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %bb.be
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %.noexc.i145
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.bo:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit150, %bb.bh
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gn = load ptr, ptr %14, align 8, !tbaa !31   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fd
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bo
  %i.gp = load i64, ptr %i.fd, align 8, !tbaa !34
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.bn
  %.pn59 = phi { ptr, i32 } [ %i.gl, %bb.bn ], [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.gm, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.bq

bb.bp:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit165
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fv
  br i1 %i.gt, label %.body163, label %.body163.sink.split

.body163.sink.split:                              ; preds = %bb.bp, %bb.bj
  %.sink250 = phi ptr [ %i.gg, %bb.bj ], [ %i.gs, %bb.bp ]
  %.pn61.ph = phi { ptr, i32 } [ %i.gf, %bb.bj ], [ %i.gr, %bb.bp ]
  %i.gu = load i64, ptr %i.fv, align 8, !tbaa !34
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %.sink250, i64 noundef %i.gv) #31
  br label %.body163

.body163:                                         ; preds = %.body163.sink.split, %bb.bp, %bb.bj
  %.pn61 = phi { ptr, i32 } [ %i.gf, %bb.bj ], [ %i.gr, %bb.bp ], [ %.pn61.ph, %.body163.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bq

bb.bq:                                            ; preds = %.body163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.bm
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %.body163 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.gk, %bb.bm ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #30
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.bq ], [ %i.gj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ca

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread: ; preds = %bb.ba, %bb.bc, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  %i.gw = phi ptr [ %.pr191.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split ], [ %i.es, %bb.bc ], [ %i.es, %bb.ba ] ; 2 uses
  %i.gx = load i64, ptr %i.e, align 8, !tbaa !33  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx
  %i.gz = load i64, ptr %i.f, align 8, !tbaa !33
  %i.ha = sub i64 %i.gz, %i.gx
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !53
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !41
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(96) %i.gw, ptr noundef nonnull %i.gy, i64 noundef %i.ha, i32 noundef %i.hc)
          to label %bb.bs unwind label %bb.bz

bb.bs:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.hg = load ptr, ptr %i.et, align 8, !tbaa !37 ; 8 uses
  %.not.i.i178.a = icmp eq ptr %i.hg, null
  br i1 %.not.i.i178.a, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.hh, align 8, !tbaa !38
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !40
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !41
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #30, !inline_history !136
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !41
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #30, !inline_history !136
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bv:                                            ; preds = %bb.bt
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ht = add nsw i32 %i.hk, -1
  store i32 %i.ht, ptr %i.hh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.hu = atomicrmw volatile add ptr %i.hh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i = phi i32 [ %i.hk, %bb.bw ], [ %i.hu, %bb.bx ]
  %i.hv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hv, label %bb.by, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bs, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cb

bb.bz:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.br
  %.pn65 = phi { ptr, i32 } [ %i.hw, %bb.bz ], [ %.pn61.pn.pn, %bb.br ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca, %bb.ax, %bb.aq
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %bb.ax ], [ %.pn65, %bb.ca ], [ %i.ec, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.cr

bb.cd:                                            ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_523XmlReaderDescriptionEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exit.thread, %bb.cb
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !37 ; 8 uses
  %.not.i.i179 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i179, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523XmlReaderDescriptionEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 4 uses
  %i.ia = load atomic i64, ptr %i.hz acquire, align 8 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 4294967297
  %i.ic = trunc i64 %i.ia to i32                  ; 2 uses
  br i1 %i.ib, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.hz, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 0, ptr %i.id, align 4, !tbaa !40
  %i.ie = load ptr, ptr %i.hy, align 8, !tbaa !41
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #30, !inline_history !137
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_59CDLParser4Impl17EndElementHandlerEPvPKc:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::shared_ptr.4", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::shared_ptr.64", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::shared_ptr.4", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.17)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #33
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #30
  br label %bb.ce

bb.e:                                             ; preds = %bb.a
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %.noexc.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load i8, ptr %1, align 1, !tbaa !34
  %.not36 = icmp eq i8 %i.d, 0
  br i1 %.not36, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 22, ptr %i.a, align 8, !tbaa !33
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %2, align 8, !tbaa !31
  %i.g = load i64, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.f, ptr noundef nonnull align 1 dereferenceable(22) @.str.18, i64 22, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !32
  %i.i = load ptr, ptr %2, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable164 unwind label %bb.h

.unreachable164:                                  ; preds = %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.h:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.h
  %i.o = load i64, ptr %i.e, align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.g
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.l, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.ce

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = tail call noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q), !noalias !138
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %.critedge, label %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit

_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit: ; preds = %bb.i
  call void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %.pr = load ptr, ptr %3, align 8, !tbaa !87     ; 3 uses
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %._crit_edge.i.i61, label %bb.k

.critedge:                                        ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !138
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %.critedge, %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.t, ptr noundef nonnull align 1 dereferenceable(15) @.str.29, i64 15, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.u, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 31
  store i8 0, ptr %i.v, align 1, !tbaa !34
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.unreachable unwind label %bb.j

.unreachable:                                     ; preds = %._crit_edge.i.i61
  unreachable

bb.j:                                             ; preds = %._crit_edge.i.i61
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.t
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.j
  %i.z = load i64, ptr %i.t, align 8, !tbaa !34
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.cd

bb.k:                                             ; preds = %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32 ; 3 uses
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread158, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !31
  %bcmp.i.i = call i32 @bcmp(ptr %i.ah, ptr nonnull %1, i64 %i.ad)
  %.not166 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not166, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread158, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.k, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.30, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, i64 noundef %i.aj)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.3, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.31, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.an = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.3, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !30, !alias.scope !147
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !32, !alias.scope !147
  store i8 0, ptr %i.au, align 8, !tbaa !34, !alias.scope !147
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %14 = load ptr, ptr %13, align 8, !tbaa !110, !noalias !147 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %14, null
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !147 ; 2 uses
  %15 = icmp ugt ptr %14, %i.ax
  %.08.i.i.i = select i1 %15, ptr %14, ptr %i.ax  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !112, !noalias !147 ; 2 uses
  %i.ba = ptrtoint ptr %.08.i.i.i to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.az, i64 noundef %i.bc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %6, align 8, !tbaa !31, !alias.scope !147 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.au
  br i1 %i.bg, label %.body, label %.body.sink.split

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.n
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable161 unwind label %bb.t

.unreachable161:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  unreachable

bb.q:                                             ; preds = %bb.bv, %bb.y, %bb.w, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread158
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.r:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.au
  br i1 %i.bn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.o
  %.sink = phi ptr [ %i.bf, %bb.o ], [ %i.bm, %bb.t ]
  %.pn40.ph = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bl, %bb.t ]
  %i.bo = load i64, ptr %i.au, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bp) #31
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.o
  %.pn40 = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.bl, %bb.t ], [ %.pn40.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.s
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.body ], [ %i.bk, %bb.s ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.u ], [ %i.bj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.cd

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread158: ; preds = %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN16OpenColorIO_v2_521XmlReaderElementStack8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.w unwind label %bb.q

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread158
  %i.bq = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(80) %i.bq)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  br i1 %i.bu, label %bb.bv, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(80) %i.bv)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %bb.y
  br i1 %i.bz, label %bb.bv, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ca = load ptr, ptr %3, align 8, !tbaa !87, !noalias !148 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = call ptr @__dynamic_cast(ptr nonnull %i.ca, ptr nonnull @_ZTIN16OpenColorIO_v2_516XmlReaderElementE, ptr nonnull @_ZTIN16OpenColorIO_v2_517XmlReaderPlainEltE, i64 0) #30, !noalias !148 ; 4 uses
  %.not.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cc, ptr %7, align 8, !tbaa !126, !alias.scope !148
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !37, !noalias !148 ; 3 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !37, !alias.scope !148
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !148
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !148
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3, !noalias !148
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !148
  br label %bb.af

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split: ; preds = %bb.ad
  %i.ck = atomicrmw volatile add ptr %i.cg, i32 1 acq_rel, align 4, !noalias !148 ; 0 uses
  %.pr159.pre = load ptr, ptr %7, align 8, !tbaa !126 ; 2 uses
  %i.cl = icmp eq ptr %.pr159.pre, null
  br i1 %i.cl, label %bb.af, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltEEC2INS0_16XmlReaderElementEEERKS_IT_EPS1_.exit.i, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.32, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %bb.ag
  %i.cn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %1, i64 noundef %i.cn)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.al ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.cq, ptr %9, align 8, !tbaa !30, !alias.scope !157
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cr, align 8, !tbaa !32, !alias.scope !157
  store i8 0, ptr %i.cq, align 8, !tbaa !34, !alias.scope !157
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %17 = load ptr, ptr %16, align 8, !tbaa !110, !noalias !157 ; 3 uses
  %.not.i.not.i.i97 = icmp eq ptr %17, null
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !157 ; 2 uses
  %18 = icmp ugt ptr %17, %i.ct
  %.08.i.i.i98 = select i1 %18, ptr %17, ptr %i.ct ; 2 uses
  %.not5.i.i99 = icmp eq ptr %.08.i.i.i98, null
  %.not.i.i100 = select i1 %.not.i.not.i.i97, i1 true, i1 %.not5.i.i99
  br i1 %.not.i.i100, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !112, !noalias !157 ; 2 uses
  %i.cw = ptrtoint ptr %.08.i.i.i98 to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.cv, i64 noundef %i.cy)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit106 unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %9, align 8, !tbaa !31, !alias.scope !157 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cq
  br i1 %i.dc, label %.body104, label %.body104.sink.split

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit106 unwind label %bb.ai

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit106: ; preds = %bb.aj, %bb.ah
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.unreachable162 unwind label %bb.am

.unreachable162:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit106
  unreachable

bb.ak:                                            ; preds = %bb.af
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %bb.ag
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit106
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %9, align 8, !tbaa !31    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cq
  br i1 %i.di, label %.body104, label %.body104.sink.split

.body104.sink.split:                              ; preds = %bb.am, %bb.ai
  %.sink200 = phi ptr [ %i.db, %bb.ai ], [ %i.dh, %bb.am ]
  %.pn44.ph = phi { ptr, i32 } [ %i.da, %bb.ai ], [ %i.dg, %bb.am ]
  %i.dj = load i64, ptr %i.cq, align 8, !tbaa !34
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %.sink200, i64 noundef %i.dk) #31
  br label %.body104

.body104:                                         ; preds = %.body104.sink.split, %bb.am, %bb.ai
  %.pn44 = phi { ptr, i32 } [ %i.da, %bb.ai ], [ %i.dg, %bb.am ], [ %.pn44.ph, %.body104.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.an

bb.an:                                            ; preds = %.body104, %bb.al
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %.body104 ], [ %i.df, %bb.al ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.an ], [ %i.de, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.bu

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread: ; preds = %bb.ac, %bb.ae, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split
  %i.dl = phi ptr [ %.pr159.pre, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split ], [ %i.cc, %bb.ae ], [ %i.cc, %bb.ac ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.dm = invoke noundef i32 @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %.noexc117 unwind label %bb.ay

.noexc117:                                        ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %.not.i116 = icmp eq i32 %i.dm, 0
  br i1 %.not.i116, label %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119.thread, label %bb.ap

bb.ap:                                            ; preds = %.noexc117
  invoke void @_ZNK16OpenColorIO_v2_521XmlReaderElementStack4backEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119 unwind label %bb.ay

_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119.thread: ; preds = %.noexc117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !158
  br label %bb.at

_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119: ; preds = %bb.ap
  %.pr160 = load ptr, ptr %10, align 8, !tbaa !87 ; 3 uses
  %.not168 = icmp eq ptr %.pr160, null
  br i1 %.not168, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119
  %i.dn = load ptr, ptr %.pr160, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(80) %.pr160)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.dq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.ds = load ptr, ptr %10, align 8, !tbaa !87
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !161
  %.not169 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not169, label %bb.bf, label %bb.at

bb.at:                                            ; preds = %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119.thread, %bb.as, %bb.ar, %_ZNK16OpenColorIO_v2_59CDLParser4Impl14getBackElementEv.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.33, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %bb.au
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %1, i64 noundef %i.dv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.a unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.dy, ptr %12, align 8, !tbaa !30, !alias.scope !170
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.dz, align 8, !tbaa !32, !alias.scope !170
  store i8 0, ptr %i.dy, align 8, !tbaa !34, !alias.scope !170
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 48
  %20 = load ptr, ptr %19, align 8, !tbaa !110, !noalias !170 ; 3 uses
  %.not.i.not.i.i128 = icmp eq ptr %20, null
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !170 ; 2 uses
  %21 = icmp ugt ptr %20, %i.eb
  %.08.i.i.i129 = select i1 %21, ptr %20, ptr %i.eb ; 2 uses
  %.not5.i.i130 = icmp eq ptr %.08.i.i.i129, null
  %.not.i.i131 = select i1 %.not.i.not.i.i128, i1 true, i1 %.not5.i.i130
  br i1 %.not.i.i131, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !112, !noalias !170 ; 2 uses
  %i.ee = ptrtoint ptr %.08.i.i.i129 to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.ed, i64 noundef %i.eg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit137 unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %12, align 8, !tbaa !31, !alias.scope !170 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dy
  br i1 %i.ek, label %.body135, label %.body135.sink.split

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.el)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit137 unwind label %bb.aw

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit137: ; preds = %bb.ax, %bb.av
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.unreachable163 unwind label %bb.bc

.unreachable163:                                  ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit137
  unreachable

bb.ay:                                            ; preds = %bb.ap, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_517XmlReaderPlainEltENS0_16XmlReaderElementEESt10shared_ptrIT_ERKS3_IT0_E.exitthread-pre-split.thread
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.az:                                            ; preds = %bb.aq
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ba:                                            ; preds = %bb.at
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121, %bb.au
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit137
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %12, align 8, !tbaa !31   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dy
  br i1 %i.es, label %.body135, label %.body135.sink.split

.body135.sink.split:                              ; preds = %bb.bc, %bb.aw
  %.sink203 = phi ptr [ %i.ej, %bb.aw ], [ %i.er, %bb.bc ]
  %.pn48.ph = phi { ptr, i32 } [ %i.ei, %bb.aw ], [ %i.eq, %bb.bc ]
  %i.et = load i64, ptr %i.dy, align 8, !tbaa !34
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %.sink203, i64 noundef %i.eu) #31
  br label %.body135

.body135:                                         ; preds = %.body135.sink.split, %bb.bc, %bb.aw
  %.pn48 = phi { ptr, i32 } [ %i.ei, %bb.aw ], [ %i.eq, %bb.bc ], [ %.pn48.ph, %.body135.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bd

bb.bd:                                            ; preds = %.body135, %bb.bb
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %.body135 ], [ %i.ep, %bb.bb ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #30
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %bb.bd ], [ %i.eo, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.bs

bb.bf:                                            ; preds = %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !37 ; 8 uses
  %.not.i.i147.a = icmp eq ptr %i.ew, null
  br i1 %.not.i.i147.a, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ex, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !40
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #30, !inline_history !90
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #30, !inline_history !90
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i = phi i32 [ %i.fa, %bb.bj ], [ %i.fk, %bb.bk ]
  %i.fl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fl, label %bb.bl, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !37 ; 8 uses
  %.not.i.i148 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i148, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4294967297
  %i.fq = trunc i64 %i.fo to i32                  ; 2 uses
  br i1 %i.fp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.fn, align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fr, align 4, !tbaa !40
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !41
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #30, !inline_history !136
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #30, !inline_history !136
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i149 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i149, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fz = add nsw i32 %i.fq, -1
  store i32 %i.fz, ptr %i.fn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

bb.bq:                                            ; preds = %bb.bo
  %i.ga = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i151 = phi i32 [ %i.fq, %bb.bp ], [ %i.ga, %bb.bq ]
  %i.gb = icmp eq i32 %.0.i.i.i.i151, 1
  br i1 %i.gb, label %bb.br, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bv

bb.bs:                                            ; preds = %bb.be, %bb.az
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %bb.be ], [ %i.en, %bb.az ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_516XmlReaderElementELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #30
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.ay
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn, %bb.bs ], [ %i.em, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.ao
  %.pn48.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn.pn.pn, %bb.bt ], [ %.pn44.pn.pn, %bb.ao ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cd

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_517XmlReaderPlainEltELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z, %bb.x
  %i.gc = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !41
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(80) %i.gc)
end_hunk_1
