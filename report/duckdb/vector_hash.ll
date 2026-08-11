inline.NumInlined: 2795
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN6duckdb16VectorOperations11CombineHashERNS_6VectorES2_m:bb.a
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i38

_ZN6duckdb15SelectionVectorD2Ev.exit.i38:         ; preds = %bb.tv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i36, %bb.tr, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.exw = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.exx = load ptr, ptr %i.exw, align 8, !tbaa !71 ; 8 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.exx, null
  br i1 %.not.i.i.i.i93.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit97.i, label %bb.tw

bb.tw:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i38
  %i.exy = getelementptr inbounds nuw i8, ptr %i.exx, i64 8 ; 4 uses
  %i.exz = load atomic i64, ptr %i.exy acquire, align 8 ; 2 uses
  %i.eya = icmp eq i64 %i.exz, 4294967297
  %i.eyb = trunc i64 %i.exz to i32                ; 2 uses
  br i1 %i.eya, label %bb.tx, label %bb.ty

bb.tx:                                            ; preds = %bb.tw
  store i32 0, ptr %i.exy, align 8, !tbaa !72
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.exx, i64 12
  store i32 0, ptr %i.eyc, align 4, !tbaa !74
  %i.eyd = load ptr, ptr %i.exx, align 8, !tbaa !75
  %i.eye = getelementptr inbounds nuw i8, ptr %i.eyd, i64 16
  %i.eyf = load ptr, ptr %i.eye, align 8
  call void %i.eyf(ptr noundef nonnull align 8 dereferenceable(16) %i.exx) #16, !inline_history !1385
  %i.eyg = load ptr, ptr %i.exx, align 8, !tbaa !75
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.eyg, i64 24
  %i.eyi = load ptr, ptr %i.eyh, align 8
  call void %i.eyi(ptr noundef nonnull align 8 dereferenceable(16) %i.exx) #16, !inline_history !1385
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit97.i

bb.ty:                                            ; preds = %bb.tw
  %i.eyj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i94.i = icmp eq i8 %i.eyj, 0
  br i1 %.not.i.i.i.i.i94.i, label %bb.ua, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.eyk = add nsw i32 %i.eyb, -1
  store i32 %i.eyk, ptr %i.exy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95.i

bb.ua:                                            ; preds = %bb.ty
  %i.eyl = atomicrmw volatile add ptr %i.exy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95.i: ; preds = %bb.ua, %bb.tz
  %.0.i.i.i.i.i.i96.i = phi i32 [ %i.eyb, %bb.tz ], [ %i.eyl, %bb.ua ]
  %i.eym = icmp eq i32 %.0.i.i.i.i.i.i96.i, 1
  br i1 %i.eym, label %bb.ub, label %_ZN6duckdb15SelectionVectorD2Ev.exit97.i, !prof !79

bb.ub:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.exx) #16, !inline_history !1381
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit97.i

_ZN6duckdb15SelectionVectorD2Ev.exit97.i:         ; preds = %bb.ub, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95.i, %bb.tx, %_ZN6duckdb15SelectionVectorD2Ev.exit.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %18) #16, !inline_history !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.eyn = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.eyo = load ptr, ptr %i.eyn, align 8, !tbaa !71 ; 8 uses
  %.not.i.i.i.i.i98.i = icmp eq ptr %i.eyo, null
  br i1 %.not.i.i.i.i.i98.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42, label %bb.uc

bb.uc:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit97.i
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 8 ; 4 uses
  %i.eyq = load atomic i64, ptr %i.eyp acquire, align 8 ; 2 uses
  %i.eyr = icmp eq i64 %i.eyq, 4294967297
  %i.eys = trunc i64 %i.eyq to i32                ; 2 uses
  br i1 %i.eyr, label %bb.ud, label %bb.ue

bb.ud:                                            ; preds = %bb.uc
  store i32 0, ptr %i.eyp, align 8, !tbaa !72
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.eyo, i64 12
  store i32 0, ptr %i.eyt, align 4, !tbaa !74
  %i.eyu = load ptr, ptr %i.eyo, align 8, !tbaa !75
  %i.eyv = getelementptr inbounds nuw i8, ptr %i.eyu, i64 16
  %i.eyw = load ptr, ptr %i.eyv, align 8
  call void %i.eyw(ptr noundef nonnull align 8 dereferenceable(16) %i.eyo) #16, !inline_history !1386
  %i.eyx = load ptr, ptr %i.eyo, align 8, !tbaa !75
  %i.eyy = getelementptr inbounds nuw i8, ptr %i.eyx, i64 24
  %i.eyz = load ptr, ptr %i.eyy, align 8
  call void %i.eyz(ptr noundef nonnull align 8 dereferenceable(16) %i.eyo) #16, !inline_history !1386
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42

bb.ue:                                            ; preds = %bb.uc
  %i.eza = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i39 = icmp eq i8 %i.eza, 0
  br i1 %.not.i.i.i.i.i.i.i39, label %bb.ug, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.ezb = add nsw i32 %i.eys, -1
  store i32 %i.ezb, ptr %i.eyp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i40

bb.ug:                                            ; preds = %bb.ue
  %i.ezc = atomicrmw volatile add ptr %i.eyp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i40

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i40: ; preds = %bb.ug, %bb.uf
  %.0.i.i.i.i.i.i.i.i41 = phi i32 [ %i.eys, %bb.uf ], [ %i.ezc, %bb.ug ]
  %i.ezd = icmp eq i32 %.0.i.i.i.i.i.i.i.i41, 1
  br i1 %i.ezd, label %bb.uh, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42, !prof !79

bb.uh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i40
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eyo) #16, !inline_history !1381
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42:       ; preds = %bb.uh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i40, %bb.ud, %_ZN6duckdb15SelectionVectorD2Ev.exit97.i
  %i.eze = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ezf = load ptr, ptr %i.eze, align 8, !tbaa !71 ; 8 uses
  %.not.i.i.i.i1.i.i43 = icmp eq ptr %i.ezf, null
  br i1 %.not.i.i.i.i1.i.i43, label %_ZN6duckdb12_GLOBAL__N_112ListLoopHashILb0ELb0EEEvRNS_6VectorES3_PKNS_15SelectionVectorEm.exit, label %bb.ui

bb.ui:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42
  %i.ezg = getelementptr inbounds nuw i8, ptr %i.ezf, i64 8 ; 4 uses
  %i.ezh = load atomic i64, ptr %i.ezg acquire, align 8 ; 2 uses
  %i.ezi = icmp eq i64 %i.ezh, 4294967297
  %i.ezj = trunc i64 %i.ezh to i32                ; 2 uses
  br i1 %i.ezi, label %bb.uj, label %bb.uk

bb.uj:                                            ; preds = %bb.ui
  store i32 0, ptr %i.ezg, align 8, !tbaa !72
  %i.ezk = getelementptr inbounds nuw i8, ptr %i.ezf, i64 12
  store i32 0, ptr %i.ezk, align 4, !tbaa !74
  %i.ezl = load ptr, ptr %i.ezf, align 8, !tbaa !75
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.ezl, i64 16
  %i.ezn = load ptr, ptr %i.ezm, align 8
  call void %i.ezn(ptr noundef nonnull align 8 dereferenceable(16) %i.ezf) #16, !inline_history !1387
  %i.ezo = load ptr, ptr %i.ezf, align 8, !tbaa !75
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.ezo, i64 24
  %i.ezq = load ptr, ptr %i.ezp, align 8
  call void %i.ezq(ptr noundef nonnull align 8 dereferenceable(16) %i.ezf) #16, !inline_history !1387
  br label %_ZN6duckdb12_GLOBAL__N_112ListLoopHashILb0ELb0EEEvRNS_6VectorES3_PKNS_15SelectionVectorEm.exit

bb.uk:                                            ; preds = %bb.ui
  %i.ezr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i2.i.i44 = icmp eq i8 %i.ezr, 0
  br i1 %.not.i.i.i.i.i2.i.i44, label %bb.um, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.ezs = add nsw i32 %i.ezj, -1
  store i32 %i.ezs, ptr %i.ezg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i45

bb.um:                                            ; preds = %bb.uk
  %i.ezt = atomicrmw volatile add ptr %i.ezg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i45: ; preds = %bb.um, %bb.ul
  %.0.i.i.i.i.i.i4.i.i46 = phi i32 [ %i.ezj, %bb.ul ], [ %i.ezt, %bb.um ]
  %i.ezu = icmp eq i32 %.0.i.i.i.i.i.i4.i.i46, 1
  br i1 %i.ezu, label %bb.un, label %_ZN6duckdb12_GLOBAL__N_112ListLoopHashILb0ELb0EEEvRNS_6VectorES3_PKNS_15SelectionVectorEm.exit, !prof !79

bb.un:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i45
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ezf) #16, !inline_history !1381
  br label %_ZN6duckdb12_GLOBAL__N_112ListLoopHashILb0ELb0EEEvRNS_6VectorES3_PKNS_15SelectionVectorEm.exit

bb.uo:                                            ; preds = %bb.tc, %bb.tb
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.etz, %bb.tc ], [ %i.etr, %bb.tb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.up

bb.up:                                            ; preds = %bb.uo, %bb.td, %bb.sz
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.etn, %bb.sz ], [ %.pn.pn.pn.i, %bb.uo ], [ %i.euf, %bb.td ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %18) #16, !inline_history !1381
  br label %bb.uq

bb.uq:                                            ; preds = %bb.up, %bb.sy, %bb.sx
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.up ], [ %i.etm, %bb.sy ], [ %i.etl, %bb.sx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.ur

bb.ur:                                            ; preds = %bb.uq, %bb.sw, %bb.sv, %bb.su, %bb.st
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.eth, %bb.st ], [ %i.eti, %bb.su ], [ %i.etj, %bb.sv ], [ %.pn.pn.pn.pn.pn.pn.i, %bb.uq ], [ %i.etk, %bb.sw ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %17) #16, !inline_history !1381
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_112ListLoopHashILb0ELb0EEEvRNS_6VectorES3_PKNS_15SelectionVectorEm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i42, %bb.uj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i45, %bb.un
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZN6duckdb12_GLOBAL__N_121CombineHashTypeSwitchILb0EEEvRNS_6VectorES3_PKNS_15SelectionVectorEm.exit

bb.us:                                            ; preds = %_ZN6duckdb16DictionaryVector14CanCacheHashesERKNS_6VectorE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2), !inline_history !1388
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0), !inline_history !1388
  %i.ezv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ezw = load ptr, ptr %i.ezv, align 8, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %22), !inline_history !1388
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %22)
          to label %bb.ut unwind label %bb.vb, !inline_history !1388

bb.ut:                                            ; preds = %bb.us
  %i.ezx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.uu unwind label %bb.vc, !inline_history !1388 ; 2 uses

bb.uu:                                            ; preds = %bb.ut
  %i.ezy = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.lm)
          to label %bb.uv unwind label %bb.vd, !inline_history !1388 ; 21 uses

bb.uv:                                            ; preds = %bb.uu
  %i.ezz = load i8, ptr %1, align 8, !tbaa !7     ; 2 uses
  switch i8 %i.ezz, label %bb.vm [
    i8 2, label %bb.uw
    i8 0, label %bb.uw
  ]

bb.uw:                                            ; preds = %bb.uv, %bb.uv
  %i.faa = icmp eq i8 %i.ezz, 2
  %i.fab = select i1 %i.faa, i64 1, i64 %2
  %i.fac = mul i64 %i.fab, %i.ezy                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 noundef zeroext 31)
          to label %bb.ux unwind label %bb.ve, !inline_history !1388

bb.ux:                                            ; preds = %bb.uw
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull %24, i64 noundef %i.fac)
          to label %bb.uy unwind label %bb.vf, !inline_history !1388

bb.uy:                                            ; preds = %bb.ux
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #16, !inline_history !1388
  invoke void @_ZN6duckdb16VectorOperations4HashERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(104) %i.ezx, ptr noundef nonnull align 8 dereferenceable(104) %23, i64 noundef %i.fac)
          to label %bb.uz unwind label %bb.vg, !inline_history !1388

bb.uz:                                            ; preds = %bb.uy
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %23, i64 noundef %i.fac)
          to label %bb.va unwind label %bb.vg, !inline_history !1388

bb.va:                                            ; preds = %bb.uz
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %23)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i unwind label %bb.vh, !inline_history !1388

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i: ; preds = %bb.va
  %i.fad = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.fae = load ptr, ptr %i.fad, align 8, !tbaa !37
  %.not1256 = icmp eq i64 %2, 0
  br i1 %.not1256, label %._crit_edge, label %.lr.ph1233

.lr.ph1233:                                       ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i
  %i.faf = load ptr, ptr %22, align 8, !tbaa !38
  %i.fag = load ptr, ptr %i.faf, align 8, !tbaa !47 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.fag, null
  %i.fah = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fai = load ptr, ptr %i.fah, align 8, !tbaa !49 ; 2 uses
  %.not.i100.i = icmp eq ptr %i.fai, null
  %.not1257 = icmp eq i64 %i.ezy, 0               ; 2 uses
  %xtraiter2148 = and i64 %i.ezy, 1
  %33 = icmp eq i64 %i.ezy, 1
  %unroll_iter2152 = and i64 %i.ezy, -2
  %lcmp.mod2150.not = icmp eq i64 %xtraiter2148, 0
  %lcmp.mod2151 = trunc i64 %i.ezy to i1
  br label %bb.vi

._crit_edge:                                      ; preds = %.loopexit1222, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %23) #16, !inline_history !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.wk

bb.vb:                                            ; preds = %bb.us
  %i.faj = landingpad { ptr, i32 }
          cleanup
  br label %bb.wx

bb.vc:                                            ; preds = %bb.ut
  %i.fak = landingpad { ptr, i32 }
          cleanup
  br label %bb.wx

bb.vd:                                            ; preds = %bb.uu
  %i.fal = landingpad { ptr, i32 }
          cleanup
  br label %bb.wx

bb.ve:                                            ; preds = %bb.uw
  %i.fam = landingpad { ptr, i32 }
          cleanup
  br label %bb.vl

bb.vf:                                            ; preds = %bb.ux
  %i.fan = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #16, !inline_history !1388
  br label %bb.vl

bb.vg:                                            ; preds = %bb.uz, %bb.uy
  %i.fao = landingpad { ptr, i32 }
          cleanup
  br label %bb.vk

bb.vh:                                            ; preds = %bb.va
  %i.fap = landingpad { ptr, i32 }
          cleanup
  br label %bb.vk

bb.vi:                                            ; preds = %.lr.ph1233, %.loopexit1222
  %.080.i1231 = phi i64 [ 0, %.lr.ph1233 ], [ %i.fby, %.loopexit1222 ] ; 4 uses
  br i1 %.not.i.i28, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.faq = getelementptr inbounds nuw [4 x i8], ptr %i.fag, i64 %.080.i1231
  %i.far = load i32, ptr %i.faq, align 4, !tbaa !3
  %i.fas = zext i32 %i.far to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.vj, %bb.vi
  %i.fat = phi i64 [ %i.fas, %bb.vj ], [ %.080.i1231, %bb.vi ] ; 3 uses
  br i1 %.not.i100.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader, label %.split

.split:                                           ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.fau = lshr i64 %i.fat, 6
  %i.fav = and i64 %i.fat, 63
  %i.faw = getelementptr inbounds nuw [8 x i8], ptr %i.fai, i64 %i.fau
  %i.fax = load i64, ptr %i.faw, align 8, !tbaa !35
  %i.fay = shl nuw i64 1, %i.fav
  %i.faz = and i64 %i.fax, %i.fay
  %.not = icmp eq i64 %i.faz, 0
  %brmerge = or i1 %.not, %.not1257
  br i1 %brmerge, label %.loopexit1222, label %.lr.ph

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  br i1 %.not1257, label %.loopexit1222, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader
  %i.fba = mul i64 %i.fat, %i.ezy
  %i.fbb = getelementptr inbounds nuw [8 x i8], ptr %i.ezw, i64 %.080.i1231 ; 4 uses
  %i.fbc = getelementptr [8 x i8], ptr %i.fae, i64 %i.fba ; 3 uses
  %.promoted = load i64, ptr %i.fbb, align 8, !tbaa !35 ; 2 uses
  br i1 %33, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.fbd = phi i64 [ %i.fbq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ %.promoted, %.lr.ph ] ; 2 uses
  %.082.i1230 = phi i64 [ %i.fbr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %.lr.ph ] ; 3 uses
  %niter2153 = phi i64 [ %niter2153.next.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %.lr.ph ]
  %i.fbe = getelementptr [8 x i8], ptr %i.fbc, i64 %.082.i1230
  %i.fbf = load i64, ptr %i.fbe, align 8, !tbaa !35
  %i.fbg = lshr i64 %i.fbd, 32
  %i.fbh = xor i64 %i.fbg, %i.fbd
  %i.fbi = mul i64 %i.fbh, -2960836687051489901
  %i.fbj = xor i64 %i.fbi, %i.fbf                 ; 3 uses
  store i64 %i.fbj, ptr %i.fbb, align 8, !tbaa !35
  %i.fbk = getelementptr [8 x i8], ptr %i.fbc, i64 %.082.i1230
  %i.fbl = getelementptr i8, ptr %i.fbk, i64 8
  %i.fbm = load i64, ptr %i.fbl, align 8, !tbaa !35
  %i.fbn = lshr i64 %i.fbj, 32
  %i.fbo = xor i64 %i.fbn, %i.fbj
  %i.fbp = mul i64 %i.fbo, -2960836687051489901
  %i.fbq = xor i64 %i.fbp, %i.fbm                 ; 3 uses
  store i64 %i.fbq, ptr %i.fbb, align 8, !tbaa !35
  %i.fbr = add nuw i64 %.082.i1230, 2             ; 2 uses
  %niter2153.next.1 = add i64 %niter2153, 2       ; 2 uses
  %niter2153.ncmp.1 = icmp eq i64 %niter2153.next.1, %unroll_iter2152
  br i1 %niter2153.ncmp.1, label %.loopexit1222.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, !llvm.loop !1389

.loopexit1222.loopexit.unr-lcssa:                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  br i1 %lcmp.mod2150.not, label %.loopexit1222, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.epil.preheader: ; preds = %.loopexit1222.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.promoted, %.lr.ph ], [ %i.fbq, %.loopexit1222.loopexit.unr-lcssa ] ; 2 uses
  %.082.i1230.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fbr, %.loopexit1222.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2151)
  %i.fbs = getelementptr [8 x i8], ptr %i.fbc, i64 %.082.i1230.epil.init
  %i.fbt = load i64, ptr %i.fbs, align 8, !tbaa !35
  %i.fbu = lshr i64 %.epil.init, 32
  %i.fbv = xor i64 %i.fbu, %.epil.init
  %i.fbw = mul i64 %i.fbv, -2960836687051489901
  %i.fbx = xor i64 %i.fbw, %i.fbt
  store i64 %i.fbx, ptr %i.fbb, align 8, !tbaa !35
  br label %.loopexit1222

.loopexit1222:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.epil.preheader, %.loopexit1222.loopexit.unr-lcssa, %.split, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader
  %i.fby = add nuw i64 %.080.i1231, 1             ; 2 uses
  %exitcond1368.not = icmp eq i64 %i.fby, %2
  br i1 %exitcond1368.not, label %._crit_edge, label %bb.vi, !llvm.loop !1390

bb.vk:                                            ; preds = %bb.vh, %bb.vg
  %.pn92.pn.i = phi { ptr, i32 } [ %i.fao, %bb.vg ], [ %i.fap, %bb.vh ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %23) #16, !inline_history !1388
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vf, %bb.ve
  %.pn92.pn.pn.i = phi { ptr, i32 } [ %.pn92.pn.i, %bb.vk ], [ %i.fan, %bb.vf ], [ %i.fam, %bb.ve ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.wx

bb.vm:                                            ; preds = %bb.uv
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  %i.fbz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fbz, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %i.ezy)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.i unwind label %bb.vn, !inline_history !1388

bb.vn:                                            ; preds = %bb.vm
  %i.fca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fbz) #16, !inline_history !1388
  br label %bb.wj

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %bb.vm
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 noundef zeroext 31)
          to label %bb.vo unwind label %bb.vw, !inline_history !1388

bb.vo:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %26, ptr noundef nonnull %27, i64 noundef %i.ezy)
          to label %bb.vp unwind label %bb.vx, !inline_history !1388

bb.vp:                                            ; preds = %bb.vo
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #16, !inline_history !1388
  %.not1258 = icmp eq i64 %2, 0
  br i1 %.not1258, label %._crit_edge1243, label %.lr.ph1242

.lr.ph1242:                                       ; preds = %bb.vp
  %i.fcb = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.not1259 = icmp eq i64 %i.ezy, 0               ; 2 uses
  %i.fcc = getelementptr inbounds nuw i8, ptr %26, i64 32
  %.pre1377 = load ptr, ptr %22, align 8, !tbaa !38
  %min.iters.check1846 = icmp ult i64 %i.ezy, 8
  %n.vec1848 = and i64 %i.ezy, -8                 ; 3 uses
  %cmp.n1855 = icmp eq i64 %i.ezy, %n.vec1848
  %xtraiter2155 = and i64 %i.ezy, 1
  %i.fcd = icmp eq i64 %i.ezy, 1
  %unroll_iter2159 = and i64 %i.ezy, -2
  %lcmp.mod2157.not = icmp eq i64 %xtraiter2155, 0
  %lcmp.mod2158 = trunc i64 %i.ezy to i1
  br label %bb.vy

._crit_edge1243:                                  ; preds = %bb.wh, %bb.vp
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %26) #16, !inline_history !1388
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  %i.fce = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fcf = load ptr, ptr %i.fce, align 8, !tbaa !71 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fcf, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.vq

bb.vq:                                            ; preds = %._crit_edge1243
  %i.fcg = getelementptr inbounds nuw i8, ptr %i.fcf, i64 8 ; 4 uses
  %i.fch = load atomic i64, ptr %i.fcg acquire, align 8 ; 2 uses
  %i.fci = icmp eq i64 %i.fch, 4294967297
  %i.fcj = trunc i64 %i.fch to i32                ; 2 uses
  br i1 %i.fci, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  store i32 0, ptr %i.fcg, align 8, !tbaa !72
  %i.fck = getelementptr inbounds nuw i8, ptr %i.fcf, i64 12
  store i32 0, ptr %i.fck, align 4, !tbaa !74
  %i.fcl = load ptr, ptr %i.fcf, align 8, !tbaa !75
  %i.fcm = getelementptr inbounds nuw i8, ptr %i.fcl, i64 16
  %i.fcn = load ptr, ptr %i.fcm, align 8
  call void %i.fcn(ptr noundef nonnull align 8 dereferenceable(16) %i.fcf) #16, !inline_history !1391
  %i.fco = load ptr, ptr %i.fcf, align 8, !tbaa !75
  %i.fcp = getelementptr inbounds nuw i8, ptr %i.fco, i64 24
end_hunk_0
