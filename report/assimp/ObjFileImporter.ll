inline.NumInlined: 1002
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt13runtime_errorD2Ev

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #21
  resume { ptr, i32 } %i.p
}

declare void @_ZN6Assimp13ObjFileParserC1ERNS_14IOStreamBufferIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEPNS_15ProgressHandlerESB_(ptr noundef nonnull align 8 dereferenceable(4184), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter20CreateDataFromImportEPKNS_7ObjFile5ModelEP7aiScene(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.45", align 8    ; 13 uses
  %4 = alloca %"class.std::unique_ptr.50", align 8 ; 5 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24 ; 8 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.b)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = add i64 %i.e, -1024
  %or.cond = icmp ult i64 %i.f, -1023
  br i1 %or.cond, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %i.e to i32
  store i32 %i.g, ptr %i.b, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.i = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 1 %i.i, i64 %i.e, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  store i8 0, ptr %i.j, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1144) #22
  br label %bb.al

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.q, label %.preheader

bb.f:                                             ; preds = %bb.h
  %i.q = zext i32 %.175 to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.u = zext i32 %.173 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not94 = icmp eq i32 %.173, 0
  br i1 %.not94, label %.lr.ph.preheader, label %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.f
  br label %.lr.ph

_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.w = shl nuw nsw i64 %i.u, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24
          to label %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %bb.i ; 3 uses

_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.x, ptr %3, align 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  store ptr %i.z, ptr %i.v, align 8
  br label %.lr.ph.preheader

.preheader:                                       ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.h
  %.072101 = phi i32 [ %.173, %bb.h ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.074100 = phi i32 [ %.175, %bb.h ], [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.sroa.090.099 = phi ptr [ %i.am, %bb.h ], [ %i.m, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.090.099, align 8   ; 3 uses
  %.not83 = icmp eq ptr %i.aa, null
  br i1 %.not83, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ab = add i32 %.074100, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ac, align 8
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %.072101, %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %.175 = phi i32 [ %i.ab, %bb.g ], [ %.074100, %.preheader ] ; 2 uses
  %.173 = phi i32 [ %i.al, %bb.g ], [ %.072101, %.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.090.099, i64 8 ; 2 uses
  %.not93 = icmp eq ptr %i.am, %i.o
  br i1 %.not93, label %bb.f, label %.preheader

._crit_edge:                                      ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.loopexit98, label %bb.l

bb.i:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_M_allocateEm.exit.i, %.loopexit98, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %i.aq = phi ptr [ %i.ax, %bb.j ], [ %i.m, %.lr.ph.preheader ]
  %.071102 = phi i64 [ %i.av, %bb.j ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.071102
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.c, align 8
  %i.au = invoke noundef ptr @_ZN6Assimp15ObjFileImporter11createNodesEPKNS_7ObjFile5ModelEPKNS1_6ObjectEP6aiNodeP7aiSceneRSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteISE_EESaISH_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef %i.as, ptr noundef %i.at, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.lr.ph
  %i.av = add nuw i64 %.071102, 1                 ; 2 uses
  %i.aw = load ptr, ptr %i.n, align 8
  %i.ax = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.av, %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !15

bb.k:                                             ; preds = %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = load ptr, ptr %3, align 8               ; 5 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 -1)
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #24
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.bl, ptr %i.bm, align 8
  %.not110 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not110, label %.loopexit98, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %bb.m
  %i.bn = icmp eq i64 %i.bj, 8
  br i1 %i.bn, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %5 = ashr exact i64 %i.bj, 3
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105, %.lr.ph105.preheader.new
  %.070103 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %i.bx, %.lr.ph105 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.1, %.lr.ph105 ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.070103 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  store ptr null, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bm, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.070103
  store ptr %i.bp, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.070103, 1             ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  store ptr null, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bm, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bs
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = add nuw i64 %.070103, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.lr.ph105.epil.preheader, label %.lr.ph105, !llvm.loop !16

.lr.ph105.epil.preheader:                         ; preds = %.lr.ph105.preheader, %.lr.ph105
  %.070103.epil.init = phi i64 [ 0, %.lr.ph105.preheader ], [ %i.bx, %.lr.ph105 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.070103.epil.init ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  store ptr null, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bm, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.070103.epil.init
  store ptr %i.bz, ptr %i.cb, align 8
  br label %.loopexit98

.loopexit98:                                      ; preds = %.lr.ph105.epil.preheader, %bb.m, %._crit_edge
  invoke void @_ZN6Assimp15ObjFileImporter15createMaterialsEPKNS_7ObjFile5ModelEP7aiScene(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %.loopexit98
  %i.cc = load ptr, ptr %3, align 8               ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cg, %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.cc, %bb.n ] ; 2 uses
  %i.cf = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i.i.i.i.i

_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.cf) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 1320) #22
  br label %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, %i.ce
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrI6aiMeshSt14default_deleteIS1_EEEvPT_.exit.i.i.i, %bb.n
  %.not.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ch = load ptr, ptr %i.v, align 8
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cc to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ck) #22
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ak

bb.p:                                             ; preds = %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.ap, %bb.i ]
  call void @_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.al

bb.q:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cq = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #24 ; 12 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 224
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 1272
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 1312
  store ptr null, ptr %i.cw, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ct, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.cu, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cv, i8 0, i64 36, i1 false)
  store ptr %i.cq, ptr %4, align 8
  store i32 1, ptr %i.cq, align 8
  %i.cx = ptrtoint ptr %i.co to i64
  %i.cy = ptrtoint ptr %i.cm to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = sdiv exact i64 %i.cz, 12                ; 3 uses
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  store i32 %i.db, ptr %i.cr, align 4
  %i.dc = and i64 %i.da, 4294967295               ; 3 uses
  %i.dd = mul nuw nsw i64 %i.dc, 12               ; 6 uses
  %i.de = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #24
          to label %bb.s unwind label %bb.x       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.df = icmp eq i64 %i.dc, 0                    ; 2 uses
  br i1 %i.df, label %.loopexit97, label %.loopexit97.loopexit

.loopexit97.loopexit:                             ; preds = %bb.s
  %i.dg = add nsw i64 %i.dd, -12                  ; 2 uses
  %i.dh = urem i64 %i.dg, 12
  %i.di = sub nuw nsw i64 %i.dg, %i.dh
  %i.dj = add nsw i64 %i.di, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.de, i8 0, i64 %i.dj, i1 false)
  br label %.loopexit97

.loopexit97:                                      ; preds = %.loopexit97.loopexit, %bb.s
  store ptr %i.de, ptr %i.ct, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.cm, i64 %i.dd, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp eq ptr %i.dl, %i.dn
  br i1 %i.do, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %.loopexit97
  %i.dp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #24
          to label %bb.u unwind label %bb.x       ; 3 uses

bb.u:                                             ; preds = %bb.t
  br i1 %i.df, label %.loopexit96, label %.loopexit96.loopexit

.loopexit96.loopexit:                             ; preds = %bb.u
  %i.dq = add nsw i64 %i.dd, -12                  ; 2 uses
  %i.dr = urem i64 %i.dq, 12
  %i.ds = sub nuw nsw i64 %i.dq, %i.dr
  %i.dt = add nsw i64 %i.ds, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dp, i8 0, i64 %i.dt, i1 false)
  br label %.loopexit96

.loopexit96:                                      ; preds = %.loopexit96.loopexit, %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.dp, ptr %i.du, align 8
  %i.dv = ptrtoint ptr %i.dn to i64
  %i.dw = ptrtoint ptr %i.dl to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 12
  %i.dz = icmp ult i64 %i.dy, %i.dc
  br i1 %i.dz, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.loopexit96
  %i.ea = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull @.str.13)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.ea, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.am unwind label %bb.x

bb.x:                                             ; preds = %bb.ai, %.loopexit, %bb.ab, %bb.w, %bb.t, %bb.r
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.y:                                             ; preds = %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ea) #21
  br label %bb.aj

bb.z:                                             ; preds = %.loopexit96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr align 4 %i.dl, i64 %i.dd, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit97
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ei = and i64 %i.da, 4294967295               ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ei, 4                ; 2 uses
  %i.ek = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ej) #24
          to label %bb.ac unwind label %bb.x      ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  %i.el = icmp eq i32 %i.db, 0
  br i1 %i.el, label %.loopexit95.thread, label %.lr.ph108.preheader

.loopexit95.thread:                               ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store ptr %i.ek, ptr %i.em, align 8
  br label %.loopexit

.lr.ph108.preheader:                              ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ek, i8 0, i64 %i.ej, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cq, i64 48 ; 2 uses
  store ptr %i.ek, ptr %i.en, align 8
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next, %bb.ad ] ; 4 uses
  %i.eo = load ptr, ptr %i.ef, align 8
  %i.ep = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 12
  %i.eu = icmp ugt i64 %i.et, %indvars.iv
  br i1 %i.eu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph108
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.ep, i64 %indvars.iv ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load float, ptr %i.ew, align 4
  %i.ey = load ptr, ptr %i.en, align 8
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %indvars.iv ; 3 uses
end_hunk_0
