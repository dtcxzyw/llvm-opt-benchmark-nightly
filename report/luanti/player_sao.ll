inline.NumInlined: 1609
inline.NumDeleted: 821
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK9PlayerSAO36generateUpdatePhysicsOverrideCommandB5cxx11Ev:bb.a
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #33
  br label %.body

bb.v:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.u

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.v, %bb.t
  %i.co = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !9
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.cr
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ct, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !102 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !105
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ct, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.da) #31
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.db) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.x

bb.w:                                             ; preds = %.noexc63, %bb.r, %.noexc60, %bb.q, %.noexc57, %bb.p, %.noexc54, %bb.o, %.noexc51, %bb.n, %.noexc48, %bb.m, %.noexc45, %bb.l, %.noexc42, %bb.k, %.noexc39, %bb.j, %.noexc36, %bb.i, %bb.h, %bb.g, %bb.f, %.noexc27, %bb.e, %.noexc24, %bb.d, %.noexc22, %bb.c, %bb.b
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.dc, %bb.w ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ci, %bb.u ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %eh.lpad-body

bb.x:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %._crit_edge.i.i
  ret void
}

declare void @_ZN18ServerActiveObject27generateUpdateInfantCommandB5cxx11Ett(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(324), i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZNK9PlayerSAO13getStaticDataEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9PlayerSAO13getStaticDataEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE) #32
  unreachable
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN9PlayerSAO4stepEfb(ptr noundef nonnull align 8 dereferenceable(1226) %0, float noundef %1, i1 noundef zeroext %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %struct.PlayerHPChangeReason, align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %struct.PlayerHPChangeReason, align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.core::vector3d.37", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.core::vector3d.37", align 8 ; 5 uses
  %15 = alloca %"class.core::vector3d.37", align 8 ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(56) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(954) %0), !inline_history !254
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !101
  store i64 7809651263681686889, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.o, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.p, align 8, !tbaa !105
  %i.q = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc4.i unwind label %bb.c  ; 2 uses

.noexc4.i:                                        ; preds = %bb.a
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc4.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !255
  %i.u = icmp ne i32 %i.t, 0
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i: ; preds = %bb.b, %.noexc4.i
  %.0.i.i = phi i1 [ %i.u, %bb.b ], [ false, %.noexc4.i ]
  %i.v = load ptr, ptr %3, align 8, !tbaa !102    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %_ZNK7UnitSAO10isImmortalEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !105
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #33
  br label %_ZNK7UnitSAO10isImmortalEv.exit

bb.c:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %3, align 8, !tbaa !102   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !105
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %.pn160.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %.pn151.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.ut, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %i.ub, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

_ZNK7UnitSAO10isImmortalEv.exit:                  ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0.i.i, label %.critedge167, label %bb.d

bb.d:                                             ; preds = %_ZNK7UnitSAO10isImmortalEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = and i8 %i.af, 2
  %.not = icmp eq i8 %i.ag, 0
  br i1 %.not, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !257
  %i.aj = fadd nsz float %1, %i.ai                ; 3 uses
  %i.ak = fcmp nsz uge float %i.aj, 2.000000e+00  ; 2 uses
  %i.al = fadd nsz float %i.aj, -2.000000e+00
  %storemerge.i = select i1 %i.ak, float %i.al, float %i.aj
  store float %storemerge.i, ptr %i.ah, align 8, !tbaa !257
  br i1 %i.ak, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.am, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ao = load float, ptr %i.an, align 8, !tbaa !136
  %i.ap = fmul nsz float %i.ao, 1.000000e+01
  %.sroa.018.4.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i.i, i64 1
  %i.aq = fadd nsz float %.sroa.018.4.vec.extract.i, %i.ap
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.01.0.copyload.i.i, i64 0 ; 2 uses
  %i.ar = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.as = select nsz i1 %i.ar, float 5.000000e+00, float -5.000000e+00
  %i.at = fadd nsz float %.sroa.09.0.vec.extract.i, %i.as
  %i.au = fdiv nsz float %i.at, 1.000000e+01
  %i.av = fptosi float %i.au to i16
  %i.aw = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %.sroa.22.0.copyload.i.i, i64 1 ; 2 uses
  %i.ay = fcmp nsz ogt <2 x float> %i.ax, zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ba = fadd nsz <2 x float> %i.ax, %i.az
  %i.bb = fdiv nsz <2 x float> %i.ba, splat (float 1.000000e+01)
  %i.bc = fptosi <2 x float> %i.bb to <2 x i16>
  %i.bd = zext <2 x i16> %i.bc to <2 x i48>
  %i.be = shl nuw <2 x i48> %i.bd, <i48 16, i48 32> ; 2 uses
  %shift = shufflevector <2 x i48> %i.be, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i48> %i.be, %shift
  %.sroa.2.0.insert.insert.i = extractelement <2 x i48> %foldExtExtBinop, i64 0
  %.sroa.0.0.insert.ext.i = zext i16 %i.av to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !192
  %i.bh = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.bg)
  %i.bi = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.bh, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !192
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !258
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm), !inline_history !332 ; 2 uses
  %i.br = and i32 %i.bi, 65535
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !333
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !336 ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 2072
  %i.ca = icmp ugt i64 %i.bz, %i.bs
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw [2072 x i8], ptr %i.bv, i64 %i.bs ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !103
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.g, %bb.h
  %i.cg = phi ptr [ %i.cf, %bb.h ], [ %i.cb, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1533 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !337
  %.not137 = icmp eq i8 %i.ci, 0
  br i1 %.not137, label %bb.t, label %bb.i

bb.i:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !142
  %.not138 = icmp eq i16 %i.ck, 0
  br i1 %.not138, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1138 ; 3 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !118 ; 2 uses
  %.not139 = icmp eq i16 %i.cm, 0
  br i1 %.not139, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = add i16 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 432
  store i8 1, ptr %i.cq, align 8, !tbaa !360
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 742
  %i.cs = load i16, ptr %i.cr, align 2
  %..i.i = call i16 @llvm.umin.i16(i16 %i.cn, i16 %i.cs)
  store i16 %..i.i, ptr %i.cl, align 2, !tbaa !118
  %i.ct = load ptr, ptr %i.bf, align 8, !tbaa !192
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !258
  call void @_ZN6Server16SendPlayerBreathEP9PlayerSAO(ptr noundef nonnull align 8 dereferenceable(1880) %i.cv, ptr noundef nonnull align 8 dereferenceable(1226) %0)
  %.pr = load i16, ptr %i.cl, align 2, !tbaa !118
  %i.cw = icmp eq i16 %.pr, 0
  br i1 %i.cw, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.j, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %.thread
  invoke void @_ZN20PlayerHPChangeReasonC2ENS_4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(54) %5, i8 noundef zeroext 5, ptr noundef nonnull align 8 %6, i48 %.sroa.0.0.insert.insert.i)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cy = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !105
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dd = load i16, ptr %i.cj, align 4, !tbaa !142
  %i.de = zext i16 %i.dd to i32
  %i.df = load i8, ptr %i.ch, align 1, !tbaa !337
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 %i.de, %i.dg
  %i.di = load ptr, ptr %0, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 216
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(1226) %0, i32 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(54) %5)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !102 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN20PlayerHPChangeReasonD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168: ; preds = %bb.p
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !105
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #33
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit

_ZN20PlayerHPChangeReasonD2Ev.exit:               ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.dr = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZN20PlayerHPChangeReasonD2Ev.exit
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !105
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZN20PlayerHPChangeReasonD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.t

bb.q:                                             ; preds = %.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.r:                                             ; preds = %bb.n
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.r
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !105
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !102 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176: ; preds = %bb.s
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !105
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.s, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.q
  %.pn = phi { ptr, i32 } [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %i.dw, %bb.q ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176 ], [ %i.dx, %bb.r ], [ %i.ed, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ek = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.en = load i64, ptr %i.el, align 8, !tbaa !105
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

bb.t:                                             ; preds = %bb.d, %bb.e, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.i, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ep = load i8, ptr %i.ae, align 8
  %i.eq = trunc i8 %i.ep to i1
  br i1 %i.eq, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !257
  %i.et = fadd nsz float %1, %i.es                ; 3 uses
  %i.eu = fcmp nsz uge float %i.et, 5.000000e-01  ; 2 uses
  %i.ev = fadd nsz float %i.et, -5.000000e-01
  %storemerge.i182 = select i1 %i.eu, float %i.ev, float %i.et
  store float %storemerge.i182, ptr %i.er, align 4, !tbaa !257
  br i1 %i.eu, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i.i183 = load <2 x float>, ptr %i.ew, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i184 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i.i185 = load float, ptr %.sroa.22.0..sroa_idx.i.i184, align 8, !tbaa !107
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !136
  %i.ez = fmul nsz float %i.ey, 1.000000e+01
  %.sroa.018.4.vec.extract.i186 = extractelement <2 x float> %.sroa.01.0.copyload.i.i183, i64 1
  %i.fa = fadd nsz float %.sroa.018.4.vec.extract.i186, %i.ez
  %.sroa.09.0.vec.extract.i190 = extractelement <2 x float> %.sroa.01.0.copyload.i.i183, i64 0 ; 2 uses
  %i.fb = fcmp nsz ogt float %.sroa.09.0.vec.extract.i190, 0.000000e+00
  %i.fc = select nsz i1 %i.fb, float 5.000000e+00, float -5.000000e+00
  %i.fd = fadd nsz float %.sroa.09.0.vec.extract.i190, %i.fc
  %i.fe = fdiv nsz float %i.fd, 1.000000e+01
  %i.ff = fptosi float %i.fe to i16
  %i.fg = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %.sroa.22.0.copyload.i.i185, i64 1 ; 2 uses
  %i.fi = fcmp nsz ogt <2 x float> %i.fh, zeroinitializer
  %i.fj = select <2 x i1> %i.fi, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fk = fadd nsz <2 x float> %i.fh, %i.fj
  %i.fl = fdiv nsz <2 x float> %i.fk, splat (float 1.000000e+01)
  %i.fm = fptosi <2 x float> %i.fl to <2 x i16>
  %i.fn = zext <2 x i16> %i.fm to <2 x i48>
  %i.fo = shl nuw <2 x i48> %i.fn, <i48 16, i48 32> ; 2 uses
  %shift421 = shufflevector <2 x i48> %i.fo, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop422 = or disjoint <2 x i48> %i.fo, %shift421
  %.sroa.2.0.insert.insert.i196 = extractelement <2 x i48> %foldExtExtBinop422, i64 0
  %.sroa.0.0.insert.ext.i197 = zext i16 %i.ff to i48
  %.sroa.0.0.insert.insert.i198 = or disjoint i48 %.sroa.2.0.insert.insert.i196, %.sroa.0.0.insert.ext.i197
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !192
  %i.fr = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.fq)
  %i.fs = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.fr, i48 %.sroa.0.0.insert.insert.i198, ptr noundef null)
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !192
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 104
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !258
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw), !inline_history !332 ; 2 uses
  %.sroa.0320.0.extract.trunc.mask = and i32 %i.fs, 65535 ; 2 uses
  %i.gb = zext nneg i32 %.sroa.0320.0.extract.trunc.mask to i64 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !333
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !336 ; 3 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 2072
  %i.gj = icmp ugt i64 %i.gi, %i.gb
  br i1 %i.gj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gk = getelementptr inbounds nuw [2072 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !103
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %bb.x, label %_ZNK14NodeDefManager3getERK7MapNode.exit199

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit199

_ZNK14NodeDefManager3getERK7MapNode.exit199:      ; preds = %bb.w, %bb.x
  %i.gp = phi ptr [ %i.go, %bb.x ], [ %i.gk, %bb.w ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1138
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !118 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 742
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !125
  %i.gu = icmp uge i16 %i.gr, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 1533
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = icmp ne i8 %i.gw, 0
  %or.cond.not338 = select i1 %i.gu, i1 true, i1 %i.gx
  %.not141 = icmp eq i32 %.sroa.0320.0.extract.trunc.mask, 127
  %or.cond335 = or i1 %or.cond.not338, %.not141
  br i1 %or.cond335, label %.critedge, label %bb.y

bb.y:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit199
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.gz = load i16, ptr %i.gy, align 4, !tbaa !142
  %.not142 = icmp eq i16 %i.gz, 0
  br i1 %.not142, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ha = add nuw i16 %i.gr, 1
  call void @_ZN9PlayerSAO9setBreathEtb(ptr noundef nonnull align 8 dereferenceable(1226) %0, i16 noundef zeroext %i.ha, i1 noundef zeroext true)
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.u, %bb.z, %bb.y, %_ZNK14NodeDefManager3getERK7MapNode.exit199
  %i.hb = load i8, ptr %i.ae, align 8
  %i.hc = and i8 %i.hb, 4
  %.not143 = icmp eq i8 %i.hc, 0
  br i1 %.not143, label %.critedge167, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !257
  %i.hf = fadd nsz float %1, %i.he                ; 3 uses
  %i.hg = fcmp nsz uge float %i.hf, 1.000000e+00  ; 2 uses
  %i.hh = fadd nsz float %i.hf, -1.000000e+00
  %storemerge.i200 = select i1 %i.hg, float %i.hh, float %i.hf
  store float %storemerge.i200, ptr %i.hd, align 4, !tbaa !257
  br i1 %i.hg, label %bb.ab, label %.critedge167

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.hi, ptr %7, align 8, !tbaa !101
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hj, align 8, !tbaa !103
  store i8 0, ptr %i.hi, align 8, !tbaa !105
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.hl = load float, ptr %i.hk, align 8, !tbaa !361
  %i.hm = fadd nsz float %i.hl, -1.000000e-01     ; 3 uses
  %i.hn = fcmp nsz ogt float %i.hm, 1.000000e-01
  br i1 %i.hn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.22.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0123352 = phi i32 [ 0, %.lr.ph ], [ %.1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %.0126351 = phi float [ 1.000000e-01, %.lr.ph ], [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %.sroa.0313.0348 = phi i16 [ 0, %.lr.ph ], [ %.sroa.0313.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.hq = phi <2 x i16> [ zeroinitializer, %.lr.ph ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.sroa.01.0.copyload.i203 = load <2 x float>, ptr %i.ho, align 8 ; 2 uses
  %.sroa.22.0.copyload.i205 = load float, ptr %.sroa.22.0..sroa_idx.i204, align 8, !tbaa !107
  %i.hr = fmul nsz float %.0126351, 1.000000e+01
  %.sroa.0311.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i203, i64 0
  %i.hs = fcmp nsz ogt float %.sroa.0311.0.vec.extract, 0.000000e+00
  %i.ht = select nsz i1 %i.hs, float 5.000000e+00, float -5.000000e+00
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.hr, i64 1
  %i.hw = fadd nsz <2 x float> %i.hv, %.sroa.01.0.copyload.i203 ; 2 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0
  %i.hy = fdiv nsz float %i.hx, 1.000000e+01
  %i.hz = fptosi float %i.hy to i16               ; 2 uses
  %i.ia = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ib = insertelement <2 x float> %i.ia, float %.sroa.22.0.copyload.i205, i64 1 ; 2 uses
  %i.ic = fcmp nsz ogt <2 x float> %i.ib, zeroinitializer
  %i.id = select <2 x i1> %i.ic, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ie = fadd nsz <2 x float> %i.ib, %i.id
  %i.if = fdiv nsz <2 x float> %i.ie, splat (float 1.000000e+01)
  %i.ig = fptosi <2 x float> %i.if to <2 x i16>   ; 3 uses
  %i.ih = load ptr, ptr %i.hp, align 8, !tbaa !192
  %i.ii = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.ih)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ij = extractelement <2 x i16> %i.ig, i64 1
  %.sroa.3.0.insert.ext.i214 = zext i16 %i.ij to i48
  %.sroa.3.0.insert.shift.i215 = shl nuw i48 %.sroa.3.0.insert.ext.i214, 32
  %.sroa.0.0.insert.ext.i219 = zext i16 %i.hz to i48
  %i.ik = or disjoint i48 %.sroa.3.0.insert.shift.i215, %.sroa.0.0.insert.ext.i219
  %i.il = extractelement <2 x i16> %i.ig, i64 0
  %.sroa.2.0.insert.ext.i216 = zext i16 %i.il to i48
  %.sroa.2.0.insert.shift.i217 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i216, 16
  %.sroa.0.0.insert.insert.i220 = or disjoint i48 %i.ik, %.sroa.2.0.insert.shift.i217
  %i.im = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.ii, i48 %.sroa.0.0.insert.insert.i220, ptr noundef null)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.in = load ptr, ptr %i.hp, align 8, !tbaa !192
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 104
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !258
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = invoke noundef ptr %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.aj, !inline_history !332 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.ae
  %i.iv = and i32 %i.im, 65535
  %i.iw = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !333
  %i.iz = load ptr, ptr %i.iu, align 8, !tbaa !336 ; 3 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = sdiv exact i64 %i.jc, 2072
  %i.je = icmp ugt i64 %i.jd, %i.iw
  br i1 %i.je, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.jf = getelementptr inbounds nuw [2072 x i8], ptr %i.iz, i64 %i.iw ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !103
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ag, label %_ZNK14NodeDefManager3getERK7MapNode.exit221

bb.ag:                                            ; preds = %bb.af, %_ZN8IGameDef4ndefEv.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit221

_ZNK14NodeDefManager3getERK7MapNode.exit221:      ; preds = %bb.ag, %bb.af
  %i.jk = phi ptr [ %i.jj, %bb.ag ], [ %i.jf, %bb.af ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1412
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !362 ; 2 uses
  %i.jn = icmp ugt i32 %i.jm, %.0123352
  br i1 %i.jn, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ah:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit221
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.jo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ah, %bb.ae
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ah, %_ZNK14NodeDefManager3getERK7MapNode.exit221
  %.sroa.0313.1 = phi i16 [ %.sroa.0313.0348, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.hz, %bb.ah ] ; 2 uses
  %.1124 = phi i32 [ %.0123352, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.jm, %bb.ah ] ; 2 uses
  %i.jr = phi <2 x i16> [ %i.hq, %_ZNK14NodeDefManager3getERK7MapNode.exit221 ], [ %i.ig, %bb.ah ] ; 2 uses
  %i.js = fadd nsz float %.0126351, 1.000000e+00  ; 2 uses
  %i.jt = fcmp nsz olt float %i.js, %i.hm
  br i1 %i.jt, label %bb.ac, label %._crit_edge, !llvm.loop !363

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ab
  %.sroa.0313.0.lcssa = phi i16 [ 0, %bb.ab ], [ %.sroa.0313.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.0123.lcssa = phi i32 [ 0, %bb.ab ], [ %.1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 3 uses
  %i.ju = phi <2 x i16> [ zeroinitializer, %bb.ab ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.jv, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !107
  %i.jw = fmul nsz float %i.hm, 1.000000e+01
  %.sroa.0305.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %.sroa.0305.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.jx = fadd nsz float %i.jw, %.sroa.0305.4.vec.extract
  %i.jy = fcmp nsz ogt float %.sroa.0305.0.vec.extract, 0.000000e+00
  %i.jz = select nsz i1 %i.jy, float 5.000000e+00, float -5.000000e+00
  %i.ka = fadd nsz float %.sroa.0305.0.vec.extract, %i.jz
  %i.kb = fdiv nsz float %i.ka, 1.000000e+01
  %i.kc = fptosi float %i.kb to i16               ; 2 uses
  %i.kd = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %.sroa.22.0.copyload.i, i64 1 ; 2 uses
  %i.kf = fcmp nsz ogt <2 x float> %i.ke, zeroinitializer
  %i.kg = select <2 x i1> %i.kf, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.kh = fadd nsz <2 x float> %i.ke, %i.kg
  %i.ki = fdiv nsz <2 x float> %i.kh, splat (float 1.000000e+01)
  %i.kj = fptosi <2 x float> %i.ki to <2 x i16>   ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !192
  %i.km = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN17ServerEnvironment6getMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.kl)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %._crit_edge
  %i.kn = extractelement <2 x i16> %i.kj, i64 1
  %.sroa.3.0.insert.ext.i224 = zext i16 %i.kn to i48
  %.sroa.3.0.insert.shift.i225 = shl nuw i48 %.sroa.3.0.insert.ext.i224, 32
  %.sroa.0.0.insert.ext.i229 = zext i16 %i.kc to i48
  %i.ko = or disjoint i48 %.sroa.3.0.insert.shift.i225, %.sroa.0.0.insert.ext.i229
  %i.kp = extractelement <2 x i16> %i.kj, i64 0
  %.sroa.2.0.insert.ext.i226 = zext i16 %i.kp to i48
  %.sroa.2.0.insert.shift.i227 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i226, 16
  %.sroa.0.0.insert.insert.i230 = or disjoint i48 %i.ko, %.sroa.2.0.insert.shift.i227
  %i.kq = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.km, i48 %.sroa.0.0.insert.insert.i230, ptr noundef null)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.kr = load ptr, ptr %i.kk, align 8, !tbaa !192
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 104
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !258
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !9
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = invoke noundef ptr %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.ku)
          to label %_ZN8IGameDef4ndefEv.exit231 unwind label %bb.aq, !inline_history !332 ; 2 uses

_ZN8IGameDef4ndefEv.exit231:                      ; preds = %bb.al
  %i.kz = and i32 %i.kq, 65535
  %i.la = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !333
  %i.ld = load ptr, ptr %i.ky, align 8, !tbaa !336 ; 3 uses
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = sdiv exact i64 %i.lg, 2072
  %i.li = icmp ugt i64 %i.lh, %i.la
  br i1 %i.li, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN8IGameDef4ndefEv.exit231
  %i.lj = getelementptr inbounds nuw [2072 x i8], ptr %i.ld, i64 %i.la ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !103
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %bb.an, label %_ZNK14NodeDefManager3getERK7MapNode.exit232

bb.an:                                            ; preds = %bb.am, %_ZN8IGameDef4ndefEv.exit231
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit232

_ZNK14NodeDefManager3getERK7MapNode.exit232:      ; preds = %bb.an, %bb.am
  %i.lo = phi ptr [ %i.ln, %bb.an ], [ %i.lj, %bb.am ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1412
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !362 ; 2 uses
  %i.lr = icmp ugt i32 %i.lq, %.0123.lcssa
  br i1 %i.lr, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit232
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
          to label %.thread325 unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %._crit_edge
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aq:                                            ; preds = %bb.ao, %bb.al
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ar:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit232
  %.not144 = icmp eq i32 %.0123.lcssa, 0
  br i1 %.not144, label %bb.az, label %.thread325

.thread325:                                       ; preds = %bb.ao, %bb.ar
  %.2125334 = phi i32 [ %.0123.lcssa, %bb.ar ], [ %i.lq, %bb.ao ]
  %.sroa.0313.2331 = phi i16 [ %.sroa.0313.0.lcssa, %bb.ar ], [ %i.kc, %bb.ao ]
  %i.lv = phi <2 x i16> [ %i.ju, %bb.ar ], [ %i.kj, %bb.ao ]
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.lx = load i16, ptr %i.lw, align 4, !tbaa !142 ; 2 uses
  %.not145 = icmp eq i16 %i.lx, 0
  br i1 %.not145, label %bb.az, label %bb.as

bb.as:                                            ; preds = %.thread325
  %i.ly = zext i16 %i.lx to i32
  %i.lz = sub nsw i32 %i.ly, %.2125334
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ma = zext <2 x i16> %i.lv to <2 x i48>
  %i.mb = shl nuw <2 x i48> %i.ma, <i48 16, i48 32> ; 2 uses
  %shift424 = shufflevector <2 x i48> %i.mb, <2 x i48> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop425 = or disjoint <2 x i48> %i.mb, %shift424
  %.sroa.7315.0.insert.insert = extractelement <2 x i48> %foldExtExtBinop425, i64 0
  %.sroa.0313.0.insert.ext = zext i16 %.sroa.0313.2331 to i48
  %.sroa.0313.0.insert.insert = or disjoint i48 %.sroa.7315.0.insert.insert, %.sroa.0313.0.insert.ext
  invoke void @_ZN20PlayerHPChangeReasonC2ENS_4TypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(54) %8, i8 noundef zeroext 4, ptr noundef nonnull align 8 %9, i48 %.sroa.0313.0.insert.insert)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.mc = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.au
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !105
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %i.mh = load ptr, ptr %0, align 8, !tbaa !9
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 216
  %i.mj = load ptr, ptr %i.mi, align 8
  invoke void %i.mj(ptr noundef nonnull align 8 dereferenceable(1226) %0, i32 noundef %i.lz, ptr noundef nonnull align 8 dereferenceable(54) %8)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.mk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !102 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZN20PlayerHPChangeReasonD2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %bb.av
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !105
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #33
  br label %_ZN20PlayerHPChangeReasonD2Ev.exit239

_ZN20PlayerHPChangeReasonD2Ev.exit239:            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.az

bb.aw:                                            ; preds = %bb.as
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.ax:                                            ; preds = %bb.at
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ms = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.ax
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !105
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !102 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243: ; preds = %bb.ay
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !105
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.ay, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.aw
  %.pn146 = phi { ptr, i32 } [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.mq, %bb.aw ], [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243 ], [ %i.mr, %bb.ax ], [ %i.mx, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ba

bb.az:                                            ; preds = %_ZN20PlayerHPChangeReasonD2Ev.exit239, %.thread325, %bb.ar
  %i.ne = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.hi
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.az
  %i.ng = load i64, ptr %i.hi, align 8, !tbaa !105
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge167

bb.ba:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %bb.aq, %bb.ai, %bb.aj
  %.pn160.pn.pn = phi { ptr, i32 } [ %i.lu, %bb.aq ], [ %.pn146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %i.jp, %bb.ai ], [ %i.jq, %bb.aj ], [ %i.lt, %bb.ap ]
  %i.ni = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.hi
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.ba
  %i.nk = load i64, ptr %i.hi, align 8, !tbaa !105
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume

.critedge167:                                     ; preds = %_ZNK7UnitSAO10isImmortalEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %bb.aa, %.critedge
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 8, !tbaa !364, !range !233, !noundef !234
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %.critedge167
  store i8 1, ptr %i.nm, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 749
  store i8 1, ptr %i.nq, align 1, !tbaa !137, !noalias !365
  call void @_ZNK7UnitSAO28generateSetPropertiesCommandB5cxx11ERK16ObjectProperties(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1226) %0, ptr noundef nonnull align 8 dereferenceable(351) %i.np)
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nt = load i16, ptr %i.ns, align 8, !tbaa !193
  store i16 %i.nt, ptr %i.d, align 2, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i8 1, ptr %i.e, align 1, !tbaa !368
  %i.nu = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE12emplace_backIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.nr, ptr noundef nonnull align 2 dereferenceable(2) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit unwind label %bb.bd ; 0 uses

_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !192
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 96
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.nz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.nz, ptr %11, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i64 18, ptr %i.c, align 8, !tbaa !104
  %i.oa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.be    ; 2 uses

.noexc:                                           ; preds = %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit
  store ptr %i.oa, ptr %11, align 8, !tbaa !102
  %i.ob = load i64, ptr %i.c, align 8, !tbaa !104 ; 3 uses
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.oa, ptr noundef nonnull align 1 dereferenceable(18) @.str.10, i64 18, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !103
  %i.od = load ptr, ptr %11, align 8, !tbaa !102
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.ob
  store i8 0, ptr %i.oe, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  %i.of = getelementptr inbounds nuw i8, ptr %i.ny, i64 552
  invoke void @_ZN12ScriptApiEnv12player_eventEP18ServerActiveObjectRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %.noexc
  %i.og = load ptr, ptr %11, align 8, !tbaa !102  ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.nz
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.bc
  %i.oi = load i64, ptr %i.nz, align 8, !tbaa !105
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.ok = load ptr, ptr %10, align 8, !tbaa !102  ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !105
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  %i.op = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bg

bb.be:                                            ; preds = %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm:bb.a
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !503
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !503
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !501
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !501
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !105
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE18_M_deallocate_nodeEPSB_.exit, %bb.a
  ret void
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !516

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !595
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !516

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !156
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !148 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !504
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !503  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !156
  store ptr %i.o, ptr %.031, align 8, !tbaa !148
  store ptr %.031, ptr %i.g, align 8, !tbaa !156
  store ptr %i.g, ptr %i.m, align 8, !tbaa !503
  %i.p = load ptr, ptr %.031, align 8, !tbaa !148
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !503
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !148
  store ptr %i.r, ptr %.031, align 8, !tbaa !148
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !503
  store ptr %.031, ptr %i.s, align 8, !tbaa !148
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !596

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !158    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !159
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !159
  store ptr %.0.i, ptr %0, align 8, !tbaa !158
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare extern_weak void @_ZTH13warningstream() #1

declare extern_weak void @_ZTH12actionstream() #1

declare extern_weak void @_ZTH10infostream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !85, i64 960}
!12 = !{!"_ZTS9PlayerSAO", !13, i64 0, !85, i64 960, !64, i64 968, !16, i64 1000, !86, i64 1004, !86, i64 1012, !48, i64 1020, !39, i64 1032, !39, i64 1036, !18, i64 1040, !39, i64 1048, !39, i64 1052, !48, i64 1056, !87, i64 1068, !87, i64 1072, !87, i64 1076, !17, i64 1080, !88, i64 1088, !17, i64 1136, !17, i64 1137, !16, i64 1138, !39, i64 1140, !39, i64 1144, !16, i64 1148, !17, i64 1150, !97, i64 1152, !100, i64 1224, !17, i64 1225}
!13 = !{!"_ZTS7UnitSAO", !14, i64 0, !16, i64 324, !48, i64 328, !39, i64 340, !49, i64 344, !17, i64 400, !51, i64 408, !80, i64 760, !16, i64 816, !7, i64 818, !17, i64 819, !82, i64 820, !39, i64 828, !39, i64 832, !17, i64 836, !17, i64 837, !17, i64 838, !17, i64 839, !83, i64 840, !64, i64 896, !48, i64 928, !48, i64 940, !17, i64 952, !17, i64 953}
!14 = !{!"_ZTS18ServerActiveObject", !15, i64 0, !16, i64 10, !17, i64 12, !18, i64 14, !19, i64 24, !24, i64 88, !29, i64 160, !31, i64 168, !17, i64 224, !17, i64 225, !40, i64 232, !48, i64 312}
!15 = !{!"_ZTS12ActiveObject", !16, i64 8}
!16 = !{!"short", !7, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"_ZTSN4core8vector3dIsEE", !16, i64 0, !16, i64 2, !16, i64 4}
!19 = !{!"_ZTSSt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !20, i64 0}
!20 = !{!"_ZTSSt14_Optional_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0EE", !21, i64 0}
!21 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb0ELb0ELb0EE", !22, i64 0}
!22 = !{!"_ZTSSt17_Optional_payloadISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EELb1ELb0ELb0EE", !23, i64 0}
!23 = !{!"_ZTSSt22_Optional_payload_baseISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE", !7, i64 0, !17, i64 56}
!24 = !{!"_ZTSSt8optionalIS_ISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEE", !25, i64 0}
!25 = !{!"_ZTSSt14_Optional_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0EE", !26, i64 0}
!26 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb0ELb0ELb0EE", !27, i64 0}
!27 = !{!"_ZTSSt17_Optional_payloadISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEELb1ELb0ELb0EE", !28, i64 0}
!28 = !{!"_ZTSSt22_Optional_payload_baseISt8optionalISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS7_ESt8equal_toIS7_ESaIS7_EEEE", !7, i64 0, !17, i64 64}
!29 = !{!"p1 _ZTS17ServerEnvironment", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"_ZTSSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE", !32, i64 0}
!32 = !{!"_ZTSSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!33 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!34 = !{!"any p2 pointer", !30, i64 0}
!35 = !{!"long", !7, i64 0}
!36 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!37 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!38 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !35, i64 8}
!39 = !{!"float", !7, i64 0}
!40 = !{!"_ZTSSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE", !41, i64 0}
!41 = !{!"_ZTSSt5dequeI19ActiveObjectMessageSaIS0_EE", !42, i64 0}
!42 = !{!"_ZTSSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE", !43, i64 0}
!43 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE11_Deque_implE", !44, i64 0}
!44 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE16_Deque_impl_dataE", !45, i64 0, !35, i64 8, !46, i64 16, !46, i64 48}
!45 = !{!"p2 _ZTS19ActiveObjectMessage", !34, i64 0}
!46 = !{!"_ZTSSt15_Deque_iteratorI19ActiveObjectMessageRS0_PS0_E", !47, i64 0, !47, i64 8, !47, i64 16, !45, i64 24}
!47 = !{!"p1 _ZTS19ActiveObjectMessage", !30, i64 0}
!48 = !{!"_ZTSN4core8vector3dIfEE", !39, i64 0, !39, i64 4, !39, i64 8}
!49 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !50, i64 0}
!50 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!51 = !{!"_ZTS16ObjectProperties", !52, i64 0, !57, i64 24, !62, i64 48, !62, i64 72, !63, i64 96, !64, i64 104, !64, i64 136, !64, i64 168, !64, i64 200, !64, i64 232, !48, i64 264, !67, i64 276, !68, i64 280, !72, i64 288, !72, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !73, i64 320, !77, i64 328, !16, i64 332, !16, i64 334, !7, i64 336, !78, i64 337, !17, i64 338, !17, i64 339, !17, i64 340, !17, i64 341, !17, i64 342, !17, i64 343, !17, i64 344, !17, i64 345, !17, i64 346, !17, i64 347, !17, i64 348, !17, i64 349, !79, i64 350}
!52 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!57 = !{!"_ZTSSt6vectorIN5video6SColorESaIS1_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN5video6SColorESaIS1_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN5video6SColorESaIS1_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN5video6SColorE", !30, i64 0}
!62 = !{!"_ZTSN4core8aabbox3dIfEE", !48, i64 0, !48, i64 12}
!63 = !{!"_ZTS12ObjectVisual", !7, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !65, i64 0, !35, i64 8, !7, i64 16}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!66 = !{!"p1 omnipotent char", !30, i64 0}
!67 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!68 = !{!"_ZTSSt8optionalIN5video6SColorEE", !69, i64 0}
!69 = !{!"_ZTSSt14_Optional_baseIN5video6SColorELb1ELb1EE", !70, i64 0}
!70 = !{!"_ZTSSt17_Optional_payloadIN5video6SColorELb1ELb1ELb1EE", !71, i64 0}
!71 = !{!"_ZTSSt22_Optional_payload_baseIN5video6SColorEE", !7, i64 0, !17, i64 4}
!72 = !{!"_ZTSN4core8vector2dIsEE", !16, i64 0, !16, i64 2}
!73 = !{!"_ZTSSt8optionalIjE", !74, i64 0}
!74 = !{!"_ZTSSt14_Optional_baseIjLb1ELb1EE", !75, i64 0}
!75 = !{!"_ZTSSt17_Optional_payloadIjLb1ELb1ELb1EE", !76, i64 0}
!76 = !{!"_ZTSSt22_Optional_payload_baseIjE", !7, i64 0, !17, i64 4}
!77 = !{!"_ZTS7MapNode", !16, i64 0, !7, i64 2, !7, i64 3}
!78 = !{!"_ZTS16PointabilityType", !7, i64 0}
!79 = !{!"_ZTS10StepUpMode", !7, i64 0}
!80 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE12BoneOverrideSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !81, i64 0}
!81 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12BoneOverrideESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!82 = !{!"_ZTSN4core8vector2dIfEE", !39, i64 0, !39, i64 4}
!83 = !{!"_ZTSSt13unordered_setItSt4hashItESt8equal_toItESaItEE", !84, i64 0}
!84 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!85 = !{!"p1 _ZTS12RemotePlayer", !30, i64 0}
!86 = !{!"_ZTS7LagPool", !39, i64 0, !39, i64 4}
!87 = !{!"_ZTS15IntervalLimiter", !39, i64 0}
!88 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !89, i64 0}
!89 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !90, i64 0}
!90 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !91, i64 0, !93, i64 8}
!91 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !92, i64 0}
!92 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!93 = !{!"_ZTSSt15_Rb_tree_header", !94, i64 0, !35, i64 32}
!94 = !{!"_ZTSSt18_Rb_tree_node_base", !95, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!95 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!96 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !30, i64 0}
!97 = !{!"_ZTS14SimpleMetadata", !17, i64 8, !98, i64 16}
!98 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !99, i64 0}
!99 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !33, i64 0, !35, i64 8, !36, i64 16, !35, i64 24, !38, i64 32, !37, i64 48}
!100 = !{!"_ZTSN9PlayerSAOUt_E", !17, i64 0, !17, i64 0, !17, i64 0}
!101 = !{!65, !66, i64 0}
!102 = !{!64, !66, i64 0}
!103 = !{!64, !35, i64 8}
!104 = !{!35, !35, i64 0}
!105 = !{!7, !7, i64 0}
!106 = !{!12, !16, i64 1000}
!107 = !{!39, !39, i64 0}
!108 = !{!18, !16, i64 0}
!109 = !{!18, !16, i64 2}
!110 = !{!18, !16, i64 4}
!111 = !{!93, !95, i64 0}
!112 = !{!93, !96, i64 8}
!113 = !{!93, !96, i64 16}
!114 = !{!93, !96, i64 24}
!115 = !{!93, !35, i64 32}
!116 = !{!12, !17, i64 1136}
!117 = !{!12, !17, i64 1137}
!118 = !{!12, !16, i64 1138}
!119 = !{!97, !17, i64 8}
!120 = !{!99, !33, i64 0}
!121 = !{!99, !35, i64 8}
!122 = !{!38, !39, i64 0}
!123 = !{!12, !17, i64 1225}
!124 = !{!13, !16, i64 740}
!125 = !{!13, !16, i64 742}
!126 = !{!13, !17, i64 746}
!127 = !{!13, !78, i64 745}
!128 = !{!13, !63, i64 504}
!129 = !{!55, !56, i64 0}
!130 = !{!55, !56, i64 8}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!55, !56, i64 16}
!134 = !{!60, !61, i64 0}
!135 = !{!60, !61, i64 8}
!136 = !{!13, !39, i64 720}
!137 = !{!13, !17, i64 749}
!138 = !{!13, !17, i64 752}
!139 = !{!13, !17, i64 750}
!140 = !{!13, !39, i64 704}
!141 = !{!13, !17, i64 756}
!142 = !{!13, !16, i64 324}
!143 = !{!144, !144, i64 0}
!144 = !{!"p1 _ZTS8Settings", !30, i64 0}
!145 = !{!13, !39, i64 724}
!146 = !{!6, !6, i64 0}
!147 = !{!84, !37, i64 16}
!148 = !{!36, !37, i64 0}
!149 = distinct !{!149, !132}
!150 = !{!84, !33, i64 0}
!151 = !{!84, !35, i64 8}
!152 = !{!81, !37, i64 16}
!153 = distinct !{!153, !132}
!154 = !{!81, !33, i64 0}
!155 = !{!81, !35, i64 8}
!156 = !{!50, !37, i64 16}
!157 = distinct !{!157, !132}
!158 = !{!50, !33, i64 0}
end_hunk_1
