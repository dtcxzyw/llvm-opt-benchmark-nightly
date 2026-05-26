inline.NumInlined: 858
inline.NumDeleted: 400
begin_hunk_0_@_ZN10aiMaterialC1Ev
declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter21Postprocess_BuildMeshERK18X3DNodeElementBasePP6aiMesh(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 13 uses
  %4 = alloca %"class.std::vector", align 8       ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::vector", align 8      ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::vector", align 8      ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #18
  br label %bb.hi

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.17)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #18
  br label %bb.hi

bb.i:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  switch i32 %i.h, label %bb.ha [
    i32 7, label %bb.j
    i32 8, label %bb.j
    i32 9, label %bb.j
    i32 10, label %bb.j
    i32 11, label %bb.j
    i32 12, label %bb.j
    i32 13, label %bb.j
    i32 14, label %bb.j
    i32 15, label %bb.w
    i32 16, label %bb.w
    i32 17, label %bb.w
    i32 18, label %bb.w
    i32 19, label %bb.aj
    i32 24, label %bb.ay
    i32 25, label %bb.bq
    i32 26, label %bb.cg
    i32 27, label %bb.cg
    i32 28, label %bb.cg
    i32 20, label %bb.cy
    i32 30, label %bb.cz
    i32 29, label %bb.dy
    i32 32, label %bb.en
    i32 31, label %bb.fg
    i32 33, label %bb.gi
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp ugt i64 %i.k, 768614336404564650
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #21
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not1178 = icmp eq i64 %i.k, 0
  br i1 %.not1178, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.l
  %i.n = mul nuw nsw i64 %i.k, 12
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.m ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %3, align 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.k ; 2 uses
  store ptr %i.q, ptr %i.m, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.l
  %.promoted998 = phi ptr [ %i.q, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.l ]
  %.promoted1005 = phi ptr [ %i.o, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.l ] ; 2 uses
  %.sroa.0680.01000 = load ptr, ptr %i.i, align 8 ; 2 uses
  %.not8521001 = icmp eq ptr %.sroa.0680.01000, %i.i
  br i1 %.not8521001, label %._crit_edge1004, label %.lr.ph1003

.lr.ph1003:                                       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.n

._crit_edge1004:                                  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = invoke noundef ptr @_ZN6Assimp14StandardShapes8MakeMeshERKSt6vectorI10aiVector3tIfESaIS3_EEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.u)
          to label %bb.s unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %bb.k, %._crit_edge1004
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.pre1040 = load ptr, ptr %3, align 8
  br label %bb.u

bb.n:                                             ; preds = %.lr.ph1003, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.x = phi ptr [ %.promoted1005, %.lr.ph1003 ], [ %i.aq, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.0680.01002 = phi ptr [ %.sroa.0680.01000, %.lr.ph1003 ], [ %.sroa.0680.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.y = phi ptr [ %.promoted998, %.lr.ph1003 ], [ %i.as, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.z = phi ptr [ %.promoted1005, %.lr.ph1003 ], [ %i.ar, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0680.01002, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  store ptr %i.ab, ptr %i.r, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.q, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
          to label %.noexc328 unwind label %.loopexit.split-lp

.noexc328:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.ag = sdiv exact i64 %i.ae, 12                ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 768614336404564650) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = mul nuw nsw i64 %i.ai, 12
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #19
          to label %.noexc329 unwind label %.loopexit ; 6 uses

.noexc329:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc329, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.ak, %.noexc329 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc329 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !22
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !26

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc329
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %.noexc329 ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ak, ptr %3, align 8
  store ptr %i.ao, ptr %i.r, align 8
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  store ptr %i.ap, ptr %i.m, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o
  %i.aq = phi ptr [ %i.ao, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ab, %bb.o ]
  %i.ar = phi ptr [ %i.ak, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.z, %bb.o ]
  %i.as = phi ptr [ %i.ap, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.y, %bb.o ]
  %.sroa.0680.0 = load ptr, ptr %.sroa.0680.01002, align 8 ; 2 uses
  %.not852 = icmp eq ptr %.sroa.0680.0, %i.i
  br i1 %.not852, label %._crit_edge1004, label %bb.n, !llvm.loop !27

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge1004
  store ptr %i.v, ptr %2, align 8
  %i.at = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i330 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %i.m, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit858

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %i.ay = phi ptr [ %.pre1040, %bb.m ], [ %i.z, %.loopexit ], [ %i.z, %.loopexit.split-lp ] ; 3 uses
  %.pn323 = phi { ptr, i32 } [ %i.w, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i331 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit332, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit332

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit332: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.hi

bb.w:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bg = load i64, ptr %i.bf, align 8            ; 4 uses
  %i.bh = icmp ugt i64 %i.bg, 768614336404564650
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #21
          to label %.noexc342 unwind label %bb.z

.noexc342:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not1177 = icmp eq i64 %i.bg, 0
  br i1 %.not1177, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit344, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i333

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i333: ; preds = %bb.y
  %i.bj = mul nuw nsw i64 %i.bg, 12
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #19
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i341 unwind label %bb.z ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i341: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i333
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.bk, ptr %4, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %i.bg ; 2 uses
  store ptr %i.bm, ptr %i.bi, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit344

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit344: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i341, %bb.y
  %.promoted = phi ptr [ %i.bm, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i341 ], [ null, %bb.y ]
  %.promoted997 = phi ptr [ %i.bk, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i341 ], [ null, %bb.y ] ; 2 uses
  %.sroa.0676.0992 = load ptr, ptr %i.be, align 8 ; 2 uses
  %.not851993 = icmp eq ptr %.sroa.0676.0992, %i.be
  br i1 %.not851993, label %._crit_edge996, label %.lr.ph995

.lr.ph995:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit344
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.aa

._crit_edge996:                                   ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit344
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = trunc i64 %i.bp to i32
  %i.br = invoke noundef ptr @_ZN6Assimp14StandardShapes8MakeMeshERKSt6vectorI10aiVector3tIfESaIS3_EEj(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.bq)
          to label %bb.af unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i333, %bb.x, %._crit_edge996
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %.pre1037 = load ptr, ptr %4, align 8
  br label %bb.ah

bb.aa:                                            ; preds = %.lr.ph995, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360
  %i.bt = phi ptr [ %.promoted997, %.lr.ph995 ], [ %i.cm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360 ] ; 6 uses
  %.sroa.0676.0994 = phi ptr [ %.sroa.0676.0992, %.lr.ph995 ], [ %.sroa.0676.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360 ] ; 2 uses
  %i.bu = phi ptr [ %.promoted, %.lr.ph995 ], [ %i.co, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360 ] ; 2 uses
  %i.bv = phi ptr [ %.promoted997, %.lr.ph995 ], [ %i.cn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360 ] ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0676.0994, i64 16 ; 2 uses
  %.not.i345 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i345, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 2 uses
  store ptr %i.bx, ptr %i.bn, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360

bb.ac:                                            ; preds = %bb.aa
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.ad, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i346

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
          to label %.noexc358 unwind label %.loopexit.split-lp854

.noexc358:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i346: ; preds = %bb.ac
  %i.cc = sdiv exact i64 %i.ca, 12                ; 2 uses
  %.sroa.speculated.i.i.i347 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i347, %i.cc ; 2 uses
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 768614336404564650) ; 2 uses
  %.not.i.i.i348 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i348)
  %i.cf = mul nuw nsw i64 %i.ce, 12
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #19
          to label %.noexc359 unwind label %.loopexit853 ; 6 uses

.noexc359:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i346
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull align 4 dereferenceable(12) %i.bw, i64 12, i1 false)
  %.not10.i.i.i.i.i349 = icmp eq ptr %i.bv, %i.bt
  br i1 %.not10.i.i.i.i.i349, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i354, label %.lr.ph.i.i.i.i.i350

.lr.ph.i.i.i.i.i350:                              ; preds = %.noexc359, %.lr.ph.i.i.i.i.i350
  %.012.i.i.i.i.i351 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i350 ], [ %i.cg, %.noexc359 ] ; 2 uses
  %.0911.i.i.i.i.i352 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i350 ], [ %i.bv, %.noexc359 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i351, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i352, i64 12, i1 false), !alias.scope !28
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i352, i64 12 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i351, i64 12 ; 2 uses
  %.not.i.i.i.i.i353 = icmp eq ptr %i.ci, %i.bt
  br i1 %.not.i.i.i.i.i353, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i354, label %.lr.ph.i.i.i.i.i350, !llvm.loop !26

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i354: ; preds = %.lr.ph.i.i.i.i.i350, %.noexc359
  %.0.lcssa.i.i.i.i.i355 = phi ptr [ %i.cg, %.noexc359 ], [ %i.cj, %.lr.ph.i.i.i.i.i350 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i355, i64 12 ; 2 uses
  %.not.i23.i.i356 = icmp eq ptr %i.bv, null
  br i1 %.not.i23.i.i356, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i354
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357: ; preds = %bb.ae, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i354
  store ptr %i.cg, ptr %4, align 8
  store ptr %i.ck, ptr %i.bn, align 8
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.ce ; 2 uses
  store ptr %i.cl, ptr %i.bi, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit360: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357, %bb.ab
  %i.cm = phi ptr [ %i.ck, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357 ], [ %i.bx, %bb.ab ]
  %i.cn = phi ptr [ %i.cg, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357 ], [ %i.bv, %bb.ab ]
  %i.co = phi ptr [ %i.cl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i357 ], [ %i.bu, %bb.ab ]
  %.sroa.0676.0 = load ptr, ptr %.sroa.0676.0994, align 8 ; 2 uses
  %.not851 = icmp eq ptr %.sroa.0676.0, %i.be
  br i1 %.not851, label %._crit_edge996, label %bb.aa, !llvm.loop !32

.loopexit853:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i346
  %lpad.loopexit855 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp854:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp856 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge996
  store ptr %i.br, ptr %2, align 8
  %i.cp = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i361 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit362, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = load ptr, ptr %i.bi, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit362

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit362: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit858

bb.ah:                                            ; preds = %.loopexit853, %.loopexit.split-lp854, %bb.z
  %i.cu = phi ptr [ %.pre1037, %bb.z ], [ %i.bv, %.loopexit853 ], [ %i.bv, %.loopexit.split-lp854 ] ; 3 uses
  %.pn321 = phi { ptr, i32 } [ %i.bs, %bb.z ], [ %lpad.loopexit855, %.loopexit853 ], [ %lpad.loopexit.split-lp856, %.loopexit.split-lp854 ]
  %.not.i.i.i363 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i363, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit364, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit364

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit364: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.hi

bb.aj:                                            ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = tail call noundef ptr @_ZN6Assimp12X3DGeoHelper9make_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  store ptr %i.dc, ptr %2, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.0664.0986 = load ptr, ptr %i.dd, align 8 ; 2 uses
  %.not850987 = icmp eq ptr %.sroa.0664.0986, %i.dd
  br i1 %.not850987, label %.loopexit858, label %.lr.ph990

.lr.ph990:                                        ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph990, %bb.ax
  %.sroa.0664.0988 = phi ptr [ %.sroa.0664.0986, %.lr.ph990 ], [ %.sroa.0664.0, %bb.ax ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0664.0988, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load i32, ptr %i.di, align 8
  switch i32 %i.dj, label %bb.ap [
    i32 34, label %bb.al
    i32 35, label %bb.am
    i32 22, label %bb.an
    i32 23, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dk = load ptr, ptr %2, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dm = load i8, ptr %i.df, align 2, !range !33, !noundef !34
  %i.dn = trunc nuw i8 %i.dm to i1
  tail call void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor3DSaIS5_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i1 noundef zeroext %i.dn)
  br label %bb.ax

bb.am:                                            ; preds = %bb.ak
  %i.do = load ptr, ptr %2, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dq = load i8, ptr %i.df, align 2, !range !33, !noundef !34
  %i.dr = trunc nuw i8 %i.dq to i1
  tail call void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor4tIfESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i1 noundef zeroext %i.dr)
  br label %bb.ax

bb.an:                                            ; preds = %bb.ak
  %i.ds = load ptr, ptr %2, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.du = load i8, ptr %i.de, align 1, !range !33, !noundef !34
  %i.dv = trunc nuw i8 %i.du to i1
  tail call void @_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKNSt7__cxx114listI10aiVector3tIfESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i1 noundef zeroext %i.dv)
  br label %bb.ax

bb.ao:                                            ; preds = %bb.ak
  %i.dw = load ptr, ptr %2, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  tail call void @_ZN6Assimp12X3DGeoHelper13add_tex_coordER6aiMeshRKNSt7__cxx114listI10aiVector2tIfESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(1320) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0664.0988, i64 16
  %i.dz = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ea = load ptr, ptr %i.dy, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.ec = load i32, ptr %i.eb, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i32 noundef %i.ec)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.hj unwind label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread: ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.au:                                            ; preds = %bb.ar
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.av:                                            ; preds = %bb.at, %bb.as
  %.0250 = phi i1 [ false, %bb.at ], [ true, %bb.as ] ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %5, align 8               ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.ej = load i64, ptr %i.eh, align 8
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.au
  %.1251 = phi i1 [ true, %bb.au ], [ %.0250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0250, %bb.av ] ; 2 uses
  %.pn317 = phi { ptr, i32 } [ %i.ee, %bb.au ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ef, %bb.av ] ; 4 uses
  %i.el = load ptr, ptr %6, align 8               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eo = load i64, ptr %i.em, align 8
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
  %i.eq = load ptr, ptr %7, align 8               ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367.thread: ; preds = %bb.aq
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %7, align 8               ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367.thread
  %i.ex = load i64, ptr %i.ev, align 8
  %i.ey = add i64 %i.ex, 1
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DImporter21Postprocess_BuildMeshERK18X3DNodeElementBasePP6aiMesh:bb.a
          cleanup                                 ; 2 uses
  %i.lb = load ptr, ptr %14, align 8              ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %bb.cv
  %i.le = load i64, ptr %i.lc, align 8
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.cu
  %.1271 = phi i1 [ true, %bb.cu ], [ %.0270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %.0270, %bb.cv ] ; 2 uses
  %.pn305 = phi { ptr, i32 } [ %i.kz, %bb.cu ], [ %i.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %i.la, %bb.cv ] ; 4 uses
  %i.lg = load ptr, ptr %15, align 8              ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  %i.lj = load i64, ptr %i.lh, align 8
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  %i.ll = load ptr, ptr %16, align 8              ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.thread: ; preds = %bb.cq
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %16, align 8              ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %.sink.split1215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.thread
  %i.ls = load i64, ptr %i.lq, align 8
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #20
  br label %.sink.split1215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  %i.lu = load i64, ptr %i.lm, align 8
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br i1 %.1271, label %bb.cw, label %bb.hi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br i1 %.1271, label %bb.cw, label %bb.hi

.sink.split1215:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395.thread
  %.pn305.pn.pn725.ph = phi { ptr, i32 } [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395.thread ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397.thread ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split1215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  %.pn305.pn.pn725 = phi { ptr, i32 } [ %.pn305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %.pn305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ], [ %.pn305.pn.pn725.ph, %.sink.split1215 ]
  call void @__cxa_free_exception(ptr %i.ku) #18
  br label %bb.hi

bb.cx:                                            ; preds = %bb.ck, %bb.cl, %bb.co, %bb.cn, %bb.cm
  %.sroa.0614.0 = load ptr, ptr %.sroa.0614.0966, align 8 ; 2 uses
  %.not845 = icmp eq ptr %.sroa.0614.0, %i.jm
  br i1 %.not845, label %.loopexit858, label %bb.ck, !llvm.loop !41

bb.cy:                                            ; preds = %bb.i
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ly = tail call noundef ptr @_ZN6Assimp12X3DGeoHelper9make_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %i.lx)
  store ptr %i.ly, ptr %2, align 8
  br label %.loopexit858

bb.cz:                                            ; preds = %bb.i
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %.sroa.0607.0950 = load ptr, ptr %i.lz, align 8 ; 3 uses
  %.not841951 = icmp eq ptr %.sroa.0607.0950, %i.lz
  br i1 %.not841951, label %.preheader864, label %.lr.ph954

.lr.ph954:                                        ; preds = %bb.cz
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  br label %bb.da

.preheader864.loopexit:                           ; preds = %bb.dm
  %.sroa.0592.0955.pre = load ptr, ptr %i.lz, align 8
  br label %.preheader864

.preheader864:                                    ; preds = %.preheader864.loopexit, %bb.cz
  %.sroa.0592.0955 = phi ptr [ %.sroa.0592.0955.pre, %.preheader864.loopexit ], [ %.sroa.0607.0950, %bb.cz ] ; 2 uses
  %.not842956 = icmp eq ptr %.sroa.0592.0955, %i.lz
  br i1 %.not842956, label %.loopexit858, label %.lr.ph958

bb.da:                                            ; preds = %.lr.ph954, %bb.dm
  %.sroa.0607.0952 = phi ptr [ %.sroa.0607.0950, %.lr.ph954 ], [ %.sroa.0607.0, %bb.dm ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0607.0952, i64 16 ; 4 uses
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = icmp eq i32 %i.mf, 21
  br i1 %i.mg, label %bb.db, label %bb.dm

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.mh = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 96
  %i.mj = load i64, ptr %i.mi, align 8            ; 4 uses
  %i.mk = icmp ugt i64 %i.mj, 768614336404564650
  br i1 %i.mk, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #21
          to label %.noexc407 unwind label %.loopexit.split-lp872

.noexc407:                                        ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.db
  %.not1176 = icmp eq i64 %i.mj, 0
  br i1 %.not1176, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i398

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i398: ; preds = %bb.dd
  %i.ml = mul nuw nsw i64 %i.mj, 12
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ml) #19
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i406 unwind label %.loopexit871 ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i406: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i398
  store ptr %i.mm, ptr %17, align 8
  store ptr %i.mm, ptr %i.mb, align 8
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.mm, i64 %i.mj
  store ptr %i.mn, ptr %i.ma, align 8
  %.pre1030 = load ptr, ptr %i.mc, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i406, %bb.dd
  %i.mo = phi ptr [ %i.mm, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i406 ], [ null, %bb.dd ]
  %i.mp = phi ptr [ %.pre1030, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i406 ], [ %i.mh, %bb.dd ]
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 80 ; 2 uses
  %.sroa.0603.0945 = load ptr, ptr %i.mq, align 8 ; 2 uses
  %.not843946 = icmp eq ptr %.sroa.0603.0945, %i.mq
  br i1 %.not843946, label %._crit_edge949, label %.lr.ph948

._crit_edge949:                                   ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409
  %i.mr = invoke noundef ptr @_ZN6Assimp14StandardShapes8MakeMeshERKSt6vectorI10aiVector3tIfESaIS3_EEj(ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 1)
          to label %bb.di unwind label %.loopexit871

.loopexit871:                                     ; preds = %._crit_edge949, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i398
  %lpad.loopexit873 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp872:                            ; preds = %bb.dc
  %lpad.loopexit.split-lp874 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.lr.ph948:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425
  %i.ms = phi ptr [ %i.nm, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425 ], [ %i.mo, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409 ] ; 5 uses
  %.sroa.0603.0947 = phi ptr [ %.sroa.0603.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425 ], [ %.sroa.0603.0945, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit409 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0603.0947, i64 16 ; 2 uses
  %i.mu = load ptr, ptr %i.ma, align 8
  %.not.i410 = icmp eq ptr %i.ms, %i.mu
  br i1 %.not.i410, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ms, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  %i.mv = load ptr, ptr %i.mb, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 12 ; 2 uses
  store ptr %i.mw, ptr %i.mb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425

bb.df:                                            ; preds = %.lr.ph948
  %i.mx = load ptr, ptr %17, align 8              ; 5 uses
  %i.my = ptrtoint ptr %i.ms to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 4 uses
  %i.nb = icmp eq i64 %i.na, 9223372036854775800
  br i1 %i.nb, label %bb.dg, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i411

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
          to label %.noexc423 unwind label %.loopexit.split-lp867

.noexc423:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i411: ; preds = %bb.df
  %i.nc = sdiv exact i64 %i.na, 12                ; 2 uses
  %.sroa.speculated.i.i.i412 = call i64 @llvm.umax.i64(i64 %i.nc, i64 1)
  %i.nd = add nsw i64 %.sroa.speculated.i.i.i412, %i.nc ; 2 uses
  %i.ne = call i64 @llvm.umin.i64(i64 %i.nd, i64 768614336404564650) ; 2 uses
  %.not.i.i.i413 = icmp ne i64 %i.nd, 0
  call void @llvm.assume(i1 %.not.i.i.i413)
  %i.nf = mul nuw nsw i64 %i.ne, 12
  %i.ng = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nf) #19
          to label %.noexc424 unwind label %.loopexit866 ; 5 uses

.noexc424:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i411
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.na
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nh, ptr noundef nonnull align 4 dereferenceable(12) %i.mt, i64 12, i1 false)
  %.not10.i.i.i.i.i414 = icmp eq ptr %i.mx, %i.ms
  br i1 %.not10.i.i.i.i.i414, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i419, label %.lr.ph.i.i.i.i.i415

.lr.ph.i.i.i.i.i415:                              ; preds = %.noexc424, %.lr.ph.i.i.i.i.i415
  %.012.i.i.i.i.i416 = phi ptr [ %i.nj, %.lr.ph.i.i.i.i.i415 ], [ %i.ng, %.noexc424 ] ; 2 uses
  %.0911.i.i.i.i.i417 = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i415 ], [ %i.mx, %.noexc424 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i416, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i417, i64 12, i1 false), !alias.scope !42
  %i.ni = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i417, i64 12 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i416, i64 12 ; 2 uses
  %.not.i.i.i.i.i418 = icmp eq ptr %i.ni, %i.ms
  br i1 %.not.i.i.i.i.i418, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i419, label %.lr.ph.i.i.i.i.i415, !llvm.loop !26

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i419: ; preds = %.lr.ph.i.i.i.i.i415, %.noexc424
  %.0.lcssa.i.i.i.i.i420 = phi ptr [ %i.ng, %.noexc424 ], [ %i.nj, %.lr.ph.i.i.i.i.i415 ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i420, i64 12 ; 2 uses
  %.not.i23.i.i421 = icmp eq ptr %i.mx, null
  br i1 %.not.i23.i.i421, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i422, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i419
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.na) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i422

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i422: ; preds = %bb.dh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i419
  store ptr %i.ng, ptr %17, align 8
  store ptr %i.nk, ptr %i.mb, align 8
  %i.nl = getelementptr inbounds nuw [12 x i8], ptr %i.ng, i64 %i.ne
  store ptr %i.nl, ptr %i.ma, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit425: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i422, %bb.de
  %i.nm = phi ptr [ %i.nk, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i422 ], [ %i.mw, %bb.de ]
  %.sroa.0603.0 = load ptr, ptr %.sroa.0603.0947, align 8 ; 2 uses
  %i.nn = load ptr, ptr %i.mc, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 80
  %.not843 = icmp eq ptr %.sroa.0603.0, %i.no
  br i1 %.not843, label %._crit_edge949, label %.lr.ph948, !llvm.loop !46

.loopexit866:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i411
  %lpad.loopexit868 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp867:                            ; preds = %bb.dg
  %lpad.loopexit.split-lp869 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.di:                                            ; preds = %._crit_edge949
  store ptr %i.mr, ptr %2, align 8
  %i.np = load ptr, ptr %17, align 8              ; 3 uses
  %.not.i.i.i426 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i426, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit427, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nq = load ptr, ptr %i.ma, align 8
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %i.np to i64
  %i.nt = sub i64 %i.nr, %i.ns
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nt) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit427

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit427: ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.dm

bb.dk:                                            ; preds = %.loopexit866, %.loopexit.split-lp867, %.loopexit871, %.loopexit.split-lp872
  %.pn302 = phi { ptr, i32 } [ %lpad.loopexit.split-lp874, %.loopexit.split-lp872 ], [ %lpad.loopexit873, %.loopexit871 ], [ %lpad.loopexit868, %.loopexit866 ], [ %lpad.loopexit.split-lp869, %.loopexit.split-lp867 ]
  %i.nu = load ptr, ptr %17, align 8              ; 3 uses
  %.not.i.i.i428 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i428, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit429, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nv = load ptr, ptr %i.ma, align 8
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef %i.ny) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit429

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit429: ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.hi

bb.dm:                                            ; preds = %bb.da, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit427
  %.sroa.0607.0 = load ptr, ptr %.sroa.0607.0952, align 8 ; 2 uses
  %.not841 = icmp eq ptr %.sroa.0607.0, %i.lz
  br i1 %.not841, label %.preheader864.loopexit, label %bb.da, !llvm.loop !47

.lr.ph958:                                        ; preds = %.preheader864, %bb.dx
  %.sroa.0592.0957 = phi ptr [ %.sroa.0592.0, %bb.dx ], [ %.sroa.0592.0955, %.preheader864 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0592.0957, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8            ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 72
  %i.oc = load i32, ptr %i.ob, align 8
  switch i32 %i.oc, label %bb.dp [
    i32 34, label %bb.dn
    i32 35, label %bb.do
    i32 21, label %bb.dx
  ]

bb.dn:                                            ; preds = %.lr.ph958
  %i.od = load ptr, ptr %2, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 80
  call void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor3DSaIS5_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.od, ptr noundef nonnull align 8 dereferenceable(24) %i.oe, i1 noundef zeroext true)
  br label %bb.dx

bb.do:                                            ; preds = %.lr.ph958
  %i.of = load ptr, ptr %2, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 80
  call void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor4tIfESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.of, ptr noundef nonnull align 8 dereferenceable(24) %i.og, i1 noundef zeroext true)
  br label %bb.dx

bb.dp:                                            ; preds = %.lr.ph958
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0592.0957, i64 16
  %i.oi = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.oj = load ptr, ptr %i.oh, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 72
  %i.ol = load i32, ptr %i.ok, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i32 noundef %i.ol)
          to label %bb.dq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.dr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435.thread

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.1)
          to label %bb.ds unwind label %bb.du

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.oi, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dt unwind label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  invoke void @__cxa_throw(ptr nonnull %i.oi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.hj unwind label %bb.dv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread: ; preds = %bb.dp
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1216

bb.du:                                            ; preds = %bb.dr
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

bb.dv:                                            ; preds = %bb.dt, %bb.ds
  %.0262 = phi i1 [ false, %bb.dt ], [ true, %bb.ds ] ; 2 uses
  %i.oo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.op = load ptr, ptr %18, align 8              ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.or = icmp eq ptr %i.op, %i.oq
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430: ; preds = %bb.dv
  %i.os = load i64, ptr %i.oq, align 8
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.ot) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430, %bb.du
  %.1263 = phi i1 [ true, %bb.du ], [ %.0262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %.0262, %bb.dv ] ; 2 uses
  %.pn298 = phi { ptr, i32 } [ %i.on, %bb.du ], [ %i.oo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i430 ], [ %i.oo, %bb.dv ] ; 4 uses
  %i.ou = load ptr, ptr %19, align 8              ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  %i.ox = load i64, ptr %i.ov, align 8
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i433
  %i.oz = load ptr, ptr %20, align 8              ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.pb = icmp eq ptr %i.oz, %i.pa
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435.thread: ; preds = %bb.dq
  %i.pc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pd = load ptr, ptr %20, align 8              ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %.sink.split1216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435.thread
  %i.pg = load i64, ptr %i.pe, align 8
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #20
  br label %.sink.split1216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.pi = load i64, ptr %i.pa, align 8
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br i1 %.1263, label %bb.dw, label %bb.hi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br i1 %.1263, label %bb.dw, label %bb.hi

.sink.split1216:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436.thread
  %.pn298.pn.pn738.ph = phi { ptr, i32 } [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436.thread ], [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438.thread ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.dw

bb.dw:                                            ; preds = %.sink.split1216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  %.pn298.pn.pn738 = phi { ptr, i32 } [ %.pn298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ], [ %.pn298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn298.pn.pn738.ph, %.sink.split1216 ]
  call void @__cxa_free_exception(ptr %i.oi) #18
  br label %bb.hi

end_hunk_1
begin_hunk_2_@_ZNK6Assimp11X3DImporter21Postprocess_BuildMeshERK18X3DNodeElementBasePP6aiMesh:bb.a
  %i.sq = load ptr, ptr %24, align 8              ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %bb.fd
  %i.st = load i64, ptr %i.sr, align 8
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.su) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448, %bb.fc
  %.1247 = phi i1 [ true, %bb.fc ], [ %.0246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448 ], [ %.0246, %bb.fd ] ; 2 uses
  %.pn290 = phi { ptr, i32 } [ %i.so, %bb.fc ], [ %i.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448 ], [ %i.sp, %bb.fd ] ; 4 uses
  %i.sv = load ptr, ptr %25, align 8              ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.sy = load i64, ptr %i.sw, align 8
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451
  %i.ta = load ptr, ptr %26, align 8              ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.thread: ; preds = %bb.ey
  %i.td = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.te = load ptr, ptr %26, align 8              ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.tg = icmp eq ptr %i.te, %i.tf
  br i1 %i.tg, label %.sink.split1218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.thread
  %i.th = load i64, ptr %i.tf, align 8
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.ti) #20
  br label %.sink.split1218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453
  %i.tj = load i64, ptr %i.tb, align 8
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.tk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br i1 %.1247, label %bb.fe, label %bb.hi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br i1 %.1247, label %bb.fe, label %bb.hi

.sink.split1218:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454.thread
  %.pn290.pn.pn764.ph = phi { ptr, i32 } [ %i.td, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454.thread ], [ %i.sn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456.thread ], [ %i.td, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  br label %bb.fe

bb.fe:                                            ; preds = %.sink.split1218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
  %.pn290.pn.pn764 = phi { ptr, i32 } [ %.pn290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.pn290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %.pn290.pn.pn764.ph, %.sink.split1218 ]
  call void @__cxa_free_exception(ptr %i.sj) #18
  br label %bb.hi

bb.ff:                                            ; preds = %bb.es, %bb.et, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0560.0 = load ptr, ptr %.sroa.0560.0933, align 8 ; 2 uses
  %.not838 = icmp eq ptr %.sroa.0560.0, %i.re
  br i1 %.not838, label %.loopexit858, label %bb.er, !llvm.loop !52

bb.fg:                                            ; preds = %bb.i
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %.sroa.0553.0917 = load ptr, ptr %i.tl, align 8 ; 3 uses
  %.not834918 = icmp eq ptr %.sroa.0553.0917, %i.tl
  br i1 %.not834918, label %.preheader880, label %.lr.ph921

.lr.ph921:                                        ; preds = %bb.fg
  %i.tm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  br label %bb.fh

.preheader880.loopexit:                           ; preds = %bb.ft
  %.sroa.0534.0922.pre = load ptr, ptr %i.tl, align 8
  br label %.preheader880

.preheader880:                                    ; preds = %.preheader880.loopexit, %bb.fg
  %.sroa.0534.0922 = phi ptr [ %.sroa.0534.0922.pre, %.preheader880.loopexit ], [ %.sroa.0553.0917, %bb.fg ] ; 2 uses
  %.not835923 = icmp eq ptr %.sroa.0534.0922, %i.tl
  br i1 %.not835923, label %.loopexit858, label %.lr.ph925

.lr.ph925:                                        ; preds = %.preheader880
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  br label %bb.fu

bb.fh:                                            ; preds = %.lr.ph921, %bb.ft
  %.sroa.0553.0919 = phi ptr [ %.sroa.0553.0917, %.lr.ph921 ], [ %.sroa.0553.0, %bb.ft ] ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0553.0919, i64 16 ; 4 uses
  %i.tu = load ptr, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 72
  %i.tw = load i32, ptr %i.tv, align 8
  %i.tx = icmp eq i32 %i.tw, 21
  br i1 %i.tx, label %bb.fi, label %bb.ft

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  %i.ty = load ptr, ptr %i.tt, align 8            ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 96
  %i.ua = load i64, ptr %i.tz, align 8            ; 4 uses
  %i.ub = icmp ugt i64 %i.ua, 768614336404564650
  br i1 %i.ub, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #21
          to label %.noexc466 unwind label %.loopexit.split-lp888

.noexc466:                                        ; preds = %bb.fj
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %.not1175 = icmp eq i64 %i.ua, 0
  br i1 %.not1175, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i457

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i457: ; preds = %bb.fk
  %i.uc = mul nuw nsw i64 %i.ua, 12
  %i.ud = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uc) #19
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i465 unwind label %.loopexit887 ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i465: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i457
  store ptr %i.ud, ptr %27, align 8
  store ptr %i.ud, ptr %i.tn, align 8
  %i.ue = getelementptr inbounds nuw [12 x i8], ptr %i.ud, i64 %i.ua
  store ptr %i.ue, ptr %i.tm, align 8
  %.pre = load ptr, ptr %i.tt, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i465, %bb.fk
  %i.uf = phi ptr [ %i.ud, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i465 ], [ null, %bb.fk ]
  %i.ug = phi ptr [ %.pre, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i465 ], [ %i.ty, %bb.fk ]
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 80 ; 2 uses
  %.sroa.0549.0913 = load ptr, ptr %i.uh, align 8 ; 2 uses
  %.not836914 = icmp eq ptr %.sroa.0549.0913, %i.uh
  br i1 %.not836914, label %._crit_edge, label %.lr.ph916

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468
  %i.ui = invoke noundef ptr @_ZN6Assimp14StandardShapes8MakeMeshERKSt6vectorI10aiVector3tIfESaIS3_EEj(ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef 3)
          to label %bb.fp unwind label %.loopexit887

.loopexit887:                                     ; preds = %._crit_edge, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i457
  %lpad.loopexit889 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp888:                            ; preds = %bb.fj
  %lpad.loopexit.split-lp890 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.lr.ph916:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484
  %i.uj = phi ptr [ %i.vd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484 ], [ %i.uf, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468 ] ; 5 uses
  %.sroa.0549.0915 = phi ptr [ %.sroa.0549.0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484 ], [ %.sroa.0549.0913, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit468 ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0549.0915, i64 16 ; 2 uses
  %i.ul = load ptr, ptr %i.tm, align 8
  %.not.i469 = icmp eq ptr %i.uj, %i.ul
  br i1 %.not.i469, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.uj, ptr noundef nonnull align 4 dereferenceable(12) %i.uk, i64 12, i1 false)
  %i.um = load ptr, ptr %i.tn, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 12 ; 2 uses
  store ptr %i.un, ptr %i.tn, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484

bb.fm:                                            ; preds = %.lr.ph916
  %i.uo = load ptr, ptr %27, align 8              ; 5 uses
  %i.up = ptrtoint ptr %i.uj to i64
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = sub i64 %i.up, %i.uq                    ; 4 uses
  %i.us = icmp eq i64 %i.ur, 9223372036854775800
  br i1 %i.us, label %bb.fn, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i470

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
          to label %.noexc482 unwind label %.loopexit.split-lp883

.noexc482:                                        ; preds = %bb.fn
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i470: ; preds = %bb.fm
  %i.ut = sdiv exact i64 %i.ur, 12                ; 2 uses
  %.sroa.speculated.i.i.i471 = call i64 @llvm.umax.i64(i64 %i.ut, i64 1)
  %i.uu = add nsw i64 %.sroa.speculated.i.i.i471, %i.ut ; 2 uses
  %i.uv = call i64 @llvm.umin.i64(i64 %i.uu, i64 768614336404564650) ; 2 uses
  %.not.i.i.i472 = icmp ne i64 %i.uu, 0
  call void @llvm.assume(i1 %.not.i.i.i472)
  %i.uw = mul nuw nsw i64 %i.uv, 12
  %i.ux = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uw) #19
          to label %.noexc483 unwind label %.loopexit882 ; 5 uses

.noexc483:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i470
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.ur
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.uy, ptr noundef nonnull align 4 dereferenceable(12) %i.uk, i64 12, i1 false)
  %.not10.i.i.i.i.i473 = icmp eq ptr %i.uo, %i.uj
  br i1 %.not10.i.i.i.i.i473, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i478, label %.lr.ph.i.i.i.i.i474

.lr.ph.i.i.i.i.i474:                              ; preds = %.noexc483, %.lr.ph.i.i.i.i.i474
  %.012.i.i.i.i.i475 = phi ptr [ %i.va, %.lr.ph.i.i.i.i.i474 ], [ %i.ux, %.noexc483 ] ; 2 uses
  %.0911.i.i.i.i.i476 = phi ptr [ %i.uz, %.lr.ph.i.i.i.i.i474 ], [ %i.uo, %.noexc483 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i475, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i476, i64 12, i1 false), !alias.scope !53
  %i.uz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i476, i64 12 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i475, i64 12 ; 2 uses
  %.not.i.i.i.i.i477 = icmp eq ptr %i.uz, %i.uj
  br i1 %.not.i.i.i.i.i477, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i478, label %.lr.ph.i.i.i.i.i474, !llvm.loop !26

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i478: ; preds = %.lr.ph.i.i.i.i.i474, %.noexc483
  %.0.lcssa.i.i.i.i.i479 = phi ptr [ %i.ux, %.noexc483 ], [ %i.va, %.lr.ph.i.i.i.i.i474 ]
  %i.vb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i479, i64 12 ; 2 uses
  %.not.i23.i.i480 = icmp eq ptr %i.uo, null
  br i1 %.not.i23.i.i480, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i481, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i478
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ur) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i481

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i481: ; preds = %bb.fo, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i478
  store ptr %i.ux, ptr %27, align 8
  store ptr %i.vb, ptr %i.tn, align 8
  %i.vc = getelementptr inbounds nuw [12 x i8], ptr %i.ux, i64 %i.uv
  store ptr %i.vc, ptr %i.tm, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit484: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i481, %bb.fl
  %i.vd = phi ptr [ %i.vb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i481 ], [ %i.un, %bb.fl ]
  %.sroa.0549.0 = load ptr, ptr %.sroa.0549.0915, align 8 ; 2 uses
  %i.ve = load ptr, ptr %i.tt, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 80
  %.not836 = icmp eq ptr %.sroa.0549.0, %i.vf
  br i1 %.not836, label %._crit_edge, label %.lr.ph916, !llvm.loop !57

.loopexit882:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i470
  %lpad.loopexit884 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp883:                            ; preds = %bb.fn
  %lpad.loopexit.split-lp885 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fp:                                            ; preds = %._crit_edge
  store ptr %i.ui, ptr %2, align 8
  %i.vg = load ptr, ptr %27, align 8              ; 3 uses
  %.not.i.i.i485 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i485, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit486, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.vh = load ptr, ptr %i.tm, align 8
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = ptrtoint ptr %i.vg to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vk) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit486

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit486: ; preds = %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.ft

bb.fr:                                            ; preds = %.loopexit882, %.loopexit.split-lp883, %.loopexit887, %.loopexit.split-lp888
  %.pn287 = phi { ptr, i32 } [ %lpad.loopexit.split-lp890, %.loopexit.split-lp888 ], [ %lpad.loopexit889, %.loopexit887 ], [ %lpad.loopexit884, %.loopexit882 ], [ %lpad.loopexit.split-lp885, %.loopexit.split-lp883 ]
  %i.vl = load ptr, ptr %27, align 8              ; 3 uses
  %.not.i.i.i487 = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i487, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit488, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.vm = load ptr, ptr %i.tm, align 8
  %i.vn = ptrtoint ptr %i.vm to i64
  %i.vo = ptrtoint ptr %i.vl to i64
  %i.vp = sub i64 %i.vn, %i.vo
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef %i.vp) #20
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit488

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit488: ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.hi

bb.ft:                                            ; preds = %bb.fh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit486
  %.sroa.0553.0 = load ptr, ptr %.sroa.0553.0919, align 8 ; 2 uses
  %.not834 = icmp eq ptr %.sroa.0553.0, %i.tl
  br i1 %.not834, label %.preheader880.loopexit, label %bb.fh, !llvm.loop !58

bb.fu:                                            ; preds = %.lr.ph925, %bb.gh
  %.sroa.0534.0924 = phi ptr [ %.sroa.0534.0922, %.lr.ph925 ], [ %.sroa.0534.0, %bb.gh ] ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0534.0924, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8            ; 5 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 72
  %i.vt = load i32, ptr %i.vs, align 8
  switch i32 %i.vt, label %bb.fz [
    i32 34, label %bb.fv
    i32 35, label %bb.fw
    i32 21, label %bb.gh
    i32 22, label %bb.fx
    i32 23, label %bb.fy
  ]

bb.fv:                                            ; preds = %bb.fu
  %i.vu = load ptr, ptr %2, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 80
  %i.vw = load i8, ptr %i.ts, align 2, !range !33, !noundef !34
  %i.vx = trunc nuw i8 %i.vw to i1
  call void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor3DSaIS5_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.vu, ptr noundef nonnull align 8 dereferenceable(24) %i.vv, i1 noundef zeroext %i.vx)
  br label %bb.gh

bb.fw:                                            ; preds = %bb.fu
  %i.vy = load ptr, ptr %2, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vr, i64 80
  %i.wa = load i8, ptr %i.ts, align 2, !range !33, !noundef !34
  %i.wb = trunc nuw i8 %i.wa to i1
  call void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor4tIfESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.vy, ptr noundef nonnull align 8 dereferenceable(24) %i.vz, i1 noundef zeroext %i.wb)
  br label %bb.gh

bb.fx:                                            ; preds = %bb.fu
  %i.wc = load ptr, ptr %2, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vr, i64 80
  %i.we = load i8, ptr %i.tr, align 1, !range !33, !noundef !34
  %i.wf = trunc nuw i8 %i.we to i1
  call void @_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector3tIfESaISB_EEEb(ptr noundef nonnull align 8 dereferenceable(1320) %i.wc, ptr noundef nonnull align 8 dereferenceable(24) %i.to, ptr noundef nonnull align 8 dereferenceable(24) %i.tq, ptr noundef nonnull align 8 dereferenceable(24) %i.wd, i1 noundef zeroext %i.wf)
  br label %bb.gh

bb.fy:                                            ; preds = %bb.fu
  %i.wg = load ptr, ptr %2, align 8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vr, i64 80
  call void @_ZN6Assimp12X3DGeoHelper13add_tex_coordER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector2tIfESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(1320) %i.wg, ptr noundef nonnull align 8 dereferenceable(24) %i.to, ptr noundef nonnull align 8 dereferenceable(24) %i.tp, ptr noundef nonnull align 8 dereferenceable(24) %i.wh)
  br label %bb.gh

bb.fz:                                            ; preds = %bb.fu
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.0534.0924, i64 16
  %i.wj = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  %i.wk = load ptr, ptr %i.wi, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 72
  %i.wm = load i32, ptr %i.wl, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, i32 noundef %i.wm)
          to label %bb.ga unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497.thread

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull @.str.25, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.gb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494.thread

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.1)
          to label %bb.gc unwind label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.wj, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.gd unwind label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  invoke void @__cxa_throw(ptr nonnull %i.wj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.hj unwind label %bb.gf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497.thread: ; preds = %bb.fz
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1219

bb.ge:                                            ; preds = %bb.gb
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

bb.gf:                                            ; preds = %bb.gd, %bb.gc
  %.0205 = phi i1 [ false, %bb.gd ], [ true, %bb.gc ] ; 2 uses
  %i.wp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wq = load ptr, ptr %28, align 8              ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489: ; preds = %bb.gf
  %i.wt = load i64, ptr %i.wr, align 8
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489, %bb.ge
  %.pn283 = phi { ptr, i32 } [ %i.wo, %bb.ge ], [ %i.wp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489 ], [ %i.wp, %bb.gf ] ; 4 uses
  %.1206 = phi i1 [ true, %bb.ge ], [ %.0205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489 ], [ %.0205, %bb.gf ] ; 2 uses
  %i.wv = load ptr, ptr %29, align 8              ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.wx = icmp eq ptr %i.wv, %i.ww
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491
  %i.wy = load i64, ptr %i.ww, align 8
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492
  %i.xa = load ptr, ptr %30, align 8              ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494.thread: ; preds = %bb.ga
  %i.xd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xe = load ptr, ptr %30, align 8              ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.xg = icmp eq ptr %i.xe, %i.xf
  br i1 %i.xg, label %.sink.split1219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494.thread
  %i.xh = load i64, ptr %i.xf, align 8
  %i.xi = add i64 %i.xh, 1
  call void @_ZdlPvm(ptr noundef %i.xe, i64 noundef %i.xi) #20
  br label %.sink.split1219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494
  %i.xj = load i64, ptr %i.xb, align 8
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
end_hunk_2
