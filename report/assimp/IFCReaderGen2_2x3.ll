inline.NumInlined: 1461
inline.NumDeleted: 397
begin_hunk_0_@_ZN6Assimp4STEP24InternGenericConvertListINS0_7EXPRESS8DataTypeELm1ELm5EEclERNS0_6ListOfIS3_Lm1ELm5EEERKSt10shared_ptrIKS3_ERKNS0_2DBE:bb.a
  store i32 %i.ci, ptr %i.cf, align 4, !noalias !232
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.x:                                             ; preds = %bb.v
  %i.cj = atomicrmw volatile add ptr %i.cf, i32 1 acq_rel, align 4, !noalias !232 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %bb.w, %bb.x
  store ptr %i.cc, ptr %i.bz, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not.i.i.i.i.i43 = icmp eq ptr %i.ce, %i.cl
  br i1 %.not.i.i.i.i.i43, label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, label %bb.y

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread:    ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.cc, ptr %i.bz, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %.not.i.i.i.i.i4377 = icmp eq ptr %i.ce, %i.cn
  br i1 %.not.i.i.i.i.i4377, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.y:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = load i32, ptr %i.co, align 4
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cs = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.pr.i.i.i.i.i = load ptr, ptr %i.ck, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i
  %i.ct = phi ptr [ %i.ck, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.cm, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ]
  %i.cu = phi ptr [ %.pr.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exitthread-pre-split.i.i.i.i.i ], [ %i.cn, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cv, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4
  %i.da = load ptr, ptr %i.cu, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20, !inline_history !60
  %i.dd = load ptr, ptr %i.cu, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20, !inline_history !60
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.ae ], [ %i.di, %bb.af ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.ag, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !7

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ac, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.ce, ptr %i.ct, align 8
  br label %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit

_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  br i1 %.not.i.i.i.i42, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.dk, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.do, align 4
  %i.dp = load ptr, ptr %i.ce, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #20, !inline_history !6
  %i.ds = load ptr, ptr %i.ce, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

bb.aj:                                            ; preds = %bb.ah
  %i.dv = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i45 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i45, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

bb.al:                                            ; preds = %bb.aj
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i47 = phi i32 [ %i.dn, %bb.ak ], [ %i.dx, %bb.al ]
  %i.dy = icmp eq i32 %.0.i.i.i.i47, 1
  br i1 %i.dy, label %bb.am, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48, !prof !7

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit48: ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit.thread, %_ZN6Assimp4STEP14GenericConvertISt10shared_ptrIKNS0_7EXPRESS8DataTypeEEEEvRT_RKS6_RKNS0_2DBE.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i46, %bb.am
  %i.dz = add nuw i64 %.02459, 1                  ; 2 uses
  %i.ea = load ptr, ptr %i.m, align 8
  %i.eb = load ptr, ptr %i.l, align 8
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 4
  %i.eg = icmp ult i64 %i.dz, %i.ef
  br i1 %i.eg, label %bb.m, label %._crit_edge, !llvm.loop !235

bb.an:                                            ; preds = %bb.o
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.merged = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn58, %bb.f ], [ %i.eh, %bb.an ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.merged

bb.ap:                                            ; preds = %bb.d
  unreachable
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #2

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8
  store ptr null, ptr %i.r, align 8
  store <2 x ptr> %i.s, ptr %i.q, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !239, !noalias !236
  store ptr null, ptr %i.t, align 8, !alias.scope !239, !noalias !236
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !alias.scope !236, !noalias !239
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !239, !noalias !236
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !230

_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !alias.scope !244, !noalias !241
  store ptr null, ptr %i.y, align 8, !alias.scope !244, !noalias !241
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !alias.scope !241, !noalias !244
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !244, !noalias !241
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !230

_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x312IfcFaceBoundEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.867", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70.a = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70.a, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !249, !noalias !246
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !249, !noalias !246
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !246, !noalias !249
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !246, !noalias !249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !249, !noalias !246
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !246, !noalias !249
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !254

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71.a = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71.a, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.ce, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107.a = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109.a = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !258, !noalias !255
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !258, !noalias !255
  %i.ck = getelementptr i8, ptr %next.gep107.a, i64 16
  store <2 x i64> %wide.load109.a, ptr %next.gep107.a, align 8, !alias.scope !255, !noalias !258
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !255, !noalias !258
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !260

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !258, !noalias !255
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !255, !noalias !258
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !261

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cr = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.cs = load ptr, ptr %i.l, align 8, !noalias !262
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.02368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !262 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !noalias !262
  store <2 x ptr> %i.cw, ptr %7, align 16, !alias.scope !262
  %.not.i.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !noalias !262
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.cx, align 4, !noalias !262
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !noalias !262
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !262 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x312IfcFaceBoundEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x312IfcFaceBoundEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  %i.dl = load ptr, ptr %i.dc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ds = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.m, label %._crit_edge, !llvm.loop !265

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.eb = extractvalue { ptr, i32 } %i.ea, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i32 } %i.ea, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #20 ; 2 uses
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
end_hunk_0
begin_hunk_1_@_ZN6Assimp4STEP20InternGenericConvertIdEclERdRKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.n:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_7EXPRESS17PrimitiveDataTypeIlEELm3ELm3EEclERNS0_6ListOfIS4_Lm3ELm3EEERKSt10shared_ptrIKNS2_8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.879", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.an unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.030, label %bb.f, label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.030, label %bb.f, label %bb.al

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn54 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.al

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 48
  br i1 %i.s, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not37 = icmp eq i64 %i.r, 48
  br i1 %.not37, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.str.117.sink = phi ptr [ @.str.116, %bb.g ], [ @.str.117, %bb.h ]
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull %.str.117.sink)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %i.u = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %1, align 8               ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = icmp ult i64 %i.ah, %i.z
  br i1 %i.ai, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.af                    ; 3 uses
  %i.an = ashr exact i64 %i.y, 1
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #24 ; 4 uses
  %i.ap = icmp sgt i64 %i.am, 0
  br i1 %i.ap, label %bb.l, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ad, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  store ptr %i.ao, ptr %1, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store ptr %i.aq, ptr %i.aj, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.z
  store ptr %i.ar, ptr %i.ab, align 8
  %.pre = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i
  %i.as = phi ptr [ %i.v, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i ]
  %i.at = phi ptr [ %i.u, %bb.k ], [ %.pre, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i ]
  %.not71 = icmp eq ptr %i.at, %i.as
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  ret void

bb.n:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02470 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.ax = load ptr, ptr %i.ab, align 8
  %.not.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.au, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.p:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %1, align 8               ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.q, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 3 uses
  store i64 0, ptr %i.bm, align 8
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.r, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #22
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bl, ptr %1, align 8
  store ptr %i.bo, ptr %i.au, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.ab, align 8
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.o, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %i.bq = phi ptr [ %i.ay, %bb.o ], [ %i.bm, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.br = load ptr, ptr %i.l, align 8, !noalias !267
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.02470 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !267 ; 2 uses
  %i.bv = load <2 x ptr>, ptr %i.bs, align 8, !noalias !267
  store <2 x ptr> %i.bv, ptr %7, align 16, !alias.scope !267
  %.not.i.i.i.i42 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i42, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !noalias !267
  %.not.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = load i32, ptr %i.bw, align 4, !noalias !267
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !noalias !267
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.v:                                             ; preds = %bb.t
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4, !noalias !267 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertIlEclERlRKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cb = load ptr, ptr %i.av, align 8            ; 8 uses
  %.not.i.i43 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20, !inline_history !6
  %i.ck = load ptr, ptr %i.cb, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.cn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.cf, %bb.aa ], [ %i.cp, %bb.ab ]
  %i.cq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cq, label %bb.ac, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.cr = add nuw i64 %.02470, 1                  ; 2 uses
  %i.cs = load ptr, ptr %i.m, align 8
  %i.ct = load ptr, ptr %i.l, align 8
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 4
  %i.cy = icmp ult i64 %i.cr, %i.cx
  br i1 %i.cy, label %bb.n, label %._crit_edge, !llvm.loop !270

bb.ad:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.da = extractvalue { ptr, i32 } %i.cz, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.db = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.dd = extractvalue { ptr, i32 } %i.cz, 0
  %i.de = call ptr @__cxa_begin_catch(ptr %i.dd) #20 ; 2 uses
  %i.df = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dg = load ptr, ptr %i.de, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call noundef ptr %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.an unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.ae
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split93

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dm = load ptr, ptr %8, align 8               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ai
  %i.dp = load i64, ptr %i.dn, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.dr = load ptr, ptr %9, align 8               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.af
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %9, align 8               ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread
  %i.dy = load i64, ptr %i.dw, align 8
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #22
  br label %.sink.split93

end_hunk_1
begin_hunk_2_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm2ELm0EEclERNS0_6ListOfIS6_Lm2ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 17
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %.pre70.a = load ptr, ptr %i.l, align 8         ; 2 uses
  %.pre73.a = ptrtoint ptr %.pre to i64
  %.pre74 = ptrtoint ptr %.pre70.a to i64
  %.pre76 = sub i64 %.pre73.a, %.pre74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi77 = phi i64 [ %.pre76, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %.pre70.a, %bb.h ], [ %i.o, %bb.g ]
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ]
  %i.w = ashr exact i64 %.pre-phi77, 4            ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %.pre-phi77, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.aw = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !alias.scope !274, !noalias !271
  %wide.load100 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !274, !noalias !271
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !271, !noalias !274
  store <2 x i64> %wide.load100, ptr %i.ax, align 8, !alias.scope !271, !noalias !274
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !274, !noalias !271
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !271, !noalias !274
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !277

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71.a = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.u, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.v, %bb.k ], [ %.pre71.a, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check103 = icmp ult i64 %i.ce, 32
  %or.cond120 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond120, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec108 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec108, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.ci = shl i64 %index110, 3                    ; 2 uses
  %next.gep111.a = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.cj = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113.a = load <2 x i64>, ptr %next.gep112, align 8, !alias.scope !281, !noalias !278
  %wide.load114 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !281, !noalias !278
  %i.ck = getelementptr i8, ptr %next.gep111.a, i64 16
  store <2 x i64> %wide.load113.a, ptr %next.gep111.a, align 8, !alias.scope !278, !noalias !281
  store <2 x i64> %wide.load114, ptr %i.ck, align 8, !alias.scope !278, !noalias !281
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.cl, label %middle.block116, label %vector.body109, !llvm.loop !283

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cd, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block116
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block116 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !281, !noalias !278
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !278, !noalias !281
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !284

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block116, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block116 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cr = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.cs = load ptr, ptr %i.l, align 8, !noalias !285
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.02368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !285 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !noalias !285
  store <2 x ptr> %i.cw, ptr %7, align 16, !alias.scope !285
  %.not.i.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !noalias !285
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.cx, align 4, !noalias !285
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !noalias !285
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !285 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  %i.dl = load ptr, ptr %i.dc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ds = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.m, label %._crit_edge, !llvm.loop !288

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.eb = extractvalue { ptr, i32 } %i.ea, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i32 } %i.ea, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #20 ; 2 uses
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
end_hunk_2
begin_hunk_3_@_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x328IfcFeatureElementSubtractionEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %.0.i = phi i64 [ %i.z, %bb.i ], [ 0, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i ], [ 0, %bb.h ], [ 0, %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i ]
  store i64 %.0.i, ptr %1, align 8
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP24InternGenericConvertListINS0_7EXPRESS17PrimitiveDataTypeIdEELm1ELm3EEclERNS0_6ListOfIS4_Lm1ELm3EEERKSt10shared_ptrIKNS2_8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::STEP::InternGenericConvert.871", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::shared_ptr.26", align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS4LISTE, i64 0) #20 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.an unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.030, label %bb.f, label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.030, label %bb.f, label %bb.al

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.al

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 48
  br i1 %i.s, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq ptr %i.n, %i.o
  br i1 %i.t, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.str.117.sink = phi ptr [ @.str.116, %bb.g ], [ @.str.117, %bb.h ]
  %i.u = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull %.str.117.sink)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %i.v = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 4                  ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %1, align 8               ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ult i64 %i.ai, %i.aa
  br i1 %i.aj, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ag                    ; 3 uses
  %i.ao = ashr exact i64 %i.z, 1
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24 ; 4 uses
  %i.aq = icmp sgt i64 %i.an, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #22
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.m, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  store ptr %i.ap, ptr %1, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.ar, ptr %i.ak, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aa
  store ptr %i.as, ptr %i.ac, align 8
  %.pre = load ptr, ptr %i.m, align 8
  %.pre71 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.at = phi ptr [ %i.w, %bb.k ], [ %.pre71, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %i.au = phi ptr [ %i.v, %bb.k ], [ %.pre, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %.not70 = icmp eq ptr %i.au, %i.at
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  ret void

bb.n:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02469 = phi i64 [ 0, %.lr.ph ], [ %i.cs, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ay = load ptr, ptr %i.ac, align 8
  %.not.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store double 0.000000e+00, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.av, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8               ; 4 uses
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.q, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #24 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 3 uses
  store double 0.000000e+00, ptr %i.bn, align 8
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.r, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bm, ptr %1, align 8
  store ptr %i.bp, ptr %i.av, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bq, ptr %i.ac, align 8
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %bb.o, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.br = phi ptr [ %i.az, %bb.o ], [ %i.bn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.bs = load ptr, ptr %i.l, align 8, !noalias !298
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.02469 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !298 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %i.bt, align 8, !noalias !298
  store <2 x ptr> %i.bw, ptr %7, align 16, !alias.scope !298
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i41, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !noalias !298
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.bx, align 4, !noalias !298
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !noalias !298
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.v:                                             ; preds = %bb.t
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !298 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertIdEclERdRKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cc = load ptr, ptr %i.aw, align 8            ; 8 uses
  %.not.i.i42 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i42, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20, !inline_history !6
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.co = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.cg, %bb.aa ], [ %i.cq, %bb.ab ]
  %i.cr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cr, label %bb.ac, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.cs = add nuw i64 %.02469, 1                  ; 2 uses
  %i.ct = load ptr, ptr %i.m, align 8
  %i.cu = load ptr, ptr %i.l, align 8
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 4
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %bb.n, label %._crit_edge, !llvm.loop !301

bb.ad:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.db = extractvalue { ptr, i32 } %i.da, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.dc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.de = extractvalue { ptr, i32 } %i.da, 0
  %i.df = call ptr @__cxa_begin_catch(ptr %i.de) #20 ; 2 uses
  %i.dg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.dh = load ptr, ptr %i.df, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.af unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.an unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread: ; preds = %bb.ae
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split91

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dn = load ptr, ptr %8, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ai
  %i.dq = load i64, ptr %i.do, align 8
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.ds = load ptr, ptr %9, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %9, align 8               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread
  %i.dz = load i64, ptr %i.dx, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #22
  br label %.sink.split91

end_hunk_3
begin_hunk_4_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEELm3ELm0EEclERNS0_6ListOfIS6_Lm3ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 33
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8             ; 2 uses
  %.pre70.a = load ptr, ptr %i.l, align 8         ; 2 uses
  %.pre73.a = ptrtoint ptr %.pre to i64
  %.pre74 = ptrtoint ptr %.pre70.a to i64
  %.pre76 = sub i64 %.pre73.a, %.pre74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi77 = phi i64 [ %.pre76, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = phi ptr [ %.pre70.a, %bb.h ], [ %i.o, %bb.g ]
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ]
  %i.w = ashr exact i64 %.pre-phi77, 4            ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %.pre-phi77, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.aw = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !alias.scope !305, !noalias !302
  %wide.load100 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !305, !noalias !302
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !302, !noalias !305
  store <2 x i64> %wide.load100, ptr %i.ax, align 8, !alias.scope !302, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader122

.lr.ph.i.i.i.i.preheader122:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader122, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !305, !noalias !302
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !302, !noalias !305
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !308

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71.a = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.u, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.v, %bb.k ], [ %.pre71.a, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check103 = icmp ult i64 %i.ce, 32
  %or.cond120 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond120, label %.lr.ph.i.i.i.i.i.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec108 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec108, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.ci = shl i64 %index110, 3                    ; 2 uses
  %next.gep111.a = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.cj = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113.a = load <2 x i64>, ptr %next.gep112, align 8, !alias.scope !312, !noalias !309
  %wide.load114 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !312, !noalias !309
  %i.ck = getelementptr i8, ptr %next.gep111.a, i64 16
  store <2 x i64> %wide.load113.a, ptr %next.gep111.a, align 8, !alias.scope !309, !noalias !312
  store <2 x i64> %wide.load114, ptr %i.ck, align 8, !alias.scope !309, !noalias !312
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.cl, label %middle.block116, label %vector.body109, !llvm.loop !314

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cd, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.preheader121:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block116
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block116 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !312, !noalias !309
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !309, !noalias !312
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !315

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block116, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block116 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cr = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.cs = load ptr, ptr %i.l, align 8, !noalias !316
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.02368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !316 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !noalias !316
  store <2 x ptr> %i.cw, ptr %7, align 16, !alias.scope !316
  %.not.i.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !noalias !316
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.cx, align 4, !noalias !316
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !noalias !316
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !316 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x317IfcCartesianPointEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  %i.dl = load ptr, ptr %i.dc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ds = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.m, label %._crit_edge, !llvm.loop !319

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.eb = extractvalue { ptr, i32 } %i.ea, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i32 } %i.ea, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #20 ; 2 uses
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
end_hunk_4
begin_hunk_5_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x319IfcConnectedFaceSetEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70.a = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70.a, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !323, !noalias !320
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !323, !noalias !320
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !320, !noalias !323
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !320, !noalias !323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !323, !noalias !320
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !320, !noalias !323
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !326

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71.a = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71.a, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.ce, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107.a = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109.a = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !330, !noalias !327
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !330, !noalias !327
  %i.ck = getelementptr i8, ptr %next.gep107.a, i64 16
  store <2 x i64> %wide.load109.a, ptr %next.gep107.a, align 8, !alias.scope !327, !noalias !330
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !327, !noalias !330
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !332

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !330, !noalias !327
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !327, !noalias !330
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !333

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cr = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.cs = load ptr, ptr %i.l, align 8, !noalias !334
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.02368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !334 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !noalias !334
  store <2 x ptr> %i.cw, ptr %7, align 16, !alias.scope !334
  %.not.i.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !noalias !334
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.cx, align 4, !noalias !334
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !noalias !334
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !334 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x319IfcConnectedFaceSetEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x319IfcConnectedFaceSetEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  %i.dl = load ptr, ptr %i.dc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ds = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.m, label %._crit_edge, !llvm.loop !337

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.eb = extractvalue { ptr, i32 } %i.ea, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i32 } %i.ea, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #20 ; 2 uses
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
end_hunk_5
begin_hunk_6_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x311IfcPropertyEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70.a = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70.a, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !341, !noalias !338
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !341, !noalias !338
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !338, !noalias !341
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !338, !noalias !341
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !341, !noalias !338
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !338, !noalias !341
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !344

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71.a = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71.a, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.ce, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107.a = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109.a = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !348, !noalias !345
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !348, !noalias !345
  %i.ck = getelementptr i8, ptr %next.gep107.a, i64 16
  store <2 x i64> %wide.load109.a, ptr %next.gep107.a, align 8, !alias.scope !345, !noalias !348
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !345, !noalias !348
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !350

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !348, !noalias !345
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !345, !noalias !348
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !351

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cr = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.cs = load ptr, ptr %i.l, align 8, !noalias !352
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.02368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !352 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !noalias !352
  store <2 x ptr> %i.cw, ptr %7, align 16, !alias.scope !352
  %.not.i.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !noalias !352
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.cx, align 4, !noalias !352
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !noalias !352
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !352 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x311IfcPropertyEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x311IfcPropertyEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  %i.dl = load ptr, ptr %i.dc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ds = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.m, label %._crit_edge, !llvm.loop !355

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.eb = extractvalue { ptr, i32 } %i.ea, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i32 } %i.ea, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #20 ; 2 uses
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
end_hunk_6
begin_hunk_7_@_ZN6Assimp4STEP24InternGenericConvertListINS0_4LazyINS_3IFC10Schema_2x314NotImplementedEEELm1ELm0EEclERNS0_6ListOfIS6_Lm1ELm0EEERKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %5, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.029, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #20
  br label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull @.str.117)
  %.pre = load ptr, ptr %i.m, align 8
  %.pre70.a = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %.pre70.a, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 3 uses
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 4 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.w
  br i1 %i.af, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = ashr exact i64 %i.v, 1
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %i.ai, -8
  %i.ao = sub i64 %i.an, %i.ac                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 56
  %i.ar = sub i64 %i.am, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.aw = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !alias.scope !359, !noalias !356
  %wide.load96 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !359, !noalias !356
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !356, !noalias !359
  store <2 x i64> %wide.load96, ptr %i.ax, align 8, !alias.scope !356, !noalias !359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader118

.lr.ph.i.i.i.i.preheader118:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader118, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader118 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !359, !noalias !356
  store i64 %i.az, ptr %.012.i.i.i.i, align 8, !alias.scope !356, !noalias !359
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ah
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !362

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.al, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ag, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.bd, ptr %i.y, align 8
  %.pre71.a = load ptr, ptr %i.m, align 8
  %.pre72 = load ptr, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.be = phi ptr [ %i.r, %bb.k ], [ %.pre72, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %i.bf = phi ptr [ %i.s, %bb.k ], [ %.pre71.a, %_ZNSt12_Vector_baseIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE13_M_deallocateEPS6_m.exit.i ]
  %.not69 = icmp eq ptr %i.bf, %i.be
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.02368 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bj = load ptr, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %1, align 8               ; 7 uses
  %i.bn = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #21
  unreachable

_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i39 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i39)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  store i64 0, ptr %i.by, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cb, 24
  %i.ce = sub i64 %i.bz, %i.bo
  %diff.check99 = icmp ult i64 %i.ce, 32
  %or.cond116 = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond116, label %.lr.ph.i.i.i.i.i.i.preheader117, label %vector.ph102

vector.ph102:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec104, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %i.ci = shl i64 %index106, 3                    ; 2 uses
  %next.gep107.a = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.bm, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.cj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load109.a = load <2 x i64>, ptr %next.gep108, align 8, !alias.scope !366, !noalias !363
  %wide.load110 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !366, !noalias !363
  %i.ck = getelementptr i8, ptr %next.gep107.a, i64 16
  store <2 x i64> %wide.load109.a, ptr %next.gep107.a, align 8, !alias.scope !363, !noalias !366
  store <2 x i64> %wide.load110, ptr %i.ck, align 8, !alias.scope !363, !noalias !366
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.cl, label %middle.block112, label %vector.body105, !llvm.loop !368

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i64 %i.cd, %n.vec104
  br i1 %cmp.n113, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader117

.lr.ph.i.i.i.i.i.i.preheader117:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block112
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block112 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block112 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader117, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader117 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !366, !noalias !363
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !363, !noalias !366
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !369

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block112, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNKSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %middle.block112 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #22
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bx, ptr %1, align 8
  store ptr %i.cp, ptr %i.bg, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cq, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.n, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %i.cr = phi ptr [ %i.bk, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.cs = load ptr, ptr %i.l, align 8, !noalias !370
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.02368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !370 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !noalias !370
  store <2 x ptr> %i.cw, ptr %7, align 16, !alias.scope !370
  %.not.i.i.i.i40 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i40, label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !noalias !370
  %.not.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.cx, align 4, !noalias !370
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !noalias !370
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

bb.t:                                             ; preds = %bb.r
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !370 ; 0 uses
  br label %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit

_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit:           ; preds = %_ZNSt6vectorIN6Assimp4STEP4LazyINS0_3IFC10Schema_2x314NotImplementedEEESaIS6_EE9push_backEOS6_.exit, %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN6Assimp4STEP20InternGenericConvertINS0_4LazyINS_3IFC10Schema_2x314NotImplementedEEEEclERS6_RKSt10shared_ptrIKNS0_7EXPRESS8DataTypeEERKNS0_2DBE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(392) %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.dc = load ptr, ptr %i.bh, align 8            ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  %i.dl = load ptr, ptr %i.dc, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20, !inline_history !6
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.do = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i = phi i32 [ %i.dg, %bb.y ], [ %i.dq, %bb.z ]
  %i.dr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dr, label %bb.aa, label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #20
  br label %_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ds = add nuw i64 %.02368, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.m, label %._crit_edge, !llvm.loop !373

bb.ab:                                            ; preds = %_ZNK6Assimp4STEP7EXPRESS4LISTixEm.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6Assimp4STEP9TypeErrorE ; 3 uses
  %i.eb = extractvalue { ptr, i32 } %i.ea, 1
  call void @_ZNSt12__shared_ptrIKN6Assimp4STEP7EXPRESS8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE) #20
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ee = extractvalue { ptr, i32 } %i.ea, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #20 ; 2 uses
  %i.eg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eh = load ptr, ptr %i.ef, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call noundef ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %10)
end_hunk_7
