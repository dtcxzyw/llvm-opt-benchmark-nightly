Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/printer?download=true
inline.NumInlined: 3013
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_Z22printDenseSquareMatrixI9CompMatr1EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.noexc84:                                         ; preds = %.noexc74
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ch = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cn, ptr %20, align 8, !tbaa !30
  %i.co = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cq, ptr %i.c, align 8, !tbaa !32
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.cs, ptr %20, align 8, !tbaa !34
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cu = phi ptr [ %i.cs, %.noexc100 ], [ %i.cn, %bb.aa ] ; 2 uses
  switch i64 %i.cq, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !35
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !36
  %i.cy = load ptr, ptr %20, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.da, ptr %21, align 8, !tbaa !30
  %i.db = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !32
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.de, ptr %21, align 8, !tbaa !34
  %i.df = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.df, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dg = phi ptr [ %i.de, %.noexc103 ], [ %i.da, %bb.ad ] ; 2 uses
  switch i64 %i.dc, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.db, i64 %i.dc, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.di = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !36
  %i.dk = load ptr, ptr %21, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dm, ptr %22, align 8, !tbaa !30
  %i.dn = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.do, ptr %i.a, align 8, !tbaa !32
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dq, ptr %22, align 8, !tbaa !34
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dr, ptr %i.dm, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.ds = phi ptr [ %i.dq, %.noexc107 ], [ %i.dm, %bb.ag ] ; 2 uses
  switch i64 %i.do, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i105
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !35
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !35
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dn, i64 %i.do, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i105
  %i.du = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !36
  %i.dw = load ptr, ptr %22, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ak unwind label %bb.bj

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ec = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.da
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.eg = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ei = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.not4.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 3 uses
  %i.ek = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ep, %i.ck
  br i1 %.not.i.i.i115, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.not4.i.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not4.i.i.i117, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121
  %.05.i.i.i119 = phi ptr [ %i.ev, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.eq = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i118
  %i.et = load i64, ptr %i.er, align 8, !tbaa !35
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121: ; preds = %.lr.ph.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.ev, %i.ch
  br i1 %.not.i.i.i122, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i130 = icmp eq ptr %i.ce, null
  br i1 %.not4.i.i.i130, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134
  %.05.i.i.i132 = phi ptr [ %i.fb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129 ] ; 3 uses
  %i.ew = load ptr, ptr %.05.i.i.i132, align 8, !tbaa !34 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133: ; preds = %.lr.ph.i.i.i131
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !35
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134: ; preds = %.lr.ph.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 32 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.fb, %i.ce
  br i1 %.not.i.i.i135, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129
  %.not4.i.i.i143 = icmp eq ptr %i.cb, null
  br i1 %.not4.i.i.i143, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144

.lr.ph.i.i.i144:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147
  %.05.i.i.i145 = phi ptr [ %i.fh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142 ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i145, align 8, !tbaa !34 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146: ; preds = %.lr.ph.i.i.i144
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !35
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147: ; preds = %.lr.ph.i.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fh, %i.cb
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142
  %.not4.i.i.i156 = icmp eq ptr %.pr.i160, %i.bz
  br i1 %.not4.i.i.i156, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157

.lr.ph.i.i.i157:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i158 = phi ptr [ %i.fo, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i160, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155 ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i158, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i157
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !108
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i157
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 24 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.fo, %i.bz
  br i1 %.not.i.i.i159, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155
  %.not.i.i1.i161 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i1.i161, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bq) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.am
  %.not4.i.i.i163 = icmp eq ptr %.pr.i170, %i.bj
  br i1 %.not4.i.i.i163, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fv, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167 ], [ %.pr.i170, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.fp = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i166 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i166, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i164
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !108
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167: ; preds = %bb.an, %.lr.ph.i.i.i164
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 24 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fv, %i.bj
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i172 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i1.i172, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ba) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, %bb.ao
  %.not4.i.i.i175 = icmp eq ptr %.pr.i182, %i.at
  br i1 %.not4.i.i.i175, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176

.lr.ph.i.i.i176:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179
  %.05.i.i.i177 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179 ], [ %.pr.i182, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i177, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i178 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i178, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i176
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179: ; preds = %bb.ap, %.lr.ph.i.i.i176
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 24 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.gc, %i.at
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174
  %.not.i.i1.i184 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i1.i184, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, %bb.aq
  %.not4.i.i.i187 = icmp eq ptr %.pr.i194, %i.ad
  br i1 %.not4.i.i.i187, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188

.lr.ph.i.i.i188:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191
  %.05.i.i.i189 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191 ], [ %.pr.i194, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186 ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i189, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i190 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i190, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i188
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191: ; preds = %bb.ar, %.lr.ph.i.i.i188
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gj, %i.ad
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186
  %.not.i.i1.i196 = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i1.i196, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, %bb.as
  %i.gk = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.n
  br i1 %i.gl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198
  %i.gm = load i64, ptr %i.n, align 8, !tbaa !35
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pre338 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre339 = load ptr, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.not4.i.i.i241 = icmp eq ptr %.pre338, %.pre339
  br i1 %.not4.i.i.i241, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, label %.lr.ph.i.i.i242

.lr.ph.i.i.i242:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.05.i.i.i243 = phi ptr [ %i.gu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %i.go = load ptr, ptr %.05.i.i.i243, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i244 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i244, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i242
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !108
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245: ; preds = %bb.at, %.lr.ph.i.i.i242
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 24 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.gu, %.pre339
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, label %.lr.ph.i.i.i242, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.pr.i248 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240
  %i.gv = phi ptr [ %.pr.i248, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %.not.i.i1.i250 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i250, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !107
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.hb = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.hc = load ptr, ptr %i.av, align 8, !tbaa !106 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z22printDenseSquareMatrixI9CompMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.noexc84:                                         ; preds = %.noexc74
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ch = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cn, ptr %20, align 8, !tbaa !30
  %i.co = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cq, ptr %i.c, align 8, !tbaa !32
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.cs, ptr %20, align 8, !tbaa !34
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cu = phi ptr [ %i.cs, %.noexc100 ], [ %i.cn, %bb.aa ] ; 2 uses
  switch i64 %i.cq, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !35
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !36
  %i.cy = load ptr, ptr %20, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.da, ptr %21, align 8, !tbaa !30
  %i.db = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !32
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.de, ptr %21, align 8, !tbaa !34
  %i.df = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.df, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dg = phi ptr [ %i.de, %.noexc103 ], [ %i.da, %bb.ad ] ; 2 uses
  switch i64 %i.dc, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.db, i64 %i.dc, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.di = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !36
  %i.dk = load ptr, ptr %21, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dm, ptr %22, align 8, !tbaa !30
  %i.dn = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.do, ptr %i.a, align 8, !tbaa !32
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dq, ptr %22, align 8, !tbaa !34
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dr, ptr %i.dm, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.ds = phi ptr [ %i.dq, %.noexc107 ], [ %i.dm, %bb.ag ] ; 2 uses
  switch i64 %i.do, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i105
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !35
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !35
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dn, i64 %i.do, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i105
  %i.du = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !36
  %i.dw = load ptr, ptr %22, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ak unwind label %bb.bj

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ec = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.da
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.eg = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ei = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.not4.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 3 uses
  %i.ek = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ep, %i.ck
  br i1 %.not.i.i.i115, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.not4.i.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not4.i.i.i117, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121
  %.05.i.i.i119 = phi ptr [ %i.ev, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.eq = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i118
  %i.et = load i64, ptr %i.er, align 8, !tbaa !35
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121: ; preds = %.lr.ph.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.ev, %i.ch
  br i1 %.not.i.i.i122, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i130 = icmp eq ptr %i.ce, null
  br i1 %.not4.i.i.i130, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134
  %.05.i.i.i132 = phi ptr [ %i.fb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129 ] ; 3 uses
  %i.ew = load ptr, ptr %.05.i.i.i132, align 8, !tbaa !34 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133: ; preds = %.lr.ph.i.i.i131
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !35
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134: ; preds = %.lr.ph.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 32 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.fb, %i.ce
  br i1 %.not.i.i.i135, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129
  %.not4.i.i.i143 = icmp eq ptr %i.cb, null
  br i1 %.not4.i.i.i143, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144

.lr.ph.i.i.i144:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147
  %.05.i.i.i145 = phi ptr [ %i.fh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142 ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i145, align 8, !tbaa !34 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146: ; preds = %.lr.ph.i.i.i144
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !35
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147: ; preds = %.lr.ph.i.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fh, %i.cb
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142
  %.not4.i.i.i156 = icmp eq ptr %.pr.i160, %i.bz
  br i1 %.not4.i.i.i156, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157

.lr.ph.i.i.i157:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i158 = phi ptr [ %i.fo, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i160, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155 ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i158, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i157
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !108
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i157
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 24 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.fo, %i.bz
  br i1 %.not.i.i.i159, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155
  %.not.i.i1.i161 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i1.i161, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bq) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.am
  %.not4.i.i.i163 = icmp eq ptr %.pr.i170, %i.bj
  br i1 %.not4.i.i.i163, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fv, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167 ], [ %.pr.i170, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.fp = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i166 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i166, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i164
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !108
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167: ; preds = %bb.an, %.lr.ph.i.i.i164
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 24 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fv, %i.bj
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i172 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i1.i172, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ba) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, %bb.ao
  %.not4.i.i.i175 = icmp eq ptr %.pr.i182, %i.at
  br i1 %.not4.i.i.i175, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176

.lr.ph.i.i.i176:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179
  %.05.i.i.i177 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179 ], [ %.pr.i182, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i177, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i178 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i178, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i176
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179: ; preds = %bb.ap, %.lr.ph.i.i.i176
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 24 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.gc, %i.at
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174
  %.not.i.i1.i184 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i1.i184, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, %bb.aq
  %.not4.i.i.i187 = icmp eq ptr %.pr.i194, %i.ad
  br i1 %.not4.i.i.i187, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188

.lr.ph.i.i.i188:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191
  %.05.i.i.i189 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191 ], [ %.pr.i194, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186 ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i189, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i190 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i190, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i188
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191: ; preds = %bb.ar, %.lr.ph.i.i.i188
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gj, %i.ad
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186
  %.not.i.i1.i196 = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i1.i196, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, %bb.as
  %i.gk = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.n
  br i1 %i.gl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198
  %i.gm = load i64, ptr %i.n, align 8, !tbaa !35
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pre338 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre339 = load ptr, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.not4.i.i.i241 = icmp eq ptr %.pre338, %.pre339
  br i1 %.not4.i.i.i241, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, label %.lr.ph.i.i.i242

.lr.ph.i.i.i242:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.05.i.i.i243 = phi ptr [ %i.gu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %i.go = load ptr, ptr %.05.i.i.i243, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i244 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i244, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i242
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !108
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245: ; preds = %bb.at, %.lr.ph.i.i.i242
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 24 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.gu, %.pre339
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, label %.lr.ph.i.i.i242, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.pr.i248 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240
  %i.gv = phi ptr [ %.pr.i248, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %.not.i.i1.i250 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i250, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !107
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.hb = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.hc = load ptr, ptr %i.av, align 8, !tbaa !106 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z22printDenseSquareMatrixI8CompMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.noexc84:                                         ; preds = %.noexc74
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ch = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cn, ptr %20, align 8, !tbaa !30
  %i.co = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cq, ptr %i.c, align 8, !tbaa !32
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.cs, ptr %20, align 8, !tbaa !34
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cu = phi ptr [ %i.cs, %.noexc100 ], [ %i.cn, %bb.aa ] ; 2 uses
  switch i64 %i.cq, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !35
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !36
  %i.cy = load ptr, ptr %20, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.da, ptr %21, align 8, !tbaa !30
  %i.db = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !32
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.de, ptr %21, align 8, !tbaa !34
  %i.df = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.df, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dg = phi ptr [ %i.de, %.noexc103 ], [ %i.da, %bb.ad ] ; 2 uses
  switch i64 %i.dc, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.db, i64 %i.dc, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.di = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !36
  %i.dk = load ptr, ptr %21, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dm, ptr %22, align 8, !tbaa !30
  %i.dn = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.do, ptr %i.a, align 8, !tbaa !32
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dq, ptr %22, align 8, !tbaa !34
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dr, ptr %i.dm, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.ds = phi ptr [ %i.dq, %.noexc107 ], [ %i.dm, %bb.ag ] ; 2 uses
  switch i64 %i.do, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i105
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !35
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !35
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dn, i64 %i.do, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i105
  %i.du = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !36
  %i.dw = load ptr, ptr %22, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ak unwind label %bb.bj

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ec = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.da
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.eg = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ei = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.not4.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 3 uses
  %i.ek = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ep, %i.ck
  br i1 %.not.i.i.i115, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.not4.i.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not4.i.i.i117, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121
  %.05.i.i.i119 = phi ptr [ %i.ev, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.eq = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i118
  %i.et = load i64, ptr %i.er, align 8, !tbaa !35
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121: ; preds = %.lr.ph.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.ev, %i.ch
  br i1 %.not.i.i.i122, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i130 = icmp eq ptr %i.ce, null
  br i1 %.not4.i.i.i130, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134
  %.05.i.i.i132 = phi ptr [ %i.fb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129 ] ; 3 uses
  %i.ew = load ptr, ptr %.05.i.i.i132, align 8, !tbaa !34 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133: ; preds = %.lr.ph.i.i.i131
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !35
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134: ; preds = %.lr.ph.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 32 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.fb, %i.ce
  br i1 %.not.i.i.i135, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129
  %.not4.i.i.i143 = icmp eq ptr %i.cb, null
  br i1 %.not4.i.i.i143, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144

.lr.ph.i.i.i144:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147
  %.05.i.i.i145 = phi ptr [ %i.fh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142 ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i145, align 8, !tbaa !34 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146: ; preds = %.lr.ph.i.i.i144
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !35
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147: ; preds = %.lr.ph.i.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fh, %i.cb
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142
  %.not4.i.i.i156 = icmp eq ptr %.pr.i160, %i.bz
  br i1 %.not4.i.i.i156, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157

.lr.ph.i.i.i157:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i158 = phi ptr [ %i.fo, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i160, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155 ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i158, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i157
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !108
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i157
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 24 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.fo, %i.bz
  br i1 %.not.i.i.i159, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155
  %.not.i.i1.i161 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i1.i161, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bq) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.am
  %.not4.i.i.i163 = icmp eq ptr %.pr.i170, %i.bj
  br i1 %.not4.i.i.i163, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fv, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167 ], [ %.pr.i170, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.fp = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i166 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i166, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i164
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !108
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167: ; preds = %bb.an, %.lr.ph.i.i.i164
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 24 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fv, %i.bj
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i172 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i1.i172, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ba) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, %bb.ao
  %.not4.i.i.i175 = icmp eq ptr %.pr.i182, %i.at
  br i1 %.not4.i.i.i175, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176

.lr.ph.i.i.i176:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179
  %.05.i.i.i177 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179 ], [ %.pr.i182, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i177, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i178 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i178, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i176
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179: ; preds = %bb.ap, %.lr.ph.i.i.i176
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 24 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.gc, %i.at
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174
  %.not.i.i1.i184 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i1.i184, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, %bb.aq
  %.not4.i.i.i187 = icmp eq ptr %.pr.i194, %i.ad
  br i1 %.not4.i.i.i187, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188

.lr.ph.i.i.i188:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191
  %.05.i.i.i189 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191 ], [ %.pr.i194, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186 ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i189, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i190 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i190, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i188
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191: ; preds = %bb.ar, %.lr.ph.i.i.i188
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gj, %i.ad
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186
  %.not.i.i1.i196 = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i1.i196, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, %bb.as
  %i.gk = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.n
  br i1 %i.gl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198
  %i.gm = load i64, ptr %i.n, align 8, !tbaa !35
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pre338 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre339 = load ptr, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.not4.i.i.i241 = icmp eq ptr %.pre338, %.pre339
  br i1 %.not4.i.i.i241, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, label %.lr.ph.i.i.i242

.lr.ph.i.i.i242:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.05.i.i.i243 = phi ptr [ %i.gu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %i.go = load ptr, ptr %.05.i.i.i243, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i244 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i244, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i242
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !108
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245: ; preds = %bb.at, %.lr.ph.i.i.i242
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 24 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.gu, %.pre339
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, label %.lr.ph.i.i.i242, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.pr.i248 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240
  %i.gv = phi ptr [ %.pr.i248, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %.not.i.i1.i250 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i250, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !107
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.hb = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.hc = load ptr, ptr %i.av, align 8, !tbaa !106 ; 2 uses
end_hunk_2
begin_hunk_3_@_Z22printDenseSquareMatrixI7SuperOpEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.noexc84:                                         ; preds = %.noexc74
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ch = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc94 unwind label %bb.y   ; 3 uses

bb.y:                                             ; preds = %.noexc84
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body85

.noexc94:                                         ; preds = %.noexc84
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.aa unwind label %bb.z      ; 3 uses

bb.z:                                             ; preds = %.noexc94
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body95

bb.aa:                                            ; preds = %.noexc94
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !59
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.cn, ptr %20, align 8, !tbaa !30
  %i.co = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.cq, ptr %i.c, align 8, !tbaa !32
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i99, label %._crit_edge.i.i98

.noexc.i99:                                       ; preds = %bb.aa
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc100 unwind label %bb.bg ; 2 uses

.noexc100:                                        ; preds = %.noexc.i99
  store ptr %i.cs, ptr %20, align 8, !tbaa !34
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !35
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %.noexc100, %bb.aa
  %i.cu = phi ptr [ %i.cs, %.noexc100 ], [ %i.cn, %bb.aa ] ; 2 uses
  switch i64 %i.cq, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i98
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !35
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !35
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i98
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !36
  %i.cy = load ptr, ptr %20, align 8, !tbaa !34
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store i8 0, ptr %i.cz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.da, ptr %21, align 8, !tbaa !30
  %i.db = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !32
  %i.dd = icmp ugt i64 %i.dc, 15
  br i1 %i.dd, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.ad
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %bb.bh ; 2 uses

.noexc103:                                        ; preds = %.noexc.i102
  store ptr %i.de, ptr %21, align 8, !tbaa !34
  %i.df = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.df, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc103, %bb.ad
  %i.dg = phi ptr [ %i.de, %.noexc103 ], [ %i.da, %bb.ad ] ; 2 uses
  switch i64 %i.dc, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i101
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !35
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.db, i64 %i.dc, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i101
  %i.di = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !36
  %i.dk = load ptr, ptr %21, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.dm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.dm, ptr %22, align 8, !tbaa !30
  %i.dn = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.do = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.do, ptr %i.a, align 8, !tbaa !32
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %bb.ag
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.bi ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.dq, ptr %22, align 8, !tbaa !34
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.dr, ptr %i.dm, align 8, !tbaa !35
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %bb.ag
  %i.ds = phi ptr [ %i.dq, %.noexc107 ], [ %i.dm, %bb.ag ] ; 2 uses
  switch i64 %i.do, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i105
  %i.dt = load i8, ptr %i.dn, align 1, !tbaa !35
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !35
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dn, i64 %i.do, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i105
  %i.du = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !36
  %i.dw = load ptr, ptr %22, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  store i8 0, ptr %i.dx, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ak unwind label %bb.bj

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dm
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.ea = load i64, ptr %i.dm, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ec = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.da
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.eg = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.cn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ei = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.not4.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ep, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ] ; 3 uses
  %i.ek = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.ep, %i.ck
  br i1 %.not.i.i.i115, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.not4.i.i.i117 = icmp eq ptr %i.ch, null
  br i1 %.not4.i.i.i117, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121
  %.05.i.i.i119 = phi ptr [ %i.ev, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.eq = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i118
  %i.et = load i64, ptr %i.er, align 8, !tbaa !35
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121: ; preds = %.lr.ph.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i120
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.ev, %i.ch
  br i1 %.not.i.i.i122, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, label %.lr.ph.i.i.i118, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i121, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i130 = icmp eq ptr %i.ce, null
  br i1 %.not4.i.i.i130, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131

.lr.ph.i.i.i131:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134
  %.05.i.i.i132 = phi ptr [ %i.fb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129 ] ; 3 uses
  %i.ew = load ptr, ptr %.05.i.i.i132, align 8, !tbaa !34 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133: ; preds = %.lr.ph.i.i.i131
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !35
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134: ; preds = %.lr.ph.i.i.i131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i133
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i132, i64 32 ; 2 uses
  %.not.i.i.i135 = icmp eq ptr %i.fb, %i.ce
  br i1 %.not.i.i.i135, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, label %.lr.ph.i.i.i131, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i134, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit129
  %.not4.i.i.i143 = icmp eq ptr %i.cb, null
  br i1 %.not4.i.i.i143, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144

.lr.ph.i.i.i144:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147
  %.05.i.i.i145 = phi ptr [ %i.fh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142 ] ; 3 uses
  %i.fc = load ptr, ptr %.05.i.i.i145, align 8, !tbaa !34 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146: ; preds = %.lr.ph.i.i.i144
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !35
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147: ; preds = %.lr.ph.i.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i146
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i145, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fh, %i.cb
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, label %.lr.ph.i.i.i144, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i147, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit142
  %.not4.i.i.i156 = icmp eq ptr %.pr.i160, %i.bz
  br i1 %.not4.i.i.i156, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157

.lr.ph.i.i.i157:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i158 = phi ptr [ %i.fo, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i160, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155 ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i158, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i157
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !108
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i157
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i158, i64 24 ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.fo, %i.bz
  br i1 %.not.i.i.i159, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i157, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit155
  %.not.i.i1.i161 = icmp eq ptr %.pr.i160, null
  br i1 %.not.i.i1.i161, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i160, i64 noundef %i.bq) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.am
  %.not4.i.i.i163 = icmp eq ptr %.pr.i170, %i.bj
  br i1 %.not4.i.i.i163, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fv, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167 ], [ %.pr.i170, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.fp = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i166 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i.i.i166, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i164
  %i.fq = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !108
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167: ; preds = %bb.an, %.lr.ph.i.i.i164
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 24 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fv, %i.bj
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, label %.lr.ph.i.i.i164, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i167, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i172 = icmp eq ptr %.pr.i170, null
  br i1 %.not.i.i1.i172, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i170, i64 noundef %i.ba) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i171, %bb.ao
  %.not4.i.i.i175 = icmp eq ptr %.pr.i182, %i.at
  br i1 %.not4.i.i.i175, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176

.lr.ph.i.i.i176:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179
  %.05.i.i.i177 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179 ], [ %.pr.i182, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i177, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i178 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i178, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i176
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179: ; preds = %bb.ap, %.lr.ph.i.i.i176
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i177, i64 24 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.gc, %i.at
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, label %.lr.ph.i.i.i176, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i179, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit174
  %.not.i.i1.i184 = icmp eq ptr %.pr.i182, null
  br i1 %.not.i.i1.i184, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i182, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i183, %bb.aq
  %.not4.i.i.i187 = icmp eq ptr %.pr.i194, %i.ad
  br i1 %.not4.i.i.i187, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188

.lr.ph.i.i.i188:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191
  %.05.i.i.i189 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191 ], [ %.pr.i194, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186 ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i189, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i190 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i190, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i188
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191: ; preds = %bb.ar, %.lr.ph.i.i.i188
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i189, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gj, %i.ad
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, label %.lr.ph.i.i.i188, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i191, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit186
  %.not.i.i1.i196 = icmp eq ptr %.pr.i194, null
  br i1 %.not.i.i1.i196, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i194, i64 noundef %i.u) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i195, %bb.as
  %i.gk = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.n
  br i1 %i.gl, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198
  %i.gm = load i64, ptr %i.n, align 8, !tbaa !35
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pre338 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre339 = load ptr, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.not4.i.i.i241 = icmp eq ptr %.pre338, %.pre339
  br i1 %.not4.i.i.i241, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, label %.lr.ph.i.i.i242

.lr.ph.i.i.i242:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.05.i.i.i243 = phi ptr [ %i.gu, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %i.go = load ptr, ptr %.05.i.i.i243, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i244 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i244, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i242
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !108
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245: ; preds = %bb.at, %.lr.ph.i.i.i242
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i243, i64 24 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.gu, %.pre339
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, label %.lr.ph.i.i.i242, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i245
  %.pr.i248 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240
  %i.gv = phi ptr [ %.pr.i248, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i247 ], [ %.pre338, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit240 ] ; 3 uses
  %.not.i.i1.i250 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i250, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !107
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit252: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i249, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.hb = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.hc = load ptr, ptr %i.av, align 8, !tbaa !106 ; 2 uses
end_hunk_3
begin_hunk_4_@_Z11printVectorI9DiagMatr1EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc116:                                        ; preds = %.noexc106
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc126 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %.noexc116
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.noexc126:                                        ; preds = %.noexc116
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ae unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc126
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %.noexc126
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.da, ptr %20, align 8, !tbaa !30
  %i.db = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !32
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.ae
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.df, ptr %20, align 8, !tbaa !34
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc132, %bb.ae
  %i.dh = phi ptr [ %i.df, %.noexc132 ], [ %i.da, %bb.ae ] ; 2 uses
  switch i64 %i.dd, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i130
  %i.di = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !35
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i130
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !36
  %i.dl = load ptr, ptr %20, align 8, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dn, ptr %21, align 8, !tbaa !30
  %i.do = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dq, ptr %i.b, align 8, !tbaa !32
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ah
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc136 unwind label %bb.bn ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.ds, ptr %21, align 8, !tbaa !34
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.dt, ptr %i.dn, align 8, !tbaa !35
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ah
  %i.du = phi ptr [ %i.ds, %.noexc136 ], [ %i.dn, %bb.ah ] ; 2 uses
  switch i64 %i.dq, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i134
  %i.dv = load i8, ptr %i.do, align 1, !tbaa !35
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i134
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !36
  %i.dy = load ptr, ptr %21, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.ea, ptr %22, align 8, !tbaa !30
  %i.eb = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.ec = load i64, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !32
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ak
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bo ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ee, ptr %22, align 8, !tbaa !34
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !35
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %bb.ak
  %i.eg = phi ptr [ %i.ee, %.noexc140 ], [ %i.ea, %bb.ak ] ; 2 uses
  switch i64 %i.ec, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i138
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !35
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !35
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i138
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !36
  %i.ek = load ptr, ptr %22, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ao unwind label %bb.bp

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ea
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.eo = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eq = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dn
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  %i.eu = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.da
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.ew = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.not4.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 3 uses
  %i.ey = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !35
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fd, %i.cx
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %.not4.i.i.i150 = icmp eq ptr %i.cu, null
  br i1 %.not4.i.i.i150, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, label %.lr.ph.i.i.i151

.lr.ph.i.i.i151:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154
  %.05.i.i.i152 = phi ptr [ %i.fj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fe = load ptr, ptr %.05.i.i.i152, align 8, !tbaa !34 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153: ; preds = %.lr.ph.i.i.i151
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154: ; preds = %.lr.ph.i.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 32 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.fj, %i.cu
  br i1 %.not.i.i.i155, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, label %.lr.ph.i.i.i151, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i163 = icmp eq ptr %i.cr, null
  br i1 %.not4.i.i.i163, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162 ] ; 3 uses
  %i.fk = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !34 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166: ; preds = %.lr.ph.i.i.i164
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !35
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167: ; preds = %.lr.ph.i.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 32 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fp, %i.cr
  br i1 %.not.i.i.i168, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, label %.lr.ph.i.i.i164, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162
  %.not4.i.i.i176 = icmp eq ptr %i.co, null
  br i1 %.not4.i.i.i176, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, label %.lr.ph.i.i.i177

.lr.ph.i.i.i177:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180
  %.05.i.i.i178 = phi ptr [ %i.fv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175 ] ; 3 uses
  %i.fq = load ptr, ptr %.05.i.i.i178, align 8, !tbaa !34 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i178, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179: ; preds = %.lr.ph.i.i.i177
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !35
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180: ; preds = %.lr.ph.i.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i178, i64 32 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.fv, %i.co
  br i1 %.not.i.i.i181, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, label %.lr.ph.i.i.i177, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175
  %.not4.i.i.i189 = icmp eq ptr %.pr.i193, %i.cm
  br i1 %.not4.i.i.i189, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i190

.lr.ph.i.i.i190:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i191 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i193, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i191, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i190
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i190
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gc, %i.cm
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i190, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188
  %.not.i.i1.i194 = icmp eq ptr %.pr.i193, null
  br i1 %.not.i.i1.i194, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i193, i64 noundef %i.cd) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.aq
  %.not4.i.i.i196 = icmp eq ptr %.pr.i203, %i.bw
  br i1 %.not4.i.i.i196, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197

.lr.ph.i.i.i197:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200
  %.05.i.i.i198 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200 ], [ %.pr.i203, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i198, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i199 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i199, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i197
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200: ; preds = %bb.ar, %.lr.ph.i.i.i197
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 24 ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.gj, %i.bw
  br i1 %.not.i.i.i201, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i205 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i1.i205, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.bn) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, %bb.as
  %.not4.i.i.i208 = icmp eq ptr %.pr.i215, %i.bg
  br i1 %.not4.i.i.i208, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212
  %.05.i.i.i210 = phi ptr [ %i.gq, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212 ], [ %.pr.i215, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207 ] ; 3 uses
  %i.gk = load ptr, ptr %.05.i.i.i210, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i211 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i.i.i211, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i209
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i210, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !108
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212: ; preds = %bb.at, %.lr.ph.i.i.i209
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i210, i64 24 ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.gq, %i.bg
  br i1 %.not.i.i.i213, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i209, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207
  %.not.i.i1.i217 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i1.i217, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.ax) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, %bb.au
  %.not4.i.i.i220 = icmp eq ptr %.pr.i227, %i.aq
  br i1 %.not4.i.i.i220, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224
  %.05.i.i.i222 = phi ptr [ %i.gx, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224 ], [ %.pr.i227, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219 ] ; 3 uses
  %i.gr = load ptr, ptr %.05.i.i.i222, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i223 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i.i223, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i221
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !108
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224: ; preds = %bb.av, %.lr.ph.i.i.i221
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 24 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.gx, %i.aq
  br i1 %.not.i.i.i225, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i221, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219
  %.not.i.i1.i229 = icmp eq ptr %.pr.i227, null
  br i1 %.not.i.i1.i229, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i227, i64 noundef %i.ah) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, %bb.aw
  %i.gy = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.q
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231
  %i.ha = load i64, ptr %i.q, align 8, !tbaa !35
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.hc = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.p
  br i1 %i.hd, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.he = load i64, ptr %i.p, align 8, !tbaa !35
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pre394 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre395 = load ptr, ptr %i.by, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  %.not4.i.i.i277 = icmp eq ptr %.pre394, %.pre395
  br i1 %.not4.i.i.i277, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285, label %.lr.ph.i.i.i278

.lr.ph.i.i.i278:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281
  %.05.i.i.i279 = phi ptr [ %i.hm, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281 ], [ %.pre394, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276 ] ; 3 uses
  %i.hg = load ptr, ptr %.05.i.i.i279, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i280 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i280, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i278
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !108
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281: ; preds = %bb.ax, %.lr.ph.i.i.i278
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 24 ; 2 uses
  %.not.i.i.i282 = icmp eq ptr %i.hm, %.pre395
  br i1 %.not.i.i.i282, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283, label %.lr.ph.i.i.i278, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281
  %.pr.i284 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276
  %i.hn = phi ptr [ %.pr.i284, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283 ], [ %.pre394, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276 ] ; 3 uses
end_hunk_4
begin_hunk_5_@_Z11printVectorI9DiagMatr2EvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc116:                                        ; preds = %.noexc106
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc126 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %.noexc116
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.noexc126:                                        ; preds = %.noexc116
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ae unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc126
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %.noexc126
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.da, ptr %20, align 8, !tbaa !30
  %i.db = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !32
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.ae
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.df, ptr %20, align 8, !tbaa !34
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc132, %bb.ae
  %i.dh = phi ptr [ %i.df, %.noexc132 ], [ %i.da, %bb.ae ] ; 2 uses
  switch i64 %i.dd, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i130
  %i.di = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !35
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i130
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !36
  %i.dl = load ptr, ptr %20, align 8, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dn, ptr %21, align 8, !tbaa !30
  %i.do = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dq, ptr %i.b, align 8, !tbaa !32
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ah
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc136 unwind label %bb.bn ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.ds, ptr %21, align 8, !tbaa !34
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.dt, ptr %i.dn, align 8, !tbaa !35
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ah
  %i.du = phi ptr [ %i.ds, %.noexc136 ], [ %i.dn, %bb.ah ] ; 2 uses
  switch i64 %i.dq, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i134
  %i.dv = load i8, ptr %i.do, align 1, !tbaa !35
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i134
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !36
  %i.dy = load ptr, ptr %21, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.ea, ptr %22, align 8, !tbaa !30
  %i.eb = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.ec = load i64, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !32
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ak
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bo ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ee, ptr %22, align 8, !tbaa !34
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !35
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %bb.ak
  %i.eg = phi ptr [ %i.ee, %.noexc140 ], [ %i.ea, %bb.ak ] ; 2 uses
  switch i64 %i.ec, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i138
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !35
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !35
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i138
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !36
  %i.ek = load ptr, ptr %22, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ao unwind label %bb.bp

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ea
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.eo = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eq = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dn
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  %i.eu = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.da
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.ew = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.not4.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 3 uses
  %i.ey = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !35
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fd, %i.cx
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %.not4.i.i.i150 = icmp eq ptr %i.cu, null
  br i1 %.not4.i.i.i150, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, label %.lr.ph.i.i.i151

.lr.ph.i.i.i151:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154
  %.05.i.i.i152 = phi ptr [ %i.fj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fe = load ptr, ptr %.05.i.i.i152, align 8, !tbaa !34 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153: ; preds = %.lr.ph.i.i.i151
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154: ; preds = %.lr.ph.i.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 32 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.fj, %i.cu
  br i1 %.not.i.i.i155, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, label %.lr.ph.i.i.i151, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i163 = icmp eq ptr %i.cr, null
  br i1 %.not4.i.i.i163, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162 ] ; 3 uses
  %i.fk = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !34 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166: ; preds = %.lr.ph.i.i.i164
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !35
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167: ; preds = %.lr.ph.i.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 32 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fp, %i.cr
  br i1 %.not.i.i.i168, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, label %.lr.ph.i.i.i164, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162
  %.not4.i.i.i176 = icmp eq ptr %i.co, null
  br i1 %.not4.i.i.i176, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, label %.lr.ph.i.i.i177

.lr.ph.i.i.i177:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180
  %.05.i.i.i178 = phi ptr [ %i.fv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175 ] ; 3 uses
  %i.fq = load ptr, ptr %.05.i.i.i178, align 8, !tbaa !34 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i178, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179: ; preds = %.lr.ph.i.i.i177
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !35
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180: ; preds = %.lr.ph.i.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i178, i64 32 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.fv, %i.co
  br i1 %.not.i.i.i181, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, label %.lr.ph.i.i.i177, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175
  %.not4.i.i.i189 = icmp eq ptr %.pr.i193, %i.cm
  br i1 %.not4.i.i.i189, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i190

.lr.ph.i.i.i190:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i191 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i193, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i191, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i190
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i190
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gc, %i.cm
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i190, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188
  %.not.i.i1.i194 = icmp eq ptr %.pr.i193, null
  br i1 %.not.i.i1.i194, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i193, i64 noundef %i.cd) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.aq
  %.not4.i.i.i196 = icmp eq ptr %.pr.i203, %i.bw
  br i1 %.not4.i.i.i196, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197

.lr.ph.i.i.i197:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200
  %.05.i.i.i198 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200 ], [ %.pr.i203, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i198, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i199 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i199, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i197
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200: ; preds = %bb.ar, %.lr.ph.i.i.i197
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 24 ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.gj, %i.bw
  br i1 %.not.i.i.i201, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i205 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i1.i205, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.bn) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, %bb.as
  %.not4.i.i.i208 = icmp eq ptr %.pr.i215, %i.bg
  br i1 %.not4.i.i.i208, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212
  %.05.i.i.i210 = phi ptr [ %i.gq, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212 ], [ %.pr.i215, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207 ] ; 3 uses
  %i.gk = load ptr, ptr %.05.i.i.i210, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i211 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i.i.i211, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i209
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i210, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !108
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212: ; preds = %bb.at, %.lr.ph.i.i.i209
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i210, i64 24 ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.gq, %i.bg
  br i1 %.not.i.i.i213, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i209, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207
  %.not.i.i1.i217 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i1.i217, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.ax) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, %bb.au
  %.not4.i.i.i220 = icmp eq ptr %.pr.i227, %i.aq
  br i1 %.not4.i.i.i220, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224
  %.05.i.i.i222 = phi ptr [ %i.gx, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224 ], [ %.pr.i227, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219 ] ; 3 uses
  %i.gr = load ptr, ptr %.05.i.i.i222, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i223 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i.i223, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i221
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !108
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224: ; preds = %bb.av, %.lr.ph.i.i.i221
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 24 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.gx, %i.aq
  br i1 %.not.i.i.i225, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i221, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219
  %.not.i.i1.i229 = icmp eq ptr %.pr.i227, null
  br i1 %.not.i.i1.i229, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i227, i64 noundef %i.ah) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, %bb.aw
  %i.gy = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.q
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231
  %i.ha = load i64, ptr %i.q, align 8, !tbaa !35
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.hc = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.p
  br i1 %i.hd, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.he = load i64, ptr %i.p, align 8, !tbaa !35
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pre394 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre395 = load ptr, ptr %i.by, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  %.not4.i.i.i277 = icmp eq ptr %.pre394, %.pre395
  br i1 %.not4.i.i.i277, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285, label %.lr.ph.i.i.i278

.lr.ph.i.i.i278:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281
  %.05.i.i.i279 = phi ptr [ %i.hm, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281 ], [ %.pre394, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276 ] ; 3 uses
  %i.hg = load ptr, ptr %.05.i.i.i279, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i280 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i280, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i278
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !108
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281: ; preds = %bb.ax, %.lr.ph.i.i.i278
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 24 ; 2 uses
  %.not.i.i.i282 = icmp eq ptr %i.hm, %.pre395
  br i1 %.not.i.i.i282, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283, label %.lr.ph.i.i.i278, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281
  %.pr.i284 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276
  %i.hn = phi ptr [ %.pr.i284, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283 ], [ %.pre394, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276 ] ; 3 uses
end_hunk_5
begin_hunk_6_@_Z11printVectorI8DiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc116:                                        ; preds = %.noexc106
  %i.ct = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.cu = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc126 unwind label %bb.ac ; 3 uses

bb.ac:                                            ; preds = %.noexc116
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.noexc126:                                        ; preds = %.noexc116
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.cx = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.ae unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %.noexc126
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %.noexc126
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.da, ptr %20, align 8, !tbaa !30
  %i.db = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !32
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i131, label %._crit_edge.i.i130

.noexc.i131:                                      ; preds = %bb.ae
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bm ; 2 uses

.noexc132:                                        ; preds = %.noexc.i131
  store ptr %i.df, ptr %20, align 8, !tbaa !34
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge.i.i130

._crit_edge.i.i130:                               ; preds = %.noexc132, %bb.ae
  %i.dh = phi ptr [ %i.df, %.noexc132 ], [ %i.da, %bb.ae ] ; 2 uses
  switch i64 %i.dd, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i130
  %i.di = load i8, ptr %i.db, align 1, !tbaa !35
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !35
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i130
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !36
  %i.dl = load ptr, ptr %20, align 8, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.dn, ptr %21, align 8, !tbaa !30
  %i.do = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.dq, ptr %i.b, align 8, !tbaa !32
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.ah
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc136 unwind label %bb.bn ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.ds, ptr %21, align 8, !tbaa !34
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.dt, ptr %i.dn, align 8, !tbaa !35
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.ah
  %i.du = phi ptr [ %i.ds, %.noexc136 ], [ %i.dn, %bb.ah ] ; 2 uses
  switch i64 %i.dq, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i134
  %i.dv = load i8, ptr %i.do, align 1, !tbaa !35
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i134
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !36
  %i.dy = load ptr, ptr %21, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.ea, ptr %22, align 8, !tbaa !30
  %i.eb = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.ec = load i64, ptr %i.z, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !32
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %bb.ak
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.bo ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.ee, ptr %22, align 8, !tbaa !34
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !35
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %bb.ak
  %i.eg = phi ptr [ %i.ee, %.noexc140 ], [ %i.ea, %bb.ak ] ; 2 uses
  switch i64 %i.ec, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i138
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !35
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !35
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i138
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !36
  %i.ek = load ptr, ptr %22, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ao unwind label %bb.bp

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ea
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.eo = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eq = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dn
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  %i.eu = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.da
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.ew = load i64, ptr %i.da, align 8, !tbaa !35
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  %.not4.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 3 uses
  %i.ey = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !35
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.fd, %i.cx
  br i1 %.not.i.i.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %.not4.i.i.i150 = icmp eq ptr %i.cu, null
  br i1 %.not4.i.i.i150, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, label %.lr.ph.i.i.i151

.lr.ph.i.i.i151:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154
  %.05.i.i.i152 = phi ptr [ %i.fj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fe = load ptr, ptr %.05.i.i.i152, align 8, !tbaa !34 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153: ; preds = %.lr.ph.i.i.i151
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !35
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154: ; preds = %.lr.ph.i.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i153
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i152, i64 32 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.fj, %i.cu
  br i1 %.not.i.i.i155, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, label %.lr.ph.i.i.i151, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i154, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i163 = icmp eq ptr %i.cr, null
  br i1 %.not4.i.i.i163, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, label %.lr.ph.i.i.i164

.lr.ph.i.i.i164:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167
  %.05.i.i.i165 = phi ptr [ %i.fp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162 ] ; 3 uses
  %i.fk = load ptr, ptr %.05.i.i.i165, align 8, !tbaa !34 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166: ; preds = %.lr.ph.i.i.i164
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !35
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167: ; preds = %.lr.ph.i.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i166
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i165, i64 32 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.fp, %i.cr
  br i1 %.not.i.i.i168, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, label %.lr.ph.i.i.i164, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i167, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit162
  %.not4.i.i.i176 = icmp eq ptr %i.co, null
  br i1 %.not4.i.i.i176, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, label %.lr.ph.i.i.i177

.lr.ph.i.i.i177:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180
  %.05.i.i.i178 = phi ptr [ %i.fv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175 ] ; 3 uses
  %i.fq = load ptr, ptr %.05.i.i.i178, align 8, !tbaa !34 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i178, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179: ; preds = %.lr.ph.i.i.i177
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !35
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180: ; preds = %.lr.ph.i.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i179
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i178, i64 32 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.fv, %i.co
  br i1 %.not.i.i.i181, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, label %.lr.ph.i.i.i177, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i180, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit175
  %.not4.i.i.i189 = icmp eq ptr %.pr.i193, %i.cm
  br i1 %.not4.i.i.i189, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i190

.lr.ph.i.i.i190:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i191 = phi ptr [ %i.gc, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i193, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188 ] ; 3 uses
  %i.fw = load ptr, ptr %.05.i.i.i191, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i190
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i190
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i191, i64 24 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.gc, %i.cm
  br i1 %.not.i.i.i192, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i190, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit188
  %.not.i.i1.i194 = icmp eq ptr %.pr.i193, null
  br i1 %.not.i.i1.i194, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i193, i64 noundef %i.cd) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.aq
  %.not4.i.i.i196 = icmp eq ptr %.pr.i203, %i.bw
  br i1 %.not4.i.i.i196, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197

.lr.ph.i.i.i197:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200
  %.05.i.i.i198 = phi ptr [ %i.gj, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200 ], [ %.pr.i203, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i198, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i199 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i199, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i197
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !108
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200: ; preds = %bb.ar, %.lr.ph.i.i.i197
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 24 ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.gj, %i.bw
  br i1 %.not.i.i.i201, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i205 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i1.i205, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.bn) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, %bb.as
  %.not4.i.i.i208 = icmp eq ptr %.pr.i215, %i.bg
  br i1 %.not4.i.i.i208, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212
  %.05.i.i.i210 = phi ptr [ %i.gq, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212 ], [ %.pr.i215, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207 ] ; 3 uses
  %i.gk = load ptr, ptr %.05.i.i.i210, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i211 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i.i.i211, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i209
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i210, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !108
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212: ; preds = %bb.at, %.lr.ph.i.i.i209
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i210, i64 24 ; 2 uses
  %.not.i.i.i213 = icmp eq ptr %i.gq, %i.bg
  br i1 %.not.i.i.i213, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, label %.lr.ph.i.i.i209, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i212, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207
  %.not.i.i1.i217 = icmp eq ptr %.pr.i215, null
  br i1 %.not.i.i1.i217, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i215, i64 noundef %i.ax) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i216, %bb.au
  %.not4.i.i.i220 = icmp eq ptr %.pr.i227, %i.aq
  br i1 %.not4.i.i.i220, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224
  %.05.i.i.i222 = phi ptr [ %i.gx, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224 ], [ %.pr.i227, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219 ] ; 3 uses
  %i.gr = load ptr, ptr %.05.i.i.i222, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i223 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i.i223, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i221
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !108
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224: ; preds = %bb.av, %.lr.ph.i.i.i221
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 24 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.gx, %i.aq
  br i1 %.not.i.i.i225, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i221, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i224, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit219
  %.not.i.i1.i229 = icmp eq ptr %.pr.i227, null
  br i1 %.not.i.i1.i229, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i227, i64 noundef %i.ah) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i228, %bb.aw
  %i.gy = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.q
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231
  %i.ha = load i64, ptr %i.q, align 8, !tbaa !35
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.hc = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.p
  br i1 %i.hd, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.he = load i64, ptr %i.p, align 8, !tbaa !35
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pre394 = load ptr, ptr %5, align 8, !tbaa !78 ; 3 uses
  %.pre395 = load ptr, ptr %i.by, align 8, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  %.not4.i.i.i277 = icmp eq ptr %.pre394, %.pre395
  br i1 %.not4.i.i.i277, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285, label %.lr.ph.i.i.i278

.lr.ph.i.i.i278:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281
  %.05.i.i.i279 = phi ptr [ %i.hm, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281 ], [ %.pre394, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276 ] ; 3 uses
  %i.hg = load ptr, ptr %.05.i.i.i279, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i280 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i.i.i280, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i278
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !108
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281: ; preds = %bb.ax, %.lr.ph.i.i.i278
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i279, i64 24 ; 2 uses
  %.not.i.i.i282 = icmp eq ptr %i.hm, %.pre395
  br i1 %.not.i.i.i282, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283, label %.lr.ph.i.i.i278, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i281
  %.pr.i284 = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i285: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276
  %i.hn = phi ptr [ %.pr.i284, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i283 ], [ %.pre394, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit276 ] ; 3 uses
end_hunk_6
begin_hunk_7_@_Z11printVectorI17FullStateDiagMatrEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ed, i64 %i.ef, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i132
  %i.el = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !36
  %i.en = load ptr, ptr %21, align 8, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  store i8 0, ptr %i.eo, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.ep, ptr %22, align 8, !tbaa !30
  %i.eq = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.es, ptr %i.b, align 8, !tbaa !32
  %i.et = icmp ugt i64 %i.es, 15
  br i1 %i.et, label %.noexc.i137, label %._crit_edge.i.i136

.noexc.i137:                                      ; preds = %bb.ar
  %i.eu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc138 unwind label %bb.cc ; 2 uses

.noexc138:                                        ; preds = %.noexc.i137
  store ptr %i.eu, ptr %22, align 8, !tbaa !34
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.ev, ptr %i.ep, align 8, !tbaa !35
  br label %._crit_edge.i.i136

._crit_edge.i.i136:                               ; preds = %.noexc138, %bb.ar
  %i.ew = phi ptr [ %i.eu, %.noexc138 ], [ %i.ep, %bb.ar ] ; 2 uses
  switch i64 %i.es, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i136
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !35
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !35
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i136
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.eq, i64 %i.es, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i136
  %i.ey = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !36
  %i.fa = load ptr, ptr %22, align 8, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store i8 0, ptr %i.fb, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.fc, ptr %23, align 8, !tbaa !30
  %i.fd = load ptr, ptr %12, align 8, !tbaa !34   ; 2 uses
  %i.fe = load i64, ptr %i.ad, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.fe, ptr %i.a, align 8, !tbaa !32
  %i.ff = icmp ugt i64 %i.fe, 15
  br i1 %i.ff, label %.noexc.i141, label %._crit_edge.i.i140

.noexc.i141:                                      ; preds = %bb.au
  %i.fg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc142 unwind label %bb.cd ; 2 uses

.noexc142:                                        ; preds = %.noexc.i141
  store ptr %i.fg, ptr %23, align 8, !tbaa !34
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.fh, ptr %i.fc, align 8, !tbaa !35
  br label %._crit_edge.i.i140

._crit_edge.i.i140:                               ; preds = %.noexc142, %bb.au
  %i.fi = phi ptr [ %i.fg, %.noexc142 ], [ %i.fc, %bb.au ] ; 2 uses
  switch i64 %i.fe, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i140
  %i.fj = load i8, ptr %i.fd, align 1, !tbaa !35
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !35
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fd, i64 %i.fe, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i140
  %i.fk = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !36
  %i.fm = load ptr, ptr %23, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fk
  store i8 0, ptr %i.fn, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(24) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22, ptr nofree noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ay unwind label %bb.ce

bb.ay:                                            ; preds = %bb.ax
  %i.fo = load ptr, ptr %23, align 8, !tbaa !34   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.fc
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ay
  %i.fq = load i64, ptr %i.fc, align 8, !tbaa !35
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fs = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ep
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fu = load i64, ptr %i.ep, align 8, !tbaa !35
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.fw = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ec
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.fy = load i64, ptr %i.ec, align 8, !tbaa !35
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.ea
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ] ; 3 uses
  %i.ga = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !35
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.gf, %i.ea
  br i1 %.not.i.i.i150, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ds) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.az
  %.not4.i.i.i152 = icmp eq ptr %.pr.i159, %i.dl
  br i1 %.not4.i.i.i152, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156
  %.05.i.i.i154 = phi ptr [ %i.gl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156 ], [ %.pr.i159, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.gg = load ptr, ptr %.05.i.i.i154, align 8, !tbaa !34 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i154, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155: ; preds = %.lr.ph.i.i.i153
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !35
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156: ; preds = %.lr.ph.i.i.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i154, i64 32 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.gl, %i.dl
  br i1 %.not.i.i.i157, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160, label %.lr.ph.i.i.i153, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not.i.i1.i161 = icmp eq ptr %.pr.i159, null
  br i1 %.not.i.i1.i161, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i159, i64 noundef %i.dd) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160, %bb.ba
  %.not4.i.i.i165 = icmp eq ptr %i.cv, null
  br i1 %.not4.i.i.i165, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit177, label %.lr.ph.i.i.i166

.lr.ph.i.i.i166:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i169
  %.05.i.i.i167 = phi ptr [ %i.gr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i169 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164 ] ; 3 uses
  %i.gm = load ptr, ptr %.05.i.i.i167, align 8, !tbaa !34 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i167, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168: ; preds = %.lr.ph.i.i.i166
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !35
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i169

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i169: ; preds = %.lr.ph.i.i.i166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i168
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i167, i64 32 ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.gr, %i.cv
  br i1 %.not.i.i.i170, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit177, label %.lr.ph.i.i.i166, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit177: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i169, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164
  %.not4.i.i.i178 = icmp eq ptr %i.cs, null
  br i1 %.not4.i.i.i178, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit177, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182
  %.05.i.i.i180 = phi ptr [ %i.gx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit177 ] ; 3 uses
  %i.gs = load ptr, ptr %.05.i.i.i180, align 8, !tbaa !34 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181: ; preds = %.lr.ph.i.i.i179
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !35
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182: ; preds = %.lr.ph.i.i.i179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 32 ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.gx, %i.cs
  br i1 %.not.i.i.i183, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190, label %.lr.ph.i.i.i179, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit177
  %.not4.i.i.i191 = icmp eq ptr %.pr.i195, %i.cq
  br i1 %.not4.i.i.i191, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i192

.lr.ph.i.i.i192:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i193 = phi ptr [ %i.he, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i195, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190 ] ; 3 uses
  %i.gy = load ptr, ptr %.05.i.i.i193, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i192
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !108
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hd) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i192
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 24 ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.he, %i.cq
  br i1 %.not.i.i.i194, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i192, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190
  %.not.i.i1.i196 = icmp eq ptr %.pr.i195, null
  br i1 %.not.i.i1.i196, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i195, i64 noundef %i.ch) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bc
  %.not4.i.i.i198 = icmp eq ptr %.pr.i205, %i.ca
  br i1 %.not4.i.i.i198, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i206, label %.lr.ph.i.i.i199

.lr.ph.i.i.i199:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i202
  %.05.i.i.i200 = phi ptr [ %i.hl, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i202 ], [ %.pr.i205, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.hf = load ptr, ptr %.05.i.i.i200, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i201 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i.i201, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i202, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i199
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i200, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !108
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i202

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i202: ; preds = %bb.bd, %.lr.ph.i.i.i199
  %i.hl = getelementptr inbounds nuw i8, ptr %.05.i.i.i200, i64 24 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %i.hl, %i.ca
  br i1 %.not.i.i.i203, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i206, label %.lr.ph.i.i.i199, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i206: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i202, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i207 = icmp eq ptr %.pr.i205, null
  br i1 %.not.i.i1.i207, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit209, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i206
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i205, i64 noundef %i.br) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit209

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit209: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i206, %bb.be
  %.not4.i.i.i210 = icmp eq ptr %.pr.i217, %i.bk
  br i1 %.not4.i.i.i210, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i218, label %.lr.ph.i.i.i211

.lr.ph.i.i.i211:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit209, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i214
  %.05.i.i.i212 = phi ptr [ %i.hs, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i214 ], [ %.pr.i217, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit209 ] ; 3 uses
  %i.hm = load ptr, ptr %.05.i.i.i212, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i213 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i.i213, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i214, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i211
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i212, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !108
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i214

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i214: ; preds = %bb.bf, %.lr.ph.i.i.i211
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i212, i64 24 ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.hs, %i.bk
  br i1 %.not.i.i.i215, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i218, label %.lr.ph.i.i.i211, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i218: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i214, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit209
  %.not.i.i1.i219 = icmp eq ptr %.pr.i217, null
  br i1 %.not.i.i1.i219, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit221, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i218
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i217, i64 noundef %i.bb) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit221

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit221: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i218, %bb.bg
  %.not4.i.i.i222 = icmp eq ptr %.pr.i229, %i.au
  br i1 %.not4.i.i.i222, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i230, label %.lr.ph.i.i.i223

.lr.ph.i.i.i223:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit221, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i226
  %.05.i.i.i224 = phi ptr [ %i.hz, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i226 ], [ %.pr.i229, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit221 ] ; 3 uses
  %i.ht = load ptr, ptr %.05.i.i.i224, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i225 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i225, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i226, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i223
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i224, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !108
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i226

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i226: ; preds = %bb.bh, %.lr.ph.i.i.i223
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i224, i64 24 ; 2 uses
  %.not.i.i.i227 = icmp eq ptr %i.hz, %i.au
  br i1 %.not.i.i.i227, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i230, label %.lr.ph.i.i.i223, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i230: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i226, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit221
  %.not.i.i1.i231 = icmp eq ptr %.pr.i229, null
  br i1 %.not.i.i1.i231, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit233, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i230
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i229, i64 noundef %i.al) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit233

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit233: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i230, %bb.bi
  %i.ia = load ptr, ptr %12, align 8, !tbaa !34   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.u
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit233
  %i.ic = load i64, ptr %i.u, align 8, !tbaa !35
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.ie = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.t
  br i1 %i.if, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.ig = load i64, ptr %i.t, align 8, !tbaa !35
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %.pre427 = load ptr, ptr %8, align 8, !tbaa !57 ; 3 uses
  %.pre428 = load ptr, ptr %i.dn, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.not4.i.i.i253 = icmp eq ptr %.pre427, %.pre428
  br i1 %.not4.i.i.i253, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i261, label %.lr.ph.i.i.i254

.lr.ph.i.i.i254:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i257
  %.05.i.i.i255 = phi ptr [ %i.in, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i257 ], [ %.pre427, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252 ] ; 3 uses
  %i.ii = load ptr, ptr %.05.i.i.i255, align 8, !tbaa !34 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i255, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i256: ; preds = %.lr.ph.i.i.i254
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !35
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i257

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i257: ; preds = %.lr.ph.i.i.i254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i256
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i255, i64 32 ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %i.in, %.pre428
  br i1 %.not.i.i.i258, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259, label %.lr.ph.i.i.i254, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i257
  %.pr.i260 = load ptr, ptr %8, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i261

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i261: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252
  %i.io = phi ptr [ %.pr.i260, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i259 ], [ %.pre427, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit252 ] ; 3 uses
  %.not.i.i1.i262 = icmp eq ptr %i.io, null
  br i1 %.not.i.i1.i262, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit265, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i261
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !58
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
end_hunk_7
begin_hunk_8_@_Z22printDenseSquareMatrixI5QuregEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.body84

.noexc93:                                         ; preds = %.noexc83
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.dl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %.noexc103 unwind label %bb.ak ; 3 uses

bb.ak:                                            ; preds = %.noexc93
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.noexc103:                                        ; preds = %.noexc93
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.do = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr null, ptr null, ptr noundef null)
          to label %bb.am unwind label %bb.al     ; 3 uses

bb.al:                                            ; preds = %.noexc103
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.am:                                            ; preds = %.noexc103
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.dr, ptr %20, align 8, !tbaa !30
  %i.ds = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.du, ptr %i.c, align 8, !tbaa !32
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc.i108, label %._crit_edge.i.i107

.noexc.i108:                                      ; preds = %bb.am
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc109 unwind label %bb.bx ; 2 uses

.noexc109:                                        ; preds = %.noexc.i108
  store ptr %i.dw, ptr %20, align 8, !tbaa !34
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.dx, ptr %i.dr, align 8, !tbaa !35
  br label %._crit_edge.i.i107

._crit_edge.i.i107:                               ; preds = %.noexc109, %bb.am
  %i.dy = phi ptr [ %i.dw, %.noexc109 ], [ %i.dr, %bb.am ] ; 2 uses
  switch i64 %i.du, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i107
  %i.dz = load i8, ptr %i.ds, align 1, !tbaa !35
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !35
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.ds, i64 %i.du, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i107
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !36
  %i.ec = load ptr, ptr %20, align 8, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ee = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.ee, ptr %21, align 8, !tbaa !30
  %i.ef = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.eg = load i64, ptr %i.u, align 8, !tbaa !36  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.eg, ptr %i.b, align 8, !tbaa !32
  %i.eh = icmp ugt i64 %i.eg, 15
  br i1 %i.eh, label %.noexc.i111, label %._crit_edge.i.i110

.noexc.i111:                                      ; preds = %bb.ap
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc112 unwind label %bb.by ; 2 uses

.noexc112:                                        ; preds = %.noexc.i111
  store ptr %i.ei, ptr %21, align 8, !tbaa !34
  %i.ej = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !35
  br label %._crit_edge.i.i110

._crit_edge.i.i110:                               ; preds = %.noexc112, %bb.ap
  %i.ek = phi ptr [ %i.ei, %.noexc112 ], [ %i.ee, %bb.ap ] ; 2 uses
  switch i64 %i.eg, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i110
  %i.el = load i8, ptr %i.ef, align 1, !tbaa !35
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !35
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr align 1 %i.ef, i64 %i.eg, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i110
  %i.em = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !36
  %i.eo = load ptr, ptr %21, align 8, !tbaa !34
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.em
  store i8 0, ptr %i.ep, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.eq, ptr %22, align 8, !tbaa !30
  %i.er = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.es = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.es, ptr %i.a, align 8, !tbaa !32
  %i.et = icmp ugt i64 %i.es, 15
  br i1 %i.et, label %.noexc.i115, label %._crit_edge.i.i114

.noexc.i115:                                      ; preds = %bb.as
  %i.eu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc116 unwind label %bb.bz ; 2 uses

.noexc116:                                        ; preds = %.noexc.i115
  store ptr %i.eu, ptr %22, align 8, !tbaa !34
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ev, ptr %i.eq, align 8, !tbaa !35
  br label %._crit_edge.i.i114

._crit_edge.i.i114:                               ; preds = %.noexc116, %bb.as
  %i.ew = phi ptr [ %i.eu, %.noexc116 ], [ %i.eq, %bb.as ] ; 2 uses
  switch i64 %i.es, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %bb.av
  ]

bb.at:                                            ; preds = %._crit_edge.i.i114
  %i.ex = load i8, ptr %i.er, align 1, !tbaa !35
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !35
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge.i.i114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ew, ptr align 1 %i.er, i64 %i.es, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i.i114
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !36
  %i.fa = load ptr, ptr %22, align 8, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ey
  store i8 0, ptr %i.fb, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.aw unwind label %bb.ca

bb.aw:                                            ; preds = %bb.av
  %i.fc = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.eq
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aw
  %i.fe = load i64, ptr %i.eq, align 8, !tbaa !35
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fg = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ee
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fi = load i64, ptr %i.ee, align 8, !tbaa !35
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  %i.fk = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.dr
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.fm = load i64, ptr %i.dr, align 8, !tbaa !35
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  %.not4.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not4.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ft, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ] ; 3 uses
  %i.fo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !35
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.ft, %i.do
  br i1 %.not.i.i.i124, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %.not4.i.i.i126 = icmp eq ptr %i.dl, null
  br i1 %.not4.i.i.i126, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, label %.lr.ph.i.i.i127

.lr.ph.i.i.i127:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i130
  %.05.i.i.i128 = phi ptr [ %i.fz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i130 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fu = load ptr, ptr %.05.i.i.i128, align 8, !tbaa !34 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i128, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129: ; preds = %.lr.ph.i.i.i127
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !35
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i130

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i130: ; preds = %.lr.ph.i.i.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i129
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i128, i64 32 ; 2 uses
  %.not.i.i.i131 = icmp eq ptr %i.fz, %i.dl
  br i1 %.not.i.i.i131, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, label %.lr.ph.i.i.i127, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i130, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not4.i.i.i139 = icmp eq ptr %.pr.i146, %i.dj
  br i1 %.not4.i.i.i139, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147, label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143
  %.05.i.i.i141 = phi ptr [ %i.gf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143 ], [ %.pr.i146, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138 ] ; 3 uses
  %i.ga = load ptr, ptr %.05.i.i.i141, align 8, !tbaa !34 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i.i141, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i142: ; preds = %.lr.ph.i.i.i140
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !35
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143: ; preds = %.lr.ph.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i142
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i141, i64 32 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.gf, %i.dj
  br i1 %.not.i.i.i144, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147, label %.lr.ph.i.i.i140, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138
  %.not.i.i1.i148 = icmp eq ptr %.pr.i146, null
  br i1 %.not.i.i1.i148, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit151, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i146, i64 noundef %i.db) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit151

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit151: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147, %bb.ax
  %.not4.i.i.i152 = icmp eq ptr %.pr.i159, %i.cu
  br i1 %.not4.i.i.i152, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit151, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156
  %.05.i.i.i154 = phi ptr [ %i.gl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156 ], [ %.pr.i159, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit151 ] ; 3 uses
  %i.gg = load ptr, ptr %.05.i.i.i154, align 8, !tbaa !34 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i.i154, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155: ; preds = %.lr.ph.i.i.i153
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !35
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156: ; preds = %.lr.ph.i.i.i153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i155
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i154, i64 32 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.gl, %i.cu
  br i1 %.not.i.i.i157, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160, label %.lr.ph.i.i.i153, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i156, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit151
  %.not.i.i1.i161 = icmp eq ptr %.pr.i159, null
  br i1 %.not.i.i1.i161, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i159, i64 noundef %i.cm) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i160, %bb.ay
  %.not4.i.i.i165 = icmp eq ptr %.pr.i169, %i.cf
  br i1 %.not4.i.i.i165, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i166

.lr.ph.i.i.i166:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i167 = phi ptr [ %i.gs, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i169, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164 ] ; 3 uses
  %i.gm = load ptr, ptr %.05.i.i.i167, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i166
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i167, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !108
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.az, %.lr.ph.i.i.i166
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i167, i64 24 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.gs, %i.cf
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i166, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit164
  %.not.i.i1.i170 = icmp eq ptr %.pr.i169, null
  br i1 %.not.i.i1.i170, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i169, i64 noundef %i.bw) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.ba
  %.not4.i.i.i172 = icmp eq ptr %.pr.i179, %i.bp
  br i1 %.not4.i.i.i172, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i180, label %.lr.ph.i.i.i173

.lr.ph.i.i.i173:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i176
  %.05.i.i.i174 = phi ptr [ %i.gz, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i176 ], [ %.pr.i179, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.gt = load ptr, ptr %.05.i.i.i174, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i175 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i.i.i175, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i176, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i173
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i174, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !108
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i176

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i176: ; preds = %bb.bb, %.lr.ph.i.i.i173
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i174, i64 24 ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.gz, %i.bp
  br i1 %.not.i.i.i177, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i180, label %.lr.ph.i.i.i173, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i180: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i176, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i181 = icmp eq ptr %.pr.i179, null
  br i1 %.not.i.i1.i181, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit183, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i180
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i179, i64 noundef %i.bg) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit183

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit183: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i180, %bb.bc
  %.not4.i.i.i184 = icmp eq ptr %.pr.i191, %i.az
  br i1 %.not4.i.i.i184, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i192, label %.lr.ph.i.i.i185

.lr.ph.i.i.i185:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit183, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i188
  %.05.i.i.i186 = phi ptr [ %i.hg, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i188 ], [ %.pr.i191, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit183 ] ; 3 uses
  %i.ha = load ptr, ptr %.05.i.i.i186, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i187 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i.i.i187, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i188, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i185
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i186, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !108
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i188

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i188: ; preds = %bb.bd, %.lr.ph.i.i.i185
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i186, i64 24 ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.hg, %i.az
  br i1 %.not.i.i.i189, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i192, label %.lr.ph.i.i.i185, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i192: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i188, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit183
  %.not.i.i1.i193 = icmp eq ptr %.pr.i191, null
  br i1 %.not.i.i1.i193, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit195, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i192
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i191, i64 noundef %i.aq) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit195

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit195: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i192, %bb.be
  %.not4.i.i.i196 = icmp eq ptr %.pr.i203, %i.aj
  br i1 %.not4.i.i.i196, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197

.lr.ph.i.i.i197:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit195, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200
  %.05.i.i.i198 = phi ptr [ %i.hn, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200 ], [ %.pr.i203, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit195 ] ; 3 uses
  %i.hh = load ptr, ptr %.05.i.i.i198, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i199 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i.i199, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i197
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !108
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200: ; preds = %bb.bf, %.lr.ph.i.i.i197
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i198, i64 24 ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.hn, %i.aj
  br i1 %.not.i.i.i201, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, label %.lr.ph.i.i.i197, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i200, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit195
  %.not.i.i1.i205 = icmp eq ptr %.pr.i203, null
  br i1 %.not.i.i1.i205, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i203, i64 noundef %i.aa) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit207: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i204, %bb.bg
  %i.ho = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.t
end_hunk_8
begin_hunk_9_@_Z11printVectorI5QuregEvT_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.az:                                            ; preds = %._crit_edge.i.i160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gp, i64 %i.gr, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %._crit_edge.i.i160
  %i.gx = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !36
  %i.gz = load ptr, ptr %23, align 8, !tbaa !34
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.hb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.hb, ptr %24, align 8, !tbaa !30
  %i.hc = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.hd = load i64, ptr %i.ch, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.hd, ptr %i.b, align 8, !tbaa !32
  %i.he = icmp ugt i64 %i.hd, 15
  br i1 %i.he, label %.noexc.i165, label %._crit_edge.i.i164

.noexc.i165:                                      ; preds = %bb.ba
  %i.hf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc166 unwind label %bb.ck ; 2 uses

.noexc166:                                        ; preds = %.noexc.i165
  store ptr %i.hf, ptr %24, align 8, !tbaa !34
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.hg, ptr %i.hb, align 8, !tbaa !35
  br label %._crit_edge.i.i164

._crit_edge.i.i164:                               ; preds = %.noexc166, %bb.ba
  %i.hh = phi ptr [ %i.hf, %.noexc166 ], [ %i.hb, %bb.ba ] ; 2 uses
  switch i64 %i.hd, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i164
  %i.hi = load i8, ptr %i.hc, align 1, !tbaa !35
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !35
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %i.hc, i64 %i.hd, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i164
  %i.hj = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !36
  %i.hl = load ptr, ptr %24, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hj
  store i8 0, ptr %i.hm, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.hn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.hn, ptr %25, align 8, !tbaa !30
  %i.ho = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.hp = load i64, ptr %i.cr, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.hp, ptr %i.a, align 8, !tbaa !32
  %i.hq = icmp ugt i64 %i.hp, 15
  br i1 %i.hq, label %.noexc.i169, label %._crit_edge.i.i168

.noexc.i169:                                      ; preds = %bb.bd
  %i.hr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc170 unwind label %bb.cl ; 2 uses

.noexc170:                                        ; preds = %.noexc.i169
  store ptr %i.hr, ptr %25, align 8, !tbaa !34
  %i.hs = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.hs, ptr %i.hn, align 8, !tbaa !35
  br label %._crit_edge.i.i168

._crit_edge.i.i168:                               ; preds = %.noexc170, %bb.bd
  %i.ht = phi ptr [ %i.hr, %.noexc170 ], [ %i.hn, %bb.bd ] ; 2 uses
  switch i64 %i.hp, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %._crit_edge.i.i168
  %i.hu = load i8, ptr %i.ho, align 1, !tbaa !35
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !35
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i168
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ht, ptr align 1 %i.ho, i64 %i.hp, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i168
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !36
  %i.hx = load ptr, ptr %25, align 8, !tbaa !34
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hv
  store i8 0, ptr %i.hy, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(24) %20, ptr nofree noundef nonnull align 8 dereferenceable(24) %21, ptr nofree noundef nonnull align 8 dereferenceable(24) %22, ptr nofree noundef nonnull align 8 dereferenceable(32) %23, ptr nofree noundef nonnull align 8 dereferenceable(32) %24, ptr nofree noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.bh unwind label %bb.cm

bb.bh:                                            ; preds = %bb.bg
  %i.hz = load ptr, ptr %25, align 8, !tbaa !34   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.hn
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.ib = load i64, ptr %i.hn, align 8, !tbaa !35
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.id = load ptr, ptr %24, align 8, !tbaa !34   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.hb
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.if = load i64, ptr %i.hb, align 8, !tbaa !35
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  %i.ih = load ptr, ptr %23, align 8, !tbaa !34   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.go
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.ij = load i64, ptr %i.go, align 8, !tbaa !35
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  %.not4.i.i.i178 = icmp eq ptr %.pr.i185, %i.gm
  br i1 %.not4.i.i.i178, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182
  %.05.i.i.i180 = phi ptr [ %i.iq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182 ], [ %.pr.i185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ] ; 3 uses
  %i.il = load ptr, ptr %.05.i.i.i180, align 8, !tbaa !34 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181: ; preds = %.lr.ph.i.i.i179
  %i.io = load i64, ptr %i.im, align 8, !tbaa !35
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182: ; preds = %.lr.ph.i.i.i179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i181
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 32 ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.iq, %i.gm
  br i1 %.not.i.i.i183, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186, label %.lr.ph.i.i.i179, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %.not.i.i1.i187 = icmp eq ptr %.pr.i185, null
  br i1 %.not.i.i1.i187, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i185, i64 noundef %i.ge) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i186, %bb.bi
  %.not4.i.i.i191 = icmp eq ptr %.pr.i198, %i.fy
  br i1 %.not4.i.i.i191, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199, label %.lr.ph.i.i.i192

.lr.ph.i.i.i192:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195
  %.05.i.i.i193 = phi ptr [ %i.iw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195 ], [ %.pr.i198, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190 ] ; 3 uses
  %i.ir = load ptr, ptr %.05.i.i.i193, align 8, !tbaa !34 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i194: ; preds = %.lr.ph.i.i.i192
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !35
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195: ; preds = %.lr.ph.i.i.i192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i194
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i193, i64 32 ; 2 uses
  %.not.i.i.i196 = icmp eq ptr %i.iw, %i.fy
  br i1 %.not.i.i.i196, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199, label %.lr.ph.i.i.i192, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i195, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit190
  %.not.i.i1.i200 = icmp eq ptr %.pr.i198, null
  br i1 %.not.i.i1.i200, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i198, i64 noundef %i.fq) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i199, %bb.bj
  %.not4.i.i.i204 = icmp eq ptr %i.fj, null
  br i1 %.not4.i.i.i204, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit216, label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i208
  %.05.i.i.i206 = phi ptr [ %i.jc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i208 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203 ] ; 3 uses
  %i.ix = load ptr, ptr %.05.i.i.i206, align 8, !tbaa !34 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.05.i.i.i206, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i207: ; preds = %.lr.ph.i.i.i205
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !35
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i208

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i208: ; preds = %.lr.ph.i.i.i205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i207
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i.i.i206, i64 32 ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %i.jc, %i.fj
  br i1 %.not.i.i.i209, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit216, label %.lr.ph.i.i.i205, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit216: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i208, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit203
  %.not4.i.i.i217 = icmp eq ptr %i.fg, null
  br i1 %.not4.i.i.i217, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit229, label %.lr.ph.i.i.i218

.lr.ph.i.i.i218:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit216, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i221
  %.05.i.i.i219 = phi ptr [ %i.ji, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i221 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit216 ] ; 3 uses
  %i.jd = load ptr, ptr %.05.i.i.i219, align 8, !tbaa !34 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.05.i.i.i219, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i220: ; preds = %.lr.ph.i.i.i218
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !35
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i221

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i221: ; preds = %.lr.ph.i.i.i218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i220
  %i.ji = getelementptr inbounds nuw i8, ptr %.05.i.i.i219, i64 32 ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.ji, %i.fg
  br i1 %.not.i.i.i222, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit229, label %.lr.ph.i.i.i218, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit229: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i221, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit216
  %.not4.i.i.i230 = icmp eq ptr %.pr.i234, %i.fe
  br i1 %.not4.i.i.i230, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i231

.lr.ph.i.i.i231:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit229, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i232 = phi ptr [ %i.jp, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i234, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit229 ] ; 3 uses
  %i.jj = load ptr, ptr %.05.i.i.i232, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i231
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i232, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !108
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.bk, %.lr.ph.i.i.i231
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i232, i64 24 ; 2 uses
  %.not.i.i.i233 = icmp eq ptr %i.jp, %i.fe
  br i1 %.not.i.i.i233, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i231, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit229
  %.not.i.i1.i235 = icmp eq ptr %.pr.i234, null
  br i1 %.not.i.i1.i235, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i234, i64 noundef %i.ev) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bl
  %.not4.i.i.i237 = icmp eq ptr %.pr.i244, %i.eo
  br i1 %.not4.i.i.i237, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i245, label %.lr.ph.i.i.i238

.lr.ph.i.i.i238:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i241
  %.05.i.i.i239 = phi ptr [ %i.jw, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i241 ], [ %.pr.i244, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.jq = load ptr, ptr %.05.i.i.i239, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i240 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i.i.i240, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i241, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i238
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i239, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !108
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jv) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i241

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i241: ; preds = %bb.bm, %.lr.ph.i.i.i238
  %i.jw = getelementptr inbounds nuw i8, ptr %.05.i.i.i239, i64 24 ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %i.jw, %i.eo
  br i1 %.not.i.i.i242, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i245, label %.lr.ph.i.i.i238, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i245: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i241, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i246 = icmp eq ptr %.pr.i244, null
  br i1 %.not.i.i1.i246, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit248, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i245
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i244, i64 noundef %i.ef) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit248

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit248: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i245, %bb.bn
  %.not4.i.i.i249 = icmp eq ptr %.pr.i256, %i.dy
  br i1 %.not4.i.i.i249, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i257, label %.lr.ph.i.i.i250

.lr.ph.i.i.i250:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit248, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i253
  %.05.i.i.i251 = phi ptr [ %i.kd, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i253 ], [ %.pr.i256, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit248 ] ; 3 uses
  %i.jx = load ptr, ptr %.05.i.i.i251, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i252 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i.i.i.i252, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i253, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i250
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i251, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !108
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.kc) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i253

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i253: ; preds = %bb.bo, %.lr.ph.i.i.i250
  %i.kd = getelementptr inbounds nuw i8, ptr %.05.i.i.i251, i64 24 ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.kd, %i.dy
  br i1 %.not.i.i.i254, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i257, label %.lr.ph.i.i.i250, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i257: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i253, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit248
  %.not.i.i1.i258 = icmp eq ptr %.pr.i256, null
  br i1 %.not.i.i1.i258, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit260, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i257
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i256, i64 noundef %i.dp) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit260

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit260: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i257, %bb.bp
  %.not4.i.i.i261 = icmp eq ptr %.pr.i268, %i.di
  br i1 %.not4.i.i.i261, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i262

.lr.ph.i.i.i262:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit260, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i265
  %.05.i.i.i263 = phi ptr [ %i.kk, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i265 ], [ %.pr.i268, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit260 ] ; 3 uses
  %i.ke = load ptr, ptr %.05.i.i.i263, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i264 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i.i264, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i265, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i262
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i263, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !108
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i265

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i265: ; preds = %bb.bq, %.lr.ph.i.i.i262
  %i.kk = getelementptr inbounds nuw i8, ptr %.05.i.i.i263, i64 24 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.kk, %i.di
  br i1 %.not.i.i.i266, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i269, label %.lr.ph.i.i.i262, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i269: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i265, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit260
  %.not.i.i1.i270 = icmp eq ptr %.pr.i268, null
  br i1 %.not.i.i1.i270, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit272, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i269
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i268, i64 noundef %i.cz) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit272

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit272: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i269, %bb.br
  %i.kl = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.ci
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit272
  %i.kn = load i64, ptr %i.ci, align 8, !tbaa !35
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.kp = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.cg
  br i1 %i.kq, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.kr = load i64, ptr %i.cg, align 8, !tbaa !35
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %.pre475 = load ptr, ptr %8, align 16, !tbaa !57 ; 3 uses
  %.pre476 = load ptr, ptr %i.aw, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %.not4.i.i.i292 = icmp eq ptr %.pre475, %.pre476
  br i1 %.not4.i.i.i292, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i300, label %.lr.ph.i.i.i293

.lr.ph.i.i.i293:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i296
  %.05.i.i.i294 = phi ptr [ %i.ky, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i296 ], [ %.pre475, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291 ] ; 3 uses
  %i.kt = load ptr, ptr %.05.i.i.i294, align 8, !tbaa !34 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.05.i.i.i294, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i295: ; preds = %.lr.ph.i.i.i293
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !35
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i296

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i296: ; preds = %.lr.ph.i.i.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i295
  %i.ky = getelementptr inbounds nuw i8, ptr %.05.i.i.i294, i64 32 ; 2 uses
  %.not.i.i.i297 = icmp eq ptr %i.ky, %.pre476
  br i1 %.not.i.i.i297, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i298, label %.lr.ph.i.i.i293, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i298: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i296
  %.pr.i299 = load ptr, ptr %8, align 16, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i300

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i300: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i298, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291
  %i.kz = phi ptr [ %.pr.i299, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i298 ], [ %.pre475, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit291 ] ; 3 uses
  %.not.i.i1.i301 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i1.i301, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit304, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i300
  %i.la = load ptr, ptr %i.ay, align 16, !tbaa !58
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %i.ld = sub i64 %i.lb, %i.lc
end_hunk_9
begin_hunk_10_@_Z11print_elems11PauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.bo:                                            ; preds = %bb.bn
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.kt) #32
  br label %.body155

bb.bp:                                            ; preds = %.noexc154
  store ptr %i.kz, ptr %i.kw, align 8, !tbaa !59
  %i.lb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.lb, ptr %20, align 8, !tbaa !30
  %i.lc = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %i.le, ptr %i.b, align 8, !tbaa !32
  %i.lf = icmp ugt i64 %i.le, 15
  br i1 %i.lf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bp
  %i.lg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc158 unwind label %bb.cw ; 2 uses

.noexc158:                                        ; preds = %.noexc.i
  store ptr %i.lg, ptr %20, align 8, !tbaa !34
  %i.lh = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.lh, ptr %i.lb, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc158, %bb.bp
  %i.li = phi ptr [ %i.lg, %.noexc158 ], [ %i.lb, %bb.bp ] ; 2 uses
  switch i64 %i.le, label %bb.br [
    i64 1, label %bb.bq
    i64 0, label %._crit_edge.i.i159
  ]

bb.bq:                                            ; preds = %._crit_edge.i.i
  %i.lj = load i8, ptr %i.lc, align 1, !tbaa !35
  store i8 %i.lj, ptr %i.li, align 1, !tbaa !35
  br label %._crit_edge.i.i159

bb.br:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.lc, i64 %i.le, i1 false)
  br label %._crit_edge.i.i159

._crit_edge.i.i159:                               ; preds = %bb.br, %bb.bq, %._crit_edge.i.i
  %i.lk = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !36
  %i.lm = load ptr, ptr %20, align 8, !tbaa !34
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lk
  store i8 0, ptr %i.ln, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.lo = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.lo, ptr %21, align 8, !tbaa !30
  %i.lp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.lp, align 8, !tbaa !36
  store i8 0, ptr %i.lo, align 8, !tbaa !35
  %i.lq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.lq, ptr %22, align 8, !tbaa !30
  %i.lr = load ptr, ptr @_ZL10VDOTS_CHARB5cxx11, align 8, !tbaa !34 ; 2 uses
  %i.ls = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL10VDOTS_CHARB5cxx11, i64 8), align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.ls, ptr %i.a, align 8, !tbaa !32
  %i.lt = icmp ugt i64 %i.ls, 15
  br i1 %i.lt, label %.noexc.i163, label %._crit_edge.i.i162

.noexc.i163:                                      ; preds = %._crit_edge.i.i159
  %i.lu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc164 unwind label %bb.cx ; 2 uses

.noexc164:                                        ; preds = %.noexc.i163
  store ptr %i.lu, ptr %22, align 8, !tbaa !34
  %i.lv = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.lv, ptr %i.lq, align 8, !tbaa !35
  br label %._crit_edge.i.i162

._crit_edge.i.i162:                               ; preds = %.noexc164, %._crit_edge.i.i159
  %i.lw = phi ptr [ %i.lu, %.noexc164 ], [ %i.lq, %._crit_edge.i.i159 ] ; 2 uses
  switch i64 %i.ls, label %bb.bt [
    i64 1, label %bb.bs
    i64 0, label %bb.bu
  ]

bb.bs:                                            ; preds = %._crit_edge.i.i162
  %i.lx = load i8, ptr %i.lr, align 1, !tbaa !35
  store i8 %i.lx, ptr %i.lw, align 1, !tbaa !35
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr align 1 %i.lr, i64 %i.ls, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i162
  %i.ly = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !36
  %i.ma = load ptr, ptr %22, align 8, !tbaa !34
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ly
  store i8 0, ptr %i.mb, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_Z26printMatrixInFourQuadrantsSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EES5_S5_S5_S_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESD_SD_SD_SB_SB_SB_(ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, ptr nofree noundef nonnull align 8 dereferenceable(24) %17, ptr nofree noundef nonnull align 8 dereferenceable(24) %18, ptr nofree noundef nonnull align 8 dereferenceable(24) %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21, ptr nofree noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bv unwind label %bb.cy

bb.bv:                                            ; preds = %bb.bu
  %i.mc = load ptr, ptr %22, align 8, !tbaa !34   ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.lq
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.bv
  %i.me = load i64, ptr %i.lq, align 8, !tbaa !35
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  %i.mg = load ptr, ptr %21, align 8, !tbaa !34   ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.lo
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %i.mi = load i64, ptr %i.lo, align 8, !tbaa !35
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  %i.mk = load ptr, ptr %20, align 8, !tbaa !34   ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.lb
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.mm = load i64, ptr %i.lb, align 8, !tbaa !35
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.kz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ] ; 3 uses
  %i.mo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !35
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.mt, %i.kz
  br i1 %.not.i.i.i175, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.kt) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bw
  %.not4.i.i.i177 = icmp eq ptr %.pr.i184, %i.kn
  br i1 %.not4.i.i.i177, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i185, label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i181
  %.05.i.i.i179 = phi ptr [ %i.mz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i181 ], [ %.pr.i184, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.mu = load ptr, ptr %.05.i.i.i179, align 8, !tbaa !34 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.05.i.i.i179, i64 16 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180: ; preds = %.lr.ph.i.i.i178
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !35
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i181

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i181: ; preds = %.lr.ph.i.i.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i180
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i179, i64 32 ; 2 uses
  %.not.i.i.i182 = icmp eq ptr %i.mz, %i.kn
  br i1 %.not.i.i.i182, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i185, label %.lr.ph.i.i.i178, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i185: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i181, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.not.i.i1.i186 = icmp eq ptr %.pr.i184, null
  br i1 %.not.i.i1.i186, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i185
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i184, i64 noundef %i.kh) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i185, %bb.bx
  %.not4.i.i.i190 = icmp eq ptr %i.ka, null
  br i1 %.not4.i.i.i190, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit202, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i194
  %.05.i.i.i192 = phi ptr [ %i.nf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i194 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189 ] ; 3 uses
  %i.na = load ptr, ptr %.05.i.i.i192, align 8, !tbaa !34 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193: ; preds = %.lr.ph.i.i.i191
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !35
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i194

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i194: ; preds = %.lr.ph.i.i.i191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i193
  %i.nf = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 32 ; 2 uses
  %.not.i.i.i195 = icmp eq ptr %i.nf, %i.ka
  br i1 %.not.i.i.i195, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit202, label %.lr.ph.i.i.i191, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit202: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i194, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit189
  %.not4.i.i.i203 = icmp eq ptr %i.jx, null
  br i1 %.not4.i.i.i203, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit215, label %.lr.ph.i.i.i204

.lr.ph.i.i.i204:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit202, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207
  %.05.i.i.i205 = phi ptr [ %i.nl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207 ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit202 ] ; 3 uses
  %i.ng = load ptr, ptr %.05.i.i.i205, align 8, !tbaa !34 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i205, i64 16 ; 2 uses
  %i.ni = icmp eq ptr %i.ng, %i.nh
  br i1 %i.ni, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206: ; preds = %.lr.ph.i.i.i204
  %i.nj = load i64, ptr %i.nh, align 8, !tbaa !35
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nk) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207: ; preds = %.lr.ph.i.i.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206
  %i.nl = getelementptr inbounds nuw i8, ptr %.05.i.i.i205, i64 32 ; 2 uses
  %.not.i.i.i208 = icmp eq ptr %i.nl, %i.jx
  br i1 %.not.i.i.i208, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit215, label %.lr.ph.i.i.i204, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit215: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i207, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit202
  %.not4.i.i.i216 = icmp eq ptr %.pr.i220, %i.jv
  br i1 %.not4.i.i.i216, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i217

.lr.ph.i.i.i217:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit215, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i218 = phi ptr [ %i.ns, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i220, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit215 ] ; 3 uses
  %i.nm = load ptr, ptr %.05.i.i.i218, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i217
  %i.nn = getelementptr inbounds nuw i8, ptr %.05.i.i.i218, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !108
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nm to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nr) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.by, %.lr.ph.i.i.i217
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i.i.i218, i64 24 ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.ns, %i.jv
  br i1 %.not.i.i.i219, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i217, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit215
  %.not.i.i1.i221 = icmp eq ptr %.pr.i220, null
  br i1 %.not.i.i1.i221, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i220, i64 noundef %i.jm) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.bz
  %.not4.i.i.i223 = icmp eq ptr %.pr.i230, %i.jf
  br i1 %.not4.i.i.i223, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i231, label %.lr.ph.i.i.i224

.lr.ph.i.i.i224:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i227
  %.05.i.i.i225 = phi ptr [ %i.nz, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i227 ], [ %.pr.i230, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.nt = load ptr, ptr %.05.i.i.i225, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i226 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i.i.i.i226, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i227, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i224
  %i.nu = getelementptr inbounds nuw i8, ptr %.05.i.i.i225, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !108
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nt to i64
  %i.ny = sub i64 %i.nw, %i.nx
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef %i.ny) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i227

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i227: ; preds = %bb.ca, %.lr.ph.i.i.i224
  %i.nz = getelementptr inbounds nuw i8, ptr %.05.i.i.i225, i64 24 ; 2 uses
  %.not.i.i.i228 = icmp eq ptr %i.nz, %i.jf
  br i1 %.not.i.i.i228, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i231, label %.lr.ph.i.i.i224, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i231: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i227, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %.not.i.i1.i232 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i1.i232, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit234, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i231
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i230, i64 noundef %i.iw) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit234

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit234: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i231, %bb.cb
  %.not4.i.i.i235 = icmp eq ptr %.pr.i242, %i.iq
  br i1 %.not4.i.i.i235, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i243, label %.lr.ph.i.i.i236

.lr.ph.i.i.i236:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit234, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i239
  %.05.i.i.i237 = phi ptr [ %i.og, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i239 ], [ %.pr.i242, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit234 ] ; 3 uses
  %i.oa = load ptr, ptr %.05.i.i.i237, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i238 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i.i.i238, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i239, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i236
  %i.ob = getelementptr inbounds nuw i8, ptr %.05.i.i.i237, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !108
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.oa to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.of) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i239

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i239: ; preds = %bb.cc, %.lr.ph.i.i.i236
  %i.og = getelementptr inbounds nuw i8, ptr %.05.i.i.i237, i64 24 ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.og, %i.iq
  br i1 %.not.i.i.i240, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i243, label %.lr.ph.i.i.i236, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i243: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i239, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit234
  %.not.i.i1.i244 = icmp eq ptr %.pr.i242, null
  br i1 %.not.i.i1.i244, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit246, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i243
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i242, i64 noundef %i.ih) #32
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit246

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit246: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i243, %bb.cd
  %.not4.i.i.i247 = icmp eq ptr %.pr.i254, %i.gs
  br i1 %.not4.i.i.i247, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i255, label %.lr.ph.i.i.i248

.lr.ph.i.i.i248:                                  ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit246, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i251
  %.05.i.i.i249 = phi ptr [ %i.on, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i251 ], [ %.pr.i254, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit246 ] ; 3 uses
  %i.oh = load ptr, ptr %.05.i.i.i249, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i.i.i.i.i250 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i.i.i.i.i250, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i251, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i248
  %i.oi = getelementptr inbounds nuw i8, ptr %.05.i.i.i249, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !108
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = ptrtoint ptr %i.oh to i64
  %i.om = sub i64 %i.ok, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %i.om) #32
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i251

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i251: ; preds = %bb.ce, %.lr.ph.i.i.i248
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i249, i64 24 ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %i.on, %i.gs
  br i1 %.not.i.i.i252, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i255, label %.lr.ph.i.i.i248, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i255: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i251, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit246
  %.not.i.i1.i256 = icmp eq ptr %.pr.i254, null
  br i1 %.not.i.i1.i256, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit271, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i255
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i254, i64 noundef %i.gj) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit271

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit271: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i255, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %.not.i.i.i.i148, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i280, label %.lr.ph.i.i.i273

.lr.ph.i.i.i273:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit271, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i276
  %.05.i.i.i274 = phi ptr [ %i.ot, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i276 ], [ %i.kq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit271 ] ; 3 uses
  %i.oo = load ptr, ptr %.05.i.i.i274, align 8, !tbaa !34 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.05.i.i.i274, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i275: ; preds = %.lr.ph.i.i.i273
  %i.or = load i64, ptr %i.op, align 8, !tbaa !35
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i276

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i276: ; preds = %.lr.ph.i.i.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i275
  %i.ot = getelementptr inbounds nuw i8, ptr %.05.i.i.i274, i64 32 ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %i.ot, %i.kp
  br i1 %.not.i.i.i277, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i280, label %.lr.ph.i.i.i273, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i280: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i276, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit271
  %.not.i.i1.i281 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i1.i281, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit284, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i280
  %i.ou = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !58
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = sub i64 %i.ow, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ox) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit284

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit284: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i280, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %.not.i.i.i.i138, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i293, label %.lr.ph.i.i.i286

.lr.ph.i.i.i286:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit284, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i289
  %.05.i.i.i287 = phi ptr [ %i.pd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i289 ], [ %i.ke, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit284 ] ; 3 uses
  %i.oy = load ptr, ptr %.05.i.i.i287, align 8, !tbaa !34 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i287, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i288: ; preds = %.lr.ph.i.i.i286
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !35
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i289

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i289: ; preds = %.lr.ph.i.i.i286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i288
  %i.pd = getelementptr inbounds nuw i8, ptr %.05.i.i.i287, i64 32 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.pd, %i.kd
  br i1 %.not.i.i.i290, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i293, label %.lr.ph.i.i.i286, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i293: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i289, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit284
  %.not.i.i1.i294 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i1.i294, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i293
  %i.pe = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !58
end_hunk_10
