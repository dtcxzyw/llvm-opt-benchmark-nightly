inline.NumInlined: 858
inline.NumDeleted: 400
begin_hunk_0_@_ZN6Assimp12X3DGeoHelper14make_line_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE
; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter21Postprocess_BuildNodeERK18X3DNodeElementBaseR6aiNodeRNSt7__cxx114listIP6aiMeshSaIS9_EEERNS7_IP10aiMaterialSaISE_EEERNS7_IP7aiLightSaISJ_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(1144) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::list.45", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::list.50", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.c, align 8
  store ptr %6, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.e, align 8
  store ptr %7, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(1144) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 141
  %i.m = load i8, ptr %i.l, align 1, !range !33, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.p = load i32, ptr %i.o, align 8              ; 4 uses
  %i.q = icmp sgt i32 %i.p, -1
  %i.r = zext i32 %i.p to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = load i64, ptr %i.s, align 8
  %.not = icmp ugt i64 %i.t, %i.r
  %or.cond = select i1 %i.q, i1 %.not, i1 false
  br i1 %or.cond, label %.preheader, label %._crit_edge139

.preheader:                                       ; preds = %bb.d
  %.not148 = icmp eq i32 %i.p, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.r, 7                     ; 3 uses
  %i.u = icmp ult i32 %i.p, 8
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.r, 2147483640
  br label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0109.0133.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0109.0133.epil = phi ptr [ %i.w, %.lr.ph.epil ], [ %.sroa.0109.0133.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.w = load ptr, ptr %.sroa.0109.0133.epil, align 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.sroa.0109.0.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.0109.0.lcssa, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0109.0133 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.y = load ptr, ptr %.sroa.0109.0133, align 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !64

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.sroa.0107.0 = phi ptr [ %i.a, %bb.b ], [ %i.x, %._crit_edge ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.0109.1 = phi ptr [ %i.b, %bb.b ], [ %.sroa.0109.0.lcssa, %._crit_edge ], [ %i.b, %bb.c ] ; 2 uses
  %.not127135 = icmp eq ptr %.sroa.0109.1, %.sroa.0107.0
  br i1 %.not127135, label %._crit_edge139, label %.lr.ph138

._crit_edge139:                                   ; preds = %bb.z, %bb.d, %bb.f
  %i.ag = load ptr, ptr %6, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %6
  br i1 %i.ah, label %.loopexit128, label %bb.aa

.lr.ph138:                                        ; preds = %bb.f, %bb.z
  %.sroa.094.0136 = phi ptr [ %i.ch, %bb.z ], [ %.sroa.0109.1, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.094.0136, i64 16 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load i32, ptr %i.ak, align 8            ; 2 uses
  switch i32 %i.al, label %bb.q [
    i32 0, label %bb.g
    i32 36, label %bb.n
    i32 41, label %bb.p
    i32 42, label %bb.p
    i32 43, label %bb.p
  ]

bb.g:                                             ; preds = %.lr.ph138
  %i.am = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #19
          to label %bb.h unwind label %bb.l       ; 7 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.am)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 1023
  br i1 %i.aq, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = trunc nuw nsw i64 %i.ap to i32
  store i32 %i.as, ptr %i.am, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.au = load ptr, ptr %i.ar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 1 %i.au, i64 %i.ap, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ap
  store i8 0, ptr %i.av, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 1096
  store ptr %2, ptr %i.aw, align 8
  %i.ax = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.am, ptr %i.ay, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %i.az = load i64, ptr %i.d, align 8
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.d, align 8
  %i.bb = load ptr, ptr %i.ai, align 8
  invoke void @_ZNK6Assimp11X3DImporter21Postprocess_BuildNodeERK18X3DNodeElementBaseR6aiNodeRNSt7__cxx114listIP6aiMeshSaIS9_EEERNS7_IP10aiMaterialSaISE_EEERNS7_IP7aiLightSaISJ_EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.bb, ptr noundef nonnull align 8 dereferenceable(1144) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.z unwind label %bb.l

bb.l:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.k, %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 1144) #20
  br label %bb.ag

bb.n:                                             ; preds = %.lr.ph138
  invoke void @_ZNK6Assimp11X3DImporter22Postprocess_BuildShapeERK19X3DNodeElementShapeRNSt7__cxx114listIjSaIjEEERNS5_IP6aiMeshSaISA_EEERNS5_IP10aiMaterialSaISF_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(76) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.z unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.lr.ph138, %.lr.ph138, %.lr.ph138
  invoke void @_ZNK6Assimp11X3DImporter22Postprocess_BuildLightERK18X3DNodeElementBaseRNSt7__cxx114listIP7aiLightSaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.z unwind label %bb.o

bb.q:                                             ; preds = %.lr.ph138
  %or.cond9.i = icmp ult i32 %i.al, 7
  br i1 %or.cond9.i, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bg = load ptr, ptr %i.ai, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load i32, ptr %i.bh, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i32 noundef %i.bi)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.ah unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread: ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.w:                                             ; preds = %bb.t
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %.045 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %8, align 8               ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.bp = load i64, ptr %i.bn, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bl, %bb.x ] ; 4 uses
  %.1 = phi i1 [ true, %bb.w ], [ %.045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.045, %bb.x ] ; 2 uses
  %i.br = load ptr, ptr %9, align 8               ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.bs, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.bw = load ptr, ptr %10, align 8              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %10, align 8              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread
  %i.cd = load i64, ptr %i.cb, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #20
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.cf = load i64, ptr %i.bx, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.cg) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.1, label %bb.y, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.1, label %bb.y, label %bb.ag

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread
  %.pn.pn.pn113.ph = phi { ptr, i32 } [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn.pn.pn113 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn.pn.pn113.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bf) #18
  br label %bb.ag

bb.z:                                             ; preds = %bb.k, %bb.p, %bb.q, %bb.n
  %i.ch = load ptr, ptr %.sroa.094.0136, align 8  ; 2 uses
  %.not127 = icmp eq ptr %i.ch, %.sroa.0107.0
  br i1 %.not127, label %._crit_edge139, label %.lr.ph138, !llvm.loop !65

bb.aa:                                            ; preds = %._crit_edge139
  %i.ci = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  store i32 %i.cj, ptr %i.ck, align 8
  %i.cl = shl i64 %i.ci, 3
  %i.cm = and i64 %i.cl, 34359738360
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #19
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8
  %.not149 = icmp eq i32 %i.cj, 0
  br i1 %.not149, label %.loopexit128, label %.lr.ph143

bb.ac:                                            ; preds = %bb.aa
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph143:                                        ; preds = %bb.ab, %.lr.ph143
  %.044141 = phi i64 [ %i.cv, %.lr.ph143 ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.090.0140 = phi ptr [ %i.cq, %.lr.ph143 ], [ %i.ag, %bb.ab ] ; 2 uses
  %i.cq = load ptr, ptr %.sroa.090.0140, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.090.0140, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.co, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.044141
  store ptr %i.cs, ptr %i.cu, align 8
  %i.cv = add nuw nsw i64 %.044141, 1             ; 2 uses
  %i.cw = load i32, ptr %i.ck, align 8
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph143, label %.loopexit128, !llvm.loop !66

.loopexit128:                                     ; preds = %.lr.ph143, %bb.ab, %._crit_edge139
  %i.cz = load ptr, ptr %7, align 8               ; 4 uses
  %i.da = icmp eq ptr %i.cz, %7
  br i1 %i.da, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.loopexit128
  %i.db = load i64, ptr %i.f, align 8             ; 2 uses
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 2 uses
  store i32 %i.dc, ptr %i.dd, align 8
  %i.de = shl i64 %i.db, 2
  %i.df = and i64 %i.de, 17179869180
  %i.dg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.df) #19
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8
  %.not150 = icmp eq i32 %i.dc, 0
  br i1 %.not150, label %.loopexit, label %.lr.ph147

bb.af:                                            ; preds = %bb.ad
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph147:                                        ; preds = %bb.ae, %.lr.ph147
  %.0145 = phi i64 [ %i.do, %.lr.ph147 ], [ 0, %bb.ae ] ; 2 uses
  %.sroa.087.0144 = phi ptr [ %i.dj, %.lr.ph147 ], [ %i.cz, %bb.ae ] ; 2 uses
  %i.dj = load ptr, ptr %.sroa.087.0144, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.087.0144, i64 16
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = load ptr, ptr %i.dh, align 8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.0145
  store i32 %i.dl, ptr %i.dn, align 4
  %i.do = add nuw nsw i64 %.0145, 1               ; 2 uses
  %i.dp = load i32, ptr %i.dd, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %i.do, %i.dq
  br i1 %i.dr, label %.lr.ph147, label %.loopexit.loopexit, !llvm.loop !67

.loopexit.loopexit:                               ; preds = %.lr.ph147
  %.pre = load ptr, ptr %7, align 8
  br label %.loopexit
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.i
  store i32 %i.l, ptr %i.n, align 8
  %i.o = and i64 %i.k, 4294967295                 ; 4 uses
  %i.p = mul nuw nsw i64 %i.o, 1028               ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #19
          to label %.noexc45 unwind label %bb.f   ; 2 uses

.noexc45:                                         ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = add nsw i64 %i.p, -1028
  %i.t = urem i64 %i.s, 1028
  %i.u = sub nsw i64 %i.p, %i.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.q, i8 0, i64 %i.u, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  %i.v = shl nuw nsw i64 %i.o, 4
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #19
          to label %.noexc46 unwind label %bb.f   ; 4 uses

.noexc46:                                         ; preds = %.noexc45
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.o
  %i.y = add nuw nsw i64 %i.o, 1152921504606846975
  %i.z = and i64 %i.y, 1152921504606846975
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.noexc46, %.prol.preheader
  %i.aa = phi ptr [ %i.ac, %.prol.preheader ], [ %i.w, %.noexc46 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.noexc46 ]
  store i32 10, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !70

.prol.loopexit:                                   ; preds = %.prol.preheader, %.noexc46
  %.unr = phi ptr [ %i.w, %.noexc46 ], [ %i.ac, %.prol.preheader ]
  %i.ad = icmp samesign ult i64 %i.z, 7
  br i1 %i.ad, label %.unr-lcssa, label %.noexc46.new

.noexc46.new:                                     ; preds = %.prol.loopexit, %.noexc46.new
  %i.ae = phi ptr [ %i.au, %.noexc46.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 10, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 10, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i32 10, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i32 10, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store i32 10, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store i32 10, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store i32 10, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store ptr null, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i32 10, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store ptr null, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.x
  br i1 %i.av, label %.unr-lcssa, label %.noexc46.new

.unr-lcssa:                                       ; preds = %.noexc46.new, %.prol.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.w, ptr %i.aw, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.unr-lcssa
  %.0.i = phi ptr [ %i.n, %.unr-lcssa ], [ null, %bb.h ]
  store ptr %.0.i, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %.0113 = phi i64 [ 0, %.lr.ph ], [ %i.iq, %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 11 uses
  %.sroa.0101.0112 = phi ptr [ %i.d, %.lr.ph ], [ %i.ip, %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0101.0112, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 22 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load i32, ptr %i.bc, align 8
  switch i32 %i.bd, label %bb.bi [
    i32 1, label %bb.k
    i32 2, label %bb.r
    i32 3, label %bb.aa
    i32 4, label %bb.aj
    i32 6, label %bb.as
  ]

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = zext i32 %i.bi to i64
  %i.bp = sub nsw i64 0, %i.bo
  %.not40 = icmp eq i64 %i.bn, %i.bp
  br i1 %.not40, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bs = trunc i64 %.0113 to i32
  %i.bt = load i64, ptr %i.bj, align 8
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = and i8 %i.bu, 1                         ; 2 uses
  %i.bw = load i32, ptr %i.bq, align 8
  %.not.i = icmp ugt i32 %i.bw, %i.bs
  br i1 %.not.i, label %bb.m, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.by = load i64, ptr %i.bx, align 8            ; 5 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = and i64 %.0113, 4294967295              ; 3 uses
  %i.cb = icmp ugt i64 %i.by, 1023
  br i1 %i.cb, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [1028 x i8], ptr %i.cd, i64 %i.ca ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.by to i32
  store i32 %i.cf, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.ch = load ptr, ptr %i.br, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 1 %i.ch, i64 %i.by, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i8 0, ptr %i.ci, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.o, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ca
  store i32 0, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ca
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.cp, null
  br i1 %.not24.i, label %.thread28.i, label %bb.p

bb.p:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  store i8 %i.bv, ptr %i.cp, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cq = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #19
          to label %.noexc50 unwind label %bb.q   ; 2 uses

.noexc50:                                         ; preds = %.thread28.i
  store i8 %i.bv, ptr %i.cq, align 1
  store ptr %i.cq, ptr %i.co, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.q:                                             ; preds = %.thread28.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.r:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cs, align 8            ; 3 uses
  %.not39 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not39, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.cx = trunc i64 %.0113 to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cz = load double, ptr %i.cv, align 8
  %i.da = fptrunc double %i.cz to float           ; 3 uses
  %i.db = load i32, ptr %i.cw, align 8
  %.not.i51 = icmp ugt i32 %i.db, %i.cx
  br i1 %.not.i51, label %bb.t, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.dd = load i64, ptr %i.dc, align 8            ; 5 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = and i64 %.0113, 4294967295              ; 3 uses
  %i.dg = icmp ugt i64 %i.dd, 1023
  br i1 %i.dg, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw [1028 x i8], ptr %i.di, i64 %i.df ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.dd to i32
  store i32 %i.dk, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dm = load ptr, ptr %i.cy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 1 %i.dm, i64 %i.dd, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  store i8 0, ptr %i.dn, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53: ; preds = %bb.v, %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.df
  store i32 3, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.do, align 8
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.df ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not24.i54 = icmp eq ptr %i.du, null
  br i1 %.not24.i54, label %.thread28.i55, label %bb.w

bb.w:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53
  %i.dv = load i32, ptr %i.ds, align 8
  %.not25.i = icmp eq i32 %i.dv, 7
  br i1 %.not25.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store float %i.da, ptr %i.du, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.y:                                             ; preds = %bb.w
  store float %i.da, ptr %i.du, align 4
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i55:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53
  %i.dw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19
          to label %.noexc57 unwind label %bb.z   ; 2 uses

.noexc57:                                         ; preds = %.thread28.i55
  store float %i.da, ptr %i.dw, align 4
  store ptr %i.dw, ptr %i.dt, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.z:                                             ; preds = %.thread28.i55
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aa:                                            ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.dy, align 8            ; 5 uses
  %.not38 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not38, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ed = trunc i64 %.0113 to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  %i.ef = load i32, ptr %i.ec, align 8
  %.not.i58 = icmp ugt i32 %i.ef, %i.ed
  br i1 %.not.i58, label %bb.ac, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.eh = load i64, ptr %i.eg, align 8            ; 5 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = and i64 %.0113, 4294967295              ; 3 uses
  %i.ek = icmp ugt i64 %i.eh, 1023
  br i1 %i.ek, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw [1028 x i8], ptr %i.em, i64 %i.ej ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.eh to i32
  store i32 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.eq = load ptr, ptr %i.ee, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr align 1 %i.eq, i64 %i.eh, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh
  store i8 0, ptr %i.er, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60: ; preds = %bb.ae, %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.ej
  store i32 3, ptr %i.eu, align 8
  %i.ev = load ptr, ptr %i.es, align 8
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ej ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8            ; 3 uses
  %.not24.i61 = icmp eq ptr %i.ey, null
  br i1 %.not24.i61, label %.thread28.i63, label %bb.af

bb.af:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60
  %i.ez = load i32, ptr %i.ew, align 8
  %.not25.i62 = icmp eq i32 %i.ez, 7
  br i1 %.not25.i62, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = load i32, ptr %i.eb, align 4
  store i32 %i.fa, ptr %i.ey, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.fb = load float, ptr %i.eb, align 4
  store float %i.fb, ptr %i.ey, align 4
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i63:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60
  %.pre.i64 = load float, ptr %i.eb, align 4
  %i.fc = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19
          to label %.noexc65 unwind label %bb.ai  ; 2 uses

.noexc65:                                         ; preds = %.thread28.i63
  store float %.pre.i64, ptr %i.fc, align 4
  store ptr %i.fc, ptr %i.ex, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ai:                                            ; preds = %.thread28.i63
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aj:                                            ; preds = %bb.j
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.fe, align 8            ; 4 uses
  %.not37 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not37, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.fj = trunc i64 %.0113 to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ]
  %i.fl = load i32, ptr %i.fi, align 8
  %.not.i67 = icmp ugt i32 %i.fl, %i.fj
  br i1 %.not.i67, label %bb.al, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.al:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.fn = load i64, ptr %i.fm, align 8            ; 5 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = and i64 %.0113, 4294967295              ; 3 uses
  %i.fq = icmp ugt i64 %i.fn, 1023
  br i1 %i.fq, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw [1028 x i8], ptr %i.fs, i64 %i.fp ; 2 uses
  %i.fu = trunc nuw nsw i64 %i.fn to i32
  store i32 %i.fu, ptr %i.ft, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  %i.fw = load ptr, ptr %i.fk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 1 %i.fw, i64 %i.fn, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn
  store i8 0, ptr %i.fx, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69: ; preds = %bb.an, %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fp
  store i32 1, ptr %i.ga, align 8
  %i.gb = load ptr, ptr %i.fy, align 8
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fp ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 3 uses
  %.not24.i70 = icmp eq ptr %i.ge, null
  br i1 %.not24.i70, label %.thread28.i72, label %bb.ao

bb.ao:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69
  %i.gf = load i32, ptr %i.gc, align 8
  %.not25.i71 = icmp eq i32 %i.gf, 7
  %i.gg = load i32, ptr %i.fh, align 4            ; 2 uses
  br i1 %.not25.i71, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.gg, ptr %i.ge, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.aq:                                            ; preds = %bb.ao
  store i32 %i.gg, ptr %i.ge, align 4
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i72:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69
  %.pre.i73 = load i32, ptr %i.fh, align 4
  %i.gh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19
          to label %.noexc74 unwind label %bb.ar  ; 2 uses

.noexc74:                                         ; preds = %.thread28.i72
  store i32 %.pre.i73, ptr %i.gh, align 4
  store ptr %i.gh, ptr %i.gd, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ar:                                            ; preds = %.thread28.i72
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.as:                                            ; preds = %bb.j
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.gl, %i.gm
  br i1 %.not35, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.gn = load ptr, ptr %i.gm, align 8            ; 4 uses
  store ptr %i.ax, ptr %5, align 8
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #21
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gn) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.gp, ptr %i.a, align 8
  %i.gq = icmp ugt i64 %i.gp, 15
  br i1 %i.gq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.av
  %i.gr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc76 unwind label %.loopexit110 ; 2 uses

.noexc76:                                         ; preds = %.noexc.i
  store ptr %i.gr, ptr %5, align 8
  %i.gs = load i64, ptr %i.a, align 8
  store i64 %i.gs, ptr %i.ax, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc76, %bb.av
  %i.gt = phi ptr [ %i.gr, %.noexc76 ], [ %i.ax, %bb.av ] ; 2 uses
  switch i64 %i.gp, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i
  %i.gu = load i8, ptr %i.gn, align 1
  store i8 %i.gu, ptr %i.gt, align 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr nonnull align 1 %i.gn, i64 %i.gp, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i
  %i.gv = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.gv, ptr %i.ay, align 8
  %i.gw = load ptr, ptr %5, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv
  store i8 0, ptr %i.gx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.gy = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.gz = trunc i64 %i.gy to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.az, i8 0, i64 1024, i1 false)
  %i.ha = and i64 %i.gy, 4294966272
  %.not.i77 = icmp eq i64 %i.ha, 0
  %spec.select.i = select i1 %.not.i77, i32 %i.gz, i32 1023 ; 4 uses
  store i32 %spec.select.i, ptr %4, align 4
  %i.hb = load ptr, ptr %5, align 8               ; 3 uses
  %i.hc = zext i32 %spec.select.i to i64          ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 1 %i.hb, i64 %i.hc, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.hc
  store i8 0, ptr %i.hd, align 1
  %i.he = icmp eq ptr %i.hb, %i.ax
  br i1 %i.he, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ay
  %i.hf = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.hf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ay
  %i.hg = load i64, ptr %i.ax, align 8
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.hi = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.hj = trunc i64 %.0113 to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.hl = load i32, ptr %i.hi, align 8
  %.not.i78 = icmp ugt i32 %i.hl, %i.hj
  br i1 %.not.i78, label %bb.az, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.hn = load i64, ptr %i.hm, align 8            ; 5 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hp = and i64 %.0113, 4294967295              ; 3 uses
  %i.hq = icmp ugt i64 %i.hn, 1023
  br i1 %i.hq, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw [1028 x i8], ptr %i.hs, i64 %i.hp ; 2 uses
  %i.hu = trunc nuw nsw i64 %i.hn to i32
  store i32 %i.hu, ptr %i.ht, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.hw = load ptr, ptr %i.hk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 1 %i.hw, i64 %i.hn, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hn
  store i8 0, ptr %i.hx, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80: ; preds = %bb.bb, %bb.ba
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %i.hp
  store i32 5, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.hy, align 8
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.hp ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8            ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
bb.bn:                                            ; preds = %bb.bj, %bb.e
  unreachable
}

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter22Postprocess_BuildShapeERK19X3DNodeElementShapeRNSt7__cxx114listIjSaIjEEERNS5_IP6aiMeshSaISA_EEERNS5_IP10aiMaterialSaISF_EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.016.024 = load ptr, ptr %i.d, align 8    ; 2 uses
  %.not2325 = icmp eq ptr %.sroa.016.024, %i.d
  br i1 %.not2325, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g
  %i.h = icmp ne ptr %i.al, null
  %i.i = icmp ne ptr %i.ak, null
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.h, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ak, %bb.g ] ; 3 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.al, %bb.g ] ; 3 uses
  %.sroa.016.028 = phi ptr [ %.sroa.016.024, %.lr.ph ], [ %.sroa.016.0, %bb.g ] ; 2 uses
  %.027 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ]  ; 4 uses
  %.01026 = phi i32 [ 44, %.lr.ph ], [ %.111, %bb.g ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.016.028, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i32, ptr %i.n, align 8
  switch i32 %i.o, label %bb.g [
    i32 33, label %bb.c
    i32 32, label %bb.c
    i32 31, label %bb.c
    i32 30, label %bb.c
    i32 29, label %bb.c
    i32 28, label %bb.c
    i32 27, label %bb.c
    i32 26, label %bb.c
    i32 25, label %bb.c
    i32 24, label %bb.c
    i32 20, label %bb.c
    i32 19, label %bb.c
    i32 18, label %bb.c
    i32 17, label %bb.c
    i32 16, label %bb.c
    i32 15, label %bb.c
    i32 14, label %bb.c
    i32 13, label %bb.c
    i32 12, label %bb.c
    i32 11, label %bb.c
    i32 10, label %bb.c
    i32 9, label %bb.c
    i32 8, label %bb.c
    i32 7, label %bb.c
    i32 37, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @_ZNK6Assimp11X3DImporter21Postprocess_BuildMeshERK18X3DNodeElementBasePP6aiMesh(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(76) %i.m, ptr noundef nonnull %i.b)
  %i.p = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not14 = icmp eq ptr %i.p, null
  br i1 %.not14, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.f, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %i.r, ptr %i.t, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %i.u = load i64, ptr %i.g, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.g, align 8
  %i.w = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.p, ptr %i.x, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  %i.y = load i64, ptr %i.f, align 8
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.f, align 8
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load i32, ptr %i.ab, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  call void @_ZNK6Assimp11X3DImporter25Postprocess_BuildMaterialERK18X3DNodeElementBasePP10aiMaterial(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(76) %i.m, ptr noundef nonnull %i.a)
  %i.ad = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not13 = icmp eq ptr %i.ad, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ad, ptr %i.ah, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %i.ai = load i64, ptr %i.e, align 8
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.e, %bb.f
  %i.ak = phi ptr [ %i.j, %bb.d ], [ %i.j, %bb.c ], [ %i.ad, %bb.f ], [ null, %bb.e ], [ %i.j, %bb.b ] ; 4 uses
  %i.al = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.b ] ; 5 uses
  %.111 = phi i32 [ %i.ac, %bb.d ], [ %.01026, %bb.c ], [ %.01026, %bb.f ], [ %.01026, %bb.e ], [ %.01026, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %.027, %bb.d ], [ %.027, %bb.c ], [ %i.af, %bb.f ], [ %.027, %bb.e ], [ %.027, %bb.b ] ; 2 uses
  %.sroa.016.0 = load ptr, ptr %.sroa.016.028, align 8 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.016.0, %i.d
  br i1 %.not23, label %._crit_edge, label %bb.b, !llvm.loop !73

bb.h:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  store i32 %.1, ptr %i.am, align 8
  %i.an = call noundef i32 @aiGetMaterialTextureCount(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 1)
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i = icmp ne ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = select i1 %.not.i, i1 %i.as, i1 false
  br i1 %i.at, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %switch.tableidx = add i32 %.111, -15           ; 2 uses
  %i.au = icmp ult i32 %switch.tableidx, 4
  br i1 %i.au, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %bb.j
  %i.av = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK6Assimp11X3DImporter22Postprocess_BuildShapeERK19X3DNodeElementShapeRNSt7__cxx114listIjSaIjEEERNS5_IP6aiMeshSaISA_EEERNS5_IP10aiMaterialSaISF_EEE, i64 %i.av
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.j ]
  store i32 %.sink, ptr %i.c, align 4
  %i.aw = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.h, %bb.i, %bb.k, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #18
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #18
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #18
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !83
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !83
  store i8 0, ptr %i.a, align 8, !alias.scope !83
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !83 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !83 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !83 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !83 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #13 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8
end_hunk_2
