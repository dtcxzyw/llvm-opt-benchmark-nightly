inline.NumInlined: 1525
inline.NumDeleted: 671
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_124printTypeAndEncodingTreeERKNS0_10BaseVectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  resume { ptr, i32 } %.pn71.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox13VectorPrinter15summarizeToTextB5cxx11ERKNS0_10BaseVectorERKNS1_7OptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(94) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::(anonymous namespace)::VectorVisitor::Context", align 8 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %3, align 8, !tbaa !267
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.a, align 8, !tbaa !269
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !272
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !273
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !274
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 428
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 3 uses
  store i8 0, ptr %i.i, align 8, !tbaa !275
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 488 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 480
  store i64 0, ptr %i.l, align 8, !tbaa !52
  store i8 0, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 504
  store i64 0, ptr %i.m, align 8, !tbaa !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(25) %2, i64 25, i1 false), !tbaa.struct !288
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !274, !range !77, !noundef !78
  store i8 %i.o, ptr %i.h, align 4, !tbaa !289
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !273
  store i32 %i.q, ptr %i.g, align 8, !tbaa !290
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_113VectorVisitor5visitERKNS0_10BaseVectorERNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(94) %1, ptr noundef nonnull align 8 dereferenceable(512) %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !46, !alias.scope !297
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !52, !alias.scope !297
  store i8 0, ptr %i.r, align 8, !tbaa !51, !alias.scope !297
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97, !noalias !297 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !noalias !297 ; 2 uses
  %i.x = icmp ugt ptr %i.u, %i.w
  %.08.i.i.i = select i1 %i.x, ptr %i.u, ptr %i.w ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99, !noalias !297 ; 2 uses
  %i.aa = ptrtoint ptr %.08.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.z, i64 noundef %i.ac)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !49, !alias.scope !297 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !51, !alias.scope !297
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.k
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = load i64, ptr %i.k, align 8, !tbaa !51
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = load i8, ptr %i.i, align 8, !tbaa !275, !range !77, !noundef !78
  %i.ap = trunc nuw i8 %i.ao to i1
  store i8 0, ptr %i.i, align 8, !tbaa !275
  br i1 %i.ap, label %bb.f, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.au = load i64, ptr %i.as, align 8, !tbaa !51
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !53
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.f, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !53
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bd, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN8facebook5velox12_GLOBAL__N_113VectorVisitor7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !51
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #25
  br label %_ZN8facebook5velox12_GLOBAL__N_113VectorVisitor7ContextD2Ev.exit

_ZN8facebook5velox12_GLOBAL__N_113VectorVisitor7ContextD2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bd, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #24
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bl, ptr %i.f, align 8, !tbaa !53
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bn = getelementptr i8, ptr %i.bl, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.f, i64 %i.bo
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bq, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.br) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.g ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ae, %bb.d ]
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_113VectorVisitor7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_113VectorVisitor5visitERKNS0_10BaseVectorERNS2_7ContextE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.120", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.125", align 16 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.std::optional.12", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.e, ptr %14, align 8, !tbaa !46
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52   ; 9 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !103

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #26 ; 2 uses
  store ptr %i.m, ptr %14, align 8, !tbaa !49
  store i64 %i.h, ptr %i.e, align 8, !tbaa !51
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.e, %bb.a ] ; 3 uses
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !51
  store i8 %i.o, ptr %i.n, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 7 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !277  ; 7 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 6 uses
  store i8 0, ptr %i.v, align 8, !tbaa !275
  %i.w = load i8, ptr %i.u, align 8, !tbaa !275, !range !77, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.y, ptr %15, align 8, !tbaa !46
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !52 ; 8 uses
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i64 %i.ab, 0
  br i1 %i.ad, label %.noexc.i.i.i.i.i.i.i.i, label %bb.h

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc47 unwind label %bb.ae

.noexc47:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.noexc6.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !103

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.h
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc48 unwind label %bb.ae

.noexc48:                                         ; preds = %.noexc6.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #26
          to label %.noexc49 unwind label %bb.ae  ; 2 uses

.noexc49:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.ag, ptr %15, align 8, !tbaa !49
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc49, %bb.f
  %i.ah = phi ptr [ %i.ag, %.noexc49 ], [ %i.y, %bb.f ] ; 3 uses
  switch i64 %i.ab, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !51
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !51
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ab, ptr %i.aj, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store i8 0, ptr %i.ak, align 1, !tbaa !51
  store i8 1, ptr %i.v, align 8, !tbaa !275
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.al = icmp eq i64 %i.h, 0
  br i1 %i.al, label %bb.k, label %.noexc

bb.k:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.am = icmp ult i64 %i.s, 10
  br i1 %i.am, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.an, ptr %16, align 8, !tbaa !46, !alias.scope !298
  br label %bb.s

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.q
  %.02229.i.i = phi i64 [ %i.au, %bb.q ], [ %i.s, %bb.k ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.av, %bb.q ], [ 1, %bb.k ] ; 4 uses
  %i.ao = icmp ult i64 %.02229.i.i, 100
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.aq = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.o:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.q:                                             ; preds = %bb.o
  %i.au = udiv i64 %.02229.i.i, 10000
  %i.av = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.aw = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.aw, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !301

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.0.i.i = phi i32 [ %i.at, %bb.p ], [ %i.ap, %bb.l ], [ %i.ar, %bb.n ], [ %i.av, %bb.q ] ; 3 uses
  %i.ax = zext i32 %.0.i.i to i64                 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.ay, ptr %16, align 8, !tbaa !46, !alias.scope !298
  %i.az = icmp ugt i32 %.0.i.i, 15
  br i1 %i.az, label %.noexc.i51, label %bb.r

.noexc.i51:                                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ba = add nuw nsw i64 %i.ax, 1
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26
          to label %.noexc52 unwind label %bb.af  ; 2 uses

.noexc52:                                         ; preds = %.noexc.i51
  store ptr %i.bb, ptr %16, align 8, !tbaa !49, !alias.scope !298
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !51, !alias.scope !298
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.t [
    i32 0, label %bb.u
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %.thread.i
  %i.bc = phi ptr [ %i.an, %.thread.i ], [ %i.ay, %bb.r ] ; 2 uses
  store i8 0, ptr %i.bc, align 1, !tbaa !51, !alias.scope !298
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %.noexc52
  %i.bd = phi ptr [ %i.bb, %.noexc52 ], [ %i.ay, %bb.r ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 0, i64 %i.ax, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.be = phi i64 [ 0, %bb.r ], [ %i.ax, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.bf = phi ptr [ %i.ay, %bb.r ], [ %i.bd, %bb.t ], [ %i.bc, %bb.s ]
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !52, !alias.scope !298
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !51
  %i.bi = load ptr, ptr %16, align 8, !tbaa !49, !alias.scope !298 ; 4 uses
  %i.bj = icmp ugt i64 %i.s, 99
  br i1 %i.bj, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i50

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !52, !alias.scope !298
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add i32 %i.bl, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bp, %.lr.ph.i4.i ], [ %i.s, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bz, %.lr.ph.i4.i ], [ %i.bm, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bn = urem i64 %.020.i.i, 100
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51, !noalias !298
  %i.bt = zext i32 %.01819.i.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bt
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !51
  %i.bv = load i8, ptr %i.bq, align 2, !tbaa !51, !noalias !298
  %i.bw = add i32 %.01819.i.i, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !51
  %i.bz = add i32 %.01819.i.i, -2
  %i.ca = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ca, label %.lr.ph.i4.i, label %._crit_edge.i.i50, !llvm.loop !302

._crit_edge.i.i50:                                ; preds = %.lr.ph.i4.i, %bb.u
  %.0.lcssa.i.i = phi i64 [ %i.s, %bb.u ], [ %i.bp, %.lr.ph.i4.i ] ; 3 uses
  %i.cb = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i50
  %i.cc = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !51, !noalias !298
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !51
  %i.ch = load i8, ptr %i.cd, align 2, !tbaa !51, !noalias !298
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.w:                                             ; preds = %._crit_edge.i.i50
  %i.ci = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cj = or disjoint i8 %i.ci, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.v, %bb.w
  %storemerge.i.i = phi i8 [ %i.cj, %bb.w ], [ %i.ch, %bb.v ]
  store i8 %storemerge.i.i, ptr %i.bi, align 1, !tbaa !51
  br label %bb.x

.noexc:                                           ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !303
  %i.ck = load ptr, ptr %14, align 8, !tbaa !49
  %i.cl = load i64, ptr %i.p, align 8, !tbaa !52
  store ptr %i.ck, ptr %13, align 16, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.s, ptr %i.cn, align 16, !tbaa !51, !noalias !303
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.51, i64 5, i64 77, ptr nonnull %13)
          to label %_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEES7_NS0_7fstringIJDpT_EE1tEDpOSC_.exit unwind label %bb.af

_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEES7_NS0_7fstringIJDpT_EE1tEDpOSC_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !303
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit, %_ZN3fmt3v116formatIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEES7_NS0_7fstringIJDpT_EE1tEDpOSC_.exit
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !49  ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  %i.cr = load ptr, ptr %16, align 8, !tbaa !49   ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.x
  br i1 %i.ct, label %bb.y, label %.thread.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.x
  br i1 %i.ct, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !52 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  switch i64 %i.cv, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.cx = load i8, ptr %i.cr, align 1, !tbaa !51
  store i8 %i.cx, ptr %i.co, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.cv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.cy = load i64, ptr %i.cu, align 8, !tbaa !52 ; 2 uses
  store i64 %i.cy, ptr %i.g, align 8, !tbaa !52
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !51
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i53:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cr, ptr %i.d, align 8, !tbaa !49
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dc = load <2 x i64>, ptr %i.db, align 8, !tbaa !51
  store <2 x i64> %i.dc, ptr %i.g, align 8, !tbaa !51
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dd = load i64, ptr %i.cp, align 8, !tbaa !51
  store ptr %i.cr, ptr %i.d, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.df = load <2 x i64>, ptr %i.de, align 8, !tbaa !51
  store <2 x i64> %i.df, ptr %i.g, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.co, ptr %16, align 8, !tbaa !49
  store i64 %i.dd, ptr %i.cs, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i53
  store ptr %i.cs, ptr %16, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %20 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.co, %bb.ab ], [ %i.cs, %bb.ac ]
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !52
  store i8 0, ptr %20, align 1, !tbaa !51
  %i.dh = load ptr, ptr %16, align 8, !tbaa !49   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !51
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 428 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !289, !range !77, !noundef !78
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 0, ptr %i.dm, align 4, !tbaa !289
  br label %bb.bt

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit106

bb.af:                                            ; preds = %.noexc.i51, %.noexc
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.dw

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !290 ; 2 uses
  %i.du = mul nsw i32 %i.dt, 3                    ; 3 uses
  %i.dv = sext i32 %i.du to i64                   ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.dw, ptr %17, align 8, !tbaa !46, !alias.scope !306
  %i.dx = icmp ugt i32 %i.du, 15
  br i1 %i.dx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dy = icmp slt i32 %i.dt, 0
  br i1 %i.dy, label %.noexc.i.i, label %.thread7.i.i.i

.noexc.i.i:                                       ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc54 unwind label %bb.an

.noexc54:                                         ; preds = %.noexc.i.i
  unreachable

.thread7.i.i.i:                                   ; preds = %bb.ah
  %i.dz = add nuw nsw i64 %i.dv, 1
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #26
          to label %.noexc55 unwind label %bb.an  ; 2 uses

.noexc55:                                         ; preds = %.thread7.i.i.i
  store ptr %i.ea, ptr %17, align 8, !tbaa !49, !alias.scope !306
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !51, !alias.scope !306
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  switch i32 %i.du, label %bb.ak [
    i32 0, label %bb.al
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  store i8 32, ptr %i.dw, align 8, !tbaa !51, !alias.scope !306
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai, %.noexc55
  %i.eb = phi ptr [ %i.ea, %.noexc55 ], [ %i.dw, %bb.ai ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eb, i8 32, i64 %i.dv, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ec = phi ptr [ %i.dw, %bb.ai ], [ %i.eb, %bb.ak ], [ %i.dw, %bb.aj ]
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.dv, ptr %i.ed, align 8, !tbaa !52, !alias.scope !306
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dv
  store i8 0, ptr %i.ee, align 1, !tbaa !51
  %i.ef = load ptr, ptr %17, align 8, !tbaa !49
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !52
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.ef, i64 noundef %i.eg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ao ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.al
  %i.ei = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dw
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ek = load i64, ptr %i.dw, align 8, !tbaa !51
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.en = load i8, ptr %i.em, align 1, !tbaa !309, !range !77, !noundef !78
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.am, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.eq = load i64, ptr %i.g, align 8, !tbaa !52
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.ep, i64 noundef %i.eq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61 unwind label %bb.ap

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61: ; preds = %bb.am
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ap ; 0 uses

bb.an:                                            ; preds = %.thread7.i.i.i, %.noexc.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.ao:                                            ; preds = %bb.al
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dw
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ao
  %i.ex = load i64, ptr %i.dw, align 8, !tbaa !51
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.an
  %.pn = phi { ptr, i32 } [ %i.et, %bb.an ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.eu, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.dw

bb.ap:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61, %bb.am
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !310
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %.noexc67 unwind label %bb.br

.noexc67:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !310
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !243, !noalias !310
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !3, !noalias !310
  invoke void @_ZNK8facebook5velox4Type15toSummaryStringB5cxx11ENS1_18TypeSummaryOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(18) %i.fc, i32 %.sroa.0.0.copyload.i)
          to label %bb.aq unwind label %bb.bb, !noalias !310

bb.aq:                                            ; preds = %.noexc67
  %i.fd = load ptr, ptr %9, align 8, !tbaa !49, !noalias !310
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !52, !noalias !310
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef %i.fd, i64 noundef %i.ff)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.bc, !noalias !310 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.aq
  %i.fh = load ptr, ptr %9, align 8, !tbaa !49, !noalias !310 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !51, !noalias !310
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #25, !noalias !310
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !310
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.bd, !noalias !310 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !7, !noalias !310
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i32 noundef %i.fo)
          to label %bb.ar unwind label %bb.bd, !noalias !310

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull @.str.53, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i unwind label %bb.bd, !noalias !310 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23.i: ; preds = %bb.ar
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.25, i64 noundef 1)
end_hunk_0
