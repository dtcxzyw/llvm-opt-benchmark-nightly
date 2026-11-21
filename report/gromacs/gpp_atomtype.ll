Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gpp_atomtype?download=true
inline.NumInlined: 990
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN22PreprocessingAtomTypes13renumberTypesERN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS2_95EEEP10gmx_mtop_tPib:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.x:                                             ; preds = %bb.v
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ce
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.x
  %i.fh = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.w
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.w ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.fe, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %._crit_edge159
  %i.fj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.fk = load ptr, ptr %6, align 8, !tbaa !89    ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !88 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fk, %i.fm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i94

.lr.ph.i.i.i94:                                   ; preds = %bb.z, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fz, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i ], [ %i.fk, %bb.z ] ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !37 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i95: ; preds = %.lr.ph.i.i.i94
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !45
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i95
  %i.ft = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !54
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fy) #23
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.fz, %i.fm
  br i1 %.not.i.i.i96, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i94, !llvm.loop !4

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !89
  br label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %bb.z
  %i.ga = phi ptr [ %.pr.i, %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.fk, %bb.z ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !90
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #23
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit

_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.gg = load ptr, ptr %5, align 8, !tbaa !20    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !19 ; 2 uses
  %.not4.i.i.i98 = icmp eq ptr %i.gg, %i.gi
  br i1 %.not4.i.i.i98, label %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i.i
  %.05.i.i.i100 = phi ptr [ %i.hc, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i.i ], [ %i.gg, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit ] ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 72
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 144
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !37 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 160 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i99
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !45
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gq = load ptr, ptr %i.gj, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 88
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !54
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gv) #23
  br label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i.i

_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i.i:        ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !37 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 56 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i101: ; preds = %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i.i
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !45
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #23
  br label %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i.i

_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i.i:     ; preds = %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i101
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i100, i64 192 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.hc, %i.gi
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i99, !llvm.loop !2

_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i.i
  %.pr.i103 = load ptr, ptr %5, align 8, !tbaa !20
  br label %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit
  %i.hd = phi ptr [ %.pr.i103, %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.gg, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i104 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i1.i104, label %_ZNSt6vectorI12AtomTypeDataSaIS0_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !55
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #23
  br label %_ZNSt6vectorI12AtomTypeDataSaIS0_EED2Ev.exit

_ZNSt6vectorI12AtomTypeDataSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12AtomTypeDataS0_EvT_S2_RSaIT0_E.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i106 = icmp eq ptr %.sroa.0124.0, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI12AtomTypeDataSaIS0_EED2Ev.exit
  %i.hj = ptrtoint ptr %.sroa.17.0 to i64
  %i.hk = sub i64 %i.hj, %.pre180
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.0, i64 noundef %i.hk) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorI12AtomTypeDataSaIS0_EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.dz, %bb.r ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt6vectorI12AtomTypeDataSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.loopexit.split-lp136

.loopexit.split-lp136:                            ; preds = %.loopexit.split-lp136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp
  %.pn73 = phi { ptr, i32 } [ %.pn69.pn.pn, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp225, %.loopexit.split-lp136.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i107 = icmp eq ptr %.sroa.0124.0, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIiSaIiEED2Ev.exit108, label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp136
  %i.hl = ptrtoint ptr %.sroa.17.0 to i64
  %i.hm = ptrtoint ptr %.sroa.0124.0 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.0, i64 noundef %i.hn) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit108

_ZNSt6vectorIiSaIiEED2Ev.exit108:                 ; preds = %bb.af, %.loopexit.split-lp136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  resume { ptr, i32 } %.pn73
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL16search_atomtypesPK22PreprocessingAtomTypesPiN3gmx8ArrayRefIiEEiNS4_IK17InteractionOfTypeEE19InteractionFunction(ptr %.0.val.0.val, ptr %.0.val.8.val, ptr nofree noundef nonnull captures(none) %0, ptr nofree captures(none) %1, i32 noundef %2, i64 %.0.val1, i32 noundef range(i32 37, 39) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !21     ; 13 uses
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !190
  %i.h = add nsw i32 %i.g, %i.e
  %.fr108 = freeze i32 %i.h                       ; 2 uses
  %i.i = ptrtoint ptr %.0.val.8.val to i64
  %i.j = ptrtoint ptr %.0.val.0.val to i64
  %i.k = sub i64 %i.i, %i.j
  %.fr = freeze i64 %i.k
  %i.l = sdiv i64 %.fr, 192                       ; 7 uses
  %i.m = trunc i64 %i.l to i32                    ; 7 uses
  %i.n = icmp sgt i32 %i.a, 0
  br i1 %i.n, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %bb.a
  %i.o = icmp sgt i32 %i.m, 0
  %i.p = inttoptr i64 %.0.val1 to ptr             ; 5 uses
  %i.q = mul nsw i32 %2, %i.m
  %i.r = icmp slt i32 %2, 0                       ; 3 uses
  %i.s = zext i32 %2 to i64                       ; 2 uses
  %i.t = icmp sle i64 %i.l, %i.s                  ; 3 uses
  %i.u = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 188 ; 5 uses
  br i1 %i.o, label %.lr.ph31.split.us, label %._crit_edge32

.lr.ph31.split.us:                                ; preds = %.lr.ph31
  %i.w = icmp sgt i32 %.fr108, 0
  br i1 %i.w, label %.lr.ph31.split.us.split.us.preheader, label %.lr.ph31.split.us.split

.lr.ph31.split.us.split.us.preheader:             ; preds = %.lr.ph31.split.us
  %i.x = zext nneg i32 %.fr108 to i64             ; 3 uses
  %i.y = sext i32 %i.q to i64                     ; 3 uses
  %i.z = and i64 %i.l, 2147483647                 ; 3 uses
  %wide.trip.count160 = zext nneg i32 %i.a to i64
  %invariant.gep203 = getelementptr [112 x i8], ptr %i.p, i64 %i.y
  %invariant.gep207 = getelementptr [112 x i8], ptr %i.p, i64 %i.y
  %invariant.gep211 = getelementptr [112 x i8], ptr %i.p, i64 %i.y
  %brmerge = or i1 %i.r, %i.t
  br label %.lr.ph31.split.us.split.us

.lr.ph31.split.us.split.us:                       ; preds = %.lr.ph31.split.us.split.us.preheader, %._crit_edge15.split.us56.us.thread
  %indvars.iv157.a = phi i64 [ 0, %.lr.ph31.split.us.split.us.preheader ], [ %indvars.iv.next158, %._crit_edge15.split.us56.us.thread ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv157.a
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  %.fr114 = freeze i32 %i.ab                      ; 4 uses
  %i.ac = icmp eq i32 %.fr114, %2
  br i1 %i.ac, label %._crit_edge32.loopexit, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph31.split.us.split.us
  %i.ad = mul nsw i32 %.fr114, %i.m               ; 2 uses
  %i.ae = icmp sgt i32 %.fr114, -1
  %i.af = zext nneg i32 %.fr114 to i64            ; 2 uses
  %i.ag = icmp sgt i64 %i.l, %i.af
  %i.ah = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 188
  br i1 %i.ae, label %.lr.ph14.split.us52.us.split.us.preheader, label %.lr.ph14.split.us52.us.split

.lr.ph14.split.us52.us.split.us.preheader:        ; preds = %.preheader.us.us
  %i.aj = zext nneg i32 %i.ad to i64
  %invariant.gep209 = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.aj
  br label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %bb.d, %.lr.ph14.split.us52.us.split.us.preheader
  %indvars.iv155.a = phi i64 [ 0, %.lr.ph14.split.us52.us.split.us.preheader ], [ %indvars.iv.next156.a, %bb.d ] ; 3 uses
  %gep210 = getelementptr inbounds nuw [112 x i8], ptr %invariant.gep209, i64 %indvars.iv155.a
  %i.ak = getelementptr inbounds nuw i8, ptr %gep210, i64 24
  %gep212 = getelementptr [112 x i8], ptr %invariant.gep211, i64 %indvars.iv155.a
  %i.al = getelementptr inbounds nuw i8, ptr %gep212, i64 24
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %indvars.iv152.a = phi i64 [ 0, %.lr.ph.us.us.us.preheader ], [ %indvars.iv.next153.a, %.lr.ph.us.us.us ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv152.a
  %i.an = load float, ptr %i.am, align 4, !tbaa !47
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv152.a
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !47
  %i.aq = fcmp oeq float %i.an, %i.ap             ; 2 uses
  %indvars.iv.next153.a = add nuw nsw i64 %indvars.iv152.a, 1 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next153.a, %i.x
  %i.as = select i1 %i.ar, i1 %i.aq, i1 false
  br i1 %i.as, label %.lr.ph.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !184

._crit_edge.us.us.us:                             ; preds = %.lr.ph.us.us.us
  br i1 %i.aq, label %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84, label %._crit_edge15.split.us56.us.thread

_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84: ; preds = %._crit_edge.us.us.us
  br i1 %i.ag, label %bb.b, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us

bb.b:                                             ; preds = %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !21
  br label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us: ; preds = %bb.b, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84
  %.sroa.2.0.i.us.us.us85 = phi i32 [ %i.at, %bb.b ], [ 0, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84 ]
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us
  %i.au = load i32, ptr %i.v, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us
  %.sroa.2.0.i55.us.us.us88 = phi i32 [ %i.au, %bb.c ], [ 0, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us ]
  %i.av = icmp eq i32 %.sroa.2.0.i.us.us.us85, %.sroa.2.0.i55.us.us.us88 ; 2 uses
  %indvars.iv.next156.a = add nuw nsw i64 %indvars.iv155.a, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv.next156.a, %i.z
  %i.ax = select i1 %i.aw, i1 %i.av, i1 false
  br i1 %i.ax, label %.lr.ph.us.us.us.preheader, label %._crit_edge15.split.us56.us, !llvm.loop !185

.lr.ph14.split.us52.us.split:                     ; preds = %.preheader.us.us
  %i.ay = sext i32 %i.ad to i64
  %invariant.gep205 = getelementptr [112 x i8], ptr %i.p, i64 %i.ay ; 2 uses
  br i1 %i.r, label %.lr.ph.us.us.preheader, label %.lr.ph.us.us.us93.preheader

.lr.ph.us.us.us93.preheader:                      ; preds = %.lr.ph14.split.us52.us.split, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100 ], [ 0, %.lr.ph14.split.us52.us.split ] ; 3 uses
  %gep = getelementptr [112 x i8], ptr %invariant.gep205, i64 %indvars.iv145
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %gep204 = getelementptr [112 x i8], ptr %invariant.gep203, i64 %indvars.iv145
  %i.ba = getelementptr inbounds nuw i8, ptr %gep204, i64 24
  br label %.lr.ph.us.us.us93

.lr.ph.us.us.us93:                                ; preds = %.lr.ph.us.us.us93.preheader, %.lr.ph.us.us.us93
  %indvars.iv142.a = phi i64 [ 0, %.lr.ph.us.us.us93.preheader ], [ %indvars.iv.next143.a, %.lr.ph.us.us.us93 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv142.a
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !47
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv142.a
  %i.be = load float, ptr %i.bd, align 4, !tbaa !47
  %i.bf = fcmp oeq float %i.bc, %i.be             ; 2 uses
  %indvars.iv.next143.a = add nuw nsw i64 %indvars.iv142.a, 1 ; 2 uses
  %i.bg = icmp samesign ult i64 %indvars.iv.next143.a, %i.x
  %i.bh = select i1 %i.bg, i1 %i.bf, i1 false
  br i1 %i.bh, label %.lr.ph.us.us.us93, label %._crit_edge.us.us.us95, !llvm.loop !184

._crit_edge.us.us.us95:                           ; preds = %.lr.ph.us.us.us93
  br i1 %i.bf, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us98, label %._crit_edge15.split.us56.us.thread

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us98: ; preds = %._crit_edge.us.us.us95
  br i1 %i.t, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100, label %bb.e

bb.e:                                             ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us98
  %i.bi = load i32, ptr %i.v, align 4, !tbaa !21
  %i.bj = icmp eq i32 %i.bi, 0
  br label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100: ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us98, %bb.e
  %i.bk = phi i1 [ true, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us55.us.us98 ], [ %i.bj, %bb.e ] ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next146, %i.z
  %i.bm = select i1 %i.bl, i1 %i.bk, i1 false
  br i1 %i.bm, label %.lr.ph.us.us.us93.preheader, label %._crit_edge15.split.us56.us, !llvm.loop !185

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph14.split.us52.us.split, %._crit_edge.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge.us.us ], [ 0, %.lr.ph14.split.us52.us.split ] ; 3 uses
  %gep206 = getelementptr [112 x i8], ptr %invariant.gep205, i64 %indvars.iv150
  %i.bn = getelementptr inbounds nuw i8, ptr %gep206, i64 24
  %gep208 = getelementptr [112 x i8], ptr %invariant.gep207, i64 %indvars.iv150
  %i.bo = getelementptr inbounds nuw i8, ptr %gep208, i64 24
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv147 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next148, %.lr.ph.us.us ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv147
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !47
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv147
  %i.bs = load float, ptr %i.br, align 4, !tbaa !47
  %i.bt = fcmp oeq float %i.bq, %i.bs             ; 3 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next148, %i.x
  %i.bv = select i1 %i.bu, i1 %i.bt, i1 false
  br i1 %i.bv, label %.lr.ph.us.us, label %._crit_edge.us.us, !llvm.loop !184

._crit_edge.us.us:                                ; preds = %.lr.ph.us.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next151, %i.z
  %i.bx = select i1 %i.bw, i1 %i.bt, i1 false
  br i1 %i.bx, label %.lr.ph.us.us.preheader, label %._crit_edge15.split.us56.us, !llvm.loop !185

._crit_edge15.split.us56.us:                      ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100, %._crit_edge.us.us, %bb.d
  %.us-phi89 = phi i1 [ %i.bt, %._crit_edge.us.us ], [ %i.av, %bb.d ], [ %i.bk, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us100 ]
  br i1 %.us-phi89, label %._crit_edge32.loopexit, label %._crit_edge15.split.us56.us.thread

._crit_edge15.split.us56.us.thread:               ; preds = %._crit_edge.us.us.us95, %._crit_edge.us.us.us, %._crit_edge15.split.us56.us
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157.a, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge32.thread, label %.lr.ph31.split.us.split.us, !llvm.loop !186

.lr.ph31.split.us.split:                          ; preds = %.lr.ph31.split.us
  %wide.trip.count140 = zext nneg i32 %i.a to i64 ; 3 uses
  br i1 %i.r, label %.lr.ph31.split.us.split.split, label %.lr.ph31.split.us.split.split.us

.lr.ph31.split.us.split.split.us:                 ; preds = %.lr.ph31.split.us.split
  br i1 %i.t, label %.lr.ph31.split.us.split.split.us.split.us.preheader, label %.lr.ph14.split.us.split.us.us.us.split.us

.lr.ph31.split.us.split.split.us.split.us.preheader: ; preds = %.lr.ph31.split.us.split.split.us
  %5 = icmp ne i32 %i.m, 1
  br label %.lr.ph31.split.us.split.split.us.a

.lr.ph31.split.us.split.split.us.a:               ; preds = %.lr.ph31.split.us.split.split.us.split.us.preheader, %.lr.ph14.split.us.split.us.us.us.a
  %indvars.iv.a = phi i64 [ %indvars.iv.next.us, %.lr.ph14.split.us.split.us.us.us.a ], [ 0, %.lr.ph31.split.us.split.split.us.split.us.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.a
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  %.fr112.a = freeze i32 %i.bz                    ; 3 uses
  %i.ca = icmp eq i32 %.fr112.a, %2
  br i1 %i.ca, label %._crit_edge32.loopexit182, label %.preheader.us.us65.a

.preheader.us.us65.a:                             ; preds = %.lr.ph31.split.us.split.split.us.a
  %i.cb = icmp sgt i32 %.fr112.a, -1
  %i.cc = zext i32 %.fr112.a to i64               ; 2 uses
  %6 = icmp sgt i64 %i.l, %i.cc
  %or.cond = and i1 %i.cb, %6
  br i1 %or.cond, label %.lr.ph14.split.us.split.us.us.us.split.us.us, label %._crit_edge32.loopexit182

.lr.ph14.split.us.split.us.us.us.split.us.us:     ; preds = %.preheader.us.us65.a
  %7 = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.cc
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 188
  %.pr = load i32, ptr %8, align 4, !tbaa !21
  %9 = icmp eq i32 %.pr, 0                        ; 2 uses
  %10 = select i1 %5, i1 %9, i1 false
  br i1 %10, label %.lr.ph14.split.us.split.us.us.us.split.us.us.peel.newph, label %.lr.ph14.split.us.split.us38.us

.lr.ph14.split.us.split.us.us.us.split.us.us.peel.newph: ; preds = %.lr.ph14.split.us.split.us.us.us.split.us.us, %.lr.ph14.split.us.split.us.us.us.split.us.us.peel.newph
  %.04613.us.us.us.us.us.us139 = phi i32 [ %11, %.lr.ph14.split.us.split.us.us.us.split.us.us.peel.newph ], [ 1, %.lr.ph14.split.us.split.us.us.us.split.us.us ]
  %11 = add nuw nsw i32 %.04613.us.us.us.us.us.us139, 1 ; 2 uses
  %12 = icmp slt i32 %11, %i.m
  br i1 %12, label %.lr.ph14.split.us.split.us.us.us.split.us.us.peel.newph, label %._crit_edge32.loopexit182, !llvm.loop !187

.lr.ph14.split.us.split.us38.us:                  ; preds = %.lr.ph14.split.us.split.us.us.us.split.us.us
  br i1 %9, label %._crit_edge32.loopexit182, label %.lr.ph14.split.us.split.us.us.us.a

.lr.ph14.split.us.split.us.us.us.a:               ; preds = %.lr.ph14.split.us.split.us38.us
  %indvars.iv.next.us = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.us.not = icmp eq i64 %indvars.iv.next.us, %wide.trip.count140
  br i1 %exitcond.us.not, label %._crit_edge32.thread, label %.lr.ph31.split.us.split.split.us.a, !llvm.loop !186

.lr.ph14.split.us.split.us.us.us.split.us:        ; preds = %.lr.ph31.split.us.split.split.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph31.split.us.split.split.us ] ; 3 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cd = load i32, ptr %13, align 4, !tbaa !21
  %.fr112 = freeze i32 %i.cd                      ; 3 uses
  %14 = icmp eq i32 %.fr112, %2
  br i1 %14, label %._crit_edge32.loopexit187, label %.lr.ph14.split.us.split.us.us.us.split

.lr.ph14.split.us.split.us.us.us.split:           ; preds = %.lr.ph14.split.us.split.us.us.us.split.us
  %15 = icmp sgt i32 %.fr112, -1
  %16 = zext i32 %.fr112 to i64                   ; 2 uses
  %17 = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 188
  br i1 %15, label %._crit_edge15.split.us.us.us.loopexit.a, label %._crit_edge15.split.us.us.us.loopexit7

._crit_edge15.split.us.us.us.loopexit.a:          ; preds = %.lr.ph14.split.us.split.us.us.us.split
  %19 = icmp sgt i64 %i.l, %16
  br i1 %19, label %._crit_edge15.split.us.us.us.loopexit5, label %._crit_edge15.split.us.us.us.loopexit6

._crit_edge15.split.us.us.us.loopexit5:           ; preds = %._crit_edge15.split.us.us.us.loopexit.a
  %20 = load i32, ptr %18, align 4, !tbaa !21
  %i.ce = load i32, ptr %i.v, align 4, !tbaa !21
  %i.cf = icmp eq i32 %20, %i.ce
  br label %._crit_edge15.split.us.us.us

._crit_edge15.split.us.us.us.loopexit6:           ; preds = %._crit_edge15.split.us.us.us.loopexit.a
  %i.cg = load i32, ptr %i.v, align 4, !tbaa !21
  %i.ch = icmp eq i32 %i.cg, 0
  br label %._crit_edge15.split.us.us.us

._crit_edge15.split.us.us.us.loopexit7:           ; preds = %.lr.ph14.split.us.split.us.us.us.split
  %i.ci = load i32, ptr %i.v, align 4, !tbaa !21
  %i.cj = icmp eq i32 %i.ci, 0
  br label %._crit_edge15.split.us.us.us

._crit_edge15.split.us.us.us:                     ; preds = %._crit_edge15.split.us.us.us.loopexit7, %._crit_edge15.split.us.us.us.loopexit6, %._crit_edge15.split.us.us.us.loopexit5
  %.us-phi17.us.us = phi i1 [ %i.cf, %._crit_edge15.split.us.us.us.loopexit5 ], [ %i.ch, %._crit_edge15.split.us.us.us.loopexit6 ], [ %i.cj, %._crit_edge15.split.us.us.us.loopexit7 ]
  br i1 %.us-phi17.us.us, label %._crit_edge32.loopexit187, label %bb.f

bb.f:                                             ; preds = %._crit_edge15.split.us.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count140
  br i1 %exitcond.not, label %._crit_edge32.thread, label %.lr.ph14.split.us.split.us.us.us.split.us, !llvm.loop !186

.lr.ph31.split.us.split.split:                    ; preds = %.lr.ph31.split.us.split, %bb.h
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.h ], [ 0, %.lr.ph31.split.us.split ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv137
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !21
  %.fr111 = freeze i32 %i.cl                      ; 3 uses
  %i.cm = icmp eq i32 %.fr111, %2
  br i1 %i.cm, label %._crit_edge32.loopexit.a, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph31.split.us.split.split
  %i.cn = icmp sgt i32 %.fr111, -1
  %i.co = zext nneg i32 %.fr111 to i64            ; 2 uses
  %i.cp = icmp sgt i64 %i.l, %i.co
  %i.cq = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 188
  br i1 %i.cn, label %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us, label %._crit_edge32.loopexit.a

_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us: ; preds = %.preheader.us, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us
  %.04613.us.us.us = phi i32 [ %i.cu, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us ], [ 0, %.preheader.us ]
  br i1 %i.cp, label %bb.g, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us

bb.g:                                             ; preds = %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !21
  %i.ct = icmp eq i32 %i.cs, 0
  br label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us: ; preds = %bb.g, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us
  %.sroa.2.0.i.us.us.us = phi i1 [ %i.ct, %bb.g ], [ true, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us ] ; 2 uses
  %i.cu = add nuw nsw i32 %.04613.us.us.us, 1     ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %i.m
  %i.cw = select i1 %i.cv, i1 %.sroa.2.0.i.us.us.us, i1 false
  br i1 %i.cw, label %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us, label %._crit_edge15.split.us.us, !llvm.loop !185

._crit_edge15.split.us.us:                        ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us
  br i1 %.sroa.2.0.i.us.us.us, label %._crit_edge32.loopexit.a, label %bb.h

bb.h:                                             ; preds = %._crit_edge15.split.us.us
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge32.thread, label %.lr.ph31.split.us.split.split, !llvm.loop !186

._crit_edge32.loopexit:                           ; preds = %._crit_edge15.split.us56.us, %.lr.ph31.split.us.split.us
  %21 = trunc nuw nsw i64 %indvars.iv157.a to i32
  br label %._crit_edge32

._crit_edge32.loopexit.a:                         ; preds = %._crit_edge15.split.us.us, %.lr.ph31.split.us.split.split, %.preheader.us
  %i.cx = trunc nuw nsw i64 %indvars.iv137 to i32
  br label %._crit_edge32

._crit_edge32.loopexit182:                        ; preds = %.lr.ph14.split.us.split.us.us.us.split.us.us.peel.newph, %.lr.ph31.split.us.split.split.us.a, %.lr.ph14.split.us.split.us38.us, %.preheader.us.us65.a
  %i.cy = trunc nuw nsw i64 %indvars.iv.a to i32
  br label %._crit_edge32

._crit_edge32.loopexit187:                        ; preds = %.lr.ph14.split.us.split.us.us.us.split.us, %._crit_edge15.split.us.us.us
  %i.cz = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit187, %._crit_edge32.loopexit182, %._crit_edge32.loopexit.a, %._crit_edge32.loopexit, %.lr.ph31, %bb.a
  %.048.lcssa = phi i32 [ 0, %bb.a ], [ %i.cx, %._crit_edge32.loopexit.a ], [ %21, %._crit_edge32.loopexit ], [ 0, %.lr.ph31 ], [ %i.cy, %._crit_edge32.loopexit182 ], [ %i.cz, %._crit_edge32.loopexit187 ] ; 3 uses
  %i.da = icmp eq i32 %.048.lcssa, %i.a
  br i1 %i.da, label %._crit_edge32.thread, label %bb.m

._crit_edge32.thread:                             ; preds = %bb.f, %.lr.ph14.split.us.split.us.us.us.a, %bb.h, %._crit_edge15.split.us56.us.thread, %._crit_edge32
  %.048.lcssa185 = phi i32 [ %.048.lcssa, %._crit_edge32 ], [ %i.a, %._crit_edge15.split.us56.us.thread ], [ %i.a, %bb.h ], [ %i.a, %.lr.ph14.split.us.split.us.us.us.a ], [ %i.a, %bb.f ]
  %i.db = icmp eq i32 %i.a, %i.m
  br i1 %i.db, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge32.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(75) @.str.3, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 279, ptr noundef nonnull @.str.4, i32 noundef %i.a, ptr noundef nonnull @.str.3, i32 noundef 279) #24
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.dc

bb.l:                                             ; preds = %._crit_edge32.thread
  %i.dd = sext i32 %i.a to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dd
  store i32 %2, ptr %i.de, align 4, !tbaa !21
  %i.df = add nuw nsw i32 %i.a, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge32
  %.048.lcssa177 = phi i32 [ %.048.lcssa185, %bb.l ], [ %.048.lcssa, %._crit_edge32 ]
  %.0 = phi i32 [ %i.df, %bb.l ], [ %i.a, %._crit_edge32 ]
  store i32 %.0, ptr %0, align 4, !tbaa !21
  ret i32 %.048.lcssa177
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17InteractionOfType19interactionTypeNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI12AtomTypeDataSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 36, i1 false), !tbaa.struct !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 5 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !43
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.k, ptr %i.a, align 8, !tbaa !44
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !37
  %i.n = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.n, ptr %i.h, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !45
  store i8 %i.p, ptr %i.o, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.q, ptr %i.r, align 8, !tbaa !35
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.u, ptr noundef nonnull align 8 dereferenceable(105) %i.v)
          to label %_ZN12AtomTypeDataC2ERKS_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.h, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.w

_ZN12AtomTypeDataC2ERKS_.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  store ptr %i.af, ptr %i.b, align 8, !tbaa !19
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI12AtomTypeDataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(192) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN12AtomTypeDataC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI12AtomTypeDataSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 192
  %i.o = tail call noundef ptr @_ZNSt6vectorI12AtomTypeDataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.al, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 160 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !45
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #23
  br label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i

_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i:          ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !45
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i

_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i:       ; preds = %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exit

_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exit:        ; preds = %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exitthread-pre-split, %bb.c
  %i.am = phi ptr [ %.pr, %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exit
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #23
  br label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !55
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP12AtomTypeDataSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit

bb.f:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19 ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.av, %i.f
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp sgt i64 %i.f, 0
  br i1 %i.aw, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ax = udiv exact i64 %i.f, 192
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.0910.i.i.i.i.i, i64 36, i1 false), !tbaa.struct !58
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.bc = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(105) %i.ba, ptr noundef nonnull align 8 dereferenceable(105) %i.bb) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !tbaa.struct !70
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 144
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 176
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !71, !range !72, !noundef !73
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 176
  store i8 %i.bi, ptr %i.bj, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 184
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 184
  %i.bm = load i64, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 192
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 192 ; 3 uses
  %i.bp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit, !llvm.loop !192

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !68
  %.pre51 = ptrtoint ptr %i.bo to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit, %bb.g
  %.pre-phi52 = phi i64 [ %.pre51, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit ], [ %i.k, %bb.g ]
  %i.br = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit ], [ %i.at, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.bo, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit ], [ %i.i, %bb.g ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.br
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP12AtomTypeDataSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit
  %i.bs = sub i64 %.pre-phi52, %i.k
  %i.bt = getelementptr inbounds i8, ptr %i.i, i64 %i.bs
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i32
  %.sroa.01.05.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i32 ], [ %i.bt, %.lr.ph.i.i26.preheader ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 160 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !45
  %i.ca = add i64 %i.bz, 1
  tail call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i27
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i.i.i29 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i29, label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i30, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i28
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #23
  br label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i30

_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i30:        ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i28
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !37 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 56 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i30
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.cm = add i64 %i.cl, 1
  tail call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #23
  br label %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i32

_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i32:     ; preds = %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 192 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cn, %i.br
  br i1 %.not.i.i33, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP12AtomTypeDataSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %.lr.ph.i.i26, !llvm.loop !193

bb.i:                                             ; preds = %bb.f
  %i.co = icmp sgt i64 %i.av, 0
  br i1 %i.co, label %.lr.ph.preheader.i.i.i.i.i37, label %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit

.lr.ph.preheader.i.i.i.i.i37:                     ; preds = %bb.i
  %i.cp = udiv exact i64 %i.av, 192
  br label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %.lr.ph.i.i.i.i.i38, %.lr.ph.preheader.i.i.i.i.i37
  %.012.i.i.i.i.i39 = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i38 ], [ %i.cp, %.lr.ph.preheader.i.i.i.i.i37 ] ; 2 uses
  %.0811.i.i.i.i.i40 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i38 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i37 ] ; 8 uses
  %.0910.i.i.i.i.i41 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i38 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i37 ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.0811.i.i.i.i.i40, ptr noundef nonnull align 8 dereferenceable(192) %.0910.i.i.i.i.i41, i64 36, i1 false), !tbaa.struct !58
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 72
  %i.cu = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(105) %i.cs, ptr noundef nonnull align 8 dereferenceable(105) %i.ct) ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i64 48, i1 false), !tbaa.struct !70
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 144
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 144
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 176
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !71, !range !72, !noundef !73
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 176
  store i8 %i.da, ptr %i.db, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 184
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 184
  %i.de = load i64, ptr %i.dd, align 8
  store i64 %i.de, ptr %i.dc, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 192
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 192
  %i.dh = add nsw i64 %.012.i.i.i.i.i39, -1
  %i.di = icmp samesign ugt i64 %.012.i.i.i.i.i39, 1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i38, label %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit, !llvm.loop !194

_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i38
  %.pre42 = load ptr, ptr %1, align 8, !tbaa !20
  %.pre43 = load ptr, ptr %i.as, align 8, !tbaa !19 ; 2 uses
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !20
  %.pre45 = load ptr, ptr %i.a, align 8, !tbaa !19
  %.pre46 = ptrtoint ptr %.pre43 to i64
  %.pre47 = ptrtoint ptr %.pre44 to i64
  %.pre49 = sub i64 %.pre46, %.pre47
  br label %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit

_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit:    ; preds = %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit, %bb.i
  %.pre-phi50 = phi i64 [ %.pre49, %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.av, %bb.i ]
  %i.dj = phi ptr [ %.pre45, %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.b, %bb.i ]
  %i.dk = phi ptr [ %.pre43, %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.at, %bb.i ]
  %i.dl = phi ptr [ %.pre42, %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.pre-phi50
  %i.dn = tail call noundef ptr @_ZSt16__do_uninit_copyIP12AtomTypeDataS1_ET0_T_S3_S2_(ptr noundef %i.dm, ptr noundef %i.dj, ptr noundef %i.dk) ; 0 uses
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP12AtomTypeDataSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP12AtomTypeDataSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i32, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, %_ZSt4copyIP12AtomTypeDataS1_ET0_T_S3_S2_.exit, %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.do = load ptr, ptr %0, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.f
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP12AtomTypeDataSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !89     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.i = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 112
  %i.o = tail call noundef ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !45
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.y = load ptr, ptr %.05.i.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #23
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i:  ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exit

_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exit:   ; preds = %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exitthread-pre-split, %bb.c
  %i.af = phi ptr [ %.pr, %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exit
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #23
  br label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !90
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88 ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ao, %i.f
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp sgt i64 %i.f, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aq = udiv exact i64 %i.f, 112
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(105) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(105) %.0910.i.i.i.i.i) ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false), !tbaa.struct !70
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 104
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !71, !range !72, !noundef !73
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 104
  store i8 %i.ax, ptr %i.ay, align 8, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 112 ; 3 uses
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit, !llvm.loop !195

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !199
  %.pre52 = ptrtoint ptr %i.ba to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit, %bb.g
  %.pre-phi53 = phi i64 [ %.pre52, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit ], [ %i.k, %bb.g ]
  %i.bd = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit ], [ %i.am, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit.loopexit ], [ %i.i, %bb.g ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bd
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit
  %i.be = sub i64 %.pre-phi53, %i.k
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 %i.be
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i30
  %.sroa.01.05.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i30 ], [ %i.bf, %.lr.ph.i.i26.preheader ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 88 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !45
  %i.bl = add i64 %i.bk, 1
  tail call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27
  %i.bm = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i30, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i28
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !54
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #23
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i30

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i30: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i28
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 112 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i.i31, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %.lr.ph.i.i26, !llvm.loop !196

bb.i:                                             ; preds = %bb.f
  %i.bt = icmp sgt i64 %i.ao, 0
  br i1 %i.bt, label %.lr.ph.preheader.i.i.i.i.i34, label %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit

.lr.ph.preheader.i.i.i.i.i34:                     ; preds = %bb.i
  %i.bu = udiv exact i64 %i.ao, 112
  br label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %.lr.ph.i.i.i.i.i35, %.lr.ph.preheader.i.i.i.i.i34
  %.012.i.i.i.i.i36 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i35 ], [ %i.bu, %.lr.ph.preheader.i.i.i.i.i34 ] ; 2 uses
  %.0811.i.i.i.i.i37 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i35 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i34 ] ; 5 uses
  %.0910.i.i.i.i.i38 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i35 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i34 ] ; 5 uses
  %i.bv = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(105) %.0811.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(105) %.0910.i.i.i.i.i38) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.bx, i64 48, i1 false), !tbaa.struct !70
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 104
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !71, !range !72, !noundef !73
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 104
  store i8 %i.cb, ptr %i.cc, align 8, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 112
  %i.cf = add nsw i64 %.012.i.i.i.i.i36, -1
  %i.cg = icmp samesign ugt i64 %.012.i.i.i.i.i36, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i35, label %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit, !llvm.loop !197

_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i35
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !89
  %.pre44 = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !89
  %.pre46 = load ptr, ptr %i.a, align 8, !tbaa !88
  %.pre47 = ptrtoint ptr %.pre44 to i64
  %.pre48 = ptrtoint ptr %.pre45 to i64
  %.pre50 = sub i64 %.pre47, %.pre48
  br label %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit

_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit: ; preds = %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit, %bb.i
  %.pre-phi51 = phi i64 [ %.pre50, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.ao, %bb.i ]
  %i.ch = phi ptr [ %.pre46, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.b, %bb.i ] ; 2 uses
  %i.ci = phi ptr [ %.pre44, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.am, %bb.i ] ; 2 uses
  %i.cj = phi ptr [ %.pre43, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit.loopexit ], [ %i.c, %bb.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.pre-phi51 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.ck, %i.ch
  br i1 %.not14.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit, %_ZSt10_ConstructI17InteractionOfTypeJRS0_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.cm, %_ZSt10_ConstructI17InteractionOfTypeJRS0_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ci, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.cl, %_ZSt10_ConstructI17InteractionOfTypeJRS0_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ck, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit ] ; 2 uses
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(105) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructI17InteractionOfTypeJRS0_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.j

_ZSt10_ConstructI17InteractionOfTypeJRS0_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 112 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 112
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !198

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  %i.cp = tail call ptr @__cxa_begin_catch(ptr %i.co) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_(ptr noundef %i.ci, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #24
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.cq

bb.n:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #20
  unreachable

bb.o:                                             ; preds = %bb.k
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i30, %_ZSt10_ConstructI17InteractionOfTypeJRS0_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIP17InteractionOfTypeS1_ET0_T_S3_S2_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.ct = load ptr, ptr %0, align 8, !tbaa !89
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.f
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  br label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIP17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEEvT_S8_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i:  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #23
  br label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(75) %1, i8 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(75) %1) #21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.b, ptr %i.a, align 8, !tbaa !44
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !37
  %i.f = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.f, ptr %i.c, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.h, ptr %i.g, align 1, !tbaa !45
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !35
  %i.k = load ptr, ptr %0, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #21
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !45
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #21
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212)
  %i.l = select i1 %i.j, i64 82351536043346212, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 112                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %i.q, ptr %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !69, !alias.scope !208
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !tbaa !69, !alias.scope !207
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54, !alias.scope !208
  store ptr %i.u, ptr %i.s, align 8, !tbaa !54, !alias.scope !207
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !208
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !tbaa.struct !70, !alias.scope !209
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !43, !alias.scope !207
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !37, !alias.scope !208 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35, !alias.scope !208 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !alias.scope !209
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !37, !alias.scope !207
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !45, !alias.scope !208
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !45, !alias.scope !207
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !208
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ai = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !35, !alias.scope !207
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !37, !alias.scope !208
  store i64 0, ptr %i.aj, align 8, !tbaa !35, !alias.scope !208
  store i8 0, ptr %i.ab, align 8, !tbaa !45, !alias.scope !208
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104
  %i.an = load i8, ptr %i.am, align 8, !tbaa !71, !range !72, !alias.scope !208, !noundef !73
  store i8 %i.an, ptr %i.al, align 8, !tbaa !71, !alias.scope !207
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !203

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit ], [ %i.ap, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 112 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.aq, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 8 uses
  %.0911.i.i.i31 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ar = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !69, !alias.scope !211
  store <2 x ptr> %i.ar, ptr %.012.i.i.i30, align 8, !tbaa !69, !alias.scope !210
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54, !alias.scope !211
  store ptr %i.au, ptr %i.as, align 8, !tbaa !54, !alias.scope !210
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !211
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !tbaa.struct !70, !alias.scope !212
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 88 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !43, !alias.scope !210
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !37, !alias.scope !211 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 88 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.d:                                             ; preds = %.lr.ph.i.i.i29
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !35, !alias.scope !211 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !212
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !37, !alias.scope !210
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !45, !alias.scope !211
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !45, !alias.scope !210
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 80
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !35, !alias.scope !211
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.d
  %i.bi = phi i64 [ %i.be, %bb.d ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 80
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !35, !alias.scope !210
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !37, !alias.scope !211
  store i64 0, ptr %i.bj, align 8, !tbaa !35, !alias.scope !211
  store i8 0, ptr %i.bb, align 8, !tbaa !45, !alias.scope !211
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 104
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !71, !range !72, !alias.scope !211, !noundef !73
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !71, !alias.scope !210
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 112 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 112 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bo, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !203

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.aq, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bp, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !90
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #23
  br label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !89
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !88
  %i.bu = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !90
  ret void

bb.f:                                             ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = tail call ptr @__cxa_begin_catch(ptr %i.bx) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bv

bb.i:                                             ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #20
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105), ptr, ptr, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP17InteractionOfTypeEEvT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i
  %.05.i = phi ptr [ %i.m, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = load ptr, ptr %.05.i, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #23
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i:    ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i, i64 112 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIP17InteractionOfTypeEEvT_S4_.exit, label %.lr.ph.i, !llvm.loop !4

_ZNSt12_Destroy_auxILb0EE9__destroyIP17InteractionOfTypeEEvT_S4_.exit: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI12AtomTypeDataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775680
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorI12AtomTypeDataSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNKSt6vectorI12AtomTypeDataSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 192                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 48038396025285290)
  %i.m = select i1 %i.k, i64 48038396025285290, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = mul nuw nsw i64 %i.m, 192                ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #22 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.r, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 36, i1 false), !tbaa.struct !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 5 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !43
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.x, ptr %i.a, align 8, !tbaa !44
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorI12AtomTypeDataSaIS0_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !37
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorI12AtomTypeDataSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorI12AtomTypeDataSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !45
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !35
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.ah, ptr noundef nonnull align 8 dereferenceable(105) %i.ai)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !37  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.u
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.am = load i64, ptr %i.u, align 8, !tbaa !45
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.aq = load i64, ptr %i.ap, align 8
  store i64 %i.aq, ptr %i.ao, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.f ] ; 13 uses
  %.0911.i.i.i = phi ptr [ %i.ch, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i, i64 36, i1 false), !tbaa.struct !58, !alias.scope !221
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !43, !alias.scope !219
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !37, !alias.scope !220 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !35, !alias.scope !220 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !221
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !37, !alias.scope !219
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !45, !alias.scope !220
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !45, !alias.scope !219
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35, !alias.scope !220
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.bc = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ay, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !35, !alias.scope !219
  store ptr %i.av, ptr %i.as, align 8, !tbaa !37, !alias.scope !220
  store i64 0, ptr %i.bd, align 8, !tbaa !35, !alias.scope !220
  store i8 0, ptr %i.av, align 8, !tbaa !45, !alias.scope !220
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !69, !alias.scope !220
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !69, !alias.scope !219
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !54, !alias.scope !220
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !54, !alias.scope !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.bg, i8 0, i64 24, i1 false), !alias.scope !220
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i64 48, i1 false), !tbaa.struct !70, !alias.scope !221
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 160 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !43, !alias.scope !219
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !37, !alias.scope !220 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 160 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !35, !alias.scope !220 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !221
  br label %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !37, !alias.scope !219
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !45, !alias.scope !220
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !45, !alias.scope !219
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !35, !alias.scope !220
  br label %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.by = phi i64 [ %i.bu, %bb.h ], [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 152
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 152
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !35, !alias.scope !219
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !37, !alias.scope !220
  store i64 0, ptr %i.bz, align 8, !tbaa !35, !alias.scope !220
  store i8 0, ptr %i.br, align 8, !tbaa !45, !alias.scope !220
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !71, !range !72, !alias.scope !220, !noundef !73
  store i8 %i.cd, ptr %i.cb, align 8, !tbaa !71, !alias.scope !219
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !220
  store i64 %i.cg, ptr %i.ce, align 8, !alias.scope !219
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.f ], [ %i.ci, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 192 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit40, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i28 = phi ptr [ %i.eb, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.cj, %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 13 uses
  %.0911.i.i.i29 = phi ptr [ %i.ea, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(192) %.0911.i.i.i29, i64 36, i1 false), !tbaa.struct !58, !alias.scope !224
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56 ; 3 uses
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !43, !alias.scope !222
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !37, !alias.scope !223 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.i:                                             ; preds = %.lr.ph.i.i.i27
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35, !alias.scope !223 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false), !alias.scope !224
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.cn, ptr %i.ck, align 8, !tbaa !37, !alias.scope !222
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !45, !alias.scope !223
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !45, !alias.scope !222
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !35, !alias.scope !223
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.i
  %i.cv = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.cr, %bb.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !35, !alias.scope !222
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !37, !alias.scope !223
  store i64 0, ptr %i.cw, align 8, !tbaa !35, !alias.scope !223
  store i8 0, ptr %i.co, align 8, !tbaa !45, !alias.scope !223
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72 ; 2 uses
  %i.da = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !69, !alias.scope !223
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !69, !alias.scope !222
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 88
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !54, !alias.scope !223
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !54, !alias.scope !222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.cz, i8 0, i64 24, i1 false), !alias.scope !223
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 96
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %i.df, i64 48, i1 false), !tbaa.struct !70, !alias.scope !224
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 144 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 160 ; 3 uses
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !43, !alias.scope !222
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !37, !alias.scope !223 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 160 ; 5 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 152
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !35, !alias.scope !223 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %i.dp = add nuw nsw i64 %i.dn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.dk, i64 %i.dp, i1 false), !alias.scope !224
  br label %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !37, !alias.scope !222
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !45, !alias.scope !223
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !45, !alias.scope !222
  %.phi.trans.insert6.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 152
  %.pre7.i.i.i.i36 = load i64, ptr %.phi.trans.insert6.i.i.i.i35, align 8, !tbaa !35, !alias.scope !223
  br label %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34, %bb.j
  %i.dr = phi i64 [ %i.dn, %bb.j ], [ %.pre7.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 152
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 152
  store i64 %i.dr, ptr %i.dt, align 8, !tbaa !35, !alias.scope !222
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !37, !alias.scope !223
  store i64 0, ptr %i.ds, align 8, !tbaa !35, !alias.scope !223
  store i8 0, ptr %i.dk, align 8, !tbaa !45, !alias.scope !223
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 176
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 176
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !71, !range !72, !alias.scope !223, !noundef !73
  store i8 %i.dw, ptr %i.du, align 8, !tbaa !71, !alias.scope !222
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 184
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 184
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !223
  store i64 %i.dz, ptr %i.dx, align 8, !alias.scope !222
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 192 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 192 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ea, %i.c
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit40, label %.lr.ph.i.i.i27, !llvm.loop !3

_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit40: ; preds = %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.cj, %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.eb, %_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.d, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !55
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.ef) #23
  br label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI12AtomTypeDataSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit40, %bb.k
  store ptr %i.q, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i39, ptr %i.b, align 8, !tbaa !19
  %i.eg = getelementptr inbounds nuw [192 x i8], ptr %i.q, i64 %i.m
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !55
  ret void

bb.l:                                             ; preds = %.noexc.i.i
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.eh, %bb.l ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aj, %bb.e ]
  %i.ej = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ek = call ptr @__cxa_begin_catch(ptr %i.ej) #21 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ei

bb.o:                                             ; preds = %bb.m
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #20
  unreachable

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, int>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.a, i64 noundef %i.c, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 3 uses
  %i.i = urem i64 %i.d, %i.h                      ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.loopexit29, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 3 uses
  %i.n = load i64, ptr %i.b, align 8
  %.fr22.i.i = freeze i64 %i.n                    ; 3 uses
  %i.o = icmp eq i64 %.fr22.i.i, 0
  %i.p = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !42 ; 2 uses
  br i1 %i.o, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.c, %bb.e
  %i.q = phi i64 [ %i.x, %bb.e ], [ %.pre26.i.i, %bb.c ]
  %.0.us.i.i = phi ptr [ %i.v, %bb.e ], [ %i.m, %bb.c ] ; 3 uses
  %i.r = icmp eq i64 %i.d, %i.q
  br i1 %i.r, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.d:                                             ; preds = %.split.us.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !35
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.d, %.split.us.i.i
  %i.v = load ptr, ptr %.0.us.i.i, align 8, !tbaa !31 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.us.i.i, label %.loopexit29, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = urem i64 %i.x, %i.h
  %.not19.us.i.i = icmp eq i64 %i.y, %i.i
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.loopexit29, !llvm.loop !0

.split.i.i:                                       ; preds = %bb.c, %bb.g
  %i.z = phi i64 [ %i.aj, %bb.g ], [ %.pre26.i.i, %bb.c ]
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.m, %bb.c ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ab = icmp eq i64 %i.d, %i.z
  br i1 %i.ab, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.f:                                             ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.ae = icmp eq i64 %.fr22.i.i, %i.ad
  br i1 %i.ae, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.f
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !37
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.af, i64 %.fr22.i.i)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.f, %.split.i.i
  %i.ah = load ptr, ptr %.0.i.i, align 8, !tbaa !31 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i, label %.loopexit29, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %i.ak = urem i64 %i.aj, %i.h
  %.not19.i.i = icmp eq i64 %i.ak, %i.i
  br i1 %.not19.i.i, label %.split.i.i, label %.loopexit29, !llvm.loop !0

.loopexit29:                                      ; preds = %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.e, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %0, ptr %2, align 8, !tbaa !82
  %i.al = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 7 uses
  store ptr null, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !43
  %i.ao = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %.loopexit29
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.loopexit29
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !37
  %i.au = load i64, ptr %i.ap, align 8, !tbaa !45
  store i64 %i.au, ptr %i.an, align 8, !tbaa !45
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !35
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.av = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ar, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !35
  store ptr %i.ap, ptr %1, align 8, !tbaa !37
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.ap, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 0, ptr %i.ay, align 8, !tbaa !85
  store ptr %i.al, ptr %i.aw, align 8, !tbaa !83
  %i.az = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.d, ptr noundef nonnull %i.al, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.loopexit

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ba

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.az, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.d ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorI12AtomTypeDataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 48038396025285290
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorI12AtomTypeDataE8allocateEmPKv.exit.i, !prof !75

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 96076792050570581
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorI12AtomTypeDataE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 192
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22
  br label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorI12AtomTypeDataE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorI12AtomTypeDataE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = mul nuw nsw i64 %1, 192
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseI12AtomTypeDataSaIS0_EE13_M_deallocateEPS0_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK12AtomTypeDataSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.021 = phi ptr [ %i.ab, %bb.e ], [ %2, %bb.a ] ; 8 uses
  %.sroa.08.020 = phi ptr [ %i.aa, %bb.e ], [ %0, %bb.a ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.021, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.08.020, i64 36, i1 false), !tbaa.struct !58
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 40 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %.021, i64 56 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.g, ptr %i.a, align 8, !tbaa !44
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !37
  %i.j = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.j, ptr %i.d, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %.lr.ph ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !45
  store i8 %i.l, ptr %i.k, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.021, i64 48
  store i64 %i.m, ptr %i.n, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.021, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 72
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.q, ptr noundef nonnull align 8 dereferenceable(105) %i.r)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !45
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #23
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.021, i64 184
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 184
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.020, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.021, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !225

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  %i.ad = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ae = call ptr @__cxa_begin_catch(ptr %i.ad) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIP12AtomTypeDataEvT_S2_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ab, %bb.e ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.af

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIP12AtomTypeDataS1_ET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.023 = phi ptr [ %i.ab, %bb.e ], [ %2, %bb.a ] ; 8 uses
  %.01222 = phi ptr [ %i.aa, %bb.e ], [ %0, %bb.a ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.023, ptr noundef nonnull align 8 dereferenceable(192) %.01222, i64 36, i1 false), !tbaa.struct !58
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 40 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01222, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %.023, i64 56 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01222, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.g, ptr %i.a, align 8, !tbaa !44
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !37
  %i.j = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.j, ptr %i.d, align 8, !tbaa !45
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %.lr.ph ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !45
  store i8 %i.l, ptr %i.k, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.023, i64 48
  store i64 %i.m, ptr %i.n, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.023, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.01222, i64 72
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.q, ptr noundef nonnull align 8 dereferenceable(105) %i.r)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !45
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #23
  br label %.body

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.023, i64 184
  %i.y = getelementptr inbounds nuw i8, ptr %.01222, i64 184
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01222, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 192 ; 2 uses
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.d ]
  %i.ad = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ae = call ptr @__cxa_begin_catch(ptr %i.ad) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIP12AtomTypeDataEvT_S2_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ab, %bb.e ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.af

bb.j:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #20
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 82351536043346212
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorI17InteractionOfTypeE8allocateEmPKv.exit.i, !prof !75

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 164703072086692425
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt15__new_allocatorI17InteractionOfTypeE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 112
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22
  br label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorI17InteractionOfTypeE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorI17InteractionOfTypeE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit, %_ZSt10_ConstructI17InteractionOfTypeJRKS0_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructI17InteractionOfTypeJRKS0_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructI17InteractionOfTypeJRKS0_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(105) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructI17InteractionOfTypeJRKS0_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructI17InteractionOfTypeJRKS0_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 112
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !227

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIP17InteractionOfTypeEvT_S2_(ptr noundef %i.e, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK17InteractionOfTypeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructI17InteractionOfTypeJRKS0_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #21 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = mul i64 %1, 112
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #20
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { cold }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSN22PreprocessingAtomTypes4ImplE", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS12AtomTypeData", !14, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseI12AtomTypeDataSaIS0_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !17, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!"any p2 pointer", !14, i64 0}
!23 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!24 = !{!"long", !10, i64 0}
!25 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!26 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !25, i64 0}
!27 = !{!"float", !10, i64 0}
!28 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !27, i64 0, !24, i64 8}
!29 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !23, i64 0, !24, i64 8, !26, i64 16, !24, i64 24, !28, i64 32, !25, i64 48}
!30 = !{!29, !24, i64 24}
!31 = !{!26, !25, i64 0}
!32 = !{!"p1 omnipotent char", !14, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !24, i64 8, !10, i64 16}
!35 = !{!34, !24, i64 8}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!34, !32, i64 0}
!38 = !{!29, !24, i64 8}
!39 = !{!29, !23, i64 0}
!40 = !{!25, !25, i64 0}
!41 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !24, i64 0}
!42 = !{!41, !24, i64 0}
!43 = !{!33, !32, i64 0}
!44 = !{!24, !24, i64 0}
!45 = !{!10, !10, i64 0}
!46 = !{!"bool", !10, i64 0}
!47 = !{!27, !27, i64 0}
!48 = !{!"_ZTS12ParticleType", !10, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!29, !25, i64 16}
!51 = !{!"p1 int", !14, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 0}
!54 = !{!52, !51, i64 16}
!55 = !{!18, !17, i64 16}
!56 = !{!"short", !10, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 2, !57, i64 18, i64 2, !57, i64 20, i64 4, !49, i64 24, i64 4, !21, i64 28, i64 4, !21, i64 32, i64 4, !45}
!59 = !{!"_ZTS6t_atom", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !56, i64 16, !56, i64 18, !48, i64 20, !11, i64 24, !11, i64 28, !10, i64 32}
!60 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !52, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIiSaIiEE", !61, i64 0}
!63 = !{!"_ZTSSt5arrayIfLm12EE", !10, i64 0}
!64 = !{!"_ZTS17InteractionOfType", !62, i64 0, !63, i64 24, !34, i64 72, !46, i64 104}
!65 = !{!"_ZTS12AtomTypeData", !59, i64 0, !34, i64 40, !64, i64 72, !11, i64 184, !11, i64 188}
!66 = !{!65, !11, i64 184}
!67 = !{!65, !11, i64 188}
!68 = !{!17, !17, i64 0}
!69 = !{!51, !51, i64 0}
!70 = !{i64 0, i64 48, !45}
!71 = !{!64, !46, i64 104}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!52, !51, i64 8}
!75 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEEE", !14, i64 0}
!80 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEE", !14, i64 0}
!81 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !79, i64 0, !80, i64 8}
!82 = !{!81, !79, i64 0}
!83 = !{!81, !80, i64 8}
!84 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !34, i64 0, !11, i64 32}
!85 = !{!84, !11, i64 32}
!86 = !{!"p1 _ZTS17InteractionOfType", !14, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 8}
!89 = !{!87, !86, i64 0}
!90 = !{!87, !86, i64 16}
!91 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!92 = !{!91, !91, i64 0}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, i1 true, !"_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_"}
!95 = distinct !{!95, !94, !"_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_: argument 0"}
!96 = !{!95}
!97 = !{!"_ZTSSt22_Optional_payload_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !10, i64 0, !46, i64 32}
!98 = !{!97, !46, i64 32}
!99 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !10, i64 0, !46, i64 32}
!100 = !{!99, !46, i64 32}
!101 = !{!28, !27, i64 0}
!102 = distinct !{!102, i1 true, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_"}
!103 = distinct !{!103, !102, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!104 = distinct !{!104, !102, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!105 = distinct !{!105, i1 true, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_"}
!106 = distinct !{!106, !105, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!108 = !{!103}
!109 = !{!104}
!110 = !{!103, !104}
!111 = !{!106}
!112 = !{!107}
!113 = !{!106, !107}
!114 = !{!28, !24, i64 8}
!115 = distinct !{!115, !36}
!116 = !{!29, !25, i64 48}
!117 = distinct !{!117, !36}
!118 = distinct !{!118, !36}
!119 = distinct !{!119, !36}
!120 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 _ZTS13gmx_moltype_t", !14, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"p1 _ZTS6t_atom", !14, i64 0}
!125 = !{!"any p3 pointer", !22, i64 0}
!126 = !{!"p3 omnipotent char", !125, i64 0}
!127 = !{!"p1 _ZTS9t_resinfo", !14, i64 0}
!128 = !{!"p1 _ZTS9t_pdbinfo", !14, i64 0}
!129 = !{!"_ZTS7t_atoms", !11, i64 0, !124, i64 8, !126, i64 16, !126, i64 24, !126, i64 32, !11, i64 40, !127, i64 48, !128, i64 56, !46, i64 64, !46, i64 65, !46, i64 66, !46, i64 67, !46, i64 68}
!130 = !{!129, !11, i64 0}
!131 = !{!129, !124, i64 8}
!132 = !{!59, !56, i64 16}
!133 = !{!59, !56, i64 18}
!134 = !{!"p2 omnipotent char", !22, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseI19InteractionFunctionSaIS0_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseI19InteractionFunctionSaIS0_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorI19InteractionFunctionSaIS0_EE", !137, i64 0}
!139 = !{!"p1 _ZTS9t_iparams", !14, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!"_ZTSNSt12_Vector_baseI9t_iparamsSaIS0_EE12_Vector_implE", !140, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseI9t_iparamsSaIS0_EE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorI9t_iparamsSaIS0_EE", !142, i64 0}
!144 = !{!"double", !10, i64 0}
!145 = !{!"p1 _ZTS14gmx_cmapdata_t", !14, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!147 = !{!"_ZTSNSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE12_Vector_implE", !146, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseI14gmx_cmapdata_tSaIS0_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorI14gmx_cmapdata_tSaIS0_EE", !148, i64 0}
!150 = !{!"_ZTS10gmx_cmap_t", !11, i64 0, !149, i64 8}
!151 = !{!"_ZTS14gmx_ffparams_t", !11, i64 0, !138, i64 8, !143, i64 32, !144, i64 56, !27, i64 64, !150, i64 72}
!152 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!153 = !{!"_ZTSNSt12_Vector_baseI13gmx_moltype_tSaIS0_EE12_Vector_implE", !152, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseI13gmx_moltype_tSaIS0_EE", !153, i64 0}
!155 = !{!"_ZTSSt6vectorI13gmx_moltype_tSaIS0_EE", !154, i64 0}
!156 = !{!"p1 _ZTS14gmx_molblock_t", !14, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!158 = !{!"_ZTSNSt12_Vector_baseI14gmx_molblock_tSaIS0_EE12_Vector_implE", !157, i64 0}
!159 = !{!"_ZTSSt12_Vector_baseI14gmx_molblock_tSaIS0_EE", !158, i64 0}
!160 = !{!"_ZTSSt6vectorI14gmx_molblock_tSaIS0_EE", !159, i64 0}
!161 = !{!"p1 _ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !14, i64 0}
!162 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEELb0EE", !161, i64 0}
!163 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !162, i64 0}
!164 = !{!"_ZTSSt5tupleIJPN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EEE", !163, i64 0}
!165 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !164, i64 0}
!166 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_ELb1ELb1EE", !165, i64 0}
!167 = !{!"_ZTSSt10unique_ptrIN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS2_95EEESt14default_deleteIS4_EE", !166, i64 0}
!168 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIiSaIiEELS1_10EEE", !10, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!170 = !{!"_ZTSNSt12_Vector_baseIPPcSaIS1_EE12_Vector_implE", !169, i64 0}
!171 = !{!"_ZTSSt12_Vector_baseIPPcSaIS1_EE", !170, i64 0}
!172 = !{!"_ZTSSt6vectorIPPcSaIS1_EE", !171, i64 0}
!173 = !{!"_ZTSN3gmx16EnumerationArrayI23SimulationAtomGroupTypeSt6vectorIhSaIhEELS1_10EEE", !10, i64 0}
!174 = !{!"_ZTS16SimulationGroups", !168, i64 0, !172, i64 240, !173, i64 264}
!175 = !{!"p1 _ZTS8t_symbuf", !14, i64 0}
!176 = !{!"_ZTS8t_symtab", !11, i64 0, !175, i64 8}
!177 = !{!"p1 _ZTS20MoleculeBlockIndices", !14, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE17_Vector_impl_dataE", !177, i64 0, !177, i64 8, !177, i64 16}
!179 = !{!"_ZTSNSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE12_Vector_implE", !178, i64 0}
!180 = !{!"_ZTSSt12_Vector_baseI20MoleculeBlockIndicesSaIS0_EE", !179, i64 0}
!181 = !{!"_ZTSSt6vectorI20MoleculeBlockIndicesSaIS0_EE", !180, i64 0}
!182 = !{!"_ZTS10gmx_mtop_t", !134, i64 0, !151, i64 8, !155, i64 112, !160, i64 136, !46, i64 160, !167, i64 168, !11, i64 176, !174, i64 184, !176, i64 688, !46, i64 704, !62, i64 712, !181, i64 736, !11, i64 760, !11, i64 764}
!183 = !{!182, !11, i64 8}
!184 = distinct !{!184, !36}
!185 = distinct !{!185, !36}
!186 = distinct !{!186, !36}
!187 = distinct !{!187, !36, !191}
!188 = !{!"_ZTS22t_interaction_function", !32, i64 0, !32, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!189 = !{!188, !11, i64 20}
!190 = !{!188, !11, i64 24}
!191 = !{!"llvm.loop.peeled.count", i32 1}
!192 = distinct !{!192, !36}
!193 = distinct !{!193, !36}
!194 = distinct !{!194, !36}
!195 = distinct !{!195, !36}
!196 = distinct !{!196, !36}
!197 = distinct !{!197, !36}
!198 = distinct !{!198, !36}
!199 = !{!86, !86, i64 0}
!200 = distinct !{!200, i1 true, !"_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_"}
!201 = distinct !{!201, !200, !"_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!202 = distinct !{!202, !200, !"_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!203 = distinct !{!203, !36}
!204 = distinct !{!204, i1 true, !"_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_"}
!205 = distinct !{!205, !204, !"_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!206 = distinct !{!206, !204, !"_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!207 = !{!201}
!208 = !{!202}
!209 = !{!201, !202}
!210 = !{!205}
!211 = !{!206}
!212 = !{!205, !206}
!213 = distinct !{!213, i1 true, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_"}
!214 = distinct !{!214, !213, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!215 = distinct !{!215, !213, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!216 = distinct !{!216, i1 true, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_"}
!217 = distinct !{!217, !216, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!218 = distinct !{!218, !216, !"_ZSt19__relocate_object_aI12AtomTypeDataS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!219 = !{!214}
!220 = !{!215}
!221 = !{!214, !215}
!222 = !{!217}
!223 = !{!218}
!224 = !{!217, !218}
!225 = distinct !{!225, !36}
!226 = distinct !{!226, !36}
!227 = distinct !{!227, !36}
end_hunk_0
