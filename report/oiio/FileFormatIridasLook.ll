inline.NumInlined: 597
inline.NumDeleted: 231
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat13getFormatInfoERSt6vectorINS_10FormatInfoESaIS3_EE:bb.a
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #27
  br label %_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit

_ZN16OpenColorIO_v2_510FormatInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.OpenColorIO_v2_5::(anonymous namespace)::XMLParserHelper", align 8 ; 24 uses
  %15 = alloca %"class.std::vector.9", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.d = tail call ptr @XML_ParserCreate(ptr noundef null)
  store ptr %i.d, ptr %14, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 7 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !13
  %i.g = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 %i.i, ptr %i.c, align 8, !tbaa !34
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !29
  %i.l = load i64, ptr %i.c, align 8, !tbaa !34
  store i64 %i.l, ptr %i.f, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !19
  store i8 %i.n, ptr %i.m, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 60 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 4 uses
  store i64 0, ptr %i.w, align 8, !tbaa !16
  store i8 0, ptr %i.v, align 8, !tbaa !19
  %i.x = load ptr, ptr %14, align 8, !tbaa !30
  invoke void @XML_SetUserData(ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(96) %14)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.y = load ptr, ptr %14, align 8, !tbaa !30
  invoke void @XML_SetElementHandler(ptr noundef %i.y, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper19StartElementHandlerEPvPKcPS4_, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper17EndElementHandlerEPvPKc)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %14, align 8, !tbaa !30
  invoke void @XML_SetCharacterDataHandler(ptr noundef %i.z, ptr noundef nonnull @_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper20CharacterDataHandlerEPvPKci)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelperC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.v
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !19
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelperC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 8 uses
  store ptr %i.aj, ptr %13, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !16
  store i8 0, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i32 0, ptr %i.al, align 8, !tbaa !36
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i: ; preds = %.noexc10.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelperC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = load ptr, ptr %2, align 8, !tbaa !11
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !37
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !53
  %.not.i1.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
          to label %.noexc6.i unwind label %.loopexit.i

.noexc6.i:                                        ; preds = %bb.j
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.i, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc6.i, %bb.i
  %.0.i.i.i.i = phi i8 [ %i.ay, %bb.i ], [ %i.bc, %.noexc6.i ]
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext %.0.i.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %.loopexit.i ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !16 ; 4 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aj
  br i1 %i.bh, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

bb.k:                                             ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bi = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %16 = load i64, ptr %i.aj, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17, %bb.k
  %17 = phi i64 [ %16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17 ], [ 15, %bb.k ]
  %i.bj = icmp ugt i64 %i.bf, %17
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.be, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc9.i unwind label %.loopexit.i

.noexc9.i:                                        ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %13, align 8, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %.noexc9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.bk = phi ptr [ %.pre.i.i, %.noexc9.i ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be
  store i8 10, ptr %i.bl, align 1, !tbaa !19
  store i64 %i.bf, ptr %i.ak, align 8, !tbaa !16
  %i.bm = load ptr, ptr %13, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bf
  store i8 0, ptr %i.bn, align 1, !tbaa !19
  %i.bo = load i32, ptr %i.al, align 8, !tbaa !36
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.al, align 8, !tbaa !36
  %i.bq = load ptr, ptr %2, align 8, !tbaa !11
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !37
  %i.bw = icmp ne i32 %i.bv, 0
  %.val.i = load ptr, ptr %13, align 8, !tbaa !29
  %.val5.i = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.bx = zext i1 %i.bw to i32
  %i.by = load ptr, ptr %14, align 8, !tbaa !30
  %i.bz = trunc i64 %.val5.i to i32
  %i.ca = invoke i32 @XML_Parse(ptr noundef %i.by, ptr noundef %.val.i, i32 noundef %i.bz, i32 noundef %i.bx)
          to label %.noexc10.i unwind label %.loopexit.i

.noexc10.i:                                       ; preds = %bb.m
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit.i

bb.n:                                             ; preds = %.noexc10.i
  %i.cc = load ptr, ptr %14, align 8, !tbaa !30
  %i.cd = invoke i32 @XML_GetErrorCode(ptr noundef %i.cc)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i

.noexc11.i:                                       ; preds = %bb.n
  %i.ce = icmp eq i32 %i.cd, 7
  br i1 %i.ce, label %.noexc.i.i.i, label %.noexc.i18.i.i

.noexc.i.i.i:                                     ; preds = %.noexc11.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cf, ptr %11, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 43, ptr %i.b, align 8, !tbaa !34
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i19 unwind label %bb.o ; 3 uses

.noexc.i.i19:                                     ; preds = %.noexc.i.i.i
  store ptr %i.cg, ptr %11, align 8, !tbaa !29
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.cg, ptr noundef nonnull align 1 dereferenceable(43) @.str.37, i64 43, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  store i8 0, ptr %i.cj, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(96) %14, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %.unreachable2.i.i unwind label %bb.p

.unreachable2.i.i:                                ; preds = %.noexc.i.i19
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i

bb.p:                                             ; preds = %.noexc.i.i19
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cf
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i: ; preds = %bb.p
  %i.co = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i, %bb.o
  %.pn11.i.i = phi { ptr, i32 } [ %i.ck, %bb.o ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i ], [ %i.cl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body.i

.noexc.i18.i.i:                                   ; preds = %.noexc11.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.cq, ptr %12, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 19, ptr %i.a, align 8, !tbaa !34
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19.i.i unwind label %bb.t ; 2 uses

.noexc19.i.i:                                     ; preds = %.noexc.i18.i.i
  store ptr %i.cr, ptr %12, align 8, !tbaa !29
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cr, ptr noundef nonnull align 1 dereferenceable(19) @.str.38, i64 19, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !16
  %i.cu = load ptr, ptr %12, align 8, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cw = load ptr, ptr %14, align 8, !tbaa !30
  %i.cx = invoke i32 @XML_GetErrorCode(ptr noundef %i.cw)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %.noexc19.i.i
  %i.cy = invoke ptr @XML_ErrorString(i32 noundef %i.cx)
          to label %bb.r unwind label %bb.u       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cy) #25 ; 2 uses
  %i.da = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.db = sub i64 4611686018427387903, %i.da
  %i.dc = icmp ult i64 %i.db, %i.cz
  br i1 %i.dc, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc21.i.i unwind label %bb.u

.noexc21.i.i:                                     ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %bb.r
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %i.cy, i64 noundef %i.cz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  invoke fastcc void @_ZNK16OpenColorIO_v2_512_GLOBAL__N_115XMLParserHelper5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(96) %14, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.unreachable.i.i unwind label %bb.u

.unreachable.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i
  unreachable

bb.t:                                             ; preds = %.noexc.i18.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i, %bb.s, %bb.q, %.noexc19.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cq
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i.i: ; preds = %bb.u
  %i.di = load i64, ptr %i.cq, align 8, !tbaa !19
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i.i, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.de, %bb.t ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i.i ], [ %i.df, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body.i

.loopexit.i:                                      ; preds = %bb.m, %bb.l, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc6.i, %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.n, %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i.i ], [ %.pn11.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dk = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %.body.i
  %i.dm = load i64, ptr %i.aj, align 8, !tbaa !19
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

end_hunk_0
