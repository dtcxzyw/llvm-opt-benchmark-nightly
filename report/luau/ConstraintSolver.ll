Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstraintSolver?download=true
inline.NumInlined: 8088
inline.NumDeleted: 3245
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4Luau16ConstraintSolverC2ENS_7NotNullINS_10NormalizerEEENS1_INS_19TypeFunctionRuntimeEEENS1_INS_5ScopeEEESt6vectorINS1_INS_10ConstraintEEESaISA_EENS1_INS_12DenseHashMapIPS6_PKNS_4TypeENS_16DenseHashPointerESt8equal_toISE_EEEEESt10shared_ptrINS_6ModuleEENS1_INS_14ModuleResolverEEES8_INS_12RequireCycleESaISS_EEPNS_9DcrLoggerENS1_IKNS_13DataFlowGraphEEENS_15TypeCheckLimitsENS1_INS_15ConstraintGraphEEENS1_INS_9SubtypingEEE:bb.a
  %i.dc = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !75
  store ptr null, ptr %i.db, align 8, !tbaa !114
  store <2 x ptr> %i.dc, ptr %i.cy, align 8, !tbaa !75
  store ptr null, ptr %i.cz, align 8, !tbaa !483
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.de, align 8, !tbaa !484
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 897
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 903
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.df, i8 0, i64 6, i1 false)
  store i8 1, ptr %i.dg, align 1, !tbaa !485
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 0, ptr %i.dh, align 8, !tbaa !486
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dj = load i32, ptr @_ZN4FInt37LuauTableTypeMaximumStringifierLengthE, align 8, !tbaa !475
  %i.dk = sext i32 %i.dj to i64
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !487
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.dm = load i32, ptr @_ZN4FInt32LuauTypeMaximumStringifierLengthE, align 8, !tbaa !475
  %i.dn = sext i32 %i.dm to i64
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !488
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 5, ptr %i.do, align 8, !tbaa !489
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !490
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i64 1, ptr %i.dr, align 8, !tbaa !491
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 968
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dt, align 8, !tbaa !418
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !492
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i64 1, ptr %i.dx, align 8, !tbaa !493
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dz, align 8, !tbaa !418
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, i8 0, i64 56, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store ptr %i.d, ptr %i.eb, align 8, !tbaa !494
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %i.e, ptr %i.ec, align 8, !tbaa !495
  invoke void @_ZN4Luau16ConstraintSolver20initFreeTypeTrackingEv(ptr noundef nonnull align 8 dereferenceable(1104) %0)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  ret void

bb.k:                                             ; preds = %bb.a
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.d
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau22InstantiationSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15ToStringOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.de) #34
  %i.eg = load ptr, ptr %i.dd, align 8, !tbaa !496 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEPKNS_10ConstraintENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.eg) #34
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeEPKNS_10ConstraintENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_4TypeEPKNS_10ConstraintENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.n, %bb.m
  call void @_ZN4Luau15TypeCheckLimitsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.cx) #34
  call void @_ZNSt6vectorIN4Luau12RequireCycleESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cr) #34
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cp) #34
  %i.eh = load ptr, ptr %i.cn, align 8, !tbaa !436 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i32, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4Luau12DenseHashMapIPKNS_4TypeEPKNS_10ConstraintENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.eh) #34
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.o, %_ZN4Luau12DenseHashMapIPKNS_4TypeEPKNS_10ConstraintENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  %i.ei = load ptr, ptr %i.cm, align 8, !tbaa !204 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i33, label %_ZN4Luau12DenseHashMapINS_23SubtypeConstraintRecordEPNS_10ConstraintENS_27HashSubtypeConstraintRecordESt8equal_toIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #34
  br label %_ZN4Luau12DenseHashMapINS_23SubtypeConstraintRecordEPNS_10ConstraintENS_27HashSubtypeConstraintRecordESt8equal_toIS1_EED2Ev.exit

_ZN4Luau12DenseHashMapINS_23SubtypeConstraintRecordEPNS_10ConstraintENS_27HashSubtypeConstraintRecordESt8equal_toIS1_EED2Ev.exit: ; preds = %bb.p, %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit
  %i.ej = load ptr, ptr %i.cl, align 8, !tbaa !497 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i34, label %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4Luau12DenseHashMapINS_23SubtypeConstraintRecordEPNS_10ConstraintENS_27HashSubtypeConstraintRecordESt8equal_toIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ej) #34
  br label %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.q, %_ZN4Luau12DenseHashMapINS_23SubtypeConstraintRecordEPNS_10ConstraintENS_27HashSubtypeConstraintRecordESt8equal_toIS1_EED2Ev.exit
  call void @_ZN4Luau12DenseHashMapIPKNS_4TypeESt6vectorISt4pairINS_8LocationES3_ESaIS7_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ck) #34
  call void @_ZN4Luau6detail14DenseHashTableINS_22InstantiationSignatureESt4pairIS2_PKNS_4TypeEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EENS_26HashInstantiationSignatureESt8equal_toIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(154) dereferenceable(160) %i.bh) #34
  br label %bb.r

bb.r:                                             ; preds = %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, %bb.l
  %.pn21.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ef, %_ZN4Luau12DenseHashSetIPKvNS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit ], [ %i.ee, %bb.l ]
  %i.ek = load ptr, ptr %i.bg, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !216
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #36
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @_ZNSt6vectorISt10unique_ptrIN4Luau10ConstraintESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #34
  call void @_ZNSt12__shared_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #34
  br label %.body

.body:                                            ; preds = %bb.k, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EED2Ev.exit
  %.pn21.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN4Luau7NotNullIKNS0_10ConstraintEEESaIS4_EED2Ev.exit ], [ %i.ed, %bb.k ], [ %i.av, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN4Luau6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ab) #34
  %i.eq = load ptr, ptr %i.u, align 8, !tbaa !498 ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN4Luau7NotNullINS0_10ConstraintEEESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.body
  %i.er = load ptr, ptr %i.w, align 8, !tbaa !499
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #36
  br label %_ZNSt6vectorIN4Luau7NotNullINS0_10ConstraintEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4Luau7NotNullINS0_10ConstraintEEESaIS3_EED2Ev.exit: ; preds = %.body, %bb.t
  call void @_ZN4Luau13ConstraintSetD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.r) #34
  call void @_ZN4Luau21InternalErrorReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.k) #34
  resume { ptr, i32 } %.pn21.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !348
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !466    ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #34
  br label %_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashMapIPKNS_4TypeEbNS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau16ConstraintSolver9randomizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1104) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %.089 = add nsw i64 %i.i, -1                    ; 4 uses
  %.not10 = icmp eq i64 %.089, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i64 %.089, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.j = zext i32 %1 to i64
  %i.k = urem i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.089 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.prol = load ptr, ptr %i.l, align 8, !tbaa !190
  %i.n = load i64, ptr %i.m, align 8, !tbaa !190
  store i64 %i.n, ptr %i.l, align 8, !tbaa !190
  store ptr %.sroa.0.0.copyload.i.prol, ptr %i.m, align 8, !tbaa !190
  %i.o = mul i32 %1, 1664525
  %i.p = add i32 %i.o, 1013904223
  %.08.prol = add nsw i64 %i.i, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0813.unr = phi i64 [ %.089, %.lr.ph.preheader ], [ %.08.prol, %.lr.ph.prol ]
  %.012.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.q = icmp eq i64 %i.h, 16
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0813 = phi i64 [ %.08.1, %.lr.ph ], [ %.0813.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.012 = phi i32 [ %i.ae, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.08.in1114 = add i64 %.0813, 1
  %i.r = zext i32 %.012 to i64
  %i.s = urem i64 %i.r, %.08.in1114
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0813 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.t, align 8, !tbaa !190
  %i.v = load i64, ptr %i.u, align 8, !tbaa !190
  store i64 %i.v, ptr %i.t, align 8, !tbaa !190
  store ptr %.sroa.0.0.copyload.i, ptr %i.u, align 8, !tbaa !190
  %i.w = mul i32 %.012, 1664525
  %i.x = add i32 %i.w, 1013904223                 ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = urem i64 %i.y, %.0813
  %i.aa = getelementptr [8 x i8], ptr %i.b, i64 %.0813
  %2 = getelementptr i8, ptr %i.aa, i64 -8        ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i.1 = load ptr, ptr %2, align 8, !tbaa !190
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !190
  store i64 %i.ac, ptr %2, align 8, !tbaa !190
  store ptr %.sroa.0.0.copyload.i.1, ptr %i.ab, align 8, !tbaa !190
  %i.ad = mul i32 %i.x, 1664525
  %i.ae = add i32 %i.ad, 1013904223
  %.08.1 = add i64 %.0813, -2                     ; 2 uses
  %.not.1 = icmp eq i64 %.08.1, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1138

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau16ConstraintSolver3runEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::Variant.354", align 8 ; 5 uses
  %2 = alloca %"class.Luau::Variant.170", align 8 ; 9 uses
  %3 = alloca %"struct.Luau::Location", align 4   ; 5 uses
  %4 = alloca %"class.Luau::Variant.170", align 8 ; 9 uses
  %5 = alloca %"struct.Luau::Location", align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr @_ZN5FFlag18DebugLuauLogSolverE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr @_ZN5FFlag35DebugLuauCyclicRequireTypeInferenceE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !359
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef %i.l) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !359
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !359
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, ptr noundef %i.q, ptr noundef %i.s) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !186
  tail call void @_ZN4Luau15ConstraintGraph8dumpWithERKSt6vectorINS_7NotNullIKNS_10ConstraintEEESaIS5_EERNS_15ToStringOptionsE(ptr noundef nonnull align 8 dereferenceable(264) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.u)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.08.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !98
  tail call fastcc void @_ZN4LuauL12dumpBindingsENS_7NotNullINS_5ScopeEEERNS_15ToStringOptionsE(ptr %.sroa.08.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %i.u)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !482  ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !506
  tail call void @_ZN4Luau9DcrLogger25captureInitialSolverStateEPKNS_5ScopeERKSt6vectorINS_7NotNullIKNS_10ConstraintEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(944) %i.z, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = load i8, ptr @_ZN5FFlag35DebugLuauCyclicRequireTypeInferenceE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !186
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ag, %bb.j ], [ %i.ah, %bb.k ] ; 3 uses
  %i.aj = tail call ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ai) ; 2 uses
  %i.ak = tail call ptr @_ZN4Luau7TypeIds3endEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ai) ; 2 uses
  %.not3941 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not3941, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.s, %bb.l
  call void @_ZN4Luau7TypeIds5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ai)
  br label %.backedge

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.035.042 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bd, %bb.s ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.035.042, align 8, !tbaa !109 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !186
  store i32 0, ptr %1, align 8, !tbaa !188
  store ptr %i.an, ptr %i.am, align 8, !tbaa !109
  %i.ap = invoke noundef zeroext i1 @_ZN4Luau15ConstraintGraph23hasUnsolvedDependenciesENS_7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 %1)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aq = load i32, ptr %1, align 8, !tbaa !188
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !75
  invoke void %i.at(ptr noundef nonnull %i.am)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #35
  unreachable

_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit: ; preds = %bb.n
  br i1 %i.ap, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit
  call void @_ZN4Luau16ConstraintSolver17generalizeOneTypeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr noundef %i.an)
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load i32, ptr %1, align 8, !tbaa !188
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEE9tableDtorE, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75
  invoke void %i.ba(ptr noundef nonnull %i.am)
          to label %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit21 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #35
  unreachable

bb.s:                                             ; preds = %bb.p, %_ZN4Luau7VariantIJPKNS_4TypeEPKNS_11TypePackVarEPKNS_10ConstraintEEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.042, i64 8 ; 2 uses
  %.not39 = icmp eq ptr %i.bd, %i.ak
  br i1 %.not39, label %._crit_edge, label %bb.m

.backedge:                                        ; preds = %.backedge.backedge, %._crit_edge
  %i.be = call fastcc noundef zeroext i1 @"_ZZN4Luau16ConstraintSolver3runEvENK3$_0clEb"(ptr nonnull %0, i1 noundef zeroext false)
  br i1 %i.be, label %.backedge.backedge, label %.split

.split:                                           ; preds = %.backedge
  %i.bf = call fastcc noundef zeroext i1 @"_ZZN4Luau16ConstraintSolver3runEvENK3$_0clEb"(ptr nonnull %0, i1 noundef zeroext true)
  br i1 %i.bf, label %.backedge.backedge, label %bb.t

.backedge.backedge:                               ; preds = %.split, %.backedge
  br label %.backedge, !llvm.loop !1139

bb.t:                                             ; preds = %.split
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load i8, ptr @_ZN5FFlag35DebugLuauCyclicRequireTypeInferenceE, align 8, !tbaa !90, !range !91, !noundef !92
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i32 20, ptr %2, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bo = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EE12emplace_backIJRKNS0_8LocationENS0_7VariantIJNS0_12TypeMismatchENS0_13UnknownSymbolENS0_15UnknownPropertyENS0_9NotATableENS0_17CannotExtendTableENS0_27CannotCompareUnrelatedTypesENS0_24OnlyTablesCanHaveMethodsENS0_23DuplicateTypeDefinitionENS0_13CountMismatchENS0_23FunctionDoesNotTakeSelfENS0_20FunctionRequiresSelfENS0_17OccursCheckFailedENS0_14UnknownRequireENS0_30IncorrectGenericParameterCountENS0_11SyntaxErrorENS0_14CodeTooComplexENS0_21UnificationTooComplexENS0_27UnknownPropButFoundLikePropENS0_12GenericErrorENS0_13InternalErrorENS0_32ConstraintSolvingIncompleteErrorENS0_21CannotCallNonFunctionENS0_16ExtraInformationENS0_17DeprecatedApiUsedENS0_25ModuleHasCyclicDependencyENS0_25CyclicModuleGraphTooLargeENS0_14IllegalRequireENS0_29FunctionExitsWithoutReturningENS0_25DuplicateGenericParameterENS0_19CannotAssignToNeverENS0_26CannotInferBinaryOperationENS0_17MissingPropertiesENS0_27SwappedGenericTypeParameterENS0_19OptionalValueAccessENS0_20MissingUnionPropertyENS0_17TypesAreUnrelatedENS0_23NormalizationTooComplexENS0_16TypePackMismatchENS0_40DynamicPropertyLookupOnExternTypesUnsafeENS0_23UninhabitedTypeFunctionENS0_27UninhabitedTypePackFunctionENS0_17WhereClauseNeededENS0_21PackWhereClauseNeededENS0_24CheckedFunctionCallErrorENS0_32NonStrictFunctionDefinitionErrorENS0_23PropertyAccessViolationENS0_28CheckedFunctionIncorrectArgsENS0_25UnexpectedTypeInSubtypingENS0_29UnexpectedTypePackInSubtypingENS0_37ExplicitFunctionAnnotationRecommendedENS0_28UserDefinedTypeFunctionErrorENS0_24BuiltInTypeFunctionErrorENS0_18ReservedIdentifierENS0_28UnexpectedArrayLikeTableItemENS0_35CannotCheckDynamicStringFormatCallsENS0_24GenericTypeCountMismatchENS0_28GenericTypePackCountMismatchENS0_26MultipleNonviableOverloadsENS0_27RecursiveRestraintViolationENS0_21GenericBoundsMismatchENS0_21UnappliedTypeFunctionENS0_32InstantiateGenericsOnNonFunctionENS0_30TypeInstantiationCountMismatchENS0_21AmbiguousFunctionCallEEEEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(136) %2)
          to label %.noexc unwind label %bb.z     ; 0 uses

.noexc:                                           ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !141
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc
end_hunk_0
