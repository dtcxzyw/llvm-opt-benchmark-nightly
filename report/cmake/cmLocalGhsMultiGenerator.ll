Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmLocalGhsMultiGenerator?download=true
inline.NumInlined: 400
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN24cmLocalGhsMultiGenerator22ComputeObjectFilenamesERSt3mapIPK12cmSourceFile17cmObjectLocationsSt4lessIS3_ESaISt4pairIKS3_S4_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK17cmGeneratorTarget:bb.a
  store i64 %i.bi, ptr %i.x, align 8, !tbaa !16
  %i.cq = load i64, ptr %i.z, align 8, !tbaa !76
  store i64 %i.cq, ptr %i.w, align 8, !tbaa !76
  %.not.i64 = icmp eq ptr %i.cf, null
  br i1 %.not.i64, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i63
  store ptr %i.cf, ptr %10, align 8, !tbaa !15
  store i64 %i.cp, ptr %i.z, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit69

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i63, %.thread.i68
  store ptr %i.z, ptr %10, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i65, %bb.t, %bb.u
  %i.cr = phi ptr [ %.pre.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i65 ], [ %i.cf, %bb.t ], [ %i.z, %bb.u ]
  store i64 0, ptr %i.y, align 8, !tbaa !16
  store i8 0, ptr %i.cr, align 1, !tbaa !76
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !75
  invoke void @_ZNK17cmGlobalGenerator26GetLanguageOutputExtensionB5cxx11ERK12cmSourceFile(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(2202) %i.cs, ptr noundef nonnull align 8 dereferenceable(376) %i.bh)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %i.cu = load i64, ptr %i.x, align 8, !tbaa !16
  %i.cv = sub i64 4611686018427387903, %i.cu
  %i.cw = icmp ult i64 %i.cv, %i.ct
  br i1 %i.cw, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
          to label %.noexc unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.w
  %i.cx = load ptr, ptr %12, align 8, !tbaa !15
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.cx, i64 noundef %i.ct)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cz = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ae
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store ptr %i.af, ptr %14, align 8, !tbaa !81
  %i.dd = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.de = load i64, ptr %i.x, align 8, !tbaa !16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.de, ptr %i.c, align 8, !tbaa !17
  %i.df = icmp ugt i64 %i.de, 15
  br i1 %i.df, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc74 unwind label %bb.ae  ; 2 uses

.noexc74:                                         ; preds = %.noexc.i
  store ptr %i.dg, ptr %14, align 8, !tbaa !15
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !17
  store i64 %i.dh, ptr %i.af, align 8, !tbaa !76
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.di = phi ptr [ %i.dg, %.noexc74 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ] ; 2 uses
  switch i64 %i.de, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.dj = load i8, ptr %i.dd, align 1, !tbaa !76
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !76
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dd, i64 %i.de, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  store i64 %i.dk, ptr %i.ag, align 8, !tbaa !16
  %i.dl = load ptr, ptr %14, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  invoke void @_ZN5cmsys11SystemTools9LowerCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 %14)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.af
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ab
  %i.dp = load i64, ptr %i.af, align 8, !tbaa !76
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %i.dr = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ac unwind label %bb.ag     ; 2 uses

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !135
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !135
  %i.du = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ah
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ac
  %i.dw = load i64, ptr %i.ah, align 8, !tbaa !76
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.dy = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.z
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.ea = load i64, ptr %i.z, align 8, !tbaa !76
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ec = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.w
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.ee = load i64, ptr %i.w, align 8, !tbaa !76
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.eg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0196.0289) #20 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.v
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

bb.ad:                                            ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.x
  %lpad.loopexit.split-lp412.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ae
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp
  %i.ek = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ad
  %.pn48 = phi { ptr, i32 } [ %i.eh, %bb.ad ], [ %lpad.loopexit.split-lp412.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %lpad.loopexit.split-lp412.a, %.loopexit.split-lp202.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.ah

bb.ae:                                            ; preds = %.noexc.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.af:                                            ; preds = %bb.aa
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.af
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.af
  %i.eq = load i64, ptr %i.af, align 8, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.a

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ah
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.ag
  %24 = load i64, ptr %i.ah, align 8, !tbaa !76
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  %.sink411 = phi i64 [ %24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  %.sink = phi ptr [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  %.pn50.ph = phi { ptr, i32 } [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  %i.eu = add i64 %.sink411, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.eu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.a, %bb.ag, %bb.af, %bb.ae
  %.pn50 = phi { ptr, i32 } [ %i.en, %bb.af ], [ %i.em, %bb.ae ], [ %i.er, %bb.ag ], [ %.pn50.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.o
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.ce, %bb.o ] ; 2 uses
  %i.ev = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.z
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.ah
  %i.ex = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.n
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %.pn50.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn50.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ez = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.w
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.fb = load i64, ptr %i.w, align 8, !tbaa !76
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ch

._crit_edge294:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %._crit_edge
  %i.fd = load ptr, ptr %i.p, align 8, !tbaa !77
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.fd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %._crit_edge294
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #21
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit: ; preds = %._crit_edge294
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.fg = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !76
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.aj:                                            ; preds = %.lr.ph293, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.sroa.0192.0291 = phi ptr [ %i.ai, %.lr.ph293 ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ] ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0192.0291, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !134 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i8 1, ptr %i.d, align 1, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZN16cmLocalGenerator30GetObjectFileNameWithoutTargetERK12cmSourceFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbPKcPKb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef nonnull align 8 dereferenceable(376) %i.fm, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store ptr %i.aj, ptr %16, align 8, !tbaa !81
  store i64 0, ptr %i.ak, align 8, !tbaa !16
  store i8 0, ptr %i.aj, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  invoke void @_ZNK16cmLocalGenerator23GetCustomObjectFileNameB5cxx11ERK12cmSourceFile(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef nonnull align 8 dereferenceable(376) %i.fm)
          to label %bb.al unwind label %bb.av

bb.al:                                            ; preds = %bb.ak
  %i.fn = load i64, ptr %i.al, align 8, !tbaa !16 ; 6 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.fp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK12cmSourceFile11GetFullPathB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.fm)
          to label %bb.an unwind label %bb.aw

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5cmsys11SystemTools31GetFilenameWithoutLastExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %i.fp)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.fq = load ptr, ptr %16, align 8, !tbaa !15   ; 6 uses
  %i.fr = icmp eq ptr %i.fq, %i.aj
  %i.fs = load ptr, ptr %18, align 8, !tbaa !15   ; 5 uses
  %i.ft = icmp eq ptr %i.fs, %i.an                ; 2 uses
  br i1 %i.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110: ; preds = %bb.ao
  br i1 %i.ft, label %bb.ap, label %.thread.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105: ; preds = %bb.ao
  br i1 %i.ft, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  %i.fu = load i64, ptr %i.ao, align 8, !tbaa !16 ; 3 uses
  %i.fv = icmp ult i64 %i.fu, 16
  call void @llvm.assume(i1 %i.fv)
  switch i64 %i.fu, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fw = load i8, ptr %i.fs, align 1, !tbaa !76
  store i8 %i.fw, ptr %i.fq, align 1, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fs, i64 %i.fu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.fx = load i64, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  store i64 %i.fx, ptr %i.ak, align 8, !tbaa !16
  %i.fy = load ptr, ptr %16, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fx
  store i8 0, ptr %i.fz, align 1, !tbaa !76
  %.pre.i109 = load ptr, ptr %18, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

.thread.i111:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i110
  store ptr %i.fs, ptr %16, align 8, !tbaa !15
  %i.ga = load <2 x i64>, ptr %i.ao, align 8, !tbaa !76
  store <2 x i64> %i.ga, ptr %i.ak, align 8, !tbaa !76
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i105
  %i.gb = load i64, ptr %i.aj, align 8, !tbaa !76
  store ptr %i.fs, ptr %16, align 8, !tbaa !15
  %i.gc = load <2 x i64>, ptr %i.ao, align 8, !tbaa !76
  store <2 x i64> %i.gc, ptr %i.ak, align 8, !tbaa !76
  %.not.i107 = icmp eq ptr %i.fq, null
  br i1 %.not.i107, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106
  store ptr %i.fq, ptr %18, align 8, !tbaa !15
  store i64 %i.gb, ptr %i.an, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i106, %.thread.i111
  store ptr %i.an, ptr %18, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108, %bb.as, %bb.at
  %i.gd = phi ptr [ %.pre.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i108 ], [ %i.fq, %bb.as ], [ %i.an, %bb.at ]
  store i64 0, ptr %i.ao, align 8, !tbaa !16
  store i8 0, ptr %i.gd, align 1, !tbaa !76
  %i.ge = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.an
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112
  %i.gg = load i64, ptr %i.an, align 8, !tbaa !76
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.be

bb.au:                                            ; preds = %bb.aj
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.av:                                            ; preds = %bb.ak
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.aw:                                            ; preds = %bb.an, %bb.am
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.ax:                                            ; preds = %bb.al
  %i.gl = load ptr, ptr %16, align 8, !tbaa !15   ; 6 uses
  %i.gm = icmp eq ptr %i.gl, %i.aj
  %i.gn = load ptr, ptr %17, align 8, !tbaa !15   ; 5 uses
  %i.go = icmp eq ptr %i.gn, %i.am                ; 2 uses
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i121: ; preds = %bb.ax
  br i1 %i.go, label %bb.ay, label %.thread.i122
end_hunk_0
