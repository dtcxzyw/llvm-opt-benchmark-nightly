inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.055.062, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ca = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA42_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(42) @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ao unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #28
  br label %bb.ak

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.r:                                             ; preds = %bb.n, %.lr.ph
  invoke void @_ZN6Assimp19Discreet3DSImporter12CheckIndicesERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.055.062)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6Assimp19Discreet3DSImporter10MakeUniqueERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.055.062)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  invoke void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.055.062)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.055.062, i64 216 ; 2 uses
  %.not60 = icmp eq ptr %i.cc, %i.bk
  br i1 %.not60, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %._crit_edge
  invoke void @_ZN6Assimp19Discreet3DSImporter12ConvertSceneEP7aiScene(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %2)
          to label %bb.w unwind label %bb.m

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6Assimp19Discreet3DSImporter17GenerateNodeGraphEP7aiScene(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %2)
          to label %bb.x unwind label %bb.m

bb.x:                                             ; preds = %bb.w
  call void @_ZN6Assimp19Discreet3DSImporter16ApplyMasterScaleEPK7aiScene(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %2)
  call void @_ZN6Assimp4D3DS4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #29
  br label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit.i:        ; preds = %bb.y, %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #29
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i:       ; preds = %bb.z, %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i ], [ %i.cs, %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i ] ; 2 uses
  call void @_ZN6Assimp4D3DS4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %.05.i.i.i.i) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.cr, align 8
  br label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i
  %i.cw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cs, %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #29
  br label %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i: ; preds = %bb.aa, %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.dc = load ptr, ptr %6, align 8               ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not4.i.i.i3.i = icmp eq ptr %i.dc, %i.de
  br i1 %.not4.i.i.i3.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i, %.lr.ph.i.i.i4.i
  %.05.i.i.i5.i = phi ptr [ %i.dh, %.lr.ph.i.i.i4.i ], [ %i.dc, %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.df = load ptr, ptr %.05.i.i.i5.i, align 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i5.i) #28, !inline_history !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i5.i, i64 696 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.dh, %i.de
  br i1 %.not.i.i.i6.i, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i4.i, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i4.i
  %.pr.i7.i = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i
  %i.di = phi ptr [ %.pr.i7.i, %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dc, %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i8.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i8.i, label %_ZN6Assimp4D3DS5SceneD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #29
  br label %_ZN6Assimp4D3DS5SceneD2Ev.exit

_ZN6Assimp4D3DS5SceneD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN6Assimp4D3DS5SceneD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #29
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN6Assimp4D3DS5SceneD2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.dt, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4
  %i.dy = load ptr, ptr %i.ds, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #28, !inline_history !9
  %i.eb = load ptr, ptr %i.ds, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #28, !inline_history !9
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ee = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i54 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i54, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi i32 [ %i.dw, %bb.ah ], [ %i.eg, %bb.ai ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.aj, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, !prof !4

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #28
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit:      ; preds = %bb.ad, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.m
  %.pn30.pn = phi { ptr, i32 } [ %i.bq, %bb.m ], [ %i.cb, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp4D3DS4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %7) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %bb.ak ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6Assimp4D3DS5SceneD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.i, %bb.h
  %.pn34 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.ae, %bb.i ], [ %.pn30.pn.pn, %bb.al ]
  call void @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.am ], [ %i.s, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %.pn34.pn

bb.ao:                                            ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA21_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA21_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #28 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1) #28, !inline_history !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #30
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.m = zext i1 %2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.o, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.p, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store i8 %i.m, ptr %i.r, align 8
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  ret void

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA38_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA38_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3DS4NodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit:         ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit28, %bb.f
  %i.as = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.s
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit
  %i.au = load i64, ptr %i.s, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.d
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.d, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.d
  %.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %lpad.phi42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %lpad.phi42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.ba = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #29
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter14ParseMainChunkEv(ptr noundef nonnull align 8 captures(address) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967294
  %i.k = icmp samesign ult i64 %i.j, 6
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 161
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.n = load i32, ptr %i.l, align 2
  %i.o = add i32 %i.n, -6                         ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %.pre = load ptr, ptr %i.a, align 8             ; 7 uses
  br i1 %i.p, label %._crit_edge, label %bb.c, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8
  %.pre10 = ptrtoint ptr %.pre7 to i64
  %.pre11 = ptrtoint ptr %.pre9 to i64
  %.pre13 = sub i64 %.pre10, %.pre11
  br label %bb.q, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.o, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.y, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp ugt ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.h
  %.sink = phi ptr [ %i.be, %bb.p ], [ %i.aj, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.p ], [ %i.ak, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.al = ptrtoint ptr %i.aa to i64
  %i.am = sub i64 %i.al, %i.v
  %i.an = load i16, ptr %1, align 2
  switch i16 %i.an, label %bb.k [
    i16 -15811, label %bb.i
    i16 19789, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  store i8 1, ptr %i.m, align 1
  br label %bb.k

bb.j:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  tail call void @_ZN6Assimp19Discreet3DSImporter16ParseEditorChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ao = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.au = and i64 %i.am, 4294967295               ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967295
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.at, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.m:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 2 uses
  store ptr %i.ba, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.n, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.n:                                             ; preds = %bb.m
  %i.be = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull @.str.41)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5: ; preds = %bb.l, %bb.m
  %i.bg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  %.pre-phi14 = phi i64 [ %.pre13, %._crit_edge ], [ %i.bn, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bq = and i64 %.pre-phi14, 4294967294
  %i.br = icmp samesign ult i64 %i.bq, 6
  br i1 %i.br, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.q, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA42_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA42_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6Assimp19Discreet3DSImporter12CheckIndicesERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare void @_ZN6Assimp19Discreet3DSImporter10MakeUniqueERNS_4D3DS4MeshE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiVector3t, align 8          ; 5 uses
  %2 = alloca %"class.std::vector.44", align 8    ; 12 uses
  %3 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 15 uses
  %4 = alloca %"class.std::vector.54", align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store <2 x float> zeroinitializer, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %1)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not253 = icmp eq ptr %i.w, %i.x
  br i1 %.not253, label %.preheader212, label %.lr.ph

.preheader212:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not254 = icmp eq ptr %i.y, %i.z
  br i1 %.not254, label %._crit_edge, label %.lr.ph224

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.ck, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.ci, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082216 = phi i32 [ %i.ch, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar ; 3 uses
  %i.at = load float, ptr %i.ao, align 4
  %i.au = load float, ptr %i.ak, align 4          ; 2 uses
  %i.av = fsub float %i.at, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.az = load float, ptr %i.ay, align 4          ; 2 uses
  %i.ba = fsub float %i.ax, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.be = load float, ptr %i.bd, align 4          ; 2 uses
  %i.bf = fsub float %i.bc, %i.be                 ; 2 uses
  %i.bg = load float, ptr %i.as, align 4
  %i.bh = fsub float %i.bg, %i.au                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fsub float %i.bj, %i.az                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = fsub float %i.bm, %i.be                 ; 2 uses
  %i.bo = fneg float %i.bk
  %i.bp = fmul float %i.bf, %i.bo
  %i.bq = call float @llvm.fmuladd.f32(float %i.ba, float %i.bn, float %i.bp)
  %i.br = fneg float %i.bn
  %i.bs = fmul float %i.av, %i.br
  %i.bt = call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.bs)
  %i.bu = fneg float %i.bh
  %i.bv = fmul float %i.ba, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.av, float %i.bk, float %i.bv) ; 3 uses
  %.sroa.0.0.vec.insert.i99 = insertelement <2 x float> poison, float %i.bq, i64 0
  %.sroa.0.4.vec.insert.i100 = insertelement <2 x float> %.sroa.0.0.vec.insert.i99, float %i.bt, i64 1 ; 3 uses
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %i.ai ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i100, ptr %i.by, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store float %i.bw, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bz = load i32, ptr %i.al, align 4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i100, ptr %i.cc, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store float %i.bw, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.cd = load i32, ptr %i.ap, align 4
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.a, align 8
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %i.ce ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i100, ptr %i.cg, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store float %i.bw, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.ch = add i32 %.082216, 1                     ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = load ptr, ptr %i.v, align 8
  %i.ck = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
end_hunk_1
begin_hunk_2_@_ZN6Assimp4D3DS4NodeD2Ev:bb.a
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.az = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #29
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.bf = phi ptr [ %i.bl, %bb.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.bg = phi ptr [ %i.bm, %bb.i ], [ %i.c, %bb.a ]
  %i.bh = phi i64 [ %i.bo, %bb.i ], [ 0, %bb.a ]
  %.015 = phi i32 [ %i.bn, %bb.i ], [ 0, %bb.a ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp4D3DS4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.bj) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 248) #29
  %.pre = load ptr, ptr %i.b, align 8
  %.pre16 = load ptr, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.bl = phi ptr [ %i.bf, %.lr.ph ], [ %.pre16, %bb.h ] ; 2 uses
  %i.bm = phi ptr [ %i.bg, %.lr.ph ], [ %.pre, %bb.h ] ; 2 uses
  %i.bn = add i32 %.015, 1                        ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ugt i64 %i.bs, %i.bo
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS5SceneD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit

_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit:          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit

_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN6Assimp4D3DS4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %.05.i.i.i) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8
  br label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not4.i.i.i3 = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i3, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit, %.lr.ph.i.i.i4
  %.05.i.i.i5 = phi ptr [ %i.ae, %.lr.ph.i.i.i4 ], [ %i.z, %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i5, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %.05.i.i.i5) #28, !inline_history !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i5, i64 696 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i4, !llvm.loop !8

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i4
  %.pr.i7 = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit
  %i.af = phi ptr [ %.pr.i7, %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.z, %_ZNSt6vectorIN6Assimp4D3DS4MeshESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i8, label %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #29
  br label %_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4D3DS8MaterialESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp4D3DS8MaterialES2_EvT_S4_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !20
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !20
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ugt ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.39)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g, %bb.d
  %.sink = phi ptr [ %i.ai, %bb.j ], [ %i.s, %bb.g ], [ %i.i, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.t, %bb.g ], [ %i.j, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.a
  %i.k = load i16, ptr %i.d, align 1
  store ptr %i.e, ptr %i.c, align 8
  store i16 %i.k, ptr %1, align 1
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ugt ptr %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit

bb.e:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.39)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit:  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  %i.u = load i32, ptr %i.n, align 1              ; 2 uses
  store ptr %i.o, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i32 %i.u, ptr %i.v, align 1
  %i.w = zext i32 %i.u to i64
  %i.x = add nsw i64 %i.w, -6                     ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = icmp ugt i64 %i.x, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ae
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp samesign ugt i64 %i.x, %i.ao
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull @.str.6)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #28
  resume { ptr, i32 } %i.p
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter9SkipChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i32, ptr %i.c, align 1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -6       ; 2 uses
  store ptr %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp19Discreet3DSImporter16ParseEditorChunkEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = add nsw i32 %i.p, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.z, -1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  store ptr %i.ae, ptr %i.aa, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.af = zext i32 %i.z to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.n, %bb.h
  %.sink = phi ptr [ %i.ce, %bb.w ], [ %i.aw, %bb.n ], [ %i.ak, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %i.ax, %bb.n ], [ %i.al, %bb.h ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.am = ptrtoint ptr %i.ab to i64
  %i.an = sub i64 %i.am, %i.w
  %i.ao = load i16, ptr %1, align 2
  switch i16 %i.ao, label %bb.r [
    i16 15677, label %bb.i
    i16 -20480, label %bb.j
    i16 2, label %bb.k
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  call void @_ZN6Assimp19Discreet3DSImporter16ParseObjectChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.r

bb.j:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  call void @_ZN6Assimp19Discreet3DSImporter18ParseKeyframeChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.r

bb.k:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ap = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp ugt ptr %i.as, %i.au
  br i1 %i.av, label %bb.l, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.39)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.k
  %i.ay = load i16, ptr %i.ar, align 1            ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.az = sext i16 %i.ay to i32                   ; 2 uses
  %i.ba = icmp slt i16 %i.ay, 0
  br i1 %i.ba, label %bb.o, label %.lr.ph.i.i.preheader

bb.o:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  store i8 45, ptr %i.a, align 1
  %i.bb = sub nsw i32 0, %i.az
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  %.153.i.i.ph = phi ptr [ %i.a, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit ], [ %i.n, %bb.o ]
  %.13350.i.i.ph = phi i32 [ 1, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit ], [ 2, %bb.o ]
  %.13849.i.i.ph = phi i32 [ %i.az, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit ], [ %i.bb, %bb.o ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.q
  %.153.i.i = phi ptr [ %.2.i.i, %bb.q ], [ %.153.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.q ], [ false, %.lr.ph.i.i.preheader ]
  %.03051.i.i = phi i32 [ %i.bl, %bb.q ], [ 1000000000, %.lr.ph.i.i.preheader ] ; 5 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.q ], [ %.13350.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.13849.i.i = phi i32 [ %.239.i.i, %bb.q ], [ %.13849.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bc = sdiv i32 %.13849.i.i, %.03051.i.i       ; 3 uses
  %.recomposed = srem i32 %.13849.i.i, %.03051.i.i
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = icmp eq i32 %.03051.i.i, 1              ; 2 uses
  %i.bf = or i1 %i.be, %i.bd
  %or.cond3.i.i = select i1 %.02752.i.i, i1 true, i1 %i.bf ; 2 uses
  br i1 %or.cond3.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bg = trunc i32 %i.bc to i8
  %i.bh = add i8 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.153.i.i, align 1
  %i.bj = add nuw nsw i32 %.13350.i.i, 1
  %i.bk = mul i32 %i.bc, %.03051.i.i              ; 0 uses
  br i1 %i.be, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.239.i.i = phi i32 [ %.recomposed, %bb.p ], [ %.13849.i.i, %.lr.ph.i.i ]
  %.234.i.i = phi i32 [ %i.bj, %bb.p ], [ %.13350.i.i, %.lr.ph.i.i ] ; 2 uses
  %.2.i.i = phi ptr [ %i.bi, %bb.p ], [ %.153.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bl = sdiv i32 %.03051.i.i, 10
  %i.bm = icmp ult i32 %.234.i.i, 10
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit:   ; preds = %bb.p, %bb.q
  %.4.i.i = phi ptr [ %.2.i.i, %bb.q ], [ %i.bi, %bb.p ]
  store i8 0, ptr %.4.i.i, align 1
  %i.bn = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4infoIJRA26_KcRA10_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bn, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 1 dereferenceable(10) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit, %bb.j, %bb.i, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.bo = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40 ; 2 uses
  %i.bu = and i64 %i.an, 4294967295               ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967295
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %i.bx, ptr %i.bt, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.t:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bu ; 2 uses
  store ptr %i.ca, ptr %i.bt, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp ugt ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.u, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.u:                                             ; preds = %bb.t
  %i.ce = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.41)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5: ; preds = %bb.s, %bb.t
  %i.cg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread, label %bb.x

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.x:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  %.pre-phi14 = phi i64 [ %.pre13, %._crit_edge ], [ %i.cn, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.cq = and i64 %.pre-phi14, 4294967294
  %i.cr = icmp samesign ult i64 %i.cq, 6
  br i1 %i.cr, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.x, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter16ParseObjectChunkEv(ptr noundef nonnull align 8 captures(address) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967294
  %i.l = icmp samesign ult i64 %i.k, 6
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.not21.i = icmp eq ptr %4, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.aa = load i32, ptr %i.m, align 2
  %i.ab = add i32 %i.aa, -6                       ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  %.pre = load ptr, ptr %i.b, align 8             ; 7 uses
  br i1 %i.ac, label %._crit_edge59, label %bb.c, !llvm.loop !22

._crit_edge59:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre60 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert61 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre62 = load ptr, ptr %.phi.trans.insert61, align 8
  %.pre63 = ptrtoint ptr %.pre60 to i64
  %.pre64 = ptrtoint ptr %.pre62 to i64
  %.pre66 = sub i64 %.pre63, %.pre64
  br label %bb.ay, !llvm.loop !22

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.ab, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.al, -1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.am, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ar = zext i32 %i.al to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp ugt ptr %i.as, %i.au
  br i1 %i.av, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.az, %bb.ax, %bb.ar, %bb.y, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.bj, %bb.k ], [ %i.dx, %bb.y ], [ %i.fv, %bb.ar ], [ %i.go, %bb.ax ], [ %.pn.pn, %bb.az ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aw) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.ay = ptrtoint ptr %i.an to i64
  %i.az = sub i64 %i.ay, %i.ai
  %i.ba = load i16, ptr %1, align 2
  switch i16 %i.ba, label %bb.as [
    i16 16384, label %bb.i
    i16 -20481, label %bb.n
    i16 8448, label %bb.u
    i16 4352, label %bb.w
    i16 4353, label %bb.an
    i16 256, label %bb.ao
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.bb = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp ugt ptr %i.be, %i.bg
  br i1 %i.bh, label %._crit_edge52, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit

._crit_edge52:                                    ; preds = %bb.i, %bb.l
  %i.bi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull @.str.39)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge52
  call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.k:                                             ; preds = %._crit_edge52
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bi) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit:  ; preds = %bb.i, %bb.l
  %i.bk = phi ptr [ %i.bs, %bb.l ], [ %i.be, %bb.i ]
  %i.bl = phi ptr [ %i.br, %bb.l ], [ %i.bd, %bb.i ]
  %i.bm = phi ptr [ %i.bq, %bb.l ], [ %i.bc, %bb.i ]
  %.01751 = phi i32 [ %i.bo, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %i.bn = load i8, ptr %i.bl, align 1
  store ptr %i.bk, ptr %i.bm, align 8
  %.not21 = icmp eq i8 %i.bn, 0
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  %i.bo = add i32 %.01751, 1
  %i.bp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp ugt ptr %i.bs, %i.bu
  br i1 %i.bv, label %._crit_edge52, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit, !llvm.loop !23

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  call void @_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.bd, i32 noundef %.01751)
  br label %bb.as

bb.n:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.bw = load ptr, ptr %i.w, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 696
  call void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %i.cd)
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 8)
          to label %.noexc unwind label %bb.s     ; 6 uses

.noexc:                                           ; preds = %bb.n
  store ptr %i.x, ptr %2, align 8, !alias.scope !24
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_3
begin_hunk_4_@_ZN6Assimp19Discreet3DSImporter16ParseObjectChunkEv:bb.a
bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.er = load i8, ptr %i.dr, align 1
  store i8 %i.er, ptr %i.eq, align 1
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.dr, i64 %i.ek, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i
  %i.es = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.es, ptr %i.q, align 8
  %i.et = load ptr, ptr %4, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store i8 0, ptr %i.eu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ev = load ptr, ptr %i.r, align 8             ; 6 uses
  %i.ew = icmp eq ptr %i.ev, %i.s
  %i.ex = load ptr, ptr %4, align 8               ; 6 uses
  %i.ey = icmp eq ptr %i.ex, %i.p                 ; 2 uses
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.ey, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.ey, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ez = load i64, ptr %i.q, align 8             ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ah, !prof !4

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.ez, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fb = load i8, ptr %i.ex, align 1
  store i8 %i.fb, ptr %i.ev, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr align 1 %i.ex, i64 %i.ez, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fc = load i64, ptr %i.q, align 8             ; 2 uses
  store i64 %i.fc, ptr %i.t, align 8
  %i.fd = load ptr, ptr %i.r, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 0, ptr %i.fe, align 1
  %.pre.i39 = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ex, ptr %i.r, align 8
  %i.ff = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.ff, ptr %i.t, align 8
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fg = load i64, ptr %i.s, align 8
  store ptr %i.ex, ptr %i.r, align 8
  %i.fh = load <2 x i64>, ptr %i.q, align 8
  store <2 x i64> %i.fh, ptr %i.t, align 8
  %.not.i38 = icmp eq ptr %i.ev, null
  br i1 %.not.i38, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ev, ptr %4, align 8
  store i64 %i.fg, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ak, %bb.al
  %i.fi = phi ptr [ %.pre.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ev, %bb.ak ], [ %i.p, %bb.al ], [ %i.ex, %bb.ag ]
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.fi, align 1
  %i.fj = load ptr, ptr %4, align 8               ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.p
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.fl = load i64, ptr %i.p, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.as

.loopexit45:                                      ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp, %.loopexit45
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit45 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.az

bb.an:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  store i8 1, ptr %i.o, align 8
  br label %bb.as

bb.ao:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = icmp ugt ptr %i.fq, %i.fs
  br i1 %i.ft, label %bb.ap, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull @.str.39)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fu) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.ao
  %i.fw = load float, ptr %i.fp, align 1
  store ptr %i.fq, ptr %i.fo, align 8
  store float %i.fw, ptr %i.n, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.u, %bb.v, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.m, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fx = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store ptr %i.fz, ptr %i.ga, align 8
  %i.gb = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 40 ; 2 uses
  %i.gd = and i64 %i.az, 4294967295               ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 4294967295
  br i1 %i.ge, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8
  store ptr %i.gg, ptr %i.gc, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit43

bb.au:                                            ; preds = %bb.as
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gd ; 2 uses
  store ptr %i.gj, ptr %i.gc, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = icmp ugt ptr %i.gj, %i.gl
  br i1 %i.gm, label %bb.av, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit43

bb.av:                                            ; preds = %bb.au
  %i.gn = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull @.str.41)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gn) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit43: ; preds = %bb.at, %bb.au
  %i.gp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = and i64 %i.gw, 4294967295
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %.thread, label %bb.ay

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.ay:                                            ; preds = %._crit_edge59, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit43
  %.pre-phi67 = phi i64 [ %.pre66, %._crit_edge59 ], [ %i.gw, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.gz = and i64 %.pre-phi67, 4294967294
  %i.ha = icmp samesign ult i64 %i.gz, 6
  br i1 %i.ha, label %.loopexit, label %bb.b

bb.az:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %lpad.phi, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.ay, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter18ParseKeyframeChunkEv(ptr noundef nonnull align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967294
  %i.k = icmp samesign ult i64 %i.j, 6
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.m = load i32, ptr %i.l, align 2
  %i.n = add i32 %i.m, -6                         ; 2 uses
  %i.o = icmp slt i32 %i.n, 1
  %.pre = load ptr, ptr %i.a, align 8             ; 7 uses
  br i1 %i.o, label %._crit_edge, label %bb.c, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre7 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8
  %.pre10 = ptrtoint ptr %.pre7 to i64
  %.pre11 = ptrtoint ptr %.pre9 to i64
  %.pre13 = sub i64 %.pre10, %.pre11
  br label %bb.p, !llvm.loop !28

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = add nsw i32 %i.n, %i.w                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.x, -1
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  store ptr %i.ac, ptr %i.y, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = zext i32 %i.x to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ad ; 2 uses
  store ptr %i.ae, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp ugt ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.h
  %.sink = phi ptr [ %i.bd, %bb.o ], [ %i.ai, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.o ], [ %i.aj, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.ak = ptrtoint ptr %i.z to i64
  %i.al = sub i64 %i.ak, %i.u
  %i.am = load i16, ptr %1, align 2               ; 2 uses
  %.off = add i16 %i.am, 20478
  %switch = icmp ult i16 %.off, 6
  br i1 %switch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  tail call void @_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt(ptr noundef nonnull align 8 dereferenceable(168) %0, i16 noundef zeroext %i.am)
  br label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit, %bb.i
  %i.an = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.at = and i64 %i.al, 4294967295               ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967295
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  store ptr %i.aw, ptr %i.as, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.at ; 2 uses
  store ptr %i.az, ptr %i.as, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp ugt ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.m, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull @.str.41)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5: ; preds = %bb.k, %bb.l
  %i.bf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.p:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5
  %.pre-phi14 = phi i64 [ %.pre13, %._crit_edge ], [ %i.bm, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.bp = and i64 %.pre-phi14, 4294967294
  %i.bq = icmp samesign ult i64 %i.bp, 6
  br i1 %i.bq, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.p, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4infoIJRA26_KcRA10_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 1 dereferenceable(10) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA10_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(10) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #28
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 16 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = and i64 %i.l, 4294967294
  %i.n = icmp samesign ult i64 %i.m, 6
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = zext i32 %2 to i64                       ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.s = icmp eq ptr %1, null
  %i.t = icmp ne i32 %2, 0
  %or.cond.i46 = and i1 %i.s, %i.t                ; 3 uses
  %i.u = icmp ugt i32 %2, 15                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %3)
  %i.ad = load i32, ptr %i.o, align 2
  %i.ae = add i32 %i.ad, -6                       ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  %.pre122.a = load ptr, ptr %i.d, align 8        ; 7 uses
  br i1 %i.af, label %._crit_edge, label %bb.c, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 40
  %.pre123 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert124 = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 24
  %.pre125 = load ptr, ptr %.phi.trans.insert124, align 8
  %.pre126 = ptrtoint ptr %.pre123 to i64
  %.pre127 = ptrtoint ptr %.pre125 to i64
  %.pre129 = sub i64 %.pre126, %.pre127
  br label %bb.ck, !llvm.loop !29

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = add nsw i32 %i.ae, %i.an                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 40 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.ao, -1
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.at, ptr %i.ap, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.au = zext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.au ; 2 uses
  store ptr %i.av, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp ugt ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj:bb.a

bb.bw:                                            ; preds = %bb.bv
  %i.ki = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.kj = fmul float %i.jz, %i.ki
  store float %i.kj, ptr %i.fp, align 4
  %i.kk = fmul float %i.ka, %i.ki
  store float %i.kk, ptr %i.fq, align 4
  %i.kl = fmul float %i.jy, %i.ki
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

_ZN10aiVector3tIfEdVEf.exit.sink.split:           ; preds = %bb.bt, %bb.bw
  %.sink = phi float [ %i.kl, %bb.bw ], [ 0.000000e+00, %bb.bt ]
  store float %.sink, ptr %i.fr, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.sink.split, %bb.bv
  %i.km = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = icmp ugt ptr %i.kp, %i.kr
  br i1 %i.ks, label %bb.bx, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62

bb.bx:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.kt = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull @.str.39)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @__cxa_throw(ptr nonnull %i.kt, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ku = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kt) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62: ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.kv = load float, ptr %i.ko, align 1
  store ptr %i.kp, ptr %i.kn, align 8
  %i.kw = fmul float %i.kv, f0x3C8EFA35
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.fp, align 4 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %i.fr, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0 ; 4 uses
  %.sroa.0.4.vec.extract11.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 1 ; 4 uses
  %i.kx = fmul float %.sroa.0.4.vec.extract11.i, %.sroa.0.4.vec.extract11.i
  %i.ky = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.kx)
  %i.kz = call noundef float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float %.sroa.25.0.copyload, float %i.ky) ; 2 uses
  %i.la = fcmp oeq float %i.kz, 0.000000e+00
  br i1 %i.la, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.kz)
  %i.lb = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.lc = fmul float %.sroa.0.0.vec.extract8.i, %i.lb
  %i.ld = fmul float %.sroa.0.4.vec.extract11.i, %i.lb
  %i.le = fmul float %.sroa.25.0.copyload, %i.lb
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.0.4.vec.extract.pre-phi.i = phi float [ %.sroa.0.4.vec.extract11.i, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.ld, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.0.0.vec.extract.pre-phi.i = phi float [ %.sroa.0.0.vec.extract8.i, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.lc, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i = phi float [ %.sroa.25.0.copyload, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.le, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.lf = fmul float %i.kw, 5.000000e-01          ; 2 uses
  %i.lg = call noundef float @sinf(float noundef %i.lf) #28 ; 3 uses
  %i.lh = call noundef float @cosf(float noundef %i.lf) #28 ; 4 uses
  %i.li = fmul float %.sroa.0.0.vec.extract.pre-phi.i, %i.lg ; 10 uses
  %i.lj = fmul float %.sroa.0.4.vec.extract.pre-phi.i, %i.lg ; 10 uses
  %i.lk = fmul float %.sroa.7.0.i, %i.lg          ; 8 uses
  %i.ll = fmul float %i.lk, %i.lk                 ; 2 uses
  %i.lm = call float @llvm.fmuladd.f32(float %i.lj, float %i.lj, float %i.ll)
  %i.ln = call float @llvm.fmuladd.f32(float %i.lm, float -2.000000e+00, float 1.000000e+00)
  %i.lo = fneg float %i.lh                        ; 3 uses
  %i.lp = fmul float %i.lk, %i.lo
  %i.lq = call float @llvm.fmuladd.f32(float %i.li, float %i.lj, float %i.lp)
  %i.lr = fmul float %i.lq, 2.000000e+00
  %i.ls = fmul float %i.lj, %i.lh
  %i.lt = call float @llvm.fmuladd.f32(float %i.li, float %i.lk, float %i.ls)
  %i.lu = fmul float %i.lt, 2.000000e+00
  %i.lv = fmul float %i.lk, %i.lh
  %i.lw = call float @llvm.fmuladd.f32(float %i.li, float %i.lj, float %i.lv)
  %i.lx = fmul float %i.lw, 2.000000e+00
  %i.ly = call float @llvm.fmuladd.f32(float %i.li, float %i.li, float %i.ll)
  %i.lz = call float @llvm.fmuladd.f32(float %i.ly, float -2.000000e+00, float 1.000000e+00)
  %i.ma = fmul float %i.li, %i.lo
  %i.mb = call float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.ma)
  %i.mc = fmul float %i.mb, 2.000000e+00
  %i.md = fmul float %i.lj, %i.lo
  %i.me = call float @llvm.fmuladd.f32(float %i.li, float %i.lk, float %i.md)
  %i.mf = fmul float %i.me, 2.000000e+00
  %i.mg = fmul float %i.li, %i.lh
  %i.mh = call float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.mg)
  %i.mi = fmul float %i.mh, 2.000000e+00
  %i.mj = fmul float %i.lj, %i.lj
  %i.mk = call float @llvm.fmuladd.f32(float %i.li, float %i.li, float %i.mj)
  %i.ml = call float @llvm.fmuladd.f32(float %i.mk, float -2.000000e+00, float 1.000000e+00)
  %i.mm = call float @llvm.fmuladd.f32(float %i.ln, float 0.000000e+00, float %i.lr)
  %i.mn = call float @llvm.fmuladd.f32(float %i.lu, float 0.000000e+00, float %i.mm)
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mo = call float @llvm.fmuladd.f32(float %i.lx, float 0.000000e+00, float %i.lz)
  %i.mp = call float @llvm.fmuladd.f32(float %i.mc, float 0.000000e+00, float %i.mo)
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.mp, i64 1
  %i.mq = call float @llvm.fmuladd.f32(float %i.mf, float 0.000000e+00, float %i.mi)
  %i.mr = call float @llvm.fmuladd.f32(float %i.ml, float 0.000000e+00, float %i.mq)
  %i.ms = getelementptr inbounds nuw i8, ptr %i.fm, i64 1040
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.ms, align 4
  store float %i.mr, ptr %i.fo, align 4
  %i.mt = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8            ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = icmp ugt ptr %i.mw, %i.my
  br i1 %i.mz, label %bb.ca, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63

bb.ca:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.na = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.na, ptr noundef nonnull @.str.39)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @__cxa_throw(ptr nonnull %i.na, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.na) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63: ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.nc = load float, ptr %i.mv, align 1
  store ptr %i.mw, ptr %i.mu, align 8
  %i.nd = fmul float %i.nc, f0x3C8EFA35           ; 2 uses
  %i.ne = fcmp olt float %i.nd, 1.000000e-03
  %storemerge = select i1 %i.ne, float f0x3F490FDB, float %i.nd
  store float %storemerge, ptr %i.fs, align 4
  %i.nf = load i8, ptr %i.w, align 1, !range !30, !noundef !31
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63
  call void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63, %bb.cd, %bb.an, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.nh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  store ptr %i.nj, ptr %i.nk, align 8
  %i.nl = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40 ; 2 uses
  %i.nn = and i64 %i.bc, 4294967295               ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967295
  br i1 %i.no, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %i.nq = load ptr, ptr %i.np, align 8
  store ptr %i.nq, ptr %i.nm, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.cg:                                            ; preds = %bb.ce
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nn ; 2 uses
  store ptr %i.nt, ptr %i.nm, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = icmp ugt ptr %i.nt, %i.nv
  br i1 %i.nw, label %bb.ch, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.ch:                                            ; preds = %bb.cg
  %i.nx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, ptr noundef nonnull @.str.41)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @__cxa_throw(ptr nonnull %i.nx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nx) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64: ; preds = %bb.cf, %bb.cg
  %i.nz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 2 uses
  %i.oh = and i64 %i.og, 4294967295
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %.thread, label %bb.ck

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.ck:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  %.pre-phi130 = phi i64 [ %.pre129, %._crit_edge ], [ %i.og, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.oj = and i64 %.pre-phi130, 4294967294
  %i.ok = icmp samesign ult i64 %i.oj, 6
  br i1 %i.ok, label %.loopexit, label %bb.b

bb.cl:                                            ; preds = %bb.bu, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %lpad.phi109, %bb.am ], [ %lpad.phi, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.ck, %bb.a, %.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !38
  store i8 0, ptr %i.b, align 8, !alias.scope !38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !38 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !38 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !38
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #28
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter18ParseMaterialChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967294
  %i.l = icmp samesign ult i64 %i.k, 6
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 18 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.q = load i32, ptr %i.m, align 2
  %i.r = add i32 %i.q, -6                         ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  %.pre = load ptr, ptr %i.b, align 8             ; 7 uses
  br i1 %i.s, label %._crit_edge64, label %bb.c, !llvm.loop !39

._crit_edge64:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre67 = load ptr, ptr %.phi.trans.insert66, align 8
  %.pre68 = ptrtoint ptr %.pre65 to i64
  %.pre69 = ptrtoint ptr %.pre67 to i64
  %.pre71 = sub i64 %.pre68, %.pre69
  br label %bb.bd, !llvm.loop !39

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add nsw i32 %i.r, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ab, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %i.ac, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp ugt ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.al, %bb.k, %bb.h
  %.sink = phi ptr [ %i.hw, %bb.bc ], [ %i.ev, %bb.al ], [ %i.ay, %bb.k ], [ %i.am, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.hx, %bb.bc ], [ %i.ew, %bb.al ], [ %i.az, %bb.k ], [ %i.an, %bb.h ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #28
end_hunk_5
begin_hunk_6_@_ZN6Assimp19Discreet3DSImporter18ParseMaterialChunkEv:bb.a
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -608
  %i.ej = call noundef float @_ZN6Assimp19Discreet3DSImporter20ParsePercentageChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 2 uses
  %i.ek = fcmp uno float %i.ej, 0.000000e+00
  %i.el = fmul float %i.ej, 6.553500e+04
  %i.em = fdiv float %i.el, 1.000000e+02
  %i.en = fsub float 1.000000e+00, %i.em
  %storemerge52 = select i1 %i.ek, float 1.000000e+00, float %i.en
  store float %storemerge52, ptr %i.ei, align 4
  br label %bb.ax

bb.ai:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.eo = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = icmp ugt ptr %i.er, %i.et
  br i1 %i.eu, label %bb.aj, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ev = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull @.str.39)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.ai
  %i.ex = load i16, ptr %i.eq, align 1
  store ptr %i.er, ptr %i.ep, align 8
  %i.ey = sext i16 %i.ex to i32
  %i.ez = load ptr, ptr %i.n, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -612
  store i32 %i.ey, ptr %i.fc, align 4
  br label %bb.ax

bb.am:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fd = load ptr, ptr %i.n, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -8
  store i8 1, ptr %i.fg, align 8
  br label %bb.ax

bb.an:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fh = load ptr, ptr %i.n, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -644
  %i.fl = call noundef float @_ZN6Assimp19Discreet3DSImporter20ParsePercentageChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 2 uses
  %i.fm = fcmp uno float %i.fl, 0.000000e+00
  %i.fn = fmul float %i.fl, 6.553500e+04
  %storemerge51 = select i1 %i.fm, float 0.000000e+00, float %i.fn
  store float %storemerge51, ptr %i.fk, align 4
  br label %bb.ax

bb.ao:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fo = load ptr, ptr %i.n, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -640
  %i.fs = call noundef float @_ZN6Assimp19Discreet3DSImporter20ParsePercentageChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 2 uses
  %i.ft = fcmp uno float %i.fs, 0.000000e+00
  %i.fu = fmul float %i.fs, 6.553500e+02
  %storemerge = select i1 %i.ft, float 0.000000e+00, float %i.fu
  store float %storemerge, ptr %i.fr, align 4
  br label %bb.ax

bb.ap:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fv = call noundef float @_ZN6Assimp19Discreet3DSImporter20ParsePercentageChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0) ; 2 uses
  %i.fw = fcmp uno float %i.fv, 0.000000e+00
  %i.fx = fmul float %i.fv, 6.553500e+02
  %.0 = select i1 %i.fw, float 0.000000e+00, float %i.fx ; 3 uses
  %i.fy = load ptr, ptr %i.n, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8            ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -92
  store float %.0, ptr %i.gb, align 4
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -88
  store float %.0, ptr %i.gc, align 4
  %i.gd = getelementptr inbounds i8, ptr %i.ga, i64 -84
  store float %.0, ptr %i.gd, align 4
  br label %bb.ax

bb.aq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ge = load ptr, ptr %i.n, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -600
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.gh)
  br label %bb.ax

bb.ar:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gi = load ptr, ptr %i.n, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 -312
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.gl)
  br label %bb.ax

bb.as:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gm = load ptr, ptr %i.n, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -528
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.gp)
  br label %bb.ax

bb.at:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gq = load ptr, ptr %i.n, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -168
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.gt)
  br label %bb.ax

bb.au:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gu = load ptr, ptr %i.n, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -456
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.gx)
  br label %bb.ax

bb.av:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gy = load ptr, ptr %i.n, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -240
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.hb)
  br label %bb.ax

bb.aw:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.hc = load ptr, ptr %i.n, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -384
  call void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %i.hf)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.af, %bb.ag, %bb.ad, %bb.ae, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit, %bb.ah, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.hg = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store ptr %i.hi, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40 ; 2 uses
  %i.hm = and i64 %i.ap, 4294967295               ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967295
  br i1 %i.hn, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8
  store ptr %i.hp, ptr %i.hl, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit55

bb.az:                                            ; preds = %bb.ax
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hm ; 2 uses
  store ptr %i.hs, ptr %i.hl, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = icmp ugt ptr %i.hs, %i.hu
  br i1 %i.hv, label %bb.ba, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit55

bb.ba:                                            ; preds = %bb.az
  %i.hw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull @.str.41)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @__cxa_throw(ptr nonnull %i.hw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit55: ; preds = %bb.ay, %bb.az
  %i.hy = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie                    ; 2 uses
  %i.ig = and i64 %i.if, 4294967295
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %.thread, label %bb.bd

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.bd:                                            ; preds = %._crit_edge64, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit55
  %.pre-phi72 = phi i64 [ %.pre71, %._crit_edge64 ], [ %i.if, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ii = and i64 %.pre-phi72, 4294967294
  %i.ij = icmp samesign ult i64 %i.ii, 6
  br i1 %i.ij, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.bd, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3Db(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef writeonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 5 uses
  %i.a = load atomic i8, ptr @_ZGVZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x float> splat (float +qnan), ptr @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError, align 8
  store float +qnan, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError, i64 8), align 8
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 12, ptr nonnull @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.f = load i32, ptr %i.e, align 2
  %i.g = add i32 %i.f, -6                         ; 5 uses
  %i.h = load i16, ptr %3, align 2
  switch i16 %i.h, label %bb.ao [
    i16 19, label %bb.e
    i16 16, label %bb.e
    i16 18, label %bb.q
    i16 17, label %bb.q
    i16 49, label %bb.ac
    i16 48, label %bb.ai
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = icmp ult i32 %i.g, 12
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load <2 x float>, ptr @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError, align 8
  store <2 x float> %i.j, ptr %1, align 4
  %i.k = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError, i64 8), align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.k, ptr %i.l, align 4
  br label %bb.as

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ugt ptr %i.q, %i.s
  br i1 %i.t, label %bb.h, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.39)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.ar, %bb.am, %bb.ag, %bb.ab, %bb.y, %bb.v, %bb.p, %bb.m, %bb.j
  %.sink = phi ptr [ %i.ed, %bb.ar ], [ %i.dk, %bb.am ], [ %i.ct, %bb.ag ], [ %i.ce, %bb.ab ], [ %i.br, %bb.y ], [ %i.bf, %bb.v ], [ %i.ap, %bb.p ], [ %i.ae, %bb.m ], [ %i.u, %bb.j ]
  %common.resume.op = phi { ptr, i32 } [ %i.ee, %bb.ar ], [ %i.dl, %bb.am ], [ %i.cu, %bb.ag ], [ %i.cf, %bb.ab ], [ %i.bs, %bb.y ], [ %i.bg, %bb.v ], [ %i.aq, %bb.p ], [ %i.af, %bb.m ], [ %i.v, %bb.j ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.g
  %i.w = load float, ptr %i.p, align 1
  store ptr %i.q, ptr %i.o, align 8
  store float %i.w, ptr %1, align 4
  %i.x = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp ugt ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.k, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit31

bb.k:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.39)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit31: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.ag = load float, ptr %i.z, align 1
  store ptr %i.aa, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ag, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp ugt ptr %i.al, %i.an
  br i1 %i.ao, label %bb.n, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit32

bb.n:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit31
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.39)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit32: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit31
  %i.ar = load float, ptr %i.ak, align 1
  store ptr %i.al, ptr %i.aj, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ar, ptr %i.as, align 4
  br label %bb.as

bb.q:                                             ; preds = %bb.d, %bb.d
  %i.at = icmp ult i32 %i.g, 3
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = load <2 x float>, ptr @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError, align 8
  store <2 x float> %i.au, ptr %1, align 4
  %i.av = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Assimp19Discreet3DSImporter15ParseColorChunkEP9aiColor3DbE8clrError, i64 8), align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.av, ptr %i.aw, align 4
  br label %bb.as

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp ugt ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.t, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull @.str.39)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit:  ; preds = %bb.s
  %i.bh = load i8, ptr %i.ba, align 1
  store ptr %i.bb, ptr %i.az, align 8
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fmul nnan float %i.bi, f0x3B808081
  store float %i.bj, ptr %1, align 4
  %i.bk = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp ugt ptr %i.bn, %i.bp
end_hunk_6
begin_hunk_7_@_ZN6Assimp19Discreet3DSImporter14ParseMeshChunkEv:bb.a

bb.cn:                                            ; preds = %bb.cl
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit96: ; preds = %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.os = getelementptr inbounds i8, ptr %i.oi, i64 -16
  %i.ot = load i16, ptr %i.ol, align 1
  store ptr %i.om, ptr %i.ok, align 8
  %i.ou = zext i16 %i.ot to i32
  store i32 %i.ou, ptr %i.os, align 4
  %i.ov = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 2 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = icmp ugt ptr %i.oy, %i.pa
  br i1 %i.pb, label %bb.co, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit97

bb.co:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit96
  %i.pc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, ptr noundef nonnull @.str.39)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @__cxa_throw(ptr nonnull %i.pc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit97: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit96
  %i.pe = load i16, ptr %i.ox, align 1
  store ptr %i.oy, ptr %i.ow, align 8
  %i.pf = zext i16 %i.pe to i32
  %i.pg = getelementptr inbounds i8, ptr %i.oi, i64 -12
  store i32 %i.pf, ptr %i.pg, align 4
  %i.ph = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8            ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = icmp ugt ptr %i.pk, %i.pm
  br i1 %i.pn, label %bb.cr, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit98

bb.cr:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit97
  %i.po = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.po, ptr noundef nonnull @.str.39)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @__cxa_throw(ptr nonnull %i.po, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit98: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit97
  %i.pq = load i16, ptr %i.pj, align 1
  store ptr %i.pk, ptr %i.pi, align 8
  %i.pr = zext i16 %i.pq to i32
  %i.ps = getelementptr inbounds i8, ptr %i.oi, i64 -8
  store i32 %i.pr, ptr %i.ps, align 4
  %i.pt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 2 ; 2 uses
  store ptr %i.pw, ptr %i.pu, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = icmp ugt ptr %i.pw, %i.py
  br i1 %i.pz, label %bb.cu, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit, !llvm.loop !67

bb.cu:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit98
  %i.qa = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qa, ptr noundef nonnull @.str.40)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @__cxa_throw(ptr nonnull %i.qa, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit._crit_edge: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit, %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EE7reserveEm.exit
  %.lcssa194 = phi ptr [ %i.nj, %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EE7reserveEm.exit ], [ %i.nl, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit ]
  %i.qc = getelementptr inbounds i8, ptr %i.aq, i64 -88 ; 2 uses
  %i.qd = load ptr, ptr %i.mo, align 8
  %i.qe = ptrtoint ptr %.lcssa194 to i64
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = ashr exact i64 %i.qg, 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 -842150451, ptr %i.a, align 4
  %i.qi = getelementptr inbounds i8, ptr %i.aq, i64 -80 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8            ; 3 uses
  %i.qk = load ptr, ptr %i.qc, align 8            ; 2 uses
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = ashr exact i64 %i.qn, 2                 ; 3 uses
  %i.qp = icmp ugt i64 %i.qh, %i.qo
  br i1 %i.qp, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit._crit_edge
  %i.qq = sub nuw nsw i64 %i.qh, %i.qo
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.qc, ptr %i.qj, i64 noundef %i.qq, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.cy:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit._crit_edge
  %i.qr = icmp ult i64 %i.qh, %i.qo
  br i1 %i.qr, label %bb.cz, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.cz:                                            ; preds = %bb.cy
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.qh ; 2 uses
  %.not.i.i = icmp eq ptr %i.qj, %i.qs
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.cz
  store ptr %i.qs, ptr %i.qi, align 8
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.cx, %bb.cy, %bb.cz, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.qt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = trunc i64 %i.ra to i32
  %i.rc = icmp sgt i32 %i.rb, 6
  br i1 %i.rc, label %bb.da, label %.loopexit

bb.da:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  call void @_ZN6Assimp19Discreet3DSImporter14ParseFaceChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit79, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit63, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %bb.da, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit52, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.rd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 40
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  store ptr %i.rf, ptr %i.rg, align 8
  %i.rh = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 40 ; 2 uses
  %i.rj = and i64 %i.an, 4294967295               ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 4294967295
  br i1 %i.rk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.loopexit
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rm = load ptr, ptr %i.rl, align 8
  store ptr %i.rm, ptr %i.ri, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99

bb.dc:                                            ; preds = %.loopexit
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rj ; 2 uses
  store ptr %i.rp, ptr %i.ri, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = icmp ugt ptr %i.rp, %i.rr
  br i1 %i.rs, label %bb.dd, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99

bb.dd:                                            ; preds = %bb.dc
  %i.rt = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.rt, ptr noundef nonnull @.str.41)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @__cxa_throw(ptr nonnull %i.rt, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99: ; preds = %bb.db, %bb.dc
  %i.rv = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = ptrtoint ptr %i.rx to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb                    ; 2 uses
  %i.sd = and i64 %i.sc, 4294967295
  %i.se = icmp eq i64 %i.sd, 0
  br i1 %i.se, label %.thread, label %bb.dg

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit115

bb.dg:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99
  %.pre-phi133 = phi i64 [ %.pre132, %._crit_edge ], [ %i.sc, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.sf = and i64 %.pre-phi133, 4294967294
  %i.sg = icmp samesign ult i64 %i.sf, 6
  br i1 %i.sg, label %.loopexit115, label %bb.b

.loopexit115:                                     ; preds = %bb.dg, %bb.a, %.thread
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter15ParseLightChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967294
  %i.k = icmp samesign ult i64 %i.j, 6
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.n = load i32, ptr %i.l, align 2
  %i.o = add i32 %i.n, -6                         ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %.pre = load ptr, ptr %i.a, align 8             ; 7 uses
  br i1 %i.p, label %._crit_edge, label %bb.c, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8
  %.pre36 = ptrtoint ptr %.pre33 to i64
  %.pre37 = ptrtoint ptr %.pre35 to i64
  %.pre39 = sub i64 %.pre36, %.pre37
  br label %bb.aw, !llvm.loop !72

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.o, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.y, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp ugt ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.av, %bb.ap, %bb.al, %bb.ai, %bb.af, %bb.ab, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.h
  %.sink = phi ptr [ %i.gy, %bb.av ], [ %i.ge, %bb.ap ], [ %i.fr, %bb.al ], [ %i.fe, %bb.ai ], [ %i.er, %bb.af ], [ %i.dz, %bb.ab ], [ %i.dn, %bb.x ], [ %i.db, %bb.u ], [ %i.cd, %bb.r ], [ %i.bp, %bb.o ], [ %i.bb, %bb.l ], [ %i.aj, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.gz, %bb.av ], [ %i.gf, %bb.ap ], [ %i.fs, %bb.al ], [ %i.ff, %bb.ai ], [ %i.es, %bb.af ], [ %i.ea, %bb.ab ], [ %i.do, %bb.x ], [ %i.dc, %bb.u ], [ %i.ce, %bb.r ], [ %i.bq, %bb.o ], [ %i.bc, %bb.l ], [ %i.ak, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.al = ptrtoint ptr %i.aa to i64
  %i.am = sub i64 %i.al, %i.v
  %i.an = load ptr, ptr %i.m, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 15 uses
  %i.as = load i16, ptr %1, align 2
  switch i16 %i.as, label %bb.aq [
    i16 17936, label %bb.i
    i16 18011, label %bb.y
    i16 16, label %bb.ac
    i16 19, label %bb.ac
    i16 17957, label %bb.am
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1028
  store i32 3, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.39)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.i
  %i.bd = load float, ptr %i.aw, align 1
  store ptr %i.ax, ptr %i.av, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 1032
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fsub float %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 1044 ; 3 uses
  store float %i.bg, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ugt ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.m, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @.str.39)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.br = load float, ptr %i.bk, align 1
  store ptr %i.bl, ptr %i.bj, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 1036
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fsub float %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 1048 ; 3 uses
  store float %i.bu, ptr %i.bv, align 4
  %i.bw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp ugt ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.p, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit23

bb.p:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull @.str.39)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_7
begin_hunk_8_@_ZN6Assimp19Discreet3DSImporter15ParseLightChunkEv:bb.a
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit26: ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ar, i64 1080 ; 2 uses
  %i.ec = load float, ptr %i.du, align 1          ; 2 uses
  store ptr %i.dv, ptr %i.dt, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ar, i64 1088 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !noalias !73
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = load <2 x float>, ptr %i.eb, align 4, !noalias !73
  %i.eh = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.eg
  store <2 x float> %i.ej, ptr %i.eb, align 4
  store float %i.ef, ptr %i.ed, align 4
  br label %bb.aq

bb.ac:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ek = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = icmp ugt ptr %i.en, %i.ep
  br i1 %i.eq, label %bb.ad, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27

bb.ad:                                            ; preds = %bb.ac
  %i.er = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull @.str.39)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27: ; preds = %bb.ac
  %i.et = load float, ptr %i.em, align 1
  store ptr %i.en, ptr %i.el, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ar, i64 1080 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = fmul float %i.et, %i.ev
  store float %i.ew, ptr %i.eu, align 4
  %i.ex = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = icmp ugt ptr %i.fa, %i.fc
  br i1 %i.fd, label %bb.ag, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28

bb.ag:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27
  %i.fe = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull @.str.39)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27
  %i.fg = load float, ptr %i.ez, align 1
  store ptr %i.fa, ptr %i.ey, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ar, i64 1084 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4
  %i.fj = fmul float %i.fg, %i.fi
  store float %i.fj, ptr %i.fh, align 4
  %i.fk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = icmp ugt ptr %i.fn, %i.fp
  br i1 %i.fq, label %bb.aj, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit29

bb.aj:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28
  %i.fr = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull @.str.39)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit29: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28
  %i.ft = load float, ptr %i.fm, align 1
  store ptr %i.fn, ptr %i.fl, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ar, i64 1088 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = fmul float %i.ft, %i.fv
  store float %i.fw, ptr %i.fu, align 4
  br label %bb.aq

bb.am:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = icmp ugt ptr %i.ga, %i.gc
  br i1 %i.gd, label %bb.an, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit30

bb.an:                                            ; preds = %bb.am
  %i.ge = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull @.str.39)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @__cxa_throw(ptr nonnull %i.ge, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit30: ; preds = %bb.am
  %i.gg = load float, ptr %i.fz, align 1
  store ptr %i.ga, ptr %i.fy, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ar, i64 1072
  store float %i.gg, ptr %i.gh, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit30, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit29, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit26, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit25, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store ptr %i.gk, ptr %i.gl, align 8
  %i.gm = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40 ; 2 uses
  %i.go = and i64 %i.am, 4294967295               ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967295
  br i1 %i.gp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  store ptr %i.gr, ptr %i.gn, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit31

bb.as:                                            ; preds = %bb.aq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.go ; 2 uses
  store ptr %i.gu, ptr %i.gn, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = icmp ugt ptr %i.gu, %i.gw
  br i1 %i.gx, label %bb.at, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit31

bb.at:                                            ; preds = %bb.as
  %i.gy = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull @.str.41)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @__cxa_throw(ptr nonnull %i.gy, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit31: ; preds = %bb.ar, %bb.as
  %i.ha = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = ptrtoint ptr %i.hc to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %.thread, label %bb.aw

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.aw:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit31
  %.pre-phi40 = phi i64 [ %.pre39, %._crit_edge ], [ %i.hh, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.hk = and i64 %.pre-phi40, 4294967294
  %i.hl = icmp samesign ult i64 %i.hk, 6
  br i1 %i.hl, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.aw, %bb.a, %.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967294
  %i.k = icmp samesign ult i64 %i.j, 6
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.n = load i32, ptr %i.l, align 2
  %i.o = add i32 %i.n, -6                         ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %.pre = load ptr, ptr %i.a, align 8             ; 7 uses
  br i1 %i.p, label %._crit_edge, label %bb.c, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre12 = load ptr, ptr %.phi.trans.insert11, align 8
  %.pre13 = ptrtoint ptr %.pre10 to i64
  %.pre14 = ptrtoint ptr %.pre12 to i64
  %.pre16 = sub i64 %.pre13, %.pre14
  br label %bb.v, !llvm.loop !76

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.o, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.y, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp ugt ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.o, %bb.l, %bb.h
  %.sink = phi ptr [ %i.cf, %bb.u ], [ %i.bl, %bb.o ], [ %i.ba, %bb.l ], [ %i.aj, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %i.bm, %bb.o ], [ %i.bb, %bb.l ], [ %i.ak, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.al = ptrtoint ptr %i.aa to i64
  %i.am = sub i64 %i.al, %i.v
  %i.an = load i16, ptr %1, align 2
  %cond = icmp eq i16 %i.an, 18208
  br i1 %cond, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ao = load ptr, ptr %i.m, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ugt ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.39)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.i
  %i.bc = load float, ptr %i.av, align 1
  store ptr %i.aw, ptr %i.au, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 1068
  store float %i.bc, ptr %i.bd, align 4
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ugt ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.m, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit7

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull @.str.39)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit7: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.bn = load float, ptr %i.bg, align 1
  store ptr %i.bh, ptr %i.bf, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 1072
  store float %i.bn, ptr %i.bo, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit7
  %i.bp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.bv = and i64 %i.am, 4294967295               ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967295
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bu, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8

bb.r:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bv ; 2 uses
  store ptr %i.cb, ptr %i.bu, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp ugt ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8

bb.s:                                             ; preds = %bb.r
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.41)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8: ; preds = %bb.q, %bb.r
  %i.ch = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.thread, label %bb.v

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

bb.v:                                             ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8
  %.pre-phi17 = phi i64 [ %.pre16, %._crit_edge ], [ %i.co, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.cr = and i64 %.pre-phi17, 4294967294
  %i.cs = icmp samesign ult i64 %i.cr, 6
  br i1 %i.cs, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.v, %bb.a, %.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt(ptr noundef nonnull align 8 captures(none) dereferenceable(168) %0, i16 noundef zeroext %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 38 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = and i64 %i.k, 4294967294
  %i.m = icmp samesign ult i64 %i.l, 6
  br i1 %i.m, label %.loopexit, label %.lr.ph478

.lr.ph478:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %.not = icmp eq i16 %1, -20477
  %i.p = and i16 %1, -3
  %or.cond = icmp eq i16 %i.p, -20476
  %.0139.v = select i1 %or.cond, i64 184, i64 136
  %.not150 = icmp eq i16 %1, -20478               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph478, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %2)
  %i.w = load i32, ptr %i.n, align 2
  %i.x = add i32 %i.w, -6                         ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  %.pre510.a = load ptr, ptr %i.c, align 8        ; 7 uses
  br i1 %i.y, label %._crit_edge511, label %bb.c, !llvm.loop !77

._crit_edge511:                                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 40
  %.pre512 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert513 = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 24
  %.pre514 = load ptr, ptr %.phi.trans.insert513, align 8
  %.pre519 = ptrtoint ptr %.pre512 to i64
  %.pre520 = ptrtoint ptr %.pre514 to i64
  %.pre522 = sub i64 %.pre519, %.pre520
  br label %bb.hi, !llvm.loop !77

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add nsw i32 %i.x, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 40 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.ah, -1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ai, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an ; 2 uses
  store ptr %i.ao, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre510.a, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp ugt ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.hj, %bb.hh, %bb.gr, %bb.go, %bb.gl, %bb.gi, %bb.gd, %bb.ga, %bb.fx, %bb.fi, %bb.ff, %bb.fc, %bb.ez, %bb.ew, %bb.er, %bb.eo, %bb.dx, %bb.du, %bb.do, %bb.dl, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.cg, %bb.cd, %bb.bz, %bb.bw, %bb.bt, %bb.ba, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.bf, %bb.k ], [ %i.gh, %bb.ba ], [ %i.ik, %bb.bt ], [ %i.iw, %bb.bw ], [ %i.ji, %bb.bz ], [ %i.ju, %bb.cd ], [ %i.kd, %bb.cg ], [ %i.li, %bb.cl ], [ %i.lt, %bb.co ], [ %i.md, %bb.cr ], [ %i.mn, %bb.cu ], [ %i.ox, %bb.dl ], [ %i.pg, %bb.do ], [ %i.qj, %bb.du ], [ %i.qu, %bb.dx ], [ %i.tb, %bb.eo ], [ %i.tk, %bb.er ], [ %i.uq, %bb.ew ], [ %i.vb, %bb.ez ], [ %i.vl, %bb.fc ], [ %i.vv, %bb.ff ], [ %i.wf, %bb.fi ], [ %i.zg, %bb.fx ], [ %i.zp, %bb.ga ], [ %i.aaa, %bb.gd ], [ %i.abf, %bb.gi ], [ %i.abq, %bb.gl ], [ %i.aca, %bb.go ], [ %i.ack, %bb.gr ], [ %i.afd, %bb.hh ], [ %.pn.pn.pn.pn, %bb.hj ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.as) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.au = ptrtoint ptr %i.aj to i64
  %i.av = sub i64 %i.au, %i.ae
  %i.aw = load i16, ptr %2, align 2
  switch i16 %i.aw, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit [
    i16 -20464, label %bb.i
    i16 -20463, label %bb.aw
    i16 -20461, label %bb.bo
    i16 -20448, label %bb.ca
    i16 -20444, label %bb.dg
    i16 -20445, label %bb.ek
    i16 -20447, label %bb.el
    i16 -20446, label %bb.fu
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ax = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  br i1 %i.bd, label %._crit_edge475, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit

._crit_edge475:                                   ; preds = %bb.i, %bb.l
  %i.be = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull @.str.39)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge475
  call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.k:                                             ; preds = %._crit_edge475
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.be) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit:  ; preds = %bb.i, %bb.l
  %i.bg = phi ptr [ %i.bo, %bb.l ], [ %i.ba, %bb.i ]
  %i.bh = phi ptr [ %i.bn, %bb.l ], [ %i.az, %bb.i ]
  %i.bi = phi ptr [ %i.bm, %bb.l ], [ %i.ay, %bb.i ]
  %.0126474 = phi i32 [ %i.bk, %bb.l ], [ 0, %bb.i ] ; 5 uses
  %i.bj = load i8, ptr %i.bh, align 1
  store ptr %i.bg, ptr %i.bi, align 8
  %.not152 = icmp eq i8 %i.bj, 0
  br i1 %.not152, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  %i.bk = add i32 %.0126474, 1
  %i.bl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp ugt ptr %i.bo, %i.bq
  br i1 %i.br, label %._crit_edge475, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit, !llvm.loop !78

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bs = zext i32 %.0126474 to i64               ; 2 uses
  store ptr %i.s, ptr %3, align 8
  %i.bt = icmp eq ptr %i.az, null
  %i.bu = icmp ne i32 %.0126474, 0
  %or.cond.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #30
          to label %.noexc unwind label %.loopexit.split-lp395

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.bs, ptr %i.b, align 8
  %i.bv = icmp ugt i32 %.0126474, 15
  br i1 %i.bv, label %.noexc.i, label %._crit_edge.i.i

end_hunk_8
begin_hunk_9_@_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt:bb.a
  %i.acv = load ptr, ptr %i.aae, align 8
  %.not.i279 = icmp eq ptr %i.acn, %i.acv
  br i1 %.not.i279, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  store double %i.abh, ptr %i.acn, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acn, i64 12
  store float %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  store float %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acn, i64 20
  store i32 1, ptr %.sroa.16.0..sroa_idx, align 4
  %i.acw = load ptr, ptr %i.aaw, align 8
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 24 ; 2 uses
  store ptr %i.acx, ptr %i.aaw, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit292

bb.gw:                                            ; preds = %bb.gu
  %i.acy = ptrtoint ptr %i.acn to i64
  %i.acz = ptrtoint ptr %i.acm to i64
  %i.ada = sub i64 %i.acy, %i.acz                 ; 4 uses
  %i.adb = icmp eq i64 %i.ada, 9223372036854775800
  br i1 %i.adb, label %bb.gx, label %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280

bb.gx:                                            ; preds = %bb.gw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280: ; preds = %bb.gw
  %i.adc = sdiv exact i64 %i.ada, 24              ; 3 uses
  %.sroa.speculated.i.i.i281 = call i64 @llvm.umax.i64(i64 %i.adc, i64 1)
  %i.add = add nsw i64 %.sroa.speculated.i.i.i281, %i.adc ; 2 uses
  %i.ade = icmp ult i64 %i.add, %i.adc
  %i.adf = call i64 @llvm.umin.i64(i64 %i.add, i64 384307168202282325)
  %i.adg = select i1 %i.ade, i64 384307168202282325, i64 %i.adf ; 3 uses
  %.not.i.i.i282 = icmp ne i64 %i.adg, 0
  call void @llvm.assume(i1 %.not.i.i.i282)
  %i.adh = mul nuw nsw i64 %i.adg, 24
  %i.adi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adh) #31 ; 5 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.ada ; 5 uses
  store double %i.abh, ptr %i.adj, align 8
  %.sroa.7.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx318, align 8
  %.sroa.10.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.adj, i64 12
  store float %.sroa.10.0, ptr %.sroa.10.0..sroa_idx320, align 4
  %.sroa.13.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  store float %.sroa.13.0, ptr %.sroa.13.0..sroa_idx322, align 8
  %.sroa.16.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %i.adj, i64 20
  store i32 1, ptr %.sroa.16.0..sroa_idx324, align 4
  br i1 %i.aco, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i288, label %.lr.ph.i.i.i.i.i284

.lr.ph.i.i.i.i.i284:                              ; preds = %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280, %.lr.ph.i.i.i.i.i284
  %.012.i.i.i.i.i285 = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i284 ], [ %i.adi, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280 ] ; 2 uses
  %.0911.i.i.i.i.i286 = phi ptr [ %i.adk, %.lr.ph.i.i.i.i.i284 ], [ %i.acm, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i285, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i286, i64 24, i1 false), !alias.scope !111
  %i.adk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i286, i64 24 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i285, i64 24 ; 2 uses
  %.not.i.i.i.i.i287 = icmp eq ptr %i.adk, %i.acn
  br i1 %.not.i.i.i.i.i287, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i288, label %.lr.ph.i.i.i.i.i284, !llvm.loop !84

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i288: ; preds = %.lr.ph.i.i.i.i.i284, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280
  %.0.lcssa.i.i.i.i.i289 = phi ptr [ %i.adi, %_ZNKSt6vectorI11aiVectorKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i280 ], [ %i.adl, %.lr.ph.i.i.i.i.i284 ]
  %i.adm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i289, i64 24 ; 2 uses
  %.not.i23.i.i290 = icmp eq ptr %i.acm, null
  br i1 %.not.i23.i.i290, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i291, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i288
  call void @_ZdlPvm(ptr noundef nonnull %i.acm, i64 noundef %i.ada) #29
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i291

_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i291: ; preds = %bb.gy, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i288
  store ptr %i.adi, ptr %i.aac, align 8
  store ptr %i.adm, ptr %i.aaw, align 8
  %i.adn = getelementptr inbounds nuw [24 x i8], ptr %i.adi, i64 %i.adg
  store ptr %i.adn, ptr %i.aae, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit292

_ZNSt6vectorI11aiVectorKeySaIS0_EE9push_backERKS0_.exit292: ; preds = %bb.gv, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i291
  %i.ado = phi ptr [ %i.acx, %bb.gv ], [ %i.adm, %_ZNSt6vectorI11aiVectorKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i291 ]
  %i.adp = add nuw i32 %.0134458, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.adp, %i.zr
  br i1 %exitcond.not, label %._crit_edge, label %bb.gf, !llvm.loop !115

bb.gz:                                            ; preds = %._crit_edge
  %i.adq = load ptr, ptr %i.aac, align 8
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.adq, ptr nonnull %i.ado)
  %i.adr = load ptr, ptr %i.aac, align 8          ; 2 uses
  %i.ads = load ptr, ptr %i.aaw, align 8          ; 5 uses
  %i.adt = icmp eq ptr %i.adr, %i.ads
  br i1 %i.adt, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.preheader.i.i.i293

.preheader.i.i.i293:                              ; preds = %bb.gz, %bb.ha
  %.sroa.010.0.i.i.i294 = phi ptr [ %i.adu, %bb.ha ], [ %i.adr, %bb.gz ] ; 5 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i294, i64 24 ; 3 uses
  %.not.i.i.i295 = icmp eq ptr %i.adu, %i.ads
  br i1 %.not.i.i.i295, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.ha

bb.ha:                                            ; preds = %.preheader.i.i.i293
  %i.adv = load double, ptr %.sroa.010.0.i.i.i294, align 8
  %i.adw = load double, ptr %i.adu, align 8
  %i.adx = fcmp oeq double %i.adv, %i.adw
  br i1 %i.adx, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296, label %.preheader.i.i.i293, !llvm.loop !90

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296: ; preds = %bb.ha
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i294, i64 48 ; 2 uses
  %.not20.i.i297 = icmp eq ptr %i.ady, %i.ads
  br i1 %.not20.i.i297, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit305, label %.lr.ph.i.i298

.lr.ph.i.i298:                                    ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296, %bb.hc
  %i.adz = phi ptr [ %i.aee, %bb.hc ], [ %i.ady, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296 ] ; 3 uses
  %.sroa.0.021.i.i299 = phi ptr [ %.sroa.0.1.i.i300, %bb.hc ], [ %.sroa.010.0.i.i.i294, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296 ] ; 3 uses
  %i.aea = load double, ptr %.sroa.0.021.i.i299, align 8
  %i.aeb = load double, ptr %i.adz, align 8
  %i.aec = fcmp oeq double %i.aea, %i.aeb
  br i1 %i.aec, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph.i.i298
  %i.aed = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i299, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aed, ptr noundef nonnull align 8 dereferenceable(24) %i.adz, i64 24, i1 false)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.i.i298
  %.sroa.0.1.i.i300 = phi ptr [ %.sroa.0.021.i.i299, %.lr.ph.i.i298 ], [ %i.aed, %bb.hb ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 24 ; 2 uses
  %.not.i.i301 = icmp eq ptr %i.aee, %i.ads
  br i1 %.not.i.i301, label %._crit_edge.i.i302.loopexit, label %.lr.ph.i.i298, !llvm.loop !91

._crit_edge.i.i302.loopexit:                      ; preds = %bb.hc
  %.pre.pre = load ptr, ptr %i.aaw, align 8
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit305

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit305: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296, %._crit_edge.i.i302.loopexit
  %.pre = phi ptr [ %i.ads, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296 ], [ %.pre.pre, %._crit_edge.i.i302.loopexit ]
  %.sroa.0.0.lcssa.i.i303 = phi ptr [ %.sroa.010.0.i.i.i294, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i296 ], [ %.sroa.0.1.i.i300, %._crit_edge.i.i302.loopexit ]
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i303, i64 24 ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %.pre
  br i1 %i.aeg, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i310

_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i310: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit305
  %i.aeh = load ptr, ptr %i.aac, align 8          ; 2 uses
  %i.aei = ptrtoint ptr %i.aef to i64
  %i.aej = ptrtoint ptr %i.aeh to i64
  %i.aek = sub i64 %i.aei, %i.aej
  %i.ael = getelementptr inbounds i8, ptr %i.aeh, i64 %i.aek
  store ptr %i.ael, ptr %i.aaw, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit: ; preds = %.preheader.i.i.i293, %.preheader.i.i.i248, %.preheader.i.i.i211, %.preheader.i.i.i, %bb.gz, %bb.fq, %bb.eg, %bb.dc, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit274, %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit, %_ZNSt6vectorIN6Assimp4D3DS10aiFloatKeyESaIS2_EE7reserveEm.exit, %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit, %bb.bb, %_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i310, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit305, %_ZSt8_DestroyIP9aiQuatKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit, %_ZSt8_DestroyIPN6Assimp4D3DS10aiFloatKeyES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EET_SE_SE_T0_.exit, %_ZSt8_DestroyIP11aiVectorKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP11aiVectorKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit, %._crit_edge, %._crit_edge462, %._crit_edge467, %._crit_edge472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ek, %bb.dh, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit190, %bb.bp, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.aem = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 40
  %i.aeo = load ptr, ptr %i.aen, align 8
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  store ptr %i.aeo, ptr %i.aep, align 8
  %i.aeq = load ptr, ptr %i.c, align 8            ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 40 ; 2 uses
  %i.aes = and i64 %i.av, 4294967295              ; 2 uses
  %i.aet = icmp eq i64 %i.aes, 4294967295
  br i1 %i.aet, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeq, i64 32
  %i.aev = load ptr, ptr %i.aeu, align 8
  store ptr %i.aev, ptr %i.aer, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit312

bb.he:                                            ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  %i.aex = load ptr, ptr %i.aew, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.aes ; 2 uses
  store ptr %i.aey, ptr %i.aer, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeq, i64 32
  %i.afa = load ptr, ptr %i.aez, align 8
  %i.afb = icmp ugt ptr %i.aey, %i.afa
  br i1 %i.afb, label %bb.hf, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit312

bb.hf:                                            ; preds = %bb.he
  %i.afc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.afc, ptr noundef nonnull @.str.41)
          to label %bb.hg unwind label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  call void @__cxa_throw(ptr nonnull %i.afc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.afd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.afc) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit312: ; preds = %bb.hd, %bb.he
  %i.afe = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 40
  %i.afg = load ptr, ptr %i.aff, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 24
  %i.afi = load ptr, ptr %i.afh, align 8
  %i.afj = ptrtoint ptr %i.afg to i64
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = sub i64 %i.afj, %i.afk                 ; 2 uses
  %i.afm = and i64 %i.afl, 4294967295
  %i.afn = icmp eq i64 %i.afm, 0
  br i1 %i.afn, label %.thread, label %bb.hi

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit312
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit

bb.hi:                                            ; preds = %._crit_edge511, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit312
  %.pre-phi523 = phi i64 [ %.pre522, %._crit_edge511 ], [ %i.afl, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit312 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.afo = and i64 %.pre-phi523, 4294967294
  %i.afp = icmp samesign ult i64 %i.afo, 6
  br i1 %i.afp, label %.loopexit, label %bb.b

bb.hj:                                            ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %lpad.phi, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.hi, %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter17InverseNodeSearchEPNS_4D3DS4NodeES3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i16, ptr %i.a, align 8
  br label %bb.g

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  store ptr %1, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.f, align 8
  br label %_ZN6Assimp4D3DS4Node9push_backEPS1_.exit

bb.c:                                             ; preds = %tailrecurse._crit_edge
  %i.l = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %1, ptr %i.x, align 8
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #29
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.w, ptr %i.e, align 8
  store ptr %i.z, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.h, align 8
  br label %_ZN6Assimp4D3DS4Node9push_backEPS1_.exit

bb.g:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr3134 = phi ptr [ %2, %.lr.ph ], [ %i.ae, %tailrecurse ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr3134, i64 104
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = icmp eq i16 %i.ac, %i.b
  %i.ae = load ptr, ptr %.tr3134, align 8         ; 7 uses
  %.not13 = icmp eq ptr %i.ae, null               ; 2 uses
  br i1 %i.ad, label %bb.h, label %tailrecurse

bb.h:                                             ; preds = %bb.g
  br i1 %.not13, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not.i.i14 = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %1, ptr %i.ah, align 8
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.ag, align 8
  br label %_ZN6Assimp4D3DS4Node9push_backEPS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.l, label %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i15

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i15: ; preds = %bb.k
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i16, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i17 = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i17)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #31 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store ptr %1, ptr %i.ay, align 8
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.m, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i18

bb.m:                                             ; preds = %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.am, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i18

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i18: ; preds = %bb.m, %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.not.i17.i.i.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i19, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i20, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i20

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i20: ; preds = %bb.n, %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i18
  store ptr %i.ax, ptr %i.af, align 8
  store ptr %i.ba, ptr %i.ag, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bb, ptr %i.ai, align 8
  br label %_ZN6Assimp4D3DS4Node9push_backEPS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr3134, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr3134, i64 16 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr3134, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i.i22 = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i.i22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %1, ptr %i.be, align 8
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.bd, align 8
  br label %_ZN6Assimp4D3DS4Node9push_backEPS1_.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.bk = ptrtoint ptr %i.be to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.r, label %_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i23

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.q
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i24, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
end_hunk_9
begin_hunk_10_@_ZN6Assimp19Discreet3DSImporter14ParseFaceChunkEv:bb.a
  %.not4751 = icmp eq ptr %i.cg, %i.ci
  br i1 %.not4751, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.x
  %.02553 = phi i32 [ %i.da, %bb.x ], [ 0, %bb.u ] ; 3 uses
  %.sroa.036.052 = phi ptr [ %i.cz, %bb.x ], [ %i.cg, %bb.u ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.036.052, i64 16
  %i.ck = load i64, ptr %i.cj, align 8
  %.not30 = icmp eq i64 %i.ck, 0
  br i1 %.not30, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.036.052, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.06.i = phi ptr [ %i.cm, %bb.v ], [ %i.cr, %bb.w ] ; 2 uses
  %.0.i = phi ptr [ %i.bu, %bb.v ], [ %i.cn, %bb.w ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.co = load i8, ptr %.0.i, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = call i32 @tolower(i32 noundef %i.cp) #33 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.cs = load i8, ptr %.06.i, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = call i32 @tolower(i32 noundef %i.ct) #33
  %i.cv = and i32 %i.cq, 255
  %i.cw = icmp ne i32 %i.cv, 0
  %.unshifted = xor i32 %i.cq, %i.cu
  %.mask = and i32 %.unshifted, 255
  %i.cx = icmp eq i32 %.mask, 0                   ; 2 uses
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %bb.w, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !120

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.w
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph, %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.036.052, i64 696 ; 2 uses
  %i.da = add i32 %.02553, 1
  %.not47 = icmp eq ptr %i.cz, %i.ci
  br i1 %.not47, label %.thread, label %.lr.ph, !llvm.loop !121

bb.y:                                             ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.db = icmp eq i32 %.02553, -842150451
  br i1 %i.db, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.x, %bb.u, %bb.y
  %i.dc = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA24_KcRPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull align 1 dereferenceable(24) @.str.17, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.y
  %.02643 = phi i32 [ -842150451, %.thread ], [ %.02553, %bb.y ]
  %i.dd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp ugt ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.aa, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull @.str.39)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dk) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.z
  %i.dm = load i16, ptr %i.df, align 1            ; 2 uses
  store ptr %i.dg, ptr %i.de, align 8
  %i.dn = zext i16 %i.dm to i32
  %.not62 = icmp eq i16 %i.dm, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  %i.do = getelementptr inbounds i8, ptr %i.aq, i64 -88
  %i.dp = getelementptr inbounds i8, ptr %i.aq, i64 -80
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.aj, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph55, %bb.aj
  %.02454 = phi i32 [ 0, %.lr.ph55 ], [ %i.ej, %bb.aj ]
  %i.dq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = icmp ugt ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.ae, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit34

bb.ae:                                            ; preds = %bb.ad
  %i.dx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull @.str.39)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dx) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit34: ; preds = %bb.ad
  %i.dz = load i16, ptr %i.ds, align 1
  store ptr %i.dt, ptr %i.dr, align 8
  %i.ea = zext i16 %i.dz to i64                   ; 2 uses
  %i.eb = load ptr, ptr %i.dp, align 8
  %i.ec = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2
  %.not32 = icmp ugt i64 %i.eg, %i.ea
  br i1 %.not32, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit34
  %i.eh = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.eh, ptr noundef nonnull @.str.18)
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit34
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ea
  store i32 %.02643, ptr %i.ei, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ej = add nuw nsw i32 %.02454, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ej, %i.dn
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad, !llvm.loop !122

.loopexit:                                        ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit, %.preheader, %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ek = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40 ; 2 uses
  %i.eq = and i64 %i.an, 4294967295               ; 2 uses
  %i.er = icmp eq i64 %i.eq, 4294967295
  br i1 %i.er, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.et = load ptr, ptr %i.es, align 8
  store ptr %i.et, ptr %i.ep, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit35

bb.al:                                            ; preds = %.loopexit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eq ; 2 uses
  store ptr %i.ew, ptr %i.ep, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = icmp ugt ptr %i.ew, %i.ey
  br i1 %i.ez, label %bb.am, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit35

bb.am:                                            ; preds = %bb.al
  %i.fa = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull @.str.41)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fa) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit35: ; preds = %bb.ak, %bb.al
  %i.fc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.thread45, label %bb.ap

.thread45:                                        ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit48

bb.ap:                                            ; preds = %._crit_edge65, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit35
  %.pre-phi73 = phi i64 [ %.pre72, %._crit_edge65 ], [ %i.fj, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.fm = and i64 %.pre-phi73, 4294967294
  %i.fn = icmp samesign ult i64 %i.fm, 6
  br i1 %i.fn, label %.loopexit48, label %bb.b

.loopexit48:                                      ; preds = %bb.ap, %bb.a, %.thread45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA24_KcRPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #28
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA24_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN6Assimp19Discreet3DSImporter20ParsePercentageChunkEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.a = load i16, ptr %1, align 2
  switch i16 %i.a, label %bb.j [
    i16 49, label %bb.b
    i16 48, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ugt ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.39)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.w, %bb.i ], [ %i.j, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.k, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.b
  %i.l = load float, ptr %i.e, align 1
  store ptr %i.f, ptr %i.d, align 8
  %i.m = fmul float %i.l, 1.000000e+02
  %i.n = fdiv float %i.m, 6.553500e+04
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp ugt ptr %i.s, %i.u
  br i1 %i.v, label %bb.g, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.39)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit:  ; preds = %bb.f
  %i.y = load i16, ptr %i.r, align 1
  store ptr %i.s, ptr %i.q, align 8
  %i.z = uitofp i16 %i.y to float
  %i.aa = fdiv float %i.z, 6.553500e+04
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %.0 = phi float [ %i.n, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit ], [ %i.aa, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit ], [ +qnan, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef captures(address) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
end_hunk_10
begin_hunk_11_@_ZN6Assimp19Discreet3DSImporter17ParseTextureChunkEPNS_4D3DS7TextureE:bb.a
  %i.fa = fcmp oeq float %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.as, label %bb.bn

bb.as:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit33
  %i.fb = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fb, ptr noundef nonnull @.str.25)
  store float 1.000000e+00, ptr %i.r, align 4
  br label %bb.bn

bb.at:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = icmp ugt ptr %i.ff, %i.fh
  br i1 %i.fi, label %bb.au, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit34

bb.au:                                            ; preds = %bb.at
  %i.fj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull @.str.39)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit34: ; preds = %bb.at
  %i.fl = load float, ptr %i.fe, align 1
  store ptr %i.ff, ptr %i.fd, align 8
  %i.fm = fneg float %i.fl
  store float %i.fm, ptr %i.q, align 8
  br label %bb.bn

bb.ax:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = icmp ugt ptr %i.fq, %i.fs
  br i1 %i.ft, label %bb.ay, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit35

bb.ay:                                            ; preds = %bb.ax
  %i.fu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull @.str.39)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit35: ; preds = %bb.ax
  %i.fw = load float, ptr %i.fp, align 1
  store ptr %i.fq, ptr %i.fo, align 8
  store float %i.fw, ptr %i.p, align 4
  br label %bb.bn

bb.bb:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fx = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = icmp ugt ptr %i.ga, %i.gc
  br i1 %i.gd, label %bb.bc, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit36

bb.bc:                                            ; preds = %bb.bb
  %i.ge = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull @.str.39)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @__cxa_throw(ptr nonnull %i.ge, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit36: ; preds = %bb.bb
  %i.gg = load float, ptr %i.fz, align 1
  store ptr %i.ga, ptr %i.fy, align 8
  %i.gh = fmul float %i.gg, f0xBC8EFA35
  store float %i.gh, ptr %i.o, align 8
  br label %bb.bn

bb.bf:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gi = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = icmp ugt ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.bg, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit37

bb.bg:                                            ; preds = %bb.bf
  %i.gp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull @.str.39)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @__cxa_throw(ptr nonnull %i.gp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit37: ; preds = %bb.bf
  %i.gr = load i16, ptr %i.gk, align 1
  store ptr %i.gl, ptr %i.gj, align 8
  %i.gs = zext i16 %i.gr to i32                   ; 2 uses
  %i.gt = and i32 %i.gs, 2
  %.not = icmp eq i32 %i.gt, 0
  br i1 %.not, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit37
  store i32 2, ptr %i.n, align 4
  br label %bb.bn

bb.bk:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit37
  %i.gu = and i32 %i.gs, 16
  %.not29 = icmp eq i32 %i.gu, 0
  br i1 %.not29, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 3, ptr %i.n, align 4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  store i32 0, ptr %i.n, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bm, %bb.bl, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit33, %bb.as, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit32, %bb.an, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit36, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit35, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit34, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF8Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.gv = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store ptr %i.gx, ptr %i.gy, align 8
  %i.gz = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 2 uses
  %i.hb = and i64 %i.ax, 4294967295               ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967295
  br i1 %i.hc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.he = load ptr, ptr %i.hd, align 8
  store ptr %i.he, ptr %i.ha, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit38

bb.bp:                                            ; preds = %bb.bn
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hb ; 2 uses
  store ptr %i.hh, ptr %i.ha, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = icmp ugt ptr %i.hh, %i.hj
  br i1 %i.hk, label %bb.bq, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit38

bb.bq:                                            ; preds = %bb.bp
  %i.hl = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull @.str.41)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.hl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit38: ; preds = %bb.bo, %bb.bp
  %i.hn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht                    ; 2 uses
  %i.hv = and i64 %i.hu, 4294967295
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %.thread, label %bb.bt

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.loopexit

bb.bt:                                            ; preds = %._crit_edge46, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit38
  %.pre-phi54 = phi i64 [ %.pre53, %._crit_edge46 ], [ %i.hu, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.hx = and i64 %.pre-phi54, 4294967294
  %i.hy = icmp samesign ult i64 %i.hx, 6
  br i1 %i.hy, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.bt, %bb.a, %.thread
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp19Discreet3DSImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp19Discreet3DSImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #28
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp19Discreet3DSImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp19Discreet3DSImporterD2Ev.exit

_ZN6Assimp19Discreet3DSImporterD2Ev.exit:         ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #29
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS4MeshD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i:  ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp4D3DS4FaceESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i
  %i.ai = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i2.i, label %_ZN23MeshWithSmoothingGroupsIN6Assimp4D3DS4FaceEED2Ev.exit, label %bb.f

end_hunk_11
begin_hunk_12_@_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA21_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_:bb.a
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.35)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.36)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = sub i64 %i.g, %i.l                       ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #31 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.p)
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !135
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !135
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !4

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !136
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA38_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(38) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA42_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(42) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(42) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_12
