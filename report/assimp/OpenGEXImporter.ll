Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OpenGEXImporter?download=true
inline.NumInlined: 1858
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp7OpenGEX15OpenGEXImporter14handleNameNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a

bb.ac:                                            ; preds = %bb.aa, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit25
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ae

bb.ad:                                            ; preds = %bb.o, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load ptr, ptr %3, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.m
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.ad
  %i.bw = load i64, ptr %i.m, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.x ], [ %i.bt, %bb.ac ] ; 2 uses
  %i.by = load ptr, ptr %3, align 8               ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.m
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ae
  %i.ca = load i64, ptr %i.m, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.e
  ret void

bb.ag:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.d
  %.pn17 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.k, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter19handleObjectRefNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 15 uses
  %4 = alloca %"class.std::unique_ptr.57", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #32
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6Assimp7OpenGEXL11getRefNamesEPN10ODDLParser7DDLNodeERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load i32, ptr %i.f, align 8
  %cond = icmp eq i32 %i.g, 5
  %.pre20 = load ptr, ptr %3, align 8             ; 2 uses
  br i1 %cond, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.pre20 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1120
  store i32 %i.n, ptr %i.p, align 8
  %i.q = icmp ugt i64 %i.m, 4611686018427387903
  %i.r = ashr exact i64 %i.l, 3
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #31
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1128
  store ptr %i.t, ptr %i.v, align 8
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %i.x = load ptr, ptr %i.h, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.aa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %bb.j unwind label %bb.s       ; 8 uses

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.a, align 8
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.af = load ptr, ptr %3, align 8               ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i, label %.noexc11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775776
  br i1 %i.aj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !9

.noexc.i.i.i:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #31
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge unwind label %bb.t

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8
  %.pre18 = load ptr, ptr %i.h, align 8
  br label %.noexc11

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge, %bb.j
  %i.al = phi ptr [ %i.ae, %bb.j ], [ %.pre18, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge ]
  %i.am = phi ptr [ %i.af, %bb.j ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge ]
  %i.an = phi ptr [ null, %bb.j ], [ %i.ak, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc11_crit_edge ] ; 4 uses
  store ptr %i.an, ptr %i.ad, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.am, ptr %i.al, ptr noundef %i.an)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc11
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.aq, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #29
  br label %.body

bb.n:                                             ; preds = %.noexc11
  store ptr %i.ar, ptr %i.ao, align 8
  store ptr %i.aa, ptr %4, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not.i.i = icmp eq ptr %i.az, %i.bb
  %i.bc = ptrtoint ptr %i.aa to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.o, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.n
  store i64 %i.bc, ptr %i.az, align 8
  %i.bd = load ptr, ptr %i.ay, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.ay, align 8
  br label %_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.z, align 8             ; 10 uses
  %i.bg = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc15 unwind label %bb.u

.noexc15:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i13 = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i13)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #31
          to label %.noexc16 unwind label %bb.u   ; 10 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store i64 %i.bc, ptr %i.br, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.az
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc16
  %i.bs = add i64 %i.bg, -8
  %i.bt = sub i64 %i.bs, %i.bh                    ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bt, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader46, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bw = and i64 %i.bt, -8
  %i.bx = add i64 %i.bw, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.bx
  %scevgep42 = getelementptr i8, ptr %i.bf, i64 %i.bx
  %bound0 = icmp ult ptr %i.bq, %scevgep42
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, 4611686018427387900     ; 3 uses
  %i.by = shl i64 %n.vec, 3                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bq, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bf, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.bf, i64 %i.cb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.cc = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep43, align 8, !alias.scope !39, !noalias !37
  %wide.load44 = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !39, !noalias !37
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !40, !noalias !39
  store <2 x i64> %wide.load44, ptr %i.cd, align 8, !alias.scope !40, !noalias !39
  %i.ce = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep43, align 8, !alias.scope !39, !noalias !37
  store <2 x ptr> splat (ptr null), ptr %i.ce, align 8, !alias.scope !39, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader46

.lr.ph.i.i.i.i.preheader46:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader46, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader46 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader46 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.cg = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !38, !noalias !37
  store i64 %i.cg, ptr %.012.i.i.i.i, align 8, !alias.scope !37, !noalias !38
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !38, !noalias !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.ch, %i.az
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc16
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bq, %.noexc16 ], [ %i.bz, %middle.block ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bf, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.ck = load ptr, ptr %i.ba, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cm) #29
  br label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.q
  store ptr %i.bq, ptr %i.z, align 8
  store ptr %i.cj, ptr %i.ay, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.cn, ptr %i.ba, align 8
  br label %_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.pre19 = load ptr, ptr %3, align 8
  br label %bb.w

bb.r:                                             ; preds = %bb.g, %bb.e
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.m, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.cq, %bb.t ], [ %i.as, %bb.m ], [ %i.as, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 40) #29
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %eh.lpad-body, %.body ], [ %i.cp, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.y

bb.w:                                             ; preds = %bb.f, %bb.h, %_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev.exit
  %i.cs = phi ptr [ %.pre20, %bb.f ], [ %i.w, %bb.h ], [ %.pre19, %_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cs, %bb.w ] ; 3 uses
  %i.cv = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cy = load i64, ptr %i.cw, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cu
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.db = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cs, %bb.w ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.y:                                             ; preds = %bb.v, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.co, %bb.r ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.d
  %.pn9 = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn, %bb.y ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter21handleMaterialRefNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %4 = alloca %"class.std::unique_ptr.57", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #32
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN6Assimp7OpenGEXL11getRefNamesEPN10ODDLParser7DDLNodeERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %3, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.k = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %bb.h unwind label %bb.q       ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %i.a, align 8
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.p = load ptr, ptr %3, align 8                ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i, label %.noexc10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp ugt i64 %i.s, 9223372036854775776
  br i1 %i.t, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !9

.noexc.i.i.i:                                     ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #31
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc10_crit_edge unwind label %bb.r

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc10_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8
  %.pre17 = load ptr, ptr %i.g, align 8
  br label %.noexc10

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc10_crit_edge, %bb.h
  %i.v = phi ptr [ %i.o, %bb.h ], [ %.pre17, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc10_crit_edge ]
  %i.w = phi ptr [ %i.p, %bb.h ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc10_crit_edge ]
  %i.x = phi ptr [ null, %bb.h ], [ %i.u, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc10_crit_edge ] ; 4 uses
  store ptr %i.x, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.w, ptr %i.v, ptr noundef %i.x)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.noexc10
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #29
  br label %.body

bb.l:                                             ; preds = %.noexc10
  store ptr %i.ab, ptr %i.y, align 8
  store ptr %i.k, ptr %4, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  %i.am = ptrtoint ptr %i.k to i64                ; 2 uses
  br i1 %.not.i.i, label %bb.m, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.l
  store i64 %i.am, ptr %i.aj, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.ai, align 8
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.j, align 8             ; 10 uses
  %i.aq = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc14 unwind label %bb.s

.noexc14:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i12 = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i12)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #31
          to label %.noexc15 unwind label %bb.s   ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  store i64 %i.am, ptr %i.bb, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ap, %i.aj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc15
  %i.bc = add i64 %i.aq, -8
  %i.bd = sub i64 %i.bc, %i.ar                    ; 3 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader46, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bg = and i64 %i.bd, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ba, i64 %i.bh
  %scevgep42 = getelementptr i8, ptr %i.ap, i64 %i.bh
  %bound0 = icmp ult ptr %i.ba, %scevgep42
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ba, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ap, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bl ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.ap, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bm = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep43, align 8, !alias.scope !51, !noalias !49
  %wide.load44 = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !51, !noalias !49
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !52, !noalias !51
  store <2 x i64> %wide.load44, ptr %i.bn, align 8, !alias.scope !52, !noalias !51
  %i.bo = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep43, align 8, !alias.scope !51, !noalias !49
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !alias.scope !51, !noalias !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader46

.lr.ph.i.i.i.i.preheader46:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader46, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader46 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader46 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.bq = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !50, !noalias !49
  store i64 %i.bq, ptr %.012.i.i.i.i, align 8, !alias.scope !49, !noalias !50
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !50, !noalias !49
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.br, %i.aj
  br i1 %.not.i.i.i.i13, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ba, %.noexc15 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.bu = load ptr, ptr %i.ak, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bw) #29
  br label %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.o
  store ptr %i.ba, ptr %i.j, align 8
  store ptr %i.bt, ptr %i.ai, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bx, ptr %i.ak, align 8
  br label %bb.u

bb.p:                                             ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.q:                                             ; preds = %bb.g
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #29
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.body, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.s ], [ %eh.lpad-body, %.body ], [ %i.bz, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.w

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.pre18 = load ptr, ptr %3, align 8             ; 3 uses
  %.pre19 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre18, %.pre19
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre18, %bb.u ] ; 3 uses
  %i.cc = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, %.pre19
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.u
  %i.ci = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre18, %bb.u ], [ %i.f, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.w:                                             ; preds = %bb.t, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.by, %bb.p ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.d
  %.pn8 = phi { ptr, i32 } [ %i.e, %bb.d ], [ %.pn.pn, %bb.w ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter18handleGeometryNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #31 ; 4 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter8pushNodeEP6aiNodeP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %i.a, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.a, ptr %i.c, align 8
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit, label %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i

_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8
  store ptr %i.i, ptr %i.f, align 8
  br label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit

_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit: ; preds = %bb.b, %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #29
  resume { ptr, i32 } %i.j
end_hunk_0
begin_hunk_1_@_ZN6Assimp7OpenGEX15OpenGEXImporter16handleCameraNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ay = load i64, ptr %i.a, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bc = load i64, ptr %i.az, align 8            ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.bd, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %i.bc to i32
  store i32 %i.be, ptr %i.ap, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 1 %.pre, i64 %i.bc, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  store i8 0, ptr %i.bg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.bh = icmp eq ptr %.pre, %i.ar
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bi = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bj = load i64, ptr %i.ar, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.l:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 1144) #29
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter20handleGeometryObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter18handleCameraObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter19handleTransformNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.g, align 8
  %.not8 = icmp eq i64 %i.h, 16
  br i1 %.not8, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.15)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.val)
  %.not1.i = icmp eq ptr %i.n, null
  br i1 %.not1.i, label %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.03.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %bb.j ] ; 2 uses
  %.0222.i = phi i64 [ %i.t, %.lr.ph.i ], [ 1, %bb.j ] ; 2 uses
  %i.p = tail call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.03.i)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0222.i
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = add nuw nsw i64 %.0222.i, 1
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, label %.lr.ph.i, !llvm.loop !53

_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit: ; preds = %.lr.ph.i, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1028
  store float %i.o, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 1032
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load <12 x float>, ptr %i.w, align 4
  %i.y = shufflevector <12 x float> %i.x, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.y, ptr %i.v, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 1048
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load <12 x float>, ptr %i.aa, align 8
  %i.ac = shufflevector <12 x float> %i.ab, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.ac, ptr %i.z, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 1064
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.af = load <12 x float>, ptr %i.ae, align 4
  %i.ag = shufflevector <12 x float> %i.af, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.ag, ptr %i.ad, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 1080
  store float %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 1084
  store float %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 1088
  store float %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, %bb.e
  ret void

bb.l:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.i, %bb.i ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter14handleMeshNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) initializes((616, 624)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #31 ; 9 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 10 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.k, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.p
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.o
  %i.ac = load ptr, ptr %i.h, align 8
  store ptr %i.ac, ptr %i.ab, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n                     ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ah = and i64 %i.ae, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ai
  %scevgep52 = getelementptr i8, ptr %i.l, i64 %i.ai
  %bound0 = icmp ult ptr %i.aa, %scevgep52
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.l, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.am ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.l, i64 %i.am ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.an = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !64, !noalias !62
  %wide.load54 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !64, !noalias !62
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !65, !noalias !64
  store <2 x i64> %wide.load54, ptr %i.ao, align 8, !alias.scope !65, !noalias !64
  %i.ap = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !64, !noalias !62
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !alias.scope !64, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.preheader56:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ar = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !63, !noalias !62
  store i64 %i.ar, ptr %.012.i.i.i.i.i, align 8, !alias.scope !62, !noalias !63
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !63, !noalias !62
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !61

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ak, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.av = load ptr, ptr %i.q, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ax) #29
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.au, ptr %i.j, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ay, ptr %i.q, align 8
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.az = tail call noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ba, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bb, align 8
  store i8 0, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bc, ptr %4, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.bd, align 8
  store i8 0, ptr %i.bc, align 8
  invoke fastcc void @_ZN6Assimp7OpenGEXL16propId2StdStringEPN10ODDLParser8PropertyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i64, ptr %i.bb, align 8
  %i.bf = icmp eq i64 %i.be, 9
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.g
  %i.bg = load ptr, ptr %3, align 8               ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 1
  %i.bi = xor i64 %i.bh, 8532478965186130544
  %i.bj = getelementptr i8, ptr %i.bg, i64 8
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = xor i64 %i.bl, 101
  %i.bn = or i64 %i.bi, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.br = load i64, ptr %i.bd, align 8            ; 4 uses
  switch i64 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit20
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit22
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.bs = load ptr, ptr %4, align 8               ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = xor i32 %i.bt, 1852403568
  %i.bv = getelementptr i8, ptr %i.bs, i64 4
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i32
  %i.by = xor i32 %i.bx, 29556
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35

bb.h:                                             ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35, %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %4, align 8               ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bc
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.cg = load i64, ptr %i.bc, align 8
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ci = load ptr, ptr %3, align 8               ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ba
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load i64, ptr %i.ba, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.cd

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %.pre = load ptr, ptr %4, align 8               ; 2 uses
  %bcmp.i.i19 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.18, i64 %i.br)
  %i.cm = icmp eq i32 %bcmp.i.i19, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %.pre36 = load ptr, ptr %4, align 8
  %bcmp.i.i21 = call i32 @bcmp(ptr %.pre36, ptr nonnull @.str.19, i64 %i.br)
  %i.cn = icmp eq i32 %bcmp.i.i21, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit20
  %bcmp.i.i23 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.20, i64 %i.br)
  %i.co = icmp eq i32 %bcmp.i.i23, 0
  br i1 %i.co, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit22, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24
  %i.cp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35
  invoke void @_ZN6Assimp6Logger4warnIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_KcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(34) @.str.21)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31 unwind label %bb.h

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit22, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15
  %.sink51 = phi i32 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15 ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit20 ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit22 ], [ 8, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24 ]
  %i.cq = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, %.sink51
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31
end_hunk_1
