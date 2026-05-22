inline.NumInlined: 1573
inline.NumDeleted: 659
begin_hunk_0_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit46

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit46:  ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMesh(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef captures(none) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %7 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.54", align 8    ; 11 uses
  %10 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %11 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %12 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %struct.aiFace, align 8            ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %struct.aiString, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.c = load <2 x ptr>, ptr %10, align 16
  store <2 x ptr> %i.c, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.e = load <2 x ptr>, ptr %i.d, align 16
  store <2 x ptr> %i.e, ptr %12, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 180
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 19
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.b
  %i.z = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ab = load ptr, ptr %9, align 8               ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 4                 ; 5 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = and i64 %i.af, 4294967295               ; 5 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = or disjoint i64 %i.aj, 8
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #28
          to label %bb.cc unwind label %.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.h:                                             ; preds = %bb.d
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.i unwind label %bb.al      ; 8 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ap = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.j unwind label %bb.am      ; 4 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.f, ptr %13, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #29
          to label %.noexc unwind label %.loopexit.split-lp198

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ar, ptr %i.a, align 8
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc67 unwind label %.loopexit197 ; 2 uses

.noexc67:                                         ; preds = %.noexc.i
  store ptr %i.at, ptr %13, align 8
  %i.au = load i64, ptr %i.a, align 8
  store i64 %i.au, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc67, %bb.l
  %i.av = phi ptr [ %i.at, %.noexc67 ], [ %i.f, %bb.l ] ; 2 uses
  switch i64 %i.ar, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.aw = load i8, ptr %i.ap, align 1
  store i8 %i.aw, ptr %i.av, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr nonnull align 1 %i.ap, i64 %i.ar, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.ax = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ax, ptr %i.g, align 8
  %i.ay = load ptr, ptr %13, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 0, ptr %i.az, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ba = load i64, ptr %i.g, align 8
  %i.bb = icmp eq i64 %i.ba, 8
  %.pre292 = load ptr, ptr %13, align 8           ; 3 uses
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread191

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.o
  %i.bc = load i64, ptr %.pre292, align 1
  %i.bd = icmp ne i64 %i.bc, 7308330019093836404
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread191

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 -1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %i.h, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.h, ptr noundef nonnull align 1 dereferenceable(3) @_ZN6Assimp4D3MF6XmlTagL3pidE, i64 3, i1 false)
  store i64 3, ptr %i.i, align 8
  store i8 0, ptr %i.y, align 1
  %i.bg = invoke fastcc noundef zeroext i1 @_ZN6Assimp4D3MF12_GLOBAL__N_116getNodeAttributeERKN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr nonnull %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.p unwind label %bb.an

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bh = load ptr, ptr %14, align 8              ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.h, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  store i32 3, ptr %15, align 8, !alias.scope !40
  %i.bl = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #28
          to label %.noexc73 unwind label %bb.ao  ; 8 uses

.noexc73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.bl, ptr %i.j, align 8, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !40
  %i.bm = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL2v1E)
          to label %bb.q unwind label %bb.z, !noalias !40

bb.q:                                             ; preds = %.noexc73
  store ptr %i.bm, ptr %6, align 8, !noalias !40
  %i.bn = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str)
          to label %bb.r unwind label %bb.z, !noalias !40

bb.r:                                             ; preds = %bb.q
  %i.bo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bn, ptr noundef null, i32 noundef 10) #26, !noalias !40, !inline_history !14
  %i.bp = trunc i64 %i.bo to i32
  store i32 %i.bp, ptr %i.bl, align 4, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !40
  %i.bq = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL2v2E)
          to label %bb.s unwind label %bb.aa, !noalias !40

bb.s:                                             ; preds = %bb.r
  store ptr %i.bq, ptr %7, align 8, !noalias !40
  %i.br = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str)
          to label %bb.t unwind label %bb.aa, !noalias !40

bb.t:                                             ; preds = %bb.s
  %i.bs = call i64 @__isoc23_strtol(ptr noundef nonnull %i.br, ptr noundef null, i32 noundef 10) #26, !noalias !40, !inline_history !14
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !40
  %i.bv = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL2v3E)
          to label %bb.u unwind label %bb.ab, !noalias !40

bb.u:                                             ; preds = %bb.t
  store ptr %i.bv, ptr %8, align 8, !noalias !40
  %i.bw = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str)
          to label %bb.v unwind label %bb.ab, !noalias !40

bb.v:                                             ; preds = %bb.u
  %i.bx = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 10) #26, !noalias !40, !inline_history !14
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.by, ptr %i.bz, align 4, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !40
  %i.ca = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL2p1E)
          to label %.noexc.i72 unwind label %.thread32.i, !noalias !40

.noexc.i72:                                       ; preds = %bb.v
  store ptr %i.ca, ptr %5, align 8, !noalias !40
  %i.cb = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc16.i unwind label %.thread32.i, !noalias !40

.noexc16.i:                                       ; preds = %.noexc.i72
  br i1 %i.cb, label %.noexc17.i, label %bb.w

bb.w:                                             ; preds = %.noexc16.i
  %i.cc = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %.noexc17.i unwind label %.thread32.i, !noalias !40

.noexc17.i:                                       ; preds = %bb.w, %.noexc16.i
  %.sroa.0.0 = phi i32 [ -1, %.noexc16.i ], [ %i.cc, %bb.w ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !40
  %i.cd = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL2p2E)
          to label %.noexc19.i unwind label %.thread32.i, !noalias !40

.noexc19.i:                                       ; preds = %.noexc17.i
  store ptr %i.cd, ptr %4, align 8, !noalias !40
  %i.ce = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc20.i unwind label %.thread32.i, !noalias !40

.noexc20.i:                                       ; preds = %.noexc19.i
  br i1 %i.ce, label %.noexc21.i, label %bb.x

bb.x:                                             ; preds = %.noexc20.i
  %i.cf = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %.noexc21.i unwind label %.thread32.i, !noalias !40

.noexc21.i:                                       ; preds = %bb.x, %.noexc20.i
  %.sroa.9.0 = phi i32 [ -1, %.noexc20.i ], [ %i.cf, %bb.x ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !40
  %i.cg = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @_ZN6Assimp4D3MF6XmlTagL2p3E)
          to label %.noexc24.i unwind label %.thread32.i, !noalias !40

.noexc24.i:                                       ; preds = %.noexc21.i
  store ptr %i.cg, ptr %3, align 8, !noalias !40
  %i.ch = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc25.i unwind label %.thread32.i, !noalias !40

.noexc25.i:                                       ; preds = %.noexc24.i
  br i1 %i.ch, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.noexc25.i
  %i.ci = invoke noundef i32 @_ZNK4pugi13xml_attribute6as_intEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %bb.ac unwind label %.thread32.i, !noalias !40

bb.z:                                             ; preds = %bb.q, %.noexc73
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !40
  br label %bb.bz

bb.aa:                                            ; preds = %bb.s, %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !40
  br label %bb.bz

bb.ab:                                            ; preds = %bb.u, %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !40
  br label %bb.bz

.thread32.i:                                      ; preds = %bb.y, %.noexc24.i, %.noexc21.i, %bb.x, %.noexc19.i, %.noexc17.i, %bb.w, %.noexc.i72, %bb.v
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ac:                                            ; preds = %.noexc25.i, %bb.y
  %.sroa.15.0 = phi i32 [ -1, %.noexc25.i ], [ %i.ci, %bb.y ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !40
  br i1 %i.bg, label %bb.ad, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"

bb.ad:                                            ; preds = %bb.ac
  %i.cm = and i32 %.sroa.9.0, %.sroa.0.0
  %i.cn = and i32 %i.cm, %.sroa.15.0
  %or.cond5.not = icmp eq i32 %i.cn, -1
  br i1 %or.cond5.not, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = load i32, ptr %i.b, align 4             ; 2 uses
  %i.cp = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not10.i.i.i, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.cp, %bb.ae ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.ae ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ult i32 %i.cr, %i.co               ; 2 uses
  %.19.i.i.i = select i1 %i.cs, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ct = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.ct, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit

_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp ult i32 %i.co, %i.cv
  br i1 %i.cw, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %bb.af

bb.af:                                            ; preds = %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i32 %i.db(ptr noundef nonnull align 8 dereferenceable(12) %i.cy)
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.dd = icmp eq i32 %i.dc, 1
  %i.de = load ptr, ptr %i.cx, align 8            ; 5 uses
  br i1 %i.dd, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %.not.i = icmp eq i32 %.sroa.0.0, -1
  br i1 %.not.i, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = sext i32 %.sroa.0.0 to i64
  %i.dh = load ptr, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4
  store i32 %i.dj, ptr %i.u, align 8
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit"

"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit": ; preds = %bb.ah, %bb.ai
  %.not.i74 = icmp eq i32 %.sroa.9.0, -1
  br i1 %.not.i74, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit75", label %bb.aj

bb.aj:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit"
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dl = sext i32 %.sroa.9.0 to i64
  %i.dm = load ptr, ptr %i.dk, align 8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 4
  store i32 %i.do, ptr %i.u, align 8
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit75"

"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit75": ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit", %bb.aj
  %.not.i76 = icmp eq i32 %.sroa.15.0, -1
  br i1 %.not.i76, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %bb.ak

bb.ak:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit75"
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dq = sext i32 %.sroa.15.0 to i64
  %i.dr = load ptr, ptr %i.dp, align 8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load i32, ptr %i.ds, align 4
  store i32 %i.dt, ptr %i.u, align 8
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"

bb.al:                                            ; preds = %bb.h
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.am:                                            ; preds = %bb.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

.loopexit197:                                     ; preds = %.noexc.i
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

.loopexit.split-lp198:                            ; preds = %bb.k
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %14, align 8              ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.h
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.an
  %i.dz = load i64, ptr %i.h, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.ca

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.bh, %bb.aq, %bb.af
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.aq:                                            ; preds = %bb.ag
  %i.ed = load ptr, ptr %i.de, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(12) %i.de)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.eh = icmp eq i32 %i.eg, 3
  %i.ei = load ptr, ptr %i.cx, align 8            ; 6 uses
  br i1 %i.eh, label %bb.as, label %bb.bh

bb.as:                                            ; preds = %bb.ar
  %i.ej = load ptr, ptr %i.o, align 8
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.at, label %bb.bd

bb.at:                                            ; preds = %bb.as
  store i32 2, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %scevgep, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.em = load i32, ptr %i.el, align 8
  invoke void @_Z12ai_to_stringIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i32 noundef %i.em)
          to label %.preheader unwind label %bb.au

.preheader:                                       ; preds = %bb.at
  %i.en = load ptr, ptr %i.r, align 8
  %i.eo = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not = icmp eq ptr %i.en, %i.eo
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.az, %.preheader
  %i.ep = load i32, ptr %i.n, align 4             ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = mul nuw nsw i64 %i.eq, 12               ; 2 uses
  %i.es = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.er) #28
          to label %bb.ba unwind label %bb.bb     ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

.lr.ph:                                           ; preds = %.preheader, %bb.az
  %i.eu = phi ptr [ %i.fh, %bb.az ], [ %i.eo, %.preheader ]
  %.040273 = phi i64 [ %i.ff, %bb.az ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.040273
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void @_ZNK10aiMaterial7GetNameEv(ptr dead_on_unwind nonnull writable sret(%struct.aiString) align 4 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.ew)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %.lr.ph
  %i.ex = load i64, ptr %i.t, align 8             ; 3 uses
  %i.ey = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #26
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.thread193

end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMesh:bb.a
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.gw = sext i32 %.sroa.9.0 to i64
  %i.gx = load ptr, ptr %i.gv, align 8
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load ptr, ptr %i.o, align 8
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.gz, i64 %i.gu ; 2 uses
  %i.hb = load <2 x float>, ptr %i.gy, align 4
  store <2 x float> %i.hb, ptr %i.ha, align 4
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i92, align 4
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_1clEi.exit93"

"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_1clEi.exit93": ; preds = %bb.bf, %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_1clEi.exit"
  %.not.i94 = icmp eq i32 %.sroa.15.0, -1
  br i1 %.not.i94, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %bb.bg

bb.bg:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_1clEi.exit93"
  %i.hc = load ptr, ptr %i.j, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.hh = sext i32 %.sroa.15.0 to i64
  %i.hi = load ptr, ptr %i.hg, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hh
  %i.hk = load ptr, ptr %i.o, align 8
  %i.hl = getelementptr inbounds nuw [12 x i8], ptr %i.hk, i64 %i.hf ; 2 uses
  %i.hm = load <2 x float>, ptr %i.hj, align 4
  store <2 x float> %i.hm, ptr %i.hl, align 4
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i96, align 4
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"

bb.bh:                                            ; preds = %bb.ar
  %i.hn = load ptr, ptr %i.ei, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = invoke noundef i32 %i.hp(ptr noundef nonnull align 8 dereferenceable(12) %i.ei)
          to label %bb.bi unwind label %bb.ap

bb.bi:                                            ; preds = %bb.bh
  %i.hr = icmp eq i32 %i.hq, 4
  br i1 %i.hr, label %bb.bj, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"

bb.bj:                                            ; preds = %bb.bi
  %i.hs = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.ht = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hv = load i32, ptr %i.n, align 4             ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 4                ; 2 uses
  %i.hy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #28
          to label %bb.bl unwind label %bb.bm     ; 3 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hz = icmp eq i32 %i.hv, 0
  br i1 %i.hz, label %.loopexit196, label %.loopexit196.loopexit

.loopexit196.loopexit:                            ; preds = %bb.bl
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hy, i8 0, i64 %i.hx, i1 false)
  br label %.loopexit196

.loopexit196:                                     ; preds = %.loopexit196.loopexit, %bb.bl
  store ptr %i.hy, ptr %i.m, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bn:                                            ; preds = %.loopexit196, %bb.bj
  %i.ib = phi ptr [ %i.hy, %.loopexit196 ], [ %i.ht, %bb.bj ]
  %.not.i98 = icmp eq i32 %.sroa.0.0, -1
  br i1 %.not.i98, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ic = load ptr, ptr %i.j, align 8
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ig = sext i32 %.sroa.0.0 to i64
  %i.ih = load ptr, ptr %i.if, align 8
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %i.ig
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ij, ptr noundef nonnull align 4 dereferenceable(16) %i.ii, i64 16, i1 false)
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit"

"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit": ; preds = %bb.bn, %bb.bo
  %.not.i99 = icmp eq i32 %.sroa.9.0, -1
  br i1 %.not.i99, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit100", label %bb.bp

bb.bp:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit"
  %i.ik = load ptr, ptr %i.j, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.ip = sext i32 %.sroa.9.0 to i64
  %i.iq = load ptr, ptr %i.io, align 8
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.iq, i64 %i.ip
  %i.is = load ptr, ptr %i.m, align 8
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.it, ptr noundef nonnull align 4 dereferenceable(16) %i.ir, i64 16, i1 false)
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit100"

"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit100": ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit", %bb.bp
  %.not.i101 = icmp eq i32 %.sroa.15.0, -1
  br i1 %.not.i101, label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77", label %bb.bq

bb.bq:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit100"
  %i.iu = load ptr, ptr %i.j, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.iz = sext i32 %.sroa.15.0 to i64
  %i.ja = load ptr, ptr %i.iy, align 8
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.ja, i64 %i.iz
  %i.jc = load ptr, ptr %i.m, align 8
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.jb, i64 16, i1 false)
  br label %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"

"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77": ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.ae, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit, %bb.bi, %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit75", %bb.ak, %bb.bg, %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_1clEi.exit93", %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_2clEi.exit100", %bb.bq, %bb.ad, %bb.ac
  %i.je = load ptr, ptr %i.w, align 8             ; 6 uses
  %i.jf = load ptr, ptr %i.x, align 8
  %.not.i103 = icmp eq ptr %i.je, %i.jf
  br i1 %.not.i103, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"
  store i32 0, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 3 uses
  store ptr null, ptr %i.jg, align 8
  %i.jh = icmp eq ptr %15, %i.je
  br i1 %i.jh, label %_ZN6aiFaceC2ERKS_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ji = load i32, ptr %15, align 8              ; 3 uses
  store i32 %i.ji, ptr %i.je, align 8
  %.not.i.i.i104 = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i104, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 2                ; 2 uses
  %i.jl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jk) #28
          to label %.noexc105 unwind label %bb.bx ; 2 uses

.noexc105:                                        ; preds = %bb.bt
  store ptr %i.jl, ptr %i.jg, align 8
  %i.jm = load ptr, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jl, ptr align 4 %i.jm, i64 %i.jk, i1 false)
  br label %_ZN6aiFaceC2ERKS_.exit.i

bb.bu:                                            ; preds = %bb.bs
  store ptr null, ptr %i.jg, align 8
  br label %_ZN6aiFaceC2ERKS_.exit.i

_ZN6aiFaceC2ERKS_.exit.i:                         ; preds = %bb.bu, %.noexc105, %bb.br
  %i.jn = load ptr, ptr %i.w, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %i.jo, ptr %i.w, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit

bb.bv:                                            ; preds = %"_ZZN6Assimp4D3MF13XmlSerializer15ImportTrianglesERN4pugi8xml_nodeEP6aiMeshENK3$_0clEi.exit77"
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr %i.je, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit unwind label %bb.bx

_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZN6aiFaceC2ERKS_.exit.i, %bb.bv
  %i.jp = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %_ZN6aiFaceD2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jp) #25
  br label %_ZN6aiFaceD2Ev.exit

_ZN6aiFaceD2Ev.exit:                              ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.pre291 = load ptr, ptr %13, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread191

bb.bx:                                            ; preds = %bb.bv, %bb.bt
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.ap, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.bx
  %.pn51 = phi { ptr, i32 } [ %i.jr, %bb.bx ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.ia, %bb.bm ], [ %i.ec, %bb.ap ] ; 2 uses
  %i.js = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %.body, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.z, %bb.aa, %bb.ab, %.thread32.i
  %.sink = phi ptr [ %i.bl, %bb.ab ], [ %i.bl, %.thread32.i ], [ %i.bl, %bb.z ], [ %i.bl, %bb.aa ], [ %i.js, %bb.by ]
  %.pn51.pn.ph = phi { ptr, i32 } [ %i.cl, %bb.ab ], [ %lpad.thr_comm.i, %.thread32.i ], [ %i.cj, %bb.z ], [ %i.ck, %bb.aa ], [ %.pn51, %bb.by ]
  call void @_ZdaPv(ptr noundef nonnull %.sink) #25
  br label %.body

.body:                                            ; preds = %bb.bz, %bb.by, %bb.ao
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.by ], [ %i.eb, %bb.ao ], [ %.pn51.pn.ph, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ca

bb.ca:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %.body ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ju = load ptr, ptr %13, align 8              ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.f
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread191: ; preds = %bb.o, %_ZN6aiFaceD2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.jw = phi ptr [ %.pre292, %bb.o ], [ %.pre291, %_ZN6aiFaceD2Ev.exit ], [ %.pre292, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.f
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread191
  %i.jy = load i64, ptr %i.f, align 8
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ka = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.c unwind label %bb.g       ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.ca
  %i.kb = load i64, ptr %i.f, align 8
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.kc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.ca, %.loopexit197, %.loopexit.split-lp198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.am
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.am ], [ %.pn51.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp198 ], [ %lpad.loopexit199, %.loopexit197 ], [ %.pn51.pn.pn, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.cb

bb.cb:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.g
  %.pn58 = phi { ptr, i32 } [ %i.an, %bb.g ], [ %.pn51.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.du, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cl

bb.cc:                                            ; preds = %bb.e
  store i64 %i.ai, ptr %i.al, align 16
  %i.kd = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %i.ke = icmp eq i64 %i.ai, 0
  br i1 %i.ke, label %.loopexit194, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.ai
  %i.kg = add nuw nsw i64 %i.ai, 1152921504606846975
  %i.kh = and i64 %i.kg, 1152921504606846975
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.cd, %.prol.preheader
  %i.ki = phi ptr [ %i.kk, %.prol.preheader ], [ %i.kd, %bb.cd ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.cd ]
  store i32 0, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr null, ptr %i.kj, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !45

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.cd
  %.unr = phi ptr [ %i.kd, %bb.cd ], [ %i.kk, %.prol.preheader ]
  %i.kl = icmp samesign ult i64 %i.kh, 7
  br i1 %i.kl, label %.loopexit194, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.km = phi ptr [ %i.lc, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr null, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store i32 0, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store ptr null, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store i32 0, ptr %i.kq, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  store ptr null, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  store i32 0, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  store ptr null, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  store i32 0, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  store ptr null, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 80
  store i32 0, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 88
  store ptr null, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.km, i64 96
  store i32 0, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.km, i64 104
  store ptr null, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  store i32 0, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 120
  store ptr null, ptr %i.lb, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 128 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.kf
  br i1 %i.ld, label %.loopexit194, label %.new

.loopexit194:                                     ; preds = %.prol.loopexit, %.new, %bb.cc
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %i.kd, ptr %i.le, align 8
  store i32 4, ptr %2, align 8
  %i.lf = icmp sgt i64 %i.af, 0
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit194, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ls, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i ], [ %i.af, %.loopexit194 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.lr, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i ], [ %i.kd, %.loopexit194 ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.lq, %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i ], [ %i.ab, %.loopexit194 ] ; 4 uses
  %i.lg = icmp eq ptr %.0910.i.i.i.i.i, %.0811.i.i.i.i.i
  br i1 %i.lg, label %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8            ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdaPv(ptr noundef nonnull %i.li) #25
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.lk = load i32, ptr %.0910.i.i.i.i.i, align 8 ; 3 uses
  store i32 %i.lk, ptr %.0811.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ll = zext i32 %i.lk to i64
  %i.lm = shl nuw nsw i64 %i.ll, 2                ; 2 uses
  %i.ln = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lm) #28
          to label %.noexc114 unwind label %.loopexit ; 2 uses

.noexc114:                                        ; preds = %bb.ch
  store ptr %i.ln, ptr %i.lh, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ln, ptr align 4 %i.lp, i64 %i.lm, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  store ptr null, ptr %i.lh, align 8
  br label %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i

_ZN6aiFaceaSERKS_.exit.i.i.i.i.i:                 ; preds = %bb.ci, %.noexc114, %.lr.ph.i.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ls = add nsw i64 %.012.i.i.i.i.i, -1
  %i.lt = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.lt, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit, !llvm.loop !46

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit: ; preds = %_ZN6aiFaceaSERKS_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %9, align 8
  %.pre290 = load ptr, ptr %i.w, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit, %.loopexit194
  %i.lu = phi ptr [ %.pre290, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit ], [ %i.aa, %.loopexit194 ] ; 2 uses
  %i.lv = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.loopexit ], [ %i.ab, %.loopexit194 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.lv, %i.lu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i115

.lr.ph.i.i.i115:                                  ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lz, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i ], [ %i.lv, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i115
  call void @_ZdaPv(ptr noundef nonnull %i.lx) #25
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i:            ; preds = %bb.cj, %.lr.ph.i.i.i115
  %i.lz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.lz, %i.lu
  br i1 %.not.i.i.i116, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i115, !llvm.loop !47

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit
  %i.ma = phi ptr [ %.pr.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.lv, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP6aiFaceSt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, label %bb.ck
end_hunk_1
