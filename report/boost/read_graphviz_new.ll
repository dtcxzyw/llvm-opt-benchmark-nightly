Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5boost20read_graphviz_detail6parserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_13parser_resultE:bb.a
  call void @_ZNSt3setISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessIS7_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.n) #27
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !57  ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.j
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !60
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost20read_graphviz_detail13subgraph_infoESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #27
  call void @_ZNSt6vectorIN5boost20read_graphviz_detail5tokenESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #27
  call void @_ZN5boost20read_graphviz_detail9tokenizerD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost20read_graphviz_detail6parser11parse_graphEb(ptr noundef nonnull align 8 dereferenceable(328) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 7 uses
  %4 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 3 uses
  %5 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.boost::undirected_graph_error", align 8 ; 5 uses
  %8 = alloca %"struct.boost::directed_graph_error", align 8 ; 5 uses
  %9 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 3 uses
  %10 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 7 uses
  %11 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 11 uses
  %12 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 7 uses
  %15 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 7 uses
  %18 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"struct.boost::read_graphviz_detail::token", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !58
  store i8 0, ptr %i.f, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser4peekEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %3, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %3, align 8, !tbaa !112
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !60
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit:   ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.i, label %bb.c, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit27

bb.c:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit
  invoke void @_ZN5boost20read_graphviz_detail6parser3getEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %4, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !60
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit27

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.bf

bb.f:                                             ; preds = %bb.at, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit61, %bb.al, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42, %bb.u, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit27: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser4peekEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %5, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit27
  %i.x = load i32, ptr %5, align 8, !tbaa !112
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  switch i32 %i.x, label %.noexc.i [
    i32 1, label %bb.m
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit27
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bf

bb.i:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30
  br label %bb.m

.noexc.i:                                         ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 27, ptr %i.e, align 8, !tbaa !63
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ag, ptr %6, align 8, !tbaa !57
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !63  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ag, ptr noundef nonnull align 1 dereferenceable(27) @.str.278, i64 27, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !58
  %i.aj = load ptr, ptr %6, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.af
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.an = load i64, ptr %i.af, align 8, !tbaa !60
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.l:                                             ; preds = %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.af
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.l
  %i.at = load i64, ptr %i.af, align 8, !tbaa !60
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.aq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bf

bb.m:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.012 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %bb.i ], [ 0, %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit30 ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !107, !nonnull !108, !align !109 ; 2 uses
  store i8 %.012, ptr %i.aw, align 8, !tbaa !123
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = zext i1 %i.i to i8
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !124
  %22 = zext i1 %1 to i8
  %.not = icmp eq i8 %.012, %22
  br i1 %.not, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %1, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost22undirected_graph_errorE, i64 16), ptr %7, align 8, !tbaa !62
  invoke void @_ZN5boost15throw_exceptionINS_22undirected_graph_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bf

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost20directed_graph_errorE, i64 16), ptr %8, align 8, !tbaa !62
  invoke void @_ZN5boost15throw_exceptionINS_20directed_graph_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bf

bb.u:                                             ; preds = %bb.m
  invoke void @_ZN5boost20read_graphviz_detail6parser3getEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %9, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.v unwind label %bb.f

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.v
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !60
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser4peekEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %10, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36
  %i.bh = load i32, ptr %10, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %bb.w
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !60
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit39

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit39: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  switch i32 %i.bh, label %.noexc.i47 [
    i32 20, label %bb.y
    i32 6, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit45
  ]

bb.x:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit36
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bf

bb.y:                                             ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser4peekEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %11, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !57    ; 6 uses
  %i.br = icmp eq ptr %i.bq, %i.f
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !57 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt                ; 2 uses
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.z
  br i1 %i.bu, label %bb.aa, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.z
  br i1 %i.bu, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !58 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  switch i64 %i.bw, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !60
  store i8 %i.by, ptr %i.bq, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bs, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !58 ; 2 uses
  store i64 %i.bz, ptr %i.g, align 8, !tbaa !58
  %i.ca = load ptr, ptr %2, align 8, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !60
  %.pre.i = load ptr, ptr %i.bp, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bs, ptr %2, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !tbaa !60
  store <2 x i64> %i.cd, ptr %i.g, align 8, !tbaa !60
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ce = load i64, ptr %i.f, align 8, !tbaa !60
  store ptr %i.bs, ptr %2, align 8, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cg = load <2 x i64>, ptr %i.cf, align 8, !tbaa !60
  store <2 x i64> %i.cg, ptr %i.g, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !57
  store i64 %i.ce, ptr %i.bt, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ad, %bb.ae
  %i.ch = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bq, %bb.ad ], [ %i.bt, %bb.ae ]
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ci, align 8, !tbaa !58
  store i8 0, ptr %i.ch, align 1, !tbaa !60
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !57 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !60
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42

_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  invoke void @_ZN5boost20read_graphviz_detail6parser3getEv(ptr dead_on_unwind nonnull writable sret(%"struct.boost::read_graphviz_detail::token") align 8 %12, ptr noundef nonnull align 8 dereferenceable(328) %0)
          to label %bb.af unwind label %bb.f

bb.af:                                            ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit42
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.af
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !60
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #29
  br label %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit45

bb.ag:                                            ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bf

.noexc.i47:                                       ; preds = %_ZN5boost20read_graphviz_detail5tokenD2Ev.exit39
end_hunk_0
